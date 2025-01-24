use crate::opcode::OpCode;

use super::{Cond, Instr, PreInstr};

#[derive(Debug, Default, Clone, Copy)]
pub struct MemoryInstr {
    pub cond: Cond,
    pub op: OpCode,
    pub rd: u32,
    pub rn: u32,
    pub op2: u32,
    pub immediate: bool,
    pub set_cond: bool,
}

impl TryFrom<PreInstr> for MemoryInstr {
    type Error = String;

    fn try_from(value: PreInstr) -> Result<Self, Self::Error> {
        match value.2 {
            OpCode::STR | OpCode::LDR => Ok(MemoryInstr {
                cond: value.1,
                op: value.2,
                rd: (value.0 & 0x000F0000) >> 16,
                rn: value.0 & 0x000F0000,
                op2: value.0 & 0x000000FF,
                immediate: value.0 >> 25 & 0xf == 1,
                set_cond: (value.0 >> 20) & 0xf == 1,
            }),
            _ => Err(format!("{:?} is not a MemoryInstr", value)),
        }
    }
}
