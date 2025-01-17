use gbaemu_core::Core;
use gbaemu_renderer::sdl2::SdlRenderer;

pub fn main() {
    let sdl_renderer = SdlRenderer::new().unwrap();
    let event_poller = sdl_renderer.event_poller();
    let core = Core::new(sdl_renderer, event_poller).unwrap();
    core.run().unwrap();
}
