use gbaemu_common::mem::Memory;

use crate::{
    opcode::OpCode,
    register::{Cpsr, CpuRegister},
    CpuMode,
};

use super::{
    branch::BranchInstr, datap::DataPInstr, memory::MemoryInstr, psr::PsrInstr, Cond, Instr,
    InstrBase,
};

pub struct InstrExecutor<'c, B: Memory> {
    pub(crate) instr: Instr,

    pub(crate) register: &'c mut CpuRegister,
    pub(crate) bus: &'c mut B,
    pub(crate) mode: CpuMode,
    pub(crate) cycle: &'c mut u32,
}

impl<'c, B: Memory> InstrExecutor<'c, B> {
    pub fn execute(mut self) {
        println!("{}", self.instr);
        match self.instr {
            Instr::Branch(branch_instr) => match branch_instr.op {
                OpCode::B => self.execute_arm_branch(branch_instr),
                OpCode::BL => todo!(),
                OpCode::BLX => todo!(),
                _ => unreachable!(),
            },
            Instr::DataP(data_pinstr) => match data_pinstr.op {
                OpCode::ADC => self.execute_arm_adc(data_pinstr),
                OpCode::ADD => self.execute_arm_add(data_pinstr),
                OpCode::AND => todo!(),
                OpCode::BIC => todo!(),
                OpCode::CMN => todo!(),
                OpCode::CMP => todo!(),
                OpCode::EOR => todo!(),
                OpCode::MOV => self.execute_arm_mov(data_pinstr),
                OpCode::MVN => todo!(),
                OpCode::ORR => todo!(),
                OpCode::RSB => todo!(),
                OpCode::RSC => self.execute_arm_rsc(data_pinstr),
                OpCode::SBC => todo!(),
                OpCode::SUB => todo!(),
                OpCode::TEQ => self.execute_arm_teq(data_pinstr),
                OpCode::TST => todo!(),
                _ => unreachable!(),
            },
            Instr::Psr(psr_instr) => match psr_instr.op {
                OpCode::MSR => todo!(),
                OpCode::MRS => self.execute_arm_mrs(psr_instr),
                _ => unreachable!(),
            },
            Instr::Memory(mem_instr) => match mem_instr.op {
                OpCode::LDR => self.execute_arm_ldr(mem_instr),
                OpCode::STR => self.execute_arm_str(mem_instr),
                OpCode::STM => self.execute_arm_stm(mem_instr),
                OpCode::LDM => todo!(),
                _ => unreachable!(),
            },
        }
    }

    fn execute_arm_branch(self, instr: BranchInstr) {
        if !self.cond_match(instr) {
            return;
        }

        let mut offset = instr.offset.unwrap() << 2;
        offset = ((offset as u32) << 6) >> 6;

        self.register.pc = self.register.pc.wrapping_add(8).wrapping_add(offset as u32);
    }

    fn execute_arm_adc(self, instr: DataPInstr) {
        if !self.cond_match(instr) {
            return;
        }
        self.register[instr.rd] = self.register[instr.rn] + instr.op2; // TODO + CY
    }

    fn execute_arm_mov(&mut self, instr: DataPInstr) {
        if !self.cond_match(instr) {
            return;
        }
        self.register[instr.rd] = instr.op2;
        if instr.set_cond {
            self.register.cpsr.set(Cpsr::N, instr.op2 & 0xF0000000 == 1);
        }
    }

    fn cond_match(&self, instr: impl InstrBase) -> bool {
        match instr.cond() {
            Cond::EQ => self.register.cpsr.contains(Cpsr::Z),
            Cond::NE => !self.register.cpsr.contains(Cpsr::Z),
            Cond::CSHS => self.register.cpsr.contains(Cpsr::C),
            Cond::CCLO => !self.register.cpsr.contains(Cpsr::C),
            Cond::MI => self.register.cpsr.contains(Cpsr::N),
            Cond::PL => !self.register.cpsr.contains(Cpsr::N),
            Cond::VS => self.register.cpsr.contains(Cpsr::V),
            Cond::VC => !self.register.cpsr.contains(Cpsr::V),
            Cond::HI => {
                self.register.cpsr.contains(Cpsr::C) && !self.register.cpsr.contains(Cpsr::Z)
            }
            Cond::LS => {
                !self.register.cpsr.contains(Cpsr::C) || self.register.cpsr.contains(Cpsr::Z)
            }
            Cond::GE => {
                self.register.cpsr.contains(Cpsr::N) == self.register.cpsr.contains(Cpsr::V)
            }
            Cond::LT => {
                self.register.cpsr.contains(Cpsr::N) != self.register.cpsr.contains(Cpsr::V)
            }
            Cond::GT => {
                !self.register.cpsr.contains(Cpsr::Z)
                    && (self.register.cpsr.contains(Cpsr::N)
                        != self.register.cpsr.contains(Cpsr::V))
            }
            Cond::LE => {
                self.register.cpsr.contains(Cpsr::Z)
                    || (self.register.cpsr.contains(Cpsr::N)
                        == self.register.cpsr.contains(Cpsr::V))
            }
            Cond::AL => true,
            Cond::NV => false,
        }
    }

    fn execute_arm_teq(&self, instr: DataPInstr) {
        if !self.cond_match(instr) {
            return;
        }
        println!("{:#?}", instr);
        println!(
            "{:032b}",
            self.register[instr.rn] ^ self.register[instr.op2]
        );
        todo!()
    }

    fn execute_arm_mrs(&mut self, instr: PsrInstr) {
        if !self.cond_match(instr) {
            return;
        }
        match instr.sd {
            false => self.register.cpsr = Cpsr::from_bits(instr.rd.unwrap()).unwrap_or_default(),
            true => self.register.spsr = instr.rd.unwrap(),
        };
    }

    fn execute_arm_ldr(&mut self, instr: MemoryInstr) {
        if self.cond_match(instr) {
            return;
        }
        self.register[instr.rd] = instr.rn;
    }

    fn execute_arm_add(&mut self, instr: DataPInstr) {
        if !self.cond_match(instr) {
            return;
        }
        self.register[instr.rd] = instr.rn + instr.op2;
    }

    fn execute_arm_rsc(&mut self, instr: DataPInstr) {
        if !self.cond_match(instr) {
            return;
        }
        self.register[instr.rd] = instr.op2 - instr.rn; // TODO: + CY-1
    }

    fn execute_arm_str(&self, mem_instr: MemoryInstr) {
        todo!()
    }

    fn execute_arm_stm(&self, mem_instr: MemoryInstr) {
        println!("{:#?}", self.register);
        println!("{:08b}", mem_instr.rlist);
        todo!()
    }
}
