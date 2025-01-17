use mem::PpuMem;

mod mem;

#[derive(Debug)]
pub struct Ppu {
    mem: PpuMem,
}

impl Default for Ppu {
    fn default() -> Self {
        Ppu {
            mem: PpuMem::default(),
        }
    }
}
