use crate::opcode::OpCode;

use super::Cond;

#[derive(Debug, Default, Clone, Copy)]
pub struct BranchInstr {
    pub cond: Cond,
    pub op: OpCode,
    pub offset: Option<u32>,
}
