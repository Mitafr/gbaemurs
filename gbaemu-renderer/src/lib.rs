extern crate sdl2;

use sdl2::{pixels::PixelFormatEnum, render::Texture, video::Window};

pub struct Renderer {
    pub sdl_ctx: sdl2::Sdl,
    pub canvas: sdl2::render::Canvas<Window>,
    pixels: Vec<u8>,
    texture: Texture,
}

impl Renderer {
    pub fn new() -> Result<Renderer, String> {
        let sdl_context = sdl2::init()?;
        let video_subsystem = sdl_context.video()?;

        let window = video_subsystem
            .window("rust-sdl2 demo: Window", 800, 600)
            .build()
            .map_err(|e| e.to_string())?;

        let canvas = window
            .into_canvas()
            .present_vsync()
            .build()
            .map_err(|e| e.to_string())?;
        let texture_creator = canvas.texture_creator();

        Ok(Renderer {
            sdl_ctx: sdl_context,
            canvas,
            pixels: vec![100; 800 * 600],
            texture: texture_creator
                .create_texture_streaming(PixelFormatEnum::RGB24, 800, 600)
                .map_err(|e| e.to_string())?,
        })
    }

    pub fn draw(&mut self) {
        self.canvas.clear();
        self.texture.update(None, &self.pixels, 800).unwrap();
        self.canvas.copy(&self.texture, None, None).unwrap();
        self.canvas.present();
    }
}
