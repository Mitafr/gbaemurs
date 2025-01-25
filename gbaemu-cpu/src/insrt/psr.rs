use crate::opcode::OpCode;

use super::{Cond, InstrBase, PreInstr};

#[derive(Debug, Default, Clone, Copy)]
pub struct PsrInstr {
    pub cond: Cond,
    pub op: OpCode,
    pub rd: Option<u32>,
    pub rn: u32,
    pub op2: u32,
    pub immediate: bool,
    pub sd: bool,
    pub msr_value: Option<u8>,
}

impl TryFrom<PreInstr> for PsrInstr {
    type Error = String;

    fn try_from(value: PreInstr) -> Result<Self, Self::Error> {
        let mut instr = PsrInstr {
            cond: value.1,
            op: value.3,
            sd: (value.0 >> 22) & 0xf == 1,
            op2: value.0 & 0x0000000FF,
            immediate: value.0 >> 25 & 0xf == 1,
            ..Default::default()
        };
        match value.3 {
            OpCode::MRS => instr.rd = Some((value.0 & 0x00FF0000) >> 16),
            OpCode::MSR => {
                instr.msr_value = Some(((value.0 & 0x00FF0000) >> 16) as u8);
            }
            _ => return Err(format!("Not a PsrInstr")),
        }
        Ok(instr)
    }
}

impl InstrBase for PsrInstr {
    fn cond(&self) -> &Cond {
        &self.cond
    }
}
