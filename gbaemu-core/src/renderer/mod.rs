use std::sync::{mpsc::Receiver, Arc};

use pixels::{Pixels, SurfaceTexture};
use winit::{
    application::ApplicationHandler,
    dpi::LogicalSize,
    event::{KeyEvent, WindowEvent},
    keyboard::{Key, NamedKey},
    window::Window,
};

pub const W_WIDTH: u32 = 240 * 6;
pub const W_HEIGHT: u32 = 160 * 6;

#[derive(Debug)]
pub struct WinitRenderer {
    pixels: Option<Pixels<'static>>,
    window: Option<Arc<Window>>,
    pix_recv: Receiver<Vec<u8>>,
}

impl WinitRenderer {
    pub fn new(pix_recv: Receiver<Vec<u8>>) -> Self {
        Self {
            pix_recv,
            window: None,
            pixels: None,
        }
    }
}

impl ApplicationHandler for WinitRenderer {
    fn resumed(&mut self, event_loop: &winit::event_loop::ActiveEventLoop) {
        let window = {
            let size = LogicalSize::new(W_WIDTH as f64, W_HEIGHT as f64);
            Arc::new(
                event_loop
                    .create_window(
                        Window::default_attributes()
                            .with_title("gbaemurs")
                            .with_inner_size(size)
                            .with_min_inner_size(size),
                    )
                    .unwrap(),
            )
        };

        self.window = Some(window.clone());
        self.pixels = {
            let window_size = window.inner_size();
            let surface_texture =
                SurfaceTexture::new(window_size.width, window_size.height, window.clone());
            match Pixels::new(W_WIDTH, W_HEIGHT, surface_texture) {
                Ok(pixels) => {
                    window.request_redraw();
                    Some(pixels)
                }
                Err(err) => {
                    event_loop.exit();
                    None
                }
            }
        };
    }

    fn window_event(
        &mut self,
        event_loop: &winit::event_loop::ActiveEventLoop,
        _window_id: winit::window::WindowId,
        event: winit::event::WindowEvent,
    ) {
        match event {
            WindowEvent::CloseRequested
            | WindowEvent::KeyboardInput {
                event:
                    KeyEvent {
                        logical_key: Key::Named(NamedKey::Escape),
                        ..
                    },
                ..
            } => {
                event_loop.exit();
            }

            WindowEvent::Resized(size) => {
                if let Err(_err) = self
                    .pixels
                    .as_mut()
                    .unwrap()
                    .resize_surface(size.width, size.height)
                {
                    event_loop.exit();
                }
            }

            WindowEvent::RedrawRequested => {
                let pixels = self.pixels.as_mut().unwrap().frame_mut();
                while let Ok(screen) = self.pix_recv.try_recv() {
                    pixels.copy_from_slice(&screen);
                }
                if let Err(_) = self.pixels.as_ref().unwrap().render() {
                    event_loop.exit();
                } else {
                    self.window.as_ref().unwrap().request_redraw();
                }
            }

            _ => (),
        }
    }
}
