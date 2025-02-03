use std::{
    sync::mpsc::{self, Sender},
    thread,
};

use cart::Cart;
use gbaemu_common::mem::Memory;
use gbaemu_cpu::{mem::CpuMemory, Cpu};
use gbaemu_ppu::Ppu;
use gbaemu_rom::Rom;
use renderer::{WinitRenderer, W_HEIGHT, W_WIDTH};
use winit::event_loop::{self, ControlFlow, EventLoop};

mod cart;
mod renderer;

#[derive(Debug)]
struct MemoryBus<'a> {
    ppu: &'a Ppu,
    cart: &'a Cart,
    cpu: &'a CpuMemory,
}

impl Memory for MemoryBus<'_> {
    fn read(&self, address: u32) -> u32 {
        match address {
            0..0x00003FFF => u32::from_le_bytes(
                self.cpu.bios[address as usize..address as usize + 4]
                    .try_into()
                    .unwrap(),
            ),
            0x0000400..0x01FFFFFF => unreachable!(),
            _ => todo!(),
        }
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
    renderer: WinitRenderer,
    pix_sender: Sender<Vec<u8>>,
}

impl Core {
    pub fn new() -> Result<Core, String> {
        let (pix_sender, pix_recv) = mpsc::channel();
        Ok(Core {
            ppu: Ppu::default(),
            cpu: Cpu::default(),
            rom: Rom::load("./test-roms/pok.gba").unwrap(),
            cart: Cart::default(),
            renderer: WinitRenderer::new(pix_recv),
            pix_sender,
        })
    }

    pub fn run(mut self) -> Result<(), String> {
        println!("Loading game {}", self.rom.title());
        let emu_handle = thread::spawn(move || {
            let mut bus = MemoryBus {
                ppu: &self.ppu,
                cart: &self.cart,
                cpu: &CpuMemory::new("./test-roms/gba_bios.bin"),
            };
            self.pix_sender
                .send(vec![0x99; (W_WIDTH * W_HEIGHT * 4) as usize])
                .unwrap();
            self.cpu.execute(&self.rom, &mut bus);
        });
        let event_loop = EventLoop::new().unwrap();
        event_loop.set_control_flow(ControlFlow::Poll);
        event_loop.run_app(&mut self.renderer).unwrap();
        emu_handle.join().unwrap();
        Ok(())
    }
}
