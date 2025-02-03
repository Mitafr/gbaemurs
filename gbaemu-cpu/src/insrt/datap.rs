use std::fmt::{write, Display};

use crate::opcode::OpCode;

use super::{Cond, InstrBase, PreInstr};

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

impl TryFrom<PreInstr> for DataPInstr {
    type Error = String;

    fn try_from(value: PreInstr) -> Result<Self, Self::Error> {
        println!("{:x}", value.0);
        Ok(DataPInstr {
            cond: value.1,
            op: value.3,
            rd: (value.0 & 0x000F0000) >> 16,
            rn: (value.0 & 0x000F0000) >> 12,
            op2: value.0 & 0x000000FF,
            immediate: value.0 >> 25 & 0xf == 1,
            set_cond: (value.0 >> 20) & 0xf == 1,
        })
    }
}

impl InstrBase for DataPInstr {
    fn cond(&self) -> &Cond {
        &self.cond
    }
}

impl Display for DataPInstr {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "{:?}{{{:?}}}", self.op, self.cond(),)?;

        match self.op {
            OpCode::MOV | OpCode::MVN | OpCode::ORR | OpCode::EOR | OpCode::AND | OpCode::BIC => {
                write!(
                    f,
                    "{{{}}} R{:x},{:x},{:x}",
                    self.set_cond as u8, self.rd, self.rn, self.op2
                )?;
            }
            OpCode::TST | OpCode::TEQ => {
                write!(f, "{{P}} {:x},{:x}", self.rd, self.rn)?;
            }
            _ => {}
        }
        Ok(())
    }
}
