use mem::PpuMem;

mod mem;

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
