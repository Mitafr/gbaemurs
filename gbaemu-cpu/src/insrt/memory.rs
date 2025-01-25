use crate::opcode::OpCode;

use super::{Cond, InstrBase, PreInstr};

#[derive(Debug, Default, Clone, Copy)]
pub struct MemoryInstr {
    pub cond: Cond,
    pub op: OpCode,
    pub rd: u32,
    pub rn: u32,
    pub op2: u32,
    pub immediate: bool,
    pub prepost: bool,
    pub updown: bool,
    pub byteword: bool,
    pub load_store: bool,
    pub load_psr: bool,
    pub write_back: bool,
}

impl TryFrom<PreInstr> for MemoryInstr {
    type Error = String;

    fn try_from(value: PreInstr) -> Result<Self, Self::Error> {
        match value.3 {
            // Single Data Transfert
            OpCode::STR | OpCode::LDR => Ok(MemoryInstr {
                cond: value.1,
                op: value.3,
                rd: (value.0 & 0x000F0000) >> 16,
                rn: (value.0 & 0x000F0000) >> 12,
                op2: value.0 & 0x000000FF,
                immediate: value.0 >> 25 & 0x1 == 1,
                prepost: value.0 >> 24 & 0x1 == 1,
                updown: value.0 >> 23 & 0x1 == 1,
                byteword: value.0 >> 22 & 0x1 == 1,
                ..Default::default()
            }),
            // Halfword
            OpCode::STRH
            | OpCode::STRD
            | OpCode::LDRD
            | OpCode::LDRH
            | OpCode::LDRSB
            | OpCode::LDRSH => Ok(MemoryInstr {
                cond: value.1,
                op: value.3,
                prepost: value.0 >> 24 & 0x1 == 1,
                updown: value.0 >> 23 & 0x1 == 1,
                byteword: value.0 >> 22 & 0x1 == 1,
                load_store: value.0 >> 20 & 0x1 == 1,
                rd: (value.0 & 0x000F0000) >> 16,
                rn: (value.0 & 0x000F0000) >> 12,
                // TODO : complete
                ..Default::default()
            }),
            // Block Data Transfert
            OpCode::STM | OpCode::LDM => Ok(MemoryInstr {
                cond: value.1,
                op: value.3,
                prepost: value.0 >> 24 & 0xf == 1,
                updown: value.0 >> 23 & 0x1 == 1,
                load_psr: value.0 >> 22 & 0x1 == 1,
                write_back: value.0 >> 21 & 0x1 == 1,
                rn: (value.0 & 0x000F0000) >> 16,
                // TODO: Rlist
                ..Default::default()
            }),
            _ => Err(format!("{:?} is not a MemoryInstr", value)),
        }
    }
}

impl InstrBase for MemoryInstr {
    fn cond(&self) -> &Cond {
        &self.cond
    }
}
