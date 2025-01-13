use cart::Cart;
use gbaemu_common::mem::Memory;
use gbaemu_cpu::Cpu;
use gbaemu_ppu::Ppu;
use gbaemu_renderer::Renderer;
use rom::Rom;
use sdl2::{event::Event, keyboard::Keycode, EventPump};

mod cart;
mod rom;

struct MemoryBus<'a> {
    ppu: &'a Ppu,
    cart: &'a Cart,
}

impl Memory for MemoryBus<'_> {
    fn read(&self, address: u16) -> u16 {
        todo!()
    }

    fn write(&mut self, address: u16, value: u16) {
        todo!()
    }
}

pub struct Core {
    ppu: Ppu,
    cpu: Cpu,
    rom: Rom,
    cart: Cart,
    renderer: Renderer,
    event_pump: EventPump,
}

impl Core {
    pub fn new() -> Result<Core, String> {
        let renderer = Renderer::new()?;

        let event_pump = renderer.sdl_ctx.event_pump().map_err(|e| e.to_string())?;
        Ok(Core {
            renderer,
            event_pump,
            ppu: Ppu::default(),
            cpu: Cpu::default(),
            rom: Rom::load("./test-roms/instr_timing.gb").unwrap(),
            cart: Cart::default(),
        })
    }

    pub fn run(mut self) -> Result<(), String> {
        let mut bus = MemoryBus {
            ppu: &self.ppu,
            cart: &self.cart,
        };
        self.cpu.execute(&mut bus);
        'running: loop {
            for event in self.event_pump.poll_iter() {
                match event {
                    Event::Quit { .. }
                    | Event::KeyDown {
                        keycode: Some(Keycode::Escape),
                        ..
                    } => break 'running,
                    _ => {}
                }
            }
            self.renderer.draw();
        }
        Ok(())
    }
}
