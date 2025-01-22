use gbaemu_common::mem::Memory;

use crate::register::CpuRegister;

#[derive(Debug, Default)]
pub enum OpCodeType {
    #[default]
    Branch,
    DataP,
    Mul,
    Psr,
    Memory,
    Copro,
}

impl From<u32> for OpCodeType {
    fn from(value: u32) -> Self {
        match (value >> 26) & 0x3 {
            0 => Self::DataP,
            1 => Self::Memory,
            _ => Self::default(),
        }
    }
}

#[derive(Debug, Default)]
pub enum OpCode {
    ADC,
    ADD,
    AND,
    B,
    BIC,
    CMN,
    CMP,
    EOR,
    MOV,
    MVN,
    ORR,
    RSB,
    RSC,
    SBC,
    SUB,
    TEQ,
    TST,
    #[default]
    UNKNOWN,
}

impl From<u32> for OpCode {
    fn from(value: u32) -> Self {
        let op = match OpCodeType::from(value) {
            OpCodeType::Branch => value >> 24 & 0xf,
            OpCodeType::DataP => value >> 21 & 0xf,
            OpCodeType::Mul => todo!(),
            OpCodeType::Psr => todo!(),
            OpCodeType::Memory => todo!(),
            OpCodeType::Copro => todo!(),
        };
        match op {
            0xA => OpCode::B,
            0x4 => OpCode::ADD,
            0x5 => OpCode::ADC,
            0x2 => OpCode::SUB,
            0xD => OpCode::MOV,
            _ => OpCode::UNKNOWN,
        }
    }
}
