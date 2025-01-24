use crate::opcode::OpCode;

use super::{Cond, PreInstr};

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
}

impl TryFrom<PreInstr> for MemoryInstr {
    type Error = String;

    fn try_from(value: PreInstr) -> Result<Self, Self::Error> {
        match value.2 {
            OpCode::STR | OpCode::LDR => Ok(MemoryInstr {
                cond: value.1,
                op: value.2,
                rd: (value.0 & 0x000F0000) >> 16,
                rn: (value.0 & 0x000F0000) >> 12,
                op2: value.0 & 0x000000FF,
                immediate: value.0 >> 25 & 0xf == 1,
                prepost: value.0 >> 24 & 0x1 == 1,
                updown: value.0 >> 23 & 0x1 == 1,
                byteword: value.0 >> 22 & 0x1 == 1,
            }),
            _ => Err(format!("{:?} is not a MemoryInstr", value)),
        }
    }
}
