use gbaemu_common::mem::Memory;

use crate::{
    opcode::{OpCode, OpCodeType},
    register::CpuRegister,
};

type PreInstr = (u32, Cond, OpCode);

pub struct InstrExecutor<'c, B: Memory> {
    pub(crate) instr: Instr,

    pub(crate) register: &'c mut CpuRegister,
    pub(crate) bus: &'c mut B,
}

#[derive(Debug, Default)]
pub struct Instr {
    cond: Cond,
    op: OpCode,
    rd: Option<u32>,
    rn: Option<u32>,
    op2: Option<u32>,
    offset: Option<u32>,
    immediate: bool,
}

impl From<u32> for Instr {
    fn from(value: u32) -> Self {
        println!("value => {:32b}", value);
        println!("value => {:x}", value);
        println!("{:?}", OpCodeType::from(value));
        Instr::from((
            value,
            Cond::from_exact_bits(((value >> 28) & 0xF) as u8),
            OpCode::from(value),
        ))
    }
}

impl From<PreInstr> for Instr {
    fn from(value: PreInstr) -> Self {
        match value.2 {
            OpCode::B => Instr {
                cond: value.1,
                op: value.2,
                offset: Some(value.0 & 0x00FFFFFF),
                ..Default::default()
            },
            OpCode::ADC => Instr {
                cond: value.1,
                op: value.2,
                rd: Some(value.0 & 0x0000F000),
                rn: Some(value.0 & 0x00000F00),
                op2: None,
                offset: Some(value.0 & 0x00FFFFFF),
                immediate: value.0 >> 25 == 1,
            },
            OpCode::MOV => Instr {
                cond: value.1,
                op: value.2,
                rd: Some(value.0 & 0x0000F000),
                rn: Some(value.0 & 0x00000F00),
                op2: None,
                offset: None,
                immediate: value.0 >> 25 == 1,
            },
            _ => todo!(),
        }
    }
}

impl<'c, B: Memory> InstrExecutor<'c, B> {
    pub fn execute(self) {
        match self.instr.op {
            OpCode::B => self.execute_arm_branch(),
            OpCode::ADC => self.execute_arm_adc(),
            OpCode::MOV => self.execute_arm_mov(),
            _ => todo!(),
        }
    }

    fn execute_arm_branch(self) {
        self.register.pc = self.register.pc + 8 + self.instr.offset.unwrap() * 4
    }

    fn execute_arm_adc(self) {
        self.register.pc = 1;
        todo!();
    }

    fn execute_arm_mov(&self) {
        todo!()
    }
}

#[derive(Default, Debug, Clone, Copy)]
pub enum Cond {
    EQ = 0x0,
    NE = 0x1,
    CSHS = 0x2,
    CCLO = 0x3,
    MI = 0x4,
    PL = 0x5,
    VS = 0x6,
    VC = 0x7,
    HI = 0x8,
    LS = 0x9,
    GE = 0xa,
    LT = 0xb,
    GT = 0xc,
    LE = 0xd,
    #[default]
    AL = 0xe,
    NV = 0xf,
}

impl Cond {
    fn from_exact_bits(bits: u8) -> Self {
        match bits {
            0x0 => Cond::EQ,
            0x1 => Cond::NE,
            0x2 => Cond::CSHS,
            0x3 => Cond::CCLO,
            0x4 => Cond::MI,
            0x5 => Cond::PL,
            0x6 => Cond::VS,
            0x7 => Cond::VC,
            0x8 => Cond::HI,
            0x9 => Cond::LS,
            0xa => Cond::GE,
            0xb => Cond::LT,
            0xc => Cond::GT,
            0xd => Cond::LE,
            0xe => Cond::AL,
            0xf => Cond::NV,
            _ => Cond::default(),
        }
    }
}
