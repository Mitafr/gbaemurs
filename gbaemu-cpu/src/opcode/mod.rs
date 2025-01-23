#[derive(Debug, Default, PartialEq, Eq)]
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
        if (value >> 26) & 0x3 == 0 && (value >> 23) & 0x3 == 2 && (value >> 20) & 0x1 == 0 {
            return Self::Psr;
        }
        match (value >> 26) & 0x3 {
            0 => Self::DataP,
            1 => Self::Memory,
            _ => Self::default(),
        }
    }
}

#[derive(Debug, Default, Clone, Copy)]
pub enum OpCode {
    ADC,
    ADD,
    AND,
    B,
    BL,
    BLX,
    BIC,
    CMN,
    CMP,
    EOR,
    MOV,
    MRS,
    MSR,
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
        let optype = OpCodeType::from(value);
        let op = match optype {
            OpCodeType::Branch => value >> 24 & 0xf,
            OpCodeType::DataP => value >> 21 & 0xf,
            OpCodeType::Mul => todo!(),
            OpCodeType::Psr => value >> 21 & 0x1,
            OpCodeType::Memory => todo!(),
            OpCodeType::Copro => todo!(),
        };
        match op {
            0x1 if optype == OpCodeType::Psr => OpCode::MRS,
            0xA => OpCode::B,
            0x4 => OpCode::ADD,
            0x5 => OpCode::ADC,
            0x2 => OpCode::SUB,
            0xD => OpCode::MOV,
            0x9 => OpCode::TEQ,
            _ => {
                println!("{:b}", op);
                OpCode::UNKNOWN
            }
        }
    }
}
