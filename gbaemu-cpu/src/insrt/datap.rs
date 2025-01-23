use crate::opcode::OpCode;

use super::Cond;

#[derive(Debug, Default, Clone, Copy)]
pub struct DataPInstr {
    pub cond: Cond,
    pub op: OpCode,
    pub rd: u32,
    pub rn: u32,
    pub op2: u32,
    pub immediate: bool,
    pub set_cond: bool,
}
