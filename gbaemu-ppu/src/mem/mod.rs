use gbaemu_common::mem::Memory;

pub struct PpuMem {
    vram: Vec<u16>,
    oam: Vec<u32>,
    palette: Vec<u16>,
}

impl PpuMem {
    pub(crate) fn default() -> PpuMem {
        PpuMem {
            vram: vec![],
            oam: vec![],
            palette: vec![],
        }
    }
}

impl Memory for PpuMem {
    fn read(&self, address: u16) -> u16 {
        self.vram[address as usize]
    }

    fn write(&mut self, address: u16, value: u16) {
        self.vram[address as usize] = value;
    }
}
