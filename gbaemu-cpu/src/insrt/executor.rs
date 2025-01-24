use bitflags::Flags;
use gbaemu_common::mem::Memory;

use crate::{
    opcode::OpCode,
    register::{CpuRegister, Cspr},
};

use super::{branch::BranchInstr, datap::DataPInstr, memory::MemoryInstr, psr::PsrInstr, Instr};

pub struct InstrExecutor<'c, B: Memory> {
    pub(crate) instr: Instr,

    pub(crate) register: &'c mut CpuRegister,
    pub(crate) bus: &'c mut B,
}

impl<'c, B: Memory> InstrExecutor<'c, B> {
    pub fn execute(mut self) {
        println!("{:#?}", self.instr);
        match self.instr.clone() {
            Instr::Branch(ref branch_instr) => match branch_instr.op {
                OpCode::B => self.execute_arm_branch(&branch_instr),
                OpCode::BL => todo!(),
                OpCode::BLX => todo!(),
                _ => unreachable!(),
            },
            Instr::DataP(ref data_pinstr) => match data_pinstr.op {
                OpCode::ADC => self.execute_arm_adc(&data_pinstr),
                OpCode::ADD => todo!(),
                OpCode::AND => todo!(),
                OpCode::BIC => todo!(),
                OpCode::CMN => todo!(),
                OpCode::CMP => todo!(),
                OpCode::EOR => todo!(),
                OpCode::MOV => self.execute_arm_mov(&data_pinstr),
                OpCode::MVN => todo!(),
                OpCode::ORR => todo!(),
                OpCode::RSB => todo!(),
                OpCode::RSC => todo!(),
                OpCode::SBC => todo!(),
                OpCode::SUB => todo!(),
                OpCode::TEQ => self.execute_arm_teq(&data_pinstr),
                OpCode::TST => todo!(),
                _ => unreachable!(),
            },
            Instr::Psr(ref psr_instr) => match psr_instr.op {
                OpCode::MSR => todo!(),
                OpCode::MRS => self.execute_arm_mrs(&psr_instr),
                _ => unreachable!(),
            },
            Instr::Memory(ref mem_instr) => match mem_instr.op {
                OpCode::LDR => self.execute_arm_ldr(&mem_instr),
                OpCode::STR => todo!(),
                _ => unreachable!(),
            },
        }
    }

    fn execute_arm_branch(self, instr: &BranchInstr) {
        self.register.pc = self.register.pc + 8 + instr.offset.unwrap() * 4
    }

    fn execute_arm_adc(self, instr: &DataPInstr) {
        self.register[instr.rd] = self.register[instr.rn] + instr.op2; // TODO + CY
    }

    fn execute_arm_mov(&mut self, instr: &DataPInstr) {
        if !self.cond_match() {
            return;
        }
        self.register[instr.rd] = instr.op2;
    }

    fn cond_match(&self) -> bool {
        return true;
        // match self.instr.cond {
        //     super::Cond::EQ => todo!(),
        //     super::Cond::NE => todo!(),
        //     super::Cond::CSHS => todo!(),
        //     super::Cond::CCLO => todo!(),
        //     super::Cond::MI => todo!(),
        //     super::Cond::PL => todo!(),
        //     super::Cond::VS => todo!(),
        //     super::Cond::VC => todo!(),
        //     super::Cond::HI => todo!(),
        //     super::Cond::LS => todo!(),
        //     super::Cond::GE => todo!(),
        //     super::Cond::LT => todo!(),
        //     super::Cond::GT => todo!(),
        //     super::Cond::LE => todo!(),
        //     super::Cond::AL => true,
        //     super::Cond::NV => todo!(),
        // }
    }

    fn execute_arm_teq(&self, instr: &DataPInstr) {
        if !self.cond_match() {
            return;
        }
        println!("{:#?}", instr);
        println!(
            "{:032b}",
            self.register[instr.rn] ^ self.register[instr.op2]
        );
        todo!()
    }

    fn execute_arm_mrs(&mut self, psr_instr: &PsrInstr) {
        match psr_instr.sd {
            false => {
                self.register.cpsr = Cspr::from_bits(psr_instr.rd.unwrap()).unwrap_or_default()
            }
            true => self.register.spsr = psr_instr.rd.unwrap(),
        };
    }

    fn execute_arm_ldr(&mut self, mem_instr: &MemoryInstr) {
        todo!()
    }
}
