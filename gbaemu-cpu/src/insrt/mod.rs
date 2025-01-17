use bitflags::bitflags;

use crate::opcode::OpCode;

pub struct Instr {
    cond: Cond,
    op: OpCode,
    rd: Option<u32>,
    rn: Option<u32>,
    op2: Option<u32>,
    offset: Option<u32>,
}

bitflags! {
    #[derive(Debug, Clone, Copy)]
    pub struct Cond : u8{
        const EQ = 0;
        const NE = 1;
        const CSHS = 2;
        const CCLO = 3;
        const MI = 4;
        const PL = 5;
        const VS = 6;
        const VC = 7;
        const HI = 8;
        const LS = 9;
        const GE = 0xa;
        const LT = 0xb;
        const GT = 0xc;
        const LE = 0xd;
        const AL = 0xe;
    }
}
