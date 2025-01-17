use cart::Cart;
use event::{EventPoller, EventType};
use gbaemu_common::mem::Memory;
use gbaemu_cpu::Cpu;
use gbaemu_ppu::Ppu;
use gbaemu_renderer::Renderer;
use gbaemu_rom::Rom;

mod cart;
mod event;

#[derive(Debug)]
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

pub struct Core<R: Renderer, E: EventPoller> {
    ppu: Ppu,
    cpu: Cpu,
    rom: Rom,
    cart: Cart,
    renderer: R,
    event_poller: E,
}

impl<R: Renderer, E: EventPoller> Core<R, E> {
    pub fn new(renderer: R, event_poller: E) -> Result<Core<R, E>, String> {
        Ok(Core {
            renderer,
            event_poller,
            ppu: Ppu::default(),
            cpu: Cpu::default(),
            rom: Rom::load("./test-roms/007.gba").unwrap(),
            cart: Cart::default(),
        })
    }

    pub fn run(mut self) -> Result<(), String> {
        println!("Loading game {}", self.rom.title());
        let mut bus = MemoryBus {
            ppu: &self.ppu,
            cart: &self.cart,
        };
        self.cpu.execute(&self.rom, &mut bus);
        'running: loop {
            for event in self.event_poller.poll_event() {
                if event.quit() || event.escape() {
                    break 'running;
                }
            }
            self.renderer.draw();
        }
        Ok(())
    }
}
