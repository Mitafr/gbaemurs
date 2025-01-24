use crate::opcode::OpCode;

use super::{Cond, PreInstr};

#[derive(Debug, Default, Clone, Copy)]
pub struct BranchInstr {
    pub cond: Cond,
    pub op: OpCode,
    pub offset: Option<u32>,
}

impl TryFrom<PreInstr> for BranchInstr {
    type Error = String;

    fn try_from(value: PreInstr) -> Result<Self, Self::Error> {
        match value.2 {
            OpCode::B | OpCode::BL | OpCode::BLX => Ok(BranchInstr {
                cond: value.1,
                op: value.2,
                offset: Some(value.0 & 0x00FFFFFF),
                ..Default::default()
            }),
            _ => Err(format!("{:?} is not a DataPInstr", value)),
        }
    }
}
