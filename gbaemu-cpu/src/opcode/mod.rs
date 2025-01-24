#[derive(Debug, Default, PartialEq, Eq)]
pub enum OpCodeType {
    BlockMem,
    #[default]
    Branch,
    Copro,
    DataP,
    HalfwordMem,
    Memory,
    MemorySwp,
    Mul,
    Psr,
    SoftwareInt,
}

impl From<u32> for OpCodeType {
    fn from(value: u32) -> Self {
        if (value >> 24) & 0xf == 0xf {
            return Self::SoftwareInt;
        }
        if (value >> 25) & 0x7 == 0b100 {
            return Self::BlockMem;
        }
        if (value >> 25) & 0x7 == 0b000 && (value >> 22) & 0x3 == 0b01 {
            return Self::HalfwordMem;
        }
        if (value >> 25) & 0x7 == 0b000 && (value >> 4) & 0xF == 0b1001 {
            return Self::Mul;
        }
        if (value >> 26) & 0x3 == 0b01 {
            return Self::Memory;
        }
        if (value >> 25) & 0x7 == 0b000 && (value >> 4) & 0xF == 0b1001 {
            return Self::MemorySwp;
        }
        if (value >> 26) & 0x3 == 0 && (value >> 23) & 0x3 == 2 && (value >> 20) & 0x1 == 0 {
            return Self::Psr;
        }
        if (value >> 26) & 0x3 == 0b00 {
            return Self::DataP;
        }
        Self::default()
    }
}

#[derive(Debug, Default, Clone, Copy)]
pub enum OpCode {
    ADC,
    ADD,
    AND,
    B,
    BIC,
    BL,
    BLX,
    CDP,
    CMN,
    CMP,
    EOR,
    MCR,
    MCRR,
    MLA,
    MOV,
    MRC,
    MRRC,
    MRS,
    MSR,
    MVN,
    ORR,
    PLD,
    RSB,
    RSC,
    SBC,
    STM,
    STR,
    SUB,
    SWP,
    TEQ,
    TST,
    #[default]
    UNKNOWN,
    LDR,
}

impl From<u32> for OpCode {
    fn from(value: u32) -> Self {
        let optype = OpCodeType::from(value);
        let op = match optype {
            OpCodeType::Branch => value >> 24 & 0xf,
            OpCodeType::DataP => value >> 21 & 0xf,
            OpCodeType::Mul => value >> 21 & 0xf,
            OpCodeType::Psr => value >> 21 & 0x1,
            OpCodeType::Memory => value >> 20 & 0x1,
            OpCodeType::Copro => todo!(),
            OpCodeType::BlockMem => todo!(),
            OpCodeType::HalfwordMem => todo!(),
            OpCodeType::MemorySwp => todo!(),
            OpCodeType::SoftwareInt => todo!(),
        };
        match (optype, op) {
            (OpCodeType::Psr, 0x1) => OpCode::MRS,
            (OpCodeType::Branch, 0xA) => OpCode::B,
            (OpCodeType::DataP, 0x4) => OpCode::ADD,
            (OpCodeType::DataP, 0x5) => OpCode::ADC,
            (OpCodeType::DataP, 0x2) => OpCode::SUB,
            (OpCodeType::DataP, 0xD) => OpCode::MOV,
            (OpCodeType::DataP, 0x9) => OpCode::TEQ,
            (OpCodeType::Memory, 0) => OpCode::STR,
            (OpCodeType::Memory, 1) => OpCode::LDR,
            _ => {
                println!("{:b}", op);
                OpCode::UNKNOWN
            }
        }
    }
}
