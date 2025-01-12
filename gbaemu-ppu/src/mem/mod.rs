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
