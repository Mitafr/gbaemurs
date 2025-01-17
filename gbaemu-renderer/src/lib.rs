use ::sdl2::surface::Surface;

pub mod sdl2;

pub trait Renderer {
    fn draw(&mut self);
    fn render_bmp(&mut self, surface: Surface);
}
