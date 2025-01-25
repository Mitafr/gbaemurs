B	0x00000068
B	0x0000001C
B	0x00000140
B	0x0000001C
B	0x0000001C
B	0x0000001C
B	0x00000128
LDR	SP, [PC, #416]
STMDB	SP!, {IP, LR}
MRS	IP, SPSR
MRS	LR, CPSR
STMDB	SP!, {IP, LR}
MOV	IP, 0x08000000
LDRB	LR, [IP, #156]
CMP	LR, 0x000000A5
BNE	0x00000054
LDRBEQ	LR, [IP, #180]
ANDEQS	LR, LR, 0x00000080
ADD	LR, PC, 0x00000004
LDRNE	PC, [PC, #544]
LDREQ	PC, [PC, #544]
LDR	SP, [PC, #356]
LDMIA	SP!, {IP, LR}
MSR	SPSR_cf, IP
LDMIA	SP!, {IP, LR}
SUBS	PC, LR, 0x00000004
CMP	LR, 0x00000000
MOVEQ	LR, 0x00000004
MOV	IP, 0x04000000
LDRB	IP, [IP, #768]
TEQ	IP, 0x00000001
MRSEQ	IP, CPSR
ORREQ	IP, IP, 0x000000C0
MSREQ	CPSR_cf, IP
BEQ	0x0000001C
MOV	R0, 0x000000DF
MSR	CPSR_cf, R0
MOV	R4, 0x04000000
STRB	R4, [R4, #520]
BL	0x000000E0
ADD	R0, PC, 0x00000258
STR	R0, [SP, #252]
LDR	R0, [PC, #460]
ADD	LR, PC, 0x00000000
BX	R0
MOV	R4, 0x04000000
LDRB	R2, [R4, #-6]
BL	0x000000E0
CMP	R2, 0x00000000
LDMDB	R4, {R0-IP}
MOVNE	LR, 0x02000000
MOVEQ	LR, 0x08000000
MOV	R0, 0x0000001F
MSR	CPSR_cf, R0
MOV	R0, 0x00000000
BX	LR
MOV	R0, 0x000000D3
MSR	CPSR_cf, R0
LDR	SP, [PC, #208]
MOV	LR, 0x00000000
MSR	SPSR_cf, LR
MOV	R0, 0x000000D2
MSR	CPSR_cf, R0
LDR	SP, [PC, #184]
MOV	LR, 0x00000000
MSR	SPSR_cf, LR
MOV	R0, 0x0000005F
MSR	CPSR_cf, R0
LDR	SP, [PC, #160]
ADD	R0, PC, 0x00000001
BX	R0
LDMMIDB	R8, {SP}^
;	undefined instruction
;	undefined instruction
STMDB	SP!, {R0-R3, IP, LR}
MOV	R0, 0x04000000
ADD	LR, PC, 0x00000000
LDR	PC, [R0, #-4]
LDMIA	SP!, {R0-R3, IP, LR}
SUBS	PC, LR, 0x00000004
STMDB	SP!, {R11, IP, LR}
LDRB	IP, [LR, #-2]
ADD	R11, PC, 0x00000078
LDR	IP, [R11, IP, LSL #2]
MRS	R11, SPSR
STMDB	SP!, {R11}
AND	R11, R11, 0x00000080
ORR	R11, R11, 0x0000001F
MSR	CPSR_cf, R11
STMDB	SP!, {R2, LR}
ADD	LR, PC, 0x00000000
BX	IP
LDMIA	SP!, {R2, LR}
MOV	IP, 0x000000D3
MSR	CPSR_cf, IP
LDMIA	SP!, {R11}
MSR	SPSR_cf, R11
LDMIA	SP!, {R11, IP, LR}
MOVS	PC, LR
MOV	IP, 0x04000000
MOV	R2, 0x00000004
STRB	R2, [IP, #1]
MOV	R2, 0x00000008
STRB	R2, [IP, #0]
MOV	R2, 0x00000000
B	0x000001AC
MOV	R2, 0x00000080
MOV	IP, 0x04000000
STRB	R2, [IP, #769]
BX	LR
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
STRHEQ	R0, [R0], -R4
ANDEQ	R0, R0, R3, ASR #19
ANDEQ	R0, R0, R0, LSR #3
ANDEQ	R0, R0, R8, LSR #3
ANDEQ	R0, R0, R0, LSR R3
ANDEQ	R0, R0, R8, LSR #6
;	undefined instruction
ANDEQ	R0, R0, R8, LSR #7
ANDEQ	R0, R0, R4, LSL #8
ANDEQ	R0, R0, R4, ROR R4
;	undefined instruction
ANDEQ	R0, R0, SP, ASR #22
ANDEQ	R0, R0, R4, ASR #23
ANDEQ	R0, R0, R8, ROR R3
ANDEQ	R0, R0, IP, LSR #24
ANDEQ	R0, R0, R0, ROR #25
ANDEQ	R0, R0, R0, ROR #30
;	undefined instruction
;	undefined instruction
ANDEQ	R1, R0, R4, LSL R0
ANDEQ	R1, R0, R9, ROR R2
ANDEQ	R1, R0, R1, ASR #5
ANDEQ	R1, R0, R3, LSR R3
ANDEQ	R1, R0, SP, ASR R3
;	undefined instruction
ANDEQ	R0, R0, R1, LSL #16
ANDEQ	R1, R0, R5, ROR #12
;	undefined instruction
ANDEQ	R1, R0, R5, ASR #27
ANDEQ	R2, R0, SP, LSL #2
ANDEQ	R1, R0, R5, LSR #16
;	undefined instruction
ANDEQ	R1, R0, R5, ASR #7
ANDEQ	R1, R0, R5, LSR R4
ANDEQ	R1, R0, R1, ASR #9
;	undefined instruction
ANDEQ	R1, R0, R5, LSL R5
ANDEQ	R2, R0, PC, ASR #17
ANDEQ	R0, R0, IP, LSL #1
ANDEQ	R0, R0, IP, LSR #3
ANDEQ	R1, R0, R9, ROR R8
ANDEQ	R1, R0, R9, ASR #17
;	undefined instruction
LDMEQIB	LR!, {SP}^
LDMEQIB	PC!, {LR, PC}^
ANDEQ	R1, R0, R9, LSR #18
SWINV	16776704
;	undefined instruction
;	undefined instruction
;	undefined instruction
SBCHS	R2, R2, R0, LSL #2
ADDLO	R1, R0, 0x00002200
SUBVCS	R7, R0, 0x00000090
;	undefined instruction
ORRHSS	R2, R0, 0x0000000A
LDRBHS	R9, [R0, R0, LSL #12]!
ANDNV	R9, R0, R1, LSL #14
ADDHS	PC, R3, R8, ROR R10
MOVHI	R0, R0, ASR #3
ADCVS	R4, R0, 0x000F0000
SBCEQ	R1, R0, 0x00000000
BLMI	0x00398E44
STMHIDA	R11!, {R0, R1, R3, R5, SP, LR}
;	undefined instruction
SUBHIS	R1, R7, R2, LSL R9
BNV	0x0083C2E0
RSBVC	R2, R0, R4
BLNE	0xFF6DC35C
;	undefined instruction
ANDLS	R4, R2, R8, ASR #7
STMGEDB	R2, {R2, R4, R6, R7, R10, IP, SP}
RSBVS	R6, R6, R1, LSR #0
ADCVS	R4, R1, R1, LSL #18
BNV	0x0053C300
STRHI	R6, [R0, #-0]
SWINV	16766976
SWIVC	16743390
ANDEQ	R0, R0, R3, ROR #24
MOV	R3, 0x04000000
LDR	R2, [R3, #512]
AND	R2, R2, R2, LSR #16
ANDS	R1, R2, 0x00000080
LDRNE	R0, [PC, #1952]
ANDEQ	R1, R2, 0x00000001
LDREQ	R0, [PC, #1948]
STRHEQ	R2, [R3, #-8]
STRB	R1, [R3, #514]
BX	R0
MOV	R0, 0x00000001
MOV	R1, 0x00000001
STMDB	SP!, {R4, LR}
MOV	R3, 0x00000000
MOV	R4, 0x00000001
CMP	R0, 0x00000000
BLNE	0x00000358
STRB	R3, [IP, #769]
BL	0x00000358
BEQ	0x00000344
LDMIA	SP!, {R4, LR}
BX	LR
MOV	IP, 0x04000000
STRB	R3, [IP, #520]
LDRH	R2, [IP, #-8]
ANDS	R0, R1, R2
EORNE	R2, R2, R0
STRHNE	R2, [IP, #-8]
STRB	R4, [IP, #520]
BX	LR
MOV	R0, 0x00000000
MOV	R3, 0x00000000
MOV	IP, 0x000000DF
LDMIA	R3!, {R2}
MSR	CPSR_cf, IP
ADD	R0, R0, R2
MOVS	R1, R3, LSR #14
BEQ	0x00000380
BX	LR
;	undefined instruction
LDRBMI	R4, [R0, -R0, ASR #4]!
LDRMI	R10, [R8, -R3, LSL #6]
MOV	R3, R0
MOV	R0, R1
MOV	R1, R3
ANDS	R3, R1, 0x80000000
RSBMI	R1, R1, 0x00000000
EORS	IP, R3, R0, ASR #0
RSBHS	R0, R0, 0x00000000
MOVS	R2, R1
CMP	R2, R0, LSR #1
MOVLS	R2, R2, LSL #1
BLO	0x000003C8
CMP	R0, R2
ADC	R3, R3, R3
SUBHS	R0, R0, R2
TEQ	R2, R1
MOVNE	R2, R2, LSR #1
BNE	0x000003D4
MOV	R1, R0
MOV	R0, R3
MOVS	IP, IP, LSL #1
RSBHS	R0, R0, 0x00000000
RSBMI	R1, R1, 0x00000000
BX	LR
STMDB	SP!, {R4}
MOV	IP, R0
MOV	R1, 0x00000001
CMP	R0, R1
MOVHI	R0, R0, LSR #1
MOVHI	R1, R1, LSL #1
BHI	0x00000410
MOV	R0, IP
MOV	R4, R1
MOV	R3, 0x00000000
MOV	R2, R1
CMP	R2, R0, LSR #1
MOVLS	R2, R2, LSL #1
BLO	0x00000430
CMP	R0, R2
ADC	R3, R3, R3
SUBHS	R0, R0, R2
TEQ	R2, R1
MOVNE	R2, R2, LSR #1
BNE	0x0000043C
ADD	R1, R1, R3
MOVS	R1, R1, LSR #1
CMP	R1, R4
BLO	0x00000420
MOV	R0, R4
LDMIA	SP!, {R4}
BX	LR
LDRMI	R10, [R8, -R0, LSL #6]
MUL	R1, R0, R0
MOV	R1, R1, ASR #14
RSB	R1, R1, 0x00000000
MOV	R3, 0x000000A9
MUL	R3, R1, R3
MOV	R3, R3, ASR #14
ADD	R3, R3, 0x00000390
MUL	R3, R1, R3
MOV	R3, R3, ASR #14
ADD	R3, R3, 0x00000900
ADD	R3, R3, 0x0000001C
MUL	R3, R1, R3
MOV	R3, R3, ASR #14
ADD	R3, R3, 0x00000F00
ADD	R3, R3, 0x000000B6
MUL	R3, R1, R3
MOV	R3, R3, ASR #14
ADD	R3, R3, 0x00001600
ADD	R3, R3, 0x000000AA
MUL	R3, R1, R3
MOV	R3, R3, ASR #14
ADD	R3, R3, 0x00002000
ADD	R3, R3, 0x00000081
MUL	R3, R1, R3
MOV	R3, R3, ASR #14
ADD	R3, R3, 0x00003600
ADD	R3, R3, 0x00000051
MUL	R3, R1, R3
MOV	R3, R3, ASR #14
ADD	R3, R3, 0x0000A200
ADD	R3, R3, 0x000000F9
MUL	R0, R3, R0
MOV	R0, R0, ASR #16
BX	LR
STMHSDB	R0, {R4-R8, R10, IP, SP, PC}
STMHSDA	R0, {R1, R2, R8, IP, LR, PC}
ANDHS	SP, R0, R1, LSL #22
ADDHS	LR, R0, R9, ASR #0
SUB	R0, R6, R0, LSL #4
;	undefined instruction
BLLE	0x0008A91C
ANDEQ	R2, R0, 0x00000040
SBCHS	LR, R0, PC, LSR R0
EORS	R0, IP, R0, LSL #4
ORREQS	R1, R2, 0x00000200
ORREQS	R1, R11, 0x00000B00
SUBMI	R4, SP, 0x40000004
EOREQS	R2, R6, 0x04000000
STMHSDB	R0, {R0-R2, R4-R6}
STMHSDA	R0, {R0, R1, R3, R4, R8, R9, R11, IP, LR, PC}
ADDMI	SP, R8, 0x00003C00
;	undefined instruction
;	undefined instruction
LDRBNV	PC, [PC, SP, LSR #30]!
MLA	PC, R1, PC, R6
;	undefined instruction
LDRBNV	PC, [PC, R7, LSR #30]!
BNE	0x00C4038C
ADDMI	LR, IP, 0x0000001F
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDMNEDA	R8!, {R0, R7-PC}
STMHSDA	R0, {R0, R2, R4, SP-PC}
ADCMI	SP, IP, 0x00000900
;	undefined instruction
SWINV	1243135
SWINV	7796735
BNE	0x00C06D64
ADCMI	LR, R8, 0x00000009
;	undefined instruction
;	undefined instruction
LDRBNV	PC, [PC, R7, LSL #30]!
LDMNEIB	PC!, {R0, R1, R3, R5, R6, R8-PC}^
;	undefined instruction
LDRMI	R11, [R8, -R8, LSL #24]
;	undefined instruction
LDRHS	R0, [LR, #1590]
;	undefined instruction
ANDNV	R2, R0, R11, LSL R1
STRHS	PC, [IP], #-2171
STMVCDA	R11!, {R2, R6, R8, R9, LR}
SWIEQ	10160027
;	undefined instruction
STRGE	R1, [R9, #-2212]
STRHS	R1, [R0], #-2349
ANDNV	R1, R0, R0, LSR #24
;	undefined instruction
;	undefined instruction
STMHIDA	R9!, {R2, R9, R11, IP, LR, PC}
TEQMI	R1, 0x00000049
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
RSCLOS	R1, R1, 0x4000002F
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDRBVC	R1, [LR, #106]!
LDMVCDA	R9!, {R3, R6-R8, R11, SP}
;	undefined instruction
ADCNE	R7, R8, 0x00380000
;	undefined instruction
;	undefined instruction
;	undefined instruction
TEQMI	R7, R6, ASR #23
;	undefined instruction
BLLO	0x013DB554
;	undefined instruction
;	undefined instruction
;	undefined instruction
RSCLOS	R7, R7, IP, ROR #8
;	undefined instruction
BNE	0x014552C8
BLPL	0x01F46C18
LDMNEDB	R0!, {R1, R2, R4, R6, R7, R9-R11, LR}^
STRBVC	R3, [R11, #3879]
ADDNE	R3, IP, 0x00001880
SWIHS	11367608
;	undefined instruction
SWIMI	3828890
;	undefined instruction
SWIMI	3881137
;	undefined instruction
STRLO	R6, [R7, #585]
STRLO	R1, [R6, #2940]
;	undefined instruction
;	undefined instruction
ORRMI	R2, IP, 0x00032800
LDMPLDA	PC!, {R0-R3, R5, R6, R9-R11, SP}^
;	undefined instruction
SWIVS	10636473
;	undefined instruction
SWINE	3950426
;	undefined instruction
RSBLO	R5, R4, 0x40000026
STMMIIB	PC!, {R0, R6, R8, R9, R11-LR}^
;	undefined instruction
STRHS	R11, [R3], #-1328
STMVCDA	R2, {R8, R9, SP}
STRHS	R4, [R4, #-483]
ANDEQS	R4, R2, 0x00000053
;	undefined instruction
;	undefined instruction
;	undefined instruction
SWIEQ	8390336
LDRLT	R11, [R0, #-3376]
;	undefined instruction
LDREQ	R2, [R11], -R8, LSL #6
STMNEDB	R0, {R3, R4, R8, R10-IP}
STMNEDB	R9, {R3-R8, R11, LR}
ANDNV	R2, R0, R10, LSL #4
;	undefined instruction
LDMMIIB	R6!, {R4-R6, R8, R10, IP, SP, PC}^
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
BLE	0x0018C174
;	undefined instruction
;	undefined instruction
SMLALLES	R4, R0, R10, R2
LDRHS	LR, [R9], #-9
STMNEIA	R4!, {R1, R7, R8, R10-IP, LR}
;	undefined instruction
;	undefined instruction
ANDHS	SP, R0, R1, LSL #2
ANDHS	LR, R1, R0
BLMI	0xFFA2FCEC
RSBHSS	R2, LR, R8, LSL #4
ADDPLS	R4, R8, R0, ASR #4
BHS	0x01E0CF78
;	undefined instruction
;	undefined instruction
CMPMI	R6, 0x0000009E
BNE	0xFE6C9448
;	undefined instruction
;	undefined instruction
BNE	0xFFD80FC0
BHS	0x00BD8790
LDRHS	SP, [R10], -R7, LSL #24
BLO	0x012114B8
;	undefined instruction
LDMNEIA	R6!, {R0, R1, R3, R4, R9}^
;	undefined instruction
;	undefined instruction
;	undefined instruction
ADDHS	R1, R0, R1, LSR IP
LDRBNV	R0, [PC, R0, LSL #8]!
RSBEQS	PC, R3, R5, LSL LR
LDRHHI	R8, [R11, #27]!
BICEQ	R2, R9, PC, ROR R1
RSBVSS	R6, R9, R9, LSR R0
;	undefined instruction
;	undefined instruction
EORNE	R8, R9, 0x4000000E
STRNE	R4, [R9], #-833
;	undefined instruction
LDRBLT	R11, [R0, #3568]!
;	undefined instruction
STRHS	R2, [R0], -R0, LSL #14
STMNEDA	R0, {R5, R7-R9, IP, LR}^
ADDMIS	R1, R6, 0x0000B600
STMNEDB	R4!, {R1, R3-R9, R11, IP, LR, PC}^
ADDMIS	R1, PC, 0x00007F00
;	undefined instruction
;	undefined instruction
SUBEQ	R4, R3, R2, ASR #25
LDMNEIB	R11, {R0, R1, R3, R4, R11, IP}^
LDMNEDB	R11, {R0, R1, R3, R4, R7}
LDMVSDB	LR, {R0, R2-R4, R6, R11, SP, LR}
BNE	0x016C9458
;	undefined instruction
LDMEQDB	IP, {R0, R1, R3, R4, R7, R8, R11, IP}^
LDREQ	R2, [R3, #-1567]!
BEQ	0xFE750874
;	undefined instruction
;	undefined instruction
TSTMI	IP, 0x00000034
LDRSBEQ	R1, [LR], #-147
LDMNEIA	R3!, {R1, R2, R4, R5, R7-R9, R11, LR}^
;	undefined instruction
;	undefined instruction
ANDEQ	R2, R9, 0x80000000
BLMI	0xFECD223C
BLMI	0xFECA2878
;	undefined instruction
ANDLE	R2, R3, R0, LSL #16
BLE	0x00251DA0
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
STMMIIB	R10!, {R4-R6, R8-R10, LR}
TSTEQ	R2, R7, LSR R2
AND	R4, PC, R9, LSR #17
EORHS	R4, R4, 0x0029C000
AND	R4, R11, R8, LSR #17
STREQ	R2, [R9], -R7, LSL #2
STMMIIA	R7!, {R4, R6, R9, SP}
STMMIIB	R7!, {R1, R2, SP-PC}
ANDLE	R2, R1, R0, LSL #16
STMNEDA	R9, {R6, R9}
STMMIIA	R5!, {R3, R9, SP}
LDMNEDA	R2, {R4, R5, R8, R10, IP, SP, PC}^
ADDMIS	R4, R8, 0x00026C00
;	undefined instruction
ADDMIS	R0, R8, 0x6C000000
STMGTDA	R8, {R0, R1, R9, R11, IP, LR, PC}
ADDMIS	IP, R1, 0x00000002
;	undefined instruction
;	undefined instruction
STMGTIB	R0!, {R0, R2-R4, R7, R8, R11, LR}
ADCGT	R10, R0, R2, LSL #16
BLMI	0xFE752AF8
LDMEQIB	R11, {R0, R1, R3, R4, R11-LR}^
LDMMIIA	IP, {R8, IP, LR, PC}
ANDHS	R4, R10, 0x00248000
LDMNVDB	IP, {IP-PC}^
;	undefined instruction
;	undefined instruction
LDMVCDA	R8, {R1-R3, R5, R7-R9, IP, SP}
;	undefined instruction
;	undefined instruction
STMGEDA	R4, {R2, R8, R9, IP, PC}
STMNVDB	LR, {IP-PC}^
SWINV	12449791
LDMMIIB	R3, {R3, R7, R11, LR}
BLNV	0xFEABC8C0
STMMIIB	R6, {R0, R4, R7, R11, LR}
;	undefined instruction
ADCEQS	R2, R8, R0, LSL #14
BMI	0xFE0E48DC
STMNEIA	R0, {R3-R5, R9}
ADCEQS	R4, R9, 0x00023400
BGE	0x00086C00
BLNV	0x0103C8E0
SWIHS	531583
;	undefined instruction
BLMI	0xFE2098F8
STMNEDB	R0, {R3-R6}
STMNEIA	R0, {R9}^
BLPL	0xFF693710
;	undefined instruction
ORREQ	R1, R9, R9, LSL #17
ADDHS	R1, R0, 0x00C90000
STMNVDB	R4!, {IP-PC}
BLE	0xFFB8829C
BLE	0xFFAC840C
ANDNV	R4, R0, IP, ROR #16
ANDNV	PC, R0, IP, LSL R8
ANDNV	PC, R0, PC, LSR #16
EORHS	PC, R0, 0x00340000
LDMMIDB	SP!, {R0, R9, IP, PC}^
;	undefined instruction
LDMMIDB	IP!, {R2, R9, SP}^
;	undefined instruction
;	undefined instruction
BICMI	R0, R8, 0x00900000
ANDHS	R8, R0, R8
SWINV	8910847
LDRBNV	R2, [PC, R1]!
LDRBNV	PC, [PC, R4, LSL #31]!
ANDLT	PC, R5, SP, ROR PC
LDRBLT	R11, [R1, #3568]!
EORVC	R4, R0, R4, ROR IP
SWINV	7534591
LDMMIDB	R3!, {R11, IP, PC}^
ANDNV	R2, R0, LR, ASR #4
LDMMIDA	LR, {R0-R2, R4-R7, R11-PC}^
ANDNV	R4, R0, R8, ROR #18
STMMIDA	R7!, {R0, R2, R4, R6, R8, R9, R11-PC}^
ANDVS	R4, R2, PC, ROR #20
ANDNV	R4, R0, R10, ASR R9
;	undefined instruction
LDMMIDA	R8, {R0, R4-R8, R10, IP, SP, PC}^
BMI	0x01B12F08
BNV	0xFFBBC984
LDRBLT	R11, [R1, #3569]!
;	undefined instruction
LDRHS	R2, [R4, #-1794]!
STRGT	IP, [PC], #-3599
;	undefined instruction
;	undefined instruction
;	undefined instruction
STMMIDA	R5!, {R0, R1, R3-R5, R7, R9}^
STMMIDB	R5!, {R6, R7, R11, IP}^
ANDHS	R1, R1, 0x00C90000
ANDNV	R0, R0, R2, LSL R2
;	undefined instruction
;	undefined instruction
STMMIDB	R8, {R0-R2, SP, LR}^
ANDEQS	R2, R2, 0x80000000
LDMNVDA	R9!, {IP-PC}^
LDRBLT	R11, [R0, #3569]!
;	undefined instruction
STRHS	R4, [R4], #-3420
;	undefined instruction
ORRHS	R9, R0, R0, LSL #6
STRHS	R8, [R0], R1, LSR #0
ANDLES	R4, SP, LR, LSR R2
STMNEDB	R9, {R0, R5, R6, R10, R11}
ANDNV	R2, R0, R8, LSL #4
STMLODB	R0!, {R0, R1, R5, R6, R11-PC}
;	undefined instruction
STMNEDB	R9, {R0, R5, R10, R11}
;	undefined instruction
ANDNV	R2, R0, R8, LSL #4
SWINE	653401
ANDNV	R2, R0, R0, LSL R2
MOVHSS	PC, R5, ASR R8
ANDHSS	R1, R8, 0x00024000
LDMNVDA	R0, {IP-PC}^
;	undefined instruction
;	undefined instruction
;	undefined instruction
STMMIDB	R9, {R5, R9, R10, SP}^
ANDNV	R2, R0, R8, LSL #4
BEQ	0xFF8BEB3C
TSTLO	R0, R10, LSL #1
ANDVC	R2, R10, R7, LSL #4
LDMNVDA	LR!, {IP-PC}
EORMIS	R2, LR, 0x04000000
ORRHS	SP, R0, R9, LSL R0
STMMIDA	R2, {R0, R3, R8, R11, IP}^
;	undefined instruction
STMHIDB	R8, {R3, SP, LR}
;	undefined instruction
LDMLODB	R0, {R3, R8, PC}
;	undefined instruction
ANDNV	R2, R0, R8, LSL #4
STMLODB	R0, {R0, R1, R3, R5, R11-PC}^
;	undefined instruction
ANDNV	R2, R0, R8, LSL #4
ANDHS	PC, R0, 0x00250000
STMNEDB	R9, {R7, R8, SP}
STRHS	R7, [R1], -R10, LSL #2
BEQ	0xFE882BF8
LDMNVDA	IP, {IP-PC}
;	undefined instruction
BLEQ	0x002822A4
LDMNVDA	R6, {IP-PC}
;	undefined instruction
;	undefined instruction
LDMNVDA	R0, {IP-PC}
;	undefined instruction
;	undefined instruction
STMNVDA	R10, {IP-PC}
;	undefined instruction
BMI	0x00A822C8
STMNVDA	R4, {IP-PC}
;	undefined instruction
LDRMI	R11, [R8, -R8, LSL #24]
;	undefined instruction
;	undefined instruction
ADD	R4, R3, R10, LSR #6
ANDEQ	R2, R0, R1, ROR SP
ANDEQ	R2, R0, SP, LSL #2
;	undefined instruction
;	undefined instruction
;	undefined instruction
ANDEQ	R3, R0, R0, LSL #4
STREQ	R0, [R0, #-512]
STREQ	R0, [R0], #-136
;	undefined instruction
ANDEQ	R3, R0, IP, LSR #6
ANDEQ	R3, R0, IP, ROR #4
;	undefined instruction
STREQ	R0, [R0, #-56]
ANDEQ	R3, R0, R4, ROR #4
ANDEQ	R3, R0, R0, ASR #1
BLEQ	0xFFF88A7C
STMEQDA	R0, {R2, R4, R5, R7}
BLEQ	0x00000A84
STRHI	R0, [R0, #-39]
;	undefined instruction
STREQ	R0, [R0], -R0, ASR #0
STRHEQ	R3, [R0], -R0
STREQ	R0, [R1], -R0
STREQ	R11, [R0], -R0, LSL #17
ANDEQ	R0, R0, R2, LSL #4
ANDEQ	R7, R0, R1, ROR R2
;	undefined instruction
;	undefined instruction
ANDEQ	SP, R0, R2, LSL #1
ANDEQ	R3, R0, R8, ASR #1
STREQ	R2, [R0], -R0, ASR #9
STREQ	R2, [R0], -R0, ASR #0
STREQ	R6, [R1], -R0, LSL #16
STRHI	R0, [R0, #-0]
STREQ	R0, [R0], #-272
STMHIDA	LR, {}
ANDEQ	R1, R0, R0, LSL #31
SBCEQS	R11, R4, 0x0C000000
ANDNV	R0, R0, R4, ROR #20
ANDLES	PC, LR, R3, LSR #16
;	undefined instruction
STMNEDB	SP, {R2, R3, R8, R9, IP, LR, PC}
;	undefined instruction
ADCMI	IP, R9, 0x00080000
;	undefined instruction
ADCMI	LR, R9, 0x03EC0000
STMGTDA	R8, {R0, R4, R9, R11, IP, LR, PC}
LDRB	IP, [R10, R8, LSL #2]!
;	undefined instruction
STMHIDA	R3, {R0, R2, R8, R9, IP, LR, PC}
BLE	0x0021161C
;	undefined instruction
ADCMI	LR, R5, 0x03E80000
BLPL	0x010F73A0
;	undefined instruction
;	undefined instruction
LDRMI	R11, [R8, -R8, LSL #24]
;	undefined instruction
ANDEQ	R4, R0, R8, LSL R7
CMP	IP, 0x00000000
BEQ	0x00000BBC
BIC	IP, IP, 0xFE000000
ADD	IP, R0, IP
TST	R0, 0x0E000000
TSTNE	IP, 0x0E000000
BX	LR
;	undefined instruction
STMDB	SP!, {R4-R10, LR}
MOV	R10, R2, LSL #11
MOVS	IP, R10, LSR #9
BL	0x00000BA4
BEQ	0x00000C24
ADD	R10, R1, R10, LSR #9
MOVS	R2, R2, LSR #25
BLO	0x00000C14
LDR	R2, [R0, #0]
MOV	R3, R2
MOV	R4, R2
MOV	R5, R2
MOV	R6, R2
MOV	R7, R2
MOV	R8, R2
MOV	R9, R2
CMP	R1, R10
STMLTIA	R1!, {R2-R9}
BLT	0x00000C04
B	0x00000C24
CMP	R1, R10
LDMLTIA	R0!, {R2-R9}
STMLTIA	R1!, {R2-R9}
BLT	0x00000C14
LDMIA	SP!, {R4-R10, LR}
BX	LR
STMDB	SP!, {R4-R11}
SUBS	R2, R2, 0x00000001
BLT	0x00000CD8
LDRH	R3, [R0, #16]
MOV	R3, R3, LSR #8
ADD	IP, PC, 0x00000114
ADD	R8, R3, 0x00000040
AND	R8, R8, 0x000000FF
MOV	R8, R8, LSL #1
LDRSH	R11, [R8, IP]
MOV	R8, R3, LSL #1
LDRSH	IP, [R8, IP]
LDRSH	R9, [R0, #12]
LDRSH	R10, [R0, #14]
MUL	R8, R11, R9
MOV	R3, R8, ASR #14
MUL	R8, IP, R9
MOV	R4, R8, ASR #14
MUL	R8, IP, R10
MOV	R5, R8, ASR #14
MUL	R8, R11, R10
MOV	R6, R8, ASR #14
LDMIA	R0, {R9, R10, IP}
MOV	R11, IP, LSL #16
MOV	R11, R11, ASR #16
MOV	IP, IP, ASR #16
RSB	R8, R11, 0x00000000
MLA	R9, R3, R8, R9
MLA	R9, R4, IP, R8
STR	R8, [R1, #8]
RSB	R8, R11, 0x00000000
MLA	R10, R5, R8, R10
RSB	R8, IP, 0x00000000
MLA	R10, R6, R8, R8
STR	R8, [R1, #12]
STRH	R3, [R1, #0]
RSB	R4, R4, 0x00000000
STRH	R4, [R1, #2]
STRH	R5, [R1, #4]
STRH	R6, [R1, #6]
ADD	R0, R0, 0x00000014
ADD	R1, R1, 0x00000010
B	0x00000C30
LDMIA	SP!, {R4-R11}
BX	LR
STMDB	SP!, {R8-R11}
SUBS	R2, R2, 0x00000001
BLT	0x00000D54
LDRH	R9, [R0, #4]
MOV	R9, R9, LSR #8
ADD	IP, PC, 0x00000060
ADD	R8, R9, 0x00000040
AND	R8, R8, 0x000000FF
MOV	R8, R8, LSL #1
LDRSH	R11, [R8, IP]
MOV	R8, R9, LSL #1
LDRSH	IP, [R8, IP]
LDRSH	R9, [R0, #0]
LDRSH	R10, [R0, #2]
MUL	R8, R11, R9
MOV	R8, R8, ASR #14
STRH	R8, [R1], R3
MUL	R8, IP, R9
MOV	R8, R8, ASR #14
RSB	R8, R8, 0x00000000
STRH	R8, [R1], R3
MUL	R8, IP, R10
MOV	R8, R8, ASR #14
STRH	R8, [R1], R3
MUL	R8, R11, R10
MOV	R8, R8, ASR #14
STRH	R8, [R1], R3
ADD	R0, R0, 0x00000008
B	0x00000CE4
LDMIA	SP!, {R8-R11}
BX	LR
ORREQS	R0, R2, R0
;	undefined instruction
LDRBEQ	R0, [R5, R5, ASR #12]
BEQ	0xFFC43300
;	undefined instruction
TSTNE	R1, IP, LSL #31
LDRNE	R1, [R3], #-660
STRNE	R1, [R8, -PC, LSL #11]
STMNEIB	PC!, {R0, R2-R6, R11, IP}^
;	undefined instruction
SWINE	9117227
EORHSS	R2, SP, 0x000000E7
LDRBHS	R2, [R10], #910
;	undefined instruction
STMHSIB	SP, {R0, R3, R4, R7, R11, SP}^
;	undefined instruction
;	undefined instruction
RSBLOS	R2, R6, R11, ROR #30
RSBLOS	R3, R4, 0x4000001E
LDRBLO	R3, [R3], #-871
;	undefined instruction
STRLO	R3, [PC, R5, ROR #13]!
STMLODB	R10!, {R0, R4-R6, R11-SP}
BLO	0xFE08F528
BLLO	0xFED8FA44
;	undefined instruction
;	undefined instruction
;	undefined instruction
SWILO	933573
SWILO	8666958
SWILO	13844401
SWILO	16465900
SWILO	16465920
SWILO	13844460
SWILO	8667057
SWILO	933710
;	undefined instruction
;	undefined instruction
;	undefined instruction
BLLO	0xFED8FF08
BLO	0xFE08FA84
STMLODB	R10!, {R1, R3, R4, R6-R8, R11-SP}
;	undefined instruction
LDRLO	R3, [R2], -R5, ROR #13
LDRBLO	R3, [R3], #-1334
RSBLOS	R3, R4, 0x9C000001
RSBLOS	R3, R6, R9, ROR R1
;	undefined instruction
;	undefined instruction
STMHSIB	SP, {R1, R3-R7, R9, R11, SP}^
;	undefined instruction
LDRBHS	R2, [R10], #1567
EORHSS	R2, SP, 0x38000002
SWINE	9117927
;	undefined instruction
STMNEIB	PC!, {R0, R2-R4, R6, R8, R9, R11, IP}^
;	undefined instruction
LDRNE	R1, [R3], #-1423
;	undefined instruction
;	undefined instruction
BEQ	0xFFC44044
LDRBEQ	R0, [R5, R4, ROR #18]
;	undefined instruction
ORREQS	R0, R2, R3, LSR #6
;	undefined instruction
BLNV	0x013001DC
STMNVDA	R11!, {R0, R1, R3-R5, R7, R8, R11-PC}
STRNV	PC, [PC, #-1692]
;	undefined instruction
;	undefined instruction
BL	0xFFB7C42C
LDMIA	R8!, {R0, R4-R6, R9, R11, SP-PC}^
LDR	LR, [R1], -R3, LSL #15
TEQ	R10, 0xA3000000
;	undefined instruction
;	undefined instruction
BLLE	0x009B805C
STMLEIA	R1!, {R0, R5-R8, R11, IP, LR, PC}
;	undefined instruction
BICLES	SP, PC, 0x01800000
;	undefined instruction
SWIGT	9097365
;	undefined instruction
BLGT	0xFEB74114
STMGTIB	LR!, {R1, R3, R6, R7, R9, R11, LR, PC}^
LDMGTDA	R1, {R0, R1, R3, R4, R8, R11, LR, PC}^
LDRBGT	IP, [R6], PC, LSL #15
LDRBGT	IP, [LR, #-1574]!
STRBGT	IP, [R10], #-1248
TEQGT	R11, 0xF8000002
SUBGTS	IP, R2, 0x2000000C
ORRGT	IP, PC, IP, ROR #3
RSCGTS	IP, R2, R11, LSR R1
;	undefined instruction
EORGT	IP, SP, PC, ASR #0
ANDGT	IP, R5, R4, LSL R0
ANDGT	IP, R5, R0
EORGT	IP, SP, R4, LSL R0
RSBGTS	IP, IP, PC, ASR #0
;	undefined instruction
ORRGT	IP, PC, R11, LSR R1
SUBGTS	IP, R2, 0x0000003B
TEQGT	R11, 0x2000000C
STRBGT	IP, [R10], #-958
LDRBGT	IP, [LR, #-1248]!
LDRBGT	IP, [R6], R6, LSR #12
LDMGTDA	R1, {R0-R3, R7-R10, LR, PC}^
STMGTIB	LR!, {R0, R1, R3, R4, R8, R11, LR, PC}^
BLGT	0xFEB73A3C
;	undefined instruction
SWIGT	9096839
;	undefined instruction
BICLES	SP, PC, 0xF000000B
;	undefined instruction
STMLEIA	R1!, {R0-R2, R5, R6, R8-R10, IP, LR, PC}
BLLE	0x009B76B4
;	undefined instruction
RSBS	SP, R5, R9, LSL PC
TEQ	R10, 0x40000035
LDR	LR, [R1], -R3, LSR #9
LDMIA	R8!, {R0, R1, R7-R10, SP-PC}^
BL	0xFFB7B90C
;	undefined instruction
;	undefined instruction
STRNV	PC, [PC, #-900]
STMNVDA	R11!, {R2-R4, R7, R9, R10, IP-PC}
BLNV	0x012FF648
;	undefined instruction
;	undefined instruction
STMDB	SP!, {R4-R11, LR}
SUB	SP, SP, 0x00000008
LDRH	R7, [R2, #0]
MOVS	IP, R7
BL	0x00000BA4
BEQ	0x00001004
LDRB	R6, [R2, #2]
RSB	R10, R6, 0x00000008
MOV	LR, 0x00000000
LDR	R11, [R2, #4]
MOV	R8, R11, LSR #31
LDR	R11, [R2, #4]
MOV	R11, R11, LSL #1
MOV	R11, R11, LSR #1
STR	R11, [SP, #4]
LDRB	R2, [R2, #3]
MOV	R3, 0x00000000
SUBS	R7, R7, 0x00000001
BLT	0x00001004
MOV	R11, 0x000000FF
MOV	R5, R11, ASR R10
LDRB	R9, [R0], #1
MOV	R4, 0x00000000
CMP	R4, 0x00000008
BGE	0x00000FA4
AND	R11, R9, R5
MOVS	IP, R11, LSR R4
CMPEQ	R8, 0x00000000
BEQ	0x00000FDC
LDR	R11, [SP, #4]
ADD	IP, IP, R11
ORR	LR, LR, IP, LSL R3
ADD	R3, R3, R2
CMP	R3, 0x00000020
BLT	0x00000FF8
STR	LR, [R1], #4
MOV	LR, 0x00000000
MOV	R3, 0x00000000
MOV	R5, R5, LSL R6
ADD	R4, R4, R6
B	0x00000FBC
ADD	SP, SP, 0x00000008
LDMIA	SP!, {R4-R11, LR}
BX	LR
;	undefined instruction
STMDB	SP!, {R4-R11, LR}
SUB	SP, SP, 0x00000008
MOVS	IP, 0x02000000
BL	0x00000BA4
BEQ	0x000010EC
ADD	R2, R0, 0x00000004
ADD	R7, R2, 0x00000001
LDRB	R10, [R0, #0]
AND	R4, R10, 0x0000000F
MOV	R3, 0x00000000
MOV	LR, 0x00000000
AND	R10, R4, 0x00000007
ADD	R11, R10, 0x00000004
STR	R11, [SP, #4]
LDR	R10, [R0, #0]
MOV	IP, R10, LSR #8
LDRB	R10, [R2, #0]
ADD	R10, R10, 0x00000001
ADD	R0, R2, R10, LSL #1
MOV	R2, R7
CMP	IP, 0x00000000
BLE	0x000010EC
MOV	R8, 0x00000020
LDR	R5, [R0], #4
SUBS	R8, R8, 0x00000001
BLT	0x00001064
MOV	R10, 0x00000001
AND	R9, R10, R5, LSR #31
LDRB	R6, [R2, #0]
MOV	R6, R6, LSL R9
MOV	R10, R2, LSR #1
MOV	R10, R10, LSL #1
LDRB	R11, [R2, #0]
AND	R11, R11, 0x0000003F
ADD	R11, R11, 0x00000001
ADD	R10, R10, R11, LSL #1
ADD	R2, R10, R9
TST	R6, 0x00000080
BEQ	0x000010DC
MOV	R3, R3, LSR R4
LDRB	R10, [R2, #0]
RSB	R11, R4, 0x00000020
ORR	R3, R3, R10, LSL R11
MOV	R2, R7
ADD	LR, LR, 0x00000001
LDR	R11, [SP, #4]
CMP	LR, R11
STREQ	R3, [R1], #4
SUBEQ	IP, IP, 0x00000004
MOVEQ	LR, 0x00000000
CMP	IP, 0x00000000
MOVGT	R5, R5, LSL #1
BGT	0x00001074
B	0x00001064
ADD	SP, SP, 0x00000008
LDMIA	SP!, {R4-R11, LR}
BX	LR
;	undefined instruction
STMDB	SP!, {R4-R6, LR}
LDR	R5, [R0], #4
MOV	R2, R5, LSR #8
MOVS	IP, R2
BL	0x00000BA4
BEQ	0x0000118C
CMP	R2, 0x00000000
BLE	0x0000118C
LDRB	LR, [R0], #1
MOV	R4, 0x00000008
SUBS	R4, R4, 0x00000001
BLT	0x00001114
TST	LR, 0x00000080
BNE	0x00001144
LDRB	R6, [R0], #1
STRB	R6, [R1], #1
SUB	R2, R2, 0x00000001
B	0x0000117C
LDRB	R5, [R0, #0]
MOV	R6, 0x00000003
ADD	R3, R6, R5, ASR #4
LDRB	R6, [R0], #1
AND	R5, R6, 0x0000000F
MOV	IP, R5, LSL #8
LDRB	R6, [R0], #1
ORR	R5, R6, IP
ADD	IP, R5, 0x00000001
SUB	R2, R2, R3
LDRB	R5, [R1, -IP]
STRB	R5, [R1], #1
SUBS	R3, R3, 0x00000001
BGT	0x0000116C
CMP	R2, 0x00000000
MOVGT	LR, LR, LSL #1
BGT	0x00001124
B	0x00001114
LDMIA	SP!, {R4-R6, LR}
BX	LR
STMDB	SP!, {R4-R10, LR}
MOV	R3, 0x00000000
LDR	R8, [R0], #4
MOV	R10, R8, LSR #8
MOV	R2, 0x00000000
MOVS	IP, R10
BL	0x00000BA4
BEQ	0x00001270
CMP	R10, 0x00000000
BLE	0x00001270
LDRB	R6, [R0], #1
MOV	R7, 0x00000008
SUBS	R7, R7, 0x00000001
BLT	0x000011B4
TST	R6, 0x00000080
BNE	0x000011F0
LDRB	R9, [R0], #1
ORR	R3, R3, R9, LSL R2
SUB	R10, R10, 0x00000001
EORS	R2, R2, 0x00000008
STRHEQ	R3, [R1], #2
MOVEQ	R3, 0x00000000
B	0x00001260
LDRB	R9, [R0, #0]
MOV	R8, 0x00000003
ADD	R5, R8, R9, ASR #4
LDRB	R9, [R0], #1
AND	R8, R9, 0x0000000F
MOV	R4, R8, LSL #8
LDRB	R9, [R0], #1
ORR	R8, R9, R4
ADD	R4, R8, 0x00000001
RSB	R8, R2, 0x00000008
AND	R9, R4, 0x00000001
EOR	LR, R8, R9, LSL #3
SUB	R10, R10, R5
EOR	LR, LR, 0x00000008
RSB	R8, R2, 0x00000008
ADD	R8, R4, R8, LSR #3
MOV	R8, R8, LSR #1
MOV	R8, R8, LSL #1
LDRH	R9, [R1, -R8]
MOV	R8, 0x000000FF
AND	R8, R9, R8, LSL LR
MOV	R8, R8, ASR LR
ORR	R3, R3, R8, LSL R2
EORS	R2, R2, 0x00000008
STRHEQ	R3, [R1], #2
MOVEQ	R3, 0x00000000
SUBS	R5, R5, 0x00000001
BGT	0x00001224
CMP	R10, 0x00000000
MOVGT	R6, R6, LSL #1
BGT	0x000011C4
B	0x000011B4
LDMIA	SP!, {R4-R10, LR}
BX	LR
STMGTDA	R8, {R4-R8, R10, IP, SP, PC}
;	undefined instruction
;	undefined instruction
SWIHS	53273
STMVCDA	R4, {R0-R2, R4, R8, R10-IP, LR, PC}
;	undefined instruction
BEQ	0x008C4BE0
;	undefined instruction
STMVCDA	R3, {R0-R5, R7, R9, R11, IP}
;	undefined instruction
;	undefined instruction
;	undefined instruction
BNE	0xFEFC85F8
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDRMI	R11, [R8, -R8, LSL #24]
;	undefined instruction
STMGTDA	R8, {R8-R10, SP}
;	undefined instruction
;	undefined instruction
STRHS	SP, [R0], #-43
;	undefined instruction
;	undefined instruction
BLLS	0x000483E4
;	undefined instruction
BEQ	0x00CE8AF0
;	undefined instruction
STMVCDA	R6, {R0, R2, R3, R5, R7, R9, R11, IP}
TEQMI	R7, 0x000000A6
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
BNE	0xFEB48658
STRLS	R7, [R2], -R6, LSL #16
;	undefined instruction
TEQMI	R7, 0x000000A6
SUBMIS	R2, IP, R8, LSL #6
ANDHI	SP, PC, R2, LSL #2
STRHS	R1, [R0, -R9, LSL #25]
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDRLT	R4, [R0, #-1816]
BEQ	0x0093337C
;	undefined instruction
STMVCDA	R2, {R0, R1, R3, IP, LR, PC}
ANDVC	R1, R10, R0, ASR #24
;	undefined instruction
STMVCDA	R3, {R0, R2, R8, R10-IP, LR, PC}
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDRMI	R11, [R8, -R8, LSL #24]
STMGTDA	R8, {R4-R8, R10, IP, SP, PC}
;	undefined instruction
;	undefined instruction
STRHS	SP, [R8], #-19
;	undefined instruction
;	undefined instruction
STMVCDA	R3, {R0, R2, R3, R8, R10-IP, LR, PC}
;	undefined instruction
;	undefined instruction
TEQMI	R2, 0x000000A6
SUBMIS	R2, IP, R8, LSL #6
;	undefined instruction
ANDHS	R1, R0, 0x00008900
;	undefined instruction
LDRMI	R11, [R8, -R8, LSL #24]
LDMGTDA	R0, {R4, R8, R10, IP, SP, PC}
LDRBNV	R0, [PC, R4, LSR #20]!
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDMNEIA	R10, {R0, R1, R11, PC}
ANDHI	R1, R10, R0, LSL #25
LDRB	R1, [R7, R9, LSL #25]!
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
BLLE	0x0098BBD8
;	undefined instruction
;	undefined instruction
SWINV	15396864
LDMMIDA	R1, {R0, R2-R7, R9, SP, LR}
RSBVSS	R7, R8, IP, LSR R2
AND	R2, R4, R0
STREQ	R1, [IP], -R1, ROR #28
EORVC	R0, R8, R4, LSR #28
;	undefined instruction
STMMIDB	IP, {R3-R7, R10-IP, LR, PC}
BLVS	0x00254430
ADCMI	R6, R2, 0x000A0000
ANDLO	SP, R1, 0x40000003
BVS	0x00299434
ANDLE	R2, R3, R0, LSL #20
BVS	0x0129A2FC
ANDVS	R6, R8, 0xE8000003
SUBVS	R4, PC, 0x00060000
ANDVS	R6, IP, R8, LSL #4
;	undefined instruction
LDRMI	R11, [R8, -R8, LSL #24]
ANDHI	R0, R0, R0
;	undefined instruction
LDMVSDA	R3!, {R0, R1, R4, R6, R8, R10, R11, SP, LR}^
ANDEQ	R2, R0, R9, ASR #2
;	undefined instruction
BLMI	0x0081C140
ADDMIS	R1, R8, 0x00000C00
ANDLO	SP, R1, R8, LSR R1
;	undefined instruction
EORVSS	R6, IP, R9, ROR R0
TEQVS	R8, 0x00600000
RSBVCS	R7, R8, 0x00A00000
;	undefined instruction
RSCHSS	R8, PC, R8, LSR R4
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
ANDNV	R1, R0, R9, LSR #24
STRHHS	PC, [R0], #250
ADCEQS	R7, R0, R8, LSR #0
STMVSIA	R0, {R8, R11, IP}
LDRBLO	R6, [R0, #-1064]
STMVCDA	R0!, {R0, R9, R10, IP, SP}
BLE	0x002D1EA4
ADCMIS	R7, R0, 0x00038000
AND	SP, R7, SP, ROR #25
;	undefined instruction
SWINV	11005952
EORVC	R2, R8, R0
;	undefined instruction
ADCMIS	R7, R0, 0x00038000
STMVCIA	R0!, {R2, R4-R7, R10-IP, LR, PC}^
;	undefined instruction
LDMNVDB	R6!, {IP-PC}^
;	undefined instruction
;	undefined instruction
ANDEQ	R4, R0, R8, LSL R7
LDMVSDA	R3!, {R0, R1, R4, R6, R8, R10, R11, SP, LR}^
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
RSBVSS	R4, R8, R8, LSL R3
BVS	0xFFF1FDD4
;	undefined instruction
ANDNV	R1, R0, R1, LSR #24
LDRBLO	PC, [R0], #-3968
;	undefined instruction
;	undefined instruction
;	undefined instruction
ANDEQ	R4, R0, R8, LSL R7
LDMVSDA	R3!, {R0, R1, R4, R6, R8, R10, R11, SP, LR}^
STMMIDB	R4, {R1, R6, R8, R9, R11, SP, LR}
;	undefined instruction
;	undefined instruction
LDMEQDA	R2, {R1, R4, R6}^
LDRBMI	R6, [R0, -R2, ASR #0]!
LDMVSDA	R3!, {R0, R1, R4, R6, R8, R10, R11, SP, LR}^
BLVS	0x011EE71C
ADDMIS	R4, R7, 0x00005000
STRBHI	SP, [R1], #261
;	undefined instruction
STRHI	R3, [R1, #-257]
;	undefined instruction
ANDEQ	R4, R0, R0, ROR R7
LDMVSDA	R3!, {R0, R1, R4, R6, R8, R10, R11, SP, LR}^
;	undefined instruction
STMHSDA	R0, {R7, R10, R11, PC}
;	undefined instruction
STREQ	R3, [R9], #-2305
;	undefined instruction
;	undefined instruction
LDRHI	R3, [R9, #-2320]!
STRNE	R0, [R9], #-1033
;	undefined instruction
BVS	0xFFF1FE54
AND	R2, R6, R0, LSL #12
;	undefined instruction
SWINV	4190208
LDRBLO	R7, [R0], #-38
;	undefined instruction
;	undefined instruction
LDRMI	R11, [R8, -R8, LSL #24]
BVC	0x00E62960
;	undefined instruction
BEQ	0x004DF590
;	undefined instruction
STRBVC	R0, [R3], #2203
TSTMI	R10, 0x0C000000
SUBLOS	R7, R0, R2
STMHSDB	R0, {R0, R8, R11-SP}
;	undefined instruction
STMVCDA	SP, {R4, R5, R7, R8, R10, IP, SP, PC}
STMEQDA	R9!, {R0-R3, R10-IP}^
;	undefined instruction
;	undefined instruction
STMEQDB	R10, {R0, R4, R6, R8, R9, LR}^
;	undefined instruction
;	undefined instruction
TSTHS	R4, 0x008A0000
;	undefined instruction
;	undefined instruction
;	undefined instruction
TSTHS	R6, 0x80000000
LDMNEDA	R9, {R0, R1, R3-R7, R9, R10, IP, LR}^
SBCMIS	R2, R9, 0x00000002
SUBMIS	SP, R9, 0x00001000
LDMHSDB	PC!, {R1, SP-PC}^
;	undefined instruction
;	undefined instruction
BEQ	0x006D2338
;	undefined instruction
STMLEDB	R0, {R0-R9, R11, SP}
;	undefined instruction
BNE	0x0164A3F8
BEQ	0x00252344
;	undefined instruction
STMLEDB	R0, {R0-R8, R11, SP}
;	undefined instruction
TSTLE	IP, 0x00E90000
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
ANDEQS	R5, R2, 0x0FA00000
;	undefined instruction
ANDEQS	R5, R2, 0x0FA00000
BLVC	0x01E87858
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDMNEDA	R1, {R1, R4, R8}^
EORVCS	R1, R10, 0xA0000000
BMI	0x0019E030
BLVS	0x00488734
;	undefined instruction
LDMVCDA	R8!, {R0-R2, R4, R5, R7, R9-PC}
ORRMIS	R2, R8, 0x14000000
;	undefined instruction
LDRMI	R11, [R8, -R8, LSL #24]
;	undefined instruction
;	undefined instruction
ANDHS	R4, R0, IP, LSL R9
SUBHI	R8, R8, 0x000000C8
ADDHS	R4, PC, 0x001B0000
BMI	0x006E1884
BVC	0x010A1788
;	undefined instruction
TSTMI	R10, 0x00000001
TSTEQ	R11, R5, LSR R3
LDMNEIA	R10!, {R1, R6, R9, IP-LR}^
LDMMIDA	R6, {R1, R6-R9, SP, LR}
BICEQS	R2, R11, R3, LSL R3
LDMNEIA	R8!, {R3, SP, LR}^
LDMMIDA	R4, {R3, R7, SP, LR}
SBCVS	R4, R8, R5, LSL R10
;	undefined instruction
ANDLS	R2, R0, R0
;	undefined instruction
BNV	0x013BF6B0
;	undefined instruction
;	undefined instruction
;	undefined instruction
ADCVSS	R4, R8, 0x000F0000
TEQVS	R8, 0x8000000F
STMMIDA	LR, {R3-R9, SP, LR}
ANDHS	R6, R1, R8, ROR R3
ANDNV	R0, R0, R0, LSL #9
STMMIDA	IP, {R2-R4, R11-PC}
;	undefined instruction
LDRMI	R11, [R8, -R8, LSL #24]
STREQ	R0, [R0], #-192
STREQ	R0, [R0], #-128
ANDEQ	R10, R0, LR, LSL #18
STREQ	R0, [R0], #-160
STREQ	R0, [R0], #-164
;	undefined instruction
STREQ	R0, [R0, #-1004]
ANDEQ	R2, R0, R5, LSR #8
ANDEQ	R1, R0, R9, LSL #14
ANDEQ	R3, R0, R8, LSR R7
LDMVSDA	R3!, {R0, R1, R4, R6, R8, R10, R11, SP, LR}^
LDRLT	R4, [R0, #1904]
;	undefined instruction
ANDMIS	R0, R8, R11, LSL R4
;	undefined instruction
LDMMIDB	R11, {R3-R5, R9, IP-LR}
STMNEDA	R0, {R6}^
BLHI	0xFF00F7A8
;	undefined instruction
TEQVS	R8, R4, LSL #24
SWINV	16314369
LDMMIDA	R6, {R3-R7, R9, IP-LR}
;	undefined instruction
SUBEQS	R1, R8, R1, ASR #17
SWINV	15790081
STREQ	R2, [R9], -R1, LSL #2
ANDNV	R6, R1, R8, ROR R1
ANDLO	PC, R1, R11, ROR #31
;	undefined instruction
ANDHS	R4, R0, R0, LSL IP
LDMVSDB	R8!, {R5, R6, PC}
ANDNV	R4, R1, PC, LSL #18
;	undefined instruction
BNE	0x0020278C
ANDNV	R8, R0, R0, LSR #0
ANDHS	PC, R1, PC, LSR #17
STMVCIB	R1, {R7, R9, R10}
SMLALLES	R2, IP, PC, R9
LDMHSIB	PC, {R0, R7, R8, R11-LR}
;	undefined instruction
;	undefined instruction
LDRMI	R11, [R8, -R8, LSL #24]
;	undefined instruction
ANDEQ	R3, R0, R8, ROR #3
ANDEQ	R1, R9, R11, LSL SP
ANDEQ	R1, R0, R8, LSL #7
STREQ	R0, [R0], #-256
ANDEQ	R4, R4, R0, ASR #18
LDMMIDB	LR, {R4, R5, R7, R8, R10, IP, SP, PC}
BLVS	0x003D4C20
ADCMI	R6, R9, 0x00390000
;	undefined instruction
;	undefined instruction
ANDLE	R0, R2, R9, LSL #28
;	undefined instruction
;	undefined instruction
ANDMI	R0, R1, R9, LSL #4
BEQ	0x002757EC
;	undefined instruction
;	undefined instruction
ANDVCS	R3, R3, R9, ASR #4
STMLODB	R1, {R6, R9, IP, SP}
;	undefined instruction
ANDMI	R0, R1, R9, LSL #6
BLEQ	0x002757E8
;	undefined instruction
ANDMI	R0, R1, R9, LSL #10
;	undefined instruction
BMI	0x00302C60
BVC	0x014D185C
LDREQ	R0, [R11], R9, LSL #23
TSTMI	R9, 0x000009B0
STRHS	R7, [PC], #-593
ANDMI	R0, R4, R4, LSR #8
ANDNV	SP, R0, R4
;	undefined instruction
SWINV	8255487
;	undefined instruction
LDRMI	R11, [R8, -R8, LSL #24]
;	undefined instruction
LDMVSDA	R3!, {R0, R1, R4, R6, R8, R10, R11, SP, LR}^
STREQ	R0, [R0], #-128
LDMMIDA	R2, {R4-R8, R10, IP, SP, PC}
BLVS	0x001D5078
ADCMIS	R6, R0, 0x00380000
ANDLO	SP, R1, R10, LSL R1
;	undefined instruction
SUBLO	R2, R9, IP, LSL #2
ANDVC	R2, R2, R0, LSL #4
STMLODB	R1, {R6, IP, SP}
;	undefined instruction
;	undefined instruction
STRHS	SP, [R1], #-11
;	undefined instruction
;	undefined instruction
STRLO	PC, [R1], #-3508
;	undefined instruction
ANDHS	SP, R0, 0x00003D80
EORVSS	R7, LR, R10, LSR #0
;	undefined instruction
ANDEQ	R4, R0, R8, LSL R7
;	undefined instruction
LDMVSDA	R3!, {R0, R1, R4, R6, R8, R10, R11, SP, LR}^
STMMIDA	PC, {R3, R7, R8, R10, IP, SP, PC}
BLVS	0x001D44C0
ADDMIS	R6, R8, 0x00380000
;	undefined instruction
LDMLEDA	R1, {R3, R4, R7, R9, LR}
EORVSS	R3, R8, R1
STMMIDB	R11, {SP}
SBCHI	R2, R8, R5, LSR R3
TEQVC	R8, R8, ASR #4
LDMNEIA	R9!, {R0, R1, R3, R4, R8}^
;	undefined instruction
LDRBNV	R4, [PC, R7, LSL #20]!
LDMVSDA	R8!, {R0, R4, R6, R8, R11-PC}
EORVSS	R3, R8, R1, LSL #16
;	undefined instruction
ANDEQ	R4, R0, R8, LSL R7
;	undefined instruction
LDMVSDA	R3!, {R0, R1, R4, R6, R8, R10, R11, SP, LR}^
STREQ	R0, [R0], #-192
STREQ	R0, [R0, #-792]
STMMIDA	R2, {R0, R1, R3, R4, R6, R8, SP}
SBCHI	R0, R1, R9, ASR #4
LDRBMI	R8, [R0, -R1, ASR #4]!
STREQ	R0, [R0], #-192
;	undefined instruction
LDMHSIB	R2!, {R0-R2, R10-IP}
BMI	0x003F8CEC
STMMIDA	PC, {R1, R4, R5, R7, R8, SP}
LDREQ	R5, [IP, -R3, ASR #24]
ADCEQ	R0, R4, R4, LSR #30
STRLO	R1, [SP, #3525]!
LDMEQDB	LR, {R2, R3, R5, R8, R11, IP, LR}
STMNEDA	R0, {R2, R4-R7, LR}^
STREQ	R7, [R1, -R0, ASR #16]
ADDEQ	R0, R9, R9, LSL #30
STMEQDB	R0, {R0, R3, R5, R6, R11, IP, LR}
BLNE	0x00211C14
ANDNV	R1, R0, R1, LSL IP
STMNEDB	R1, {R0, R4, R6, R9, R11-PC}
ANDNV	R6, R0, R8, ROR R8
;	undefined instruction
LDRMI	R11, [R8, -R8, LSL #24]
SWINV	0
ANDEQ	R3, R0, R4, LSL #2
;	undefined instruction
ANDHS	R2, R0, R0, LSL #2
ANDHSS	R9, R0, R5
BICMI	R9, PC, 0x00000003
;	undefined instruction
LDRBNV	R9, [PC, R0, LSL #2]!
LDMMIIA	R10!, {R6, R11-PC}^
ANDVC	R2, R5, R1, LSL #10
LDRBNV	R2, [LR, R1]!
;	undefined instruction
STRBEQ	R2, [R1, #8]
ADDHI	R8, R8, R5, LSR R0
BLEQ	0xFF023C20
LDRBNV	SP, [LR, R1]!
;	undefined instruction
RSCHS	PC, PC, R7, LSL #31
;	undefined instruction
BICHI	R0, R8, R9, LSL #13
ANDLS	R2, R2, R4, ASR R0
ANDLS	R2, R1, R6, ROR R0
ADDEQ	R2, R0, 0x00000015
EORHSS	R6, R11, R8, LSL #7
BICVS	R0, R8, 0x00000004
STMMIIA	R11!, {R2, R3, R5-R8, R11, LR}^
LDRBNV	R6, [LR, R8, LSL #2]!
ANDNV	PC, R1, IP, ASR #29
STMMIIA	R10!, {R0, R1, R3, R5-R8, R11-PC}^
;	undefined instruction
LDRBNV	R4, [PC, R9, ROR #17]!
STMMIIB	R9!, {R0-R7, R9-PC}^
ANDHS	R4, R6, 0x00E90000
;	undefined instruction
STMMIIA	R9!, {R3, R5-R8, R11, LR}^
LDRBNV	R2, [PC, R6, LSL #4]!
;	undefined instruction
ADC	R2, R8, R7, LSL #10
BLNE	0x010899D8
STMNEIA	R0, {R4, R7}
ADCMIS	R3, R8, 0x00000008
;	undefined instruction
ADCEQ	R4, R9, R2, ROR #23
ANDLO	R5, R1, 0x005A0000
BLMI	0xFF815B40
LDMPLDA	R10, {R0, R3, R5, R7}^
;	undefined instruction
RSCEQ	R1, IP, R9, ASR #17
ANDLS	R9, R7, 0x80000001
;	undefined instruction
STRLS	R0, [R11], #-1563
;	undefined instruction
ADCMIS	SP, R8, 0x00067000
STRLO	SP, [R2], -R1, LSL #24
;	undefined instruction
STMLSDB	R6, {R10, IP}
;	undefined instruction
;	undefined instruction
STMNEDA	R1, {R2, R4, R6-R8, R11, LR}^
;	undefined instruction
LDRBNV	R9, [LR, R6, LSL #16]!
;	undefined instruction
ANDHS	R4, R1, 0x00034400
STMLSDA	R9, {R0, R6, R7, R11, IP}
ANDLO	R2, IP, R8, LSL #6
;	undefined instruction
SBCMIS	R2, LR, 0x80000001
STMVSDA	R0!, {R1-R5, R8, R10-IP, LR, PC}
;	undefined instruction
BICMI	R2, R0, 0x0000003F
ADDMI	R1, R6, 0x00000100
BLE	0x00059ACC
BLE	0x007CCE58
SBCMIS	R2, LR, 0x2C000001
;	undefined instruction
STMHIDA	R0!, {R0, R1, R4, R9, R11, IP, LR, PC}
BICEQS	R2, R11, 0x04000000
EORHI	R4, R0, R8, LSL R3
BMI	0xFF0A7A8C
STMHIIA	R2!, {R7, R11, IP}
BEQ	0xFE4A3C68
MULLO	R4, R2, R2
;	undefined instruction
ADCHI	R4, R0, R0, LSL R3
BICMI	R2, R0, 0x0000001F
;	undefined instruction
ORRMIS	R0, R10, 0xB0000001
BICMI	R2, R0, 0x0000000F
EORVS	R0, R2, R1, ASR #0
BLMI	0xFEE282B4
LDMNEDA	R0, {R1, R4, R8, R11, PC}
ANDMIS	R6, R10, R2, LSR #16
;	undefined instruction
TSTMI	R0, 0x00000000
BLS	0x00299B20
LDMNEDA	R1, {R1, R4, R6, R8, R11, PC}^
ANDEQ	R0, R0, 0x00000000
;	undefined instruction
EORVS	R4, R0, R8, LSL #6
;	undefined instruction
SUBEQ	R0, R9, R9, LSL #30
;	undefined instruction
MULLO	R1, R2, R0
LDRBNV	R3, [LR, R1, LSL #4]!
BLS	0x002014BC
LDMLODA	R8!, {R4, R6-IP}
STMLEDA	IP, {R1, R5, R11, SP}
BLS	0x001D3D70
STMLODA	R0, {R7, R11, IP}^
STMVSDA	R0!, {R0, R6, R11-LR}
ANDEQS	R0, R2, 0x00002000
STREQ	R1, [R0], -R0, ASR #16
TSTMI	R0, 0x00000000
BLS	0x001D9B6C
LDMLODB	R9, {R0, R4, R6-IP}^
STMLEDA	IP, {R4, R6, R8, R11, SP}
ANDNV	R2, R1, R5
STMLODA	R8, {R0, R2, R4, R9-PC}
;	undefined instruction
ADDEQ	R9, R1, IP, LSL #20
;	undefined instruction
LDRBNV	R2, [LR, R0]!
;	undefined instruction
LDRB	SP, [R3, -R0, LSL #8]
;	undefined instruction
ANDLE	R2, R1, IP, ROR #30
;	undefined instruction
;	undefined instruction
ANDLS	R3, R2, R8, LSR R8
;	undefined instruction
ANDLS	R3, R1, R0, LSL #17
ANDLS	R2, R3, R10
STMMIIB	R1, {R0-R3, R7, R11, LR}
SUB	R6, R5, R8, LSL #2
;	undefined instruction
STMLODA	R3, {R1, R11, IP, PC}
STMLSDA	R8, {R1, IP, PC}
;	undefined instruction
AND	R2, R0, R1
;	undefined instruction
ANDEQS	R6, R11, 0x0000A100
;	undefined instruction
ANDEQ	R0, R0, 0x00000200
STMMIIB	R2, {R3, R8, R9, LR}
;	undefined instruction
STMNEIA	R0, {R0, R1, R3, R4, R7, R10}^
ORRMIS	R4, R8, 0x0001FC00
;	undefined instruction
RSCEQ	R2, R8, R0, LSL #10
;	undefined instruction
ANDHS	R3, R3, 0x4000001E
LDRBNV	R1, [LR, LR, LSL #24]!
LDMHIDA	R0!, {R0, R2, R5-PC}
ADDEQS	R2, R11, 0x0C000000
STRLO	R4, [R1, #-88]
EORHIS	R2, R0, R9, LSL #26
ANDHS	SP, R6, PC, ROR #23
ANDNV	R1, R1, R9, LSR IP
STMHSDB	R0, {R0, R1, R6-R8, R10-PC}
STMLSDB	R4, {R0, R3, R8, IP, LR, PC}
;	undefined instruction
ANDLS	R3, R3, R1, LSL #16
;	undefined instruction
STMMIDB	R2!, {R2, R8, IP, PC}^
LDMMIDA	R0!, {R3, R6, R9, PC}^
;	undefined instruction
AND	R4, R0, PC, ROR #16
;	undefined instruction
ANDHI	R0, R8, R9, LSL #13
ANDEQ	R9, R0, 0x00020000
STREQ	R2, [R9], R1, LSL #2
STMLSDA	R1, {R3, R7-R9, SP, LR}
BICVS	R0, R8, 0x00000000
BLLE	0x0014D81C
LDMNVIA	R4!, {IP-PC}^
;	undefined instruction
AND	R4, R2, R7, ROR #18
;	undefined instruction
LDMMIDA	R7, {R1, R2, R5, R6, R8, R11, LR}^
;	undefined instruction
LDMLODA	R10!, {R3-IP}
ANDLES	R2, R1, 0x004F0000
STMHSDA	R0, {R3, R11, IP, PC}
STMMIDA	R2!, {R1-R3, R8, IP, LR, PC}^
BVS	0x0100A80C
;	undefined instruction
STMVCDA	R0, {R5, R6, R11, LR}
;	undefined instruction
STMMIDA	PC, {R0-R4, R6, R8, R11, LR}^
;	undefined instruction
ANDLS	R2, R8, R1
;	undefined instruction
STMHSDA	R0, {R3, R11, IP, PC}
STMLSDB	R0, {R1, R3, IP, LR, PC}
BLE	0x0008C0B0
;	undefined instruction
ANDHSS	R9, PC, 0x00000000
STMLSDB	R0, {R1, R2, SP}
;	undefined instruction
SWINV	8056832
ANDHS	R4, R1, R11, LSR R9
ANDNV	R8, R1, R8, LSL #2
SWIHS	1113455
STMLSDB	R4, {R0, R3, R9, R11, IP, LR, PC}
;	undefined instruction
ANDLS	R3, R3, R1, LSL #16
;	undefined instruction
LDMMIDB	R6!, {R2, R8, IP, PC}
STRLO	R8, [R1, -R8, ASR #4]
;	undefined instruction
STMMIDA	R10, {R2, R5, R7, R9, R10, SP-PC}^
;	undefined instruction
;	undefined instruction
;	undefined instruction
STMLSDA	R8, {R1, R8, IP, LR, PC}
EORLE	R2, R11, R0, LSL #16
RSCVC	R2, R8, 0x00000001
ANDNV	R7, R0, LR, ROR #3
;	undefined instruction
ADCVC	R0, R8, 0x00000000
ANDNV	SP, R0, R2, LSR #2
;	undefined instruction
SWIHS	64839
STMVCIB	R8!, {R0, R1, R4-R8, IP, LR, PC}^
MVNLES	R2, R0, LSL #16
STMHSDA	R0, {R3, R5-R7, R9, R11-LR}
LDMMIDA	R8!, {R0, R1, R3, IP, LR, PC}
BICMI	R7, R0, 0x00000000
;	undefined instruction
LDMMIDB	R9!, {R0-R2, R5-R7, IP, LR, PC}
LDRBNV	R4, [PC, R5, LSR #16]!
RSCVC	PC, LR, 0x0002EC00
STMLSDB	R0, {R0, R5-R10, SP-PC}
;	undefined instruction
ANDHSS	R9, PC, 0x00000000
;	undefined instruction
LDRBNV	R2, [LR, R6]!
;	undefined instruction
LDMMIDA	R7, {R0, R4, R5, R8, R11, LR}
;	undefined instruction
SBCEQ	R2, R10, R0, LSL #2
;	undefined instruction
ORRMIS	R0, PC, 0xB0000009
STMHSDB	R9, {R0, R8, IP, SP}
BLLE	0xFFD95F94
;	undefined instruction
AND	R1, IP, R4, LSL #24
STMNVDA	R2!, {IP-PC}^
;	undefined instruction
ANDLE	R0, R6, 0x00780000
LDMHSDA	R0, {R0, R2, R11, IP, PC}
STMLSDA	R5, {R0, R1, IP, LR, PC}
ANDLS	R3, R5, R1
STRLO	R6, [R1, -R0, ROR #2]
;	undefined instruction
;	undefined instruction
STMHSDA	R0, {R3, R5, R7, R9, R11-LR}
SBCHSS	SP, LR, LR, LSR R0
EORS	LR, R11, SP, LSR R0
STREQ	R0, [R0], #-768
STREQ	R0, [R0], #-512
ANDNE	R3, R0, PC, ASR PC
STREQ	R0, [R0], #-64
;	undefined instruction
ADDEQS	R0, R4, R0, LSL #20
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
STREQ	R0, [R0, -R6, LSR #0]
;	undefined instruction
;	undefined instruction
ANDEQ	R3, R0, IP, ROR #13
ANDNE	R1, R0, PC, ASR PC
ANDEQ	R3, R0, R7, LSR #30
ANDEQ	R9, R0, R2, LSL #16
ANDEQ	R1, R0, R2
ANDEQ	R3, R0, R8, LSL #18
ANDEQ	R3, R0, R0, ASR #19
;	undefined instruction
STREQ	R0, [R0], #-304
;	undefined instruction
;	undefined instruction
;	undefined instruction
ANDEQ	R3, R0, R8, LSL R8
;	undefined instruction
;	undefined instruction
ANDLT	PC, SP, IP, LSL #28
;	undefined instruction
ANDEQ	R4, R0, R8, LSL R7
LDRMI	R10, [R0, -R0, LSL #4]
UMULL	R2, R3, R0, R1
ADD	R0, R3, 0x00000000
BX	LR
STMVSDA	R0, {R1-R4, R6, R7, R11, LR}
STMVSDA	R3, {R1-R4, R6, R7, R9, R11, LR}
;	undefined instruction
;	undefined instruction
LDRBLT	R6, [R0, #3]!
STRBMI	R4, [R10], -R1, ASR #12
;	undefined instruction
ADDLT	R11, R5, PC, LSL R4
BLHS	0x0001C5F8
BVS	0x01035DFC
STMNVIB	R9, {IP-PC}
BVS	0xFE0E7E0C
STMNVIB	R5, {IP-PC}
STMVSDB	R3, {R0, R2, R11, IP, PC}
;	undefined instruction
STMVCDB	R4, {R0, R2, R3, R5, R11, IP}
STMLEDB	R4, {R0-R2, R5, R6, R9-IP}
BLNE	0xFF260914
;	undefined instruction
STRLS	R1, [R2, #-2221]
STMVCDB	R3, {R2-R5, R7, R9-R11, LR}^
EORLE	R2, R11, R0, LSL #22
STRMI	R10, [R8, -R0, LSL #2]
CMP	R4, 0x00000002
ADDEQ	R7, R0, 0x00000350
ADDNE	R7, R5, R8
MOV	R4, R8
LDRSB	R0, [R5, R6]
LDRSB	R1, [R5, #0]
ADD	R0, R0, R1
LDRSB	R1, [R7, R6]
ADD	R0, R0, R1
LDRSB	R1, [R7], #1
ADD	R0, R0, R1
MUL	R1, R0, R3
MOV	R0, R1, ASR #9
TST	R0, 0x00000080
ADDNE	R0, R0, 0x00000001
STRB	R0, [R5, R6]
STRB	R0, [R5], #1
SUBS	R4, R4, 0x00000001
BGT	0x00001E30
ADD	R0, PC, 0x0000002F
BX	R0
STRBMI	R2, [R1], -R0
STMEQIA	R9, {R1, R2, R4-R6, R8, R11, IP}^
STRGT	SP, [R1, #-769]
STMEQDA	R9, {R0, R9, R10, LR, PC}^
STRGT	SP, [R1, #-771]
STRGT	IP, [R1, #-1537]
STRGT	IP, [R1, #-1537]
STRGT	IP, [R1, #-1537]
STRGT	IP, [R1, #-1537]
STRGT	IP, [R1, #-1537]
;	undefined instruction
;	undefined instruction
STRMI	R6, [R1], R0, ROR #18
STRMI	R6, [R4], R0, LSR #19
LDRBLO	R7, [R0], #-2464
BVS	0x018E5EBC
SBCHS	R7, R7, R6, LSR #16
;	undefined instruction
ADDHS	LR, R0, R2, LSL R1
ANDLES	R4, R4, R0, LSR R2
EORMIS	R2, R0, 0x00000040
;	undefined instruction
;	undefined instruction
ADCVS	R3, R0, 0x00000010
;	undefined instruction
RSBVC	R2, R5, 0x00000000
LDMVCIA	R10, {R0, R2, R5-R8, SP, LR}^
ANDMIS	R2, R0, 0x000000C0
ANDHSS	SP, R0, PC, LSR #0
EORVC	R4, R6, R6, LSL #6
BVC	0x01979FA0
EORMIS	R2, R0, 0x00000004
BLVC	0x01835F14
;	undefined instruction
ANDHS	SP, R0, R10, LSR #16
RSC	R7, PC, R0, LSR #0
EORMIS	R2, R0, 0x00000040
STMVCIB	R0!, {R2, R3, IP, LR, PC}^
BEQ	0x00B52C28
ADDMI	R7, R5, 0x00008000
BLVC	0x00977F94
RSCLES	R2, R0, R0, LSL #26
;	undefined instruction
ANDS	R7, R7, R6, LSR #0
EORMIS	R2, R2, R3, LSL #4
;	undefined instruction
;	undefined instruction
STMVCIB	R0!, {R0, R2, R3, R5, R9, R11}
STMLEDA	SP, {R0, R2, R7, R9, LR}
RSCLE	R1, IP, R5, LSL #24
EORVC	R1, R6, R6, ROR LR
BHS	0x000F9F68
STMVCDB	R0!, {R1, R2, R8, IP, LR, PC}
;	undefined instruction
LDRBHS	SP, [PC, #770]!
EORVC	R1, R6, R6, ROR LR
STMLSDA	R5, {R0, R2, R5, R6, R9, IP-LR}
;	undefined instruction
STMEQDB	R5, {R3, R5, R6, R8, R9, LR}
;	undefined instruction
ADCVC	R0, R0, 0x00000000
;	undefined instruction
RSCVC	R0, R0, 0x00000000
EORMIS	R2, R0, R0, LSL R0
ANDLE	R9, R7, R4
ANDLOS	R1, R0, R8, LSL IP
STMNEDA	R0, {R0, R3, R4, R7, R11, SP, LR}^
LDMVSIA	R8, {R0, R1, IP, PC}^
ANDLS	R1, R4, R0, ASR #20
STMVSIB	R2!, {R1, R8, R10-IP, PC}
ANDGE	R6, R1, R3, LSR #21
ANDEQ	R4, R0, R0, LSL #14
STR	R8, [SP, #0]
LDRB	R10, [R4, #10]
LDRB	R11, [R4, #11]
LDRB	R0, [R4, #1]
TST	R0, 0x00000008
BEQ	0x00001FFC
LDRSB	R6, [R3], #1
MUL	R1, R6, R11
LDRB	R0, [R5, #1584]
ADD	R0, R0, R1, ASR #8
STRB	R0, [R5, #1584]
MUL	R1, R6, R10
LDRB	R0, [R5, #0]
ADD	R0, R0, R1, ASR #8
STRB	R0, [R5], #1
SUBS	R2, R2, 0x00000001
BNE	0x00001FF0
LDR	R2, [SP, #16]
CMP	R2, 0x00000000
LDRNE	R3, [SP, #12]
BNE	0x00001FF0
STRB	R2, [R4, #0]
B	0x000020D8
SUBS	R8, R8, 0x00000001
BGT	0x00001FAC
B	0x000020D0
LDR	R7, [R4, #28]
LDR	LR, [R4, #32]
CMP	R7, R9, LSL #2
BLO	0x00002028
CMP	R2, 0x00000004
BLE	0x0000204C
SUB	R2, R2, 0x00000004
ADD	R3, R3, 0x00000004
SUB	R7, R7, R9, LSL #2
CMP	R7, R9, LSL #2
BHS	0x0000200C
CMP	R7, R9, LSL #1
BLO	0x00002044
CMP	R2, 0x00000002
BLE	0x0000204C
SUB	R2, R2, 0x00000002
ADD	R3, R3, 0x00000002
SUB	R7, R7, R9, LSL #1
CMP	R7, R9
BLO	0x0000207C
SUBS	R2, R2, 0x00000001
BNE	0x0000206C
LDR	R2, [SP, #16]
CMP	R2, 0x00000000
LDRNE	R3, [SP, #12]
BNE	0x00002070
STRB	R2, [R4, #0]
B	0x000020D8
ADD	R3, R3, 0x00000001
SUB	R7, R7, R9
CMP	R7, R9
BHS	0x0000204C
LDRSB	R0, [R3, #0]
LDRSB	R1, [R3, #1]
SUB	R1, R1, R0
MUL	R6, R1, R7
MUL	R1, R6, IP
ADD	R6, R0, R1, ASR #23
MUL	R1, R6, R11
LDRB	R0, [R5, #1584]
ADD	R0, R0, R1, ASR #8
STRB	R0, [R5, #1584]
MUL	R1, R6, R10
LDRB	R0, [R5, #0]
ADD	R0, R0, R1, ASR #8
STRB	R0, [R5], #1
ADD	R7, R7, LR
SUBS	R8, R8, 0x00000001
BEQ	0x000020CC
CMP	R7, R9
BLO	0x0000207C
B	0x00002004
STR	R7, [R4, #28]
STR	R2, [R4, #24]
STR	R3, [R4, #40]
LDR	R8, [SP, #0]
ADD	R0, PC, 0x00000001
BX	R0
;	undefined instruction
STRBLO	SP, [R0], #-3329
STMLSDA	R5, {R5-R7, R9, R10, SP-PC}
ANDVS	R4, R3, R4, LSL R11
;	undefined instruction
STRMI	R4, [R9], R0, LSL #13
;	undefined instruction
LDRMI	R11, [R8, -R8, LSL #24]
ANDEQ	R0, R0, R0, ASR R3
ANDEQ	R0, R0, R0, LSR R6
STMVSDA	R0, {R2, R3, R11, LR}
STMVSDA	R3, {R2, R3, R9, R11, LR}
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
BMI	0x000C2954
ANDHIS	R4, R0, R3, LSL #22
ANDHIS	R8, R1, R8, LSL R0
;	undefined instruction
STREQ	R0, [R0], #-198
STREQ	R0, [R0], #-210
;	undefined instruction
LDMVSDA	R3!, {R0, R1, R4, R6, R8, R10, R11, SP, LR}^
BLVS	0x010D4BB0
;	undefined instruction
;	undefined instruction
LDRBLT	R6, [R0, #835]!
STRBMI	R4, [SP], -R4, ASR #12
;	undefined instruction
;	undefined instruction
BLHS	0x0001D058
BLVS	0xFFE36178
SWINV	13236223
STMHSDA	R0, {R3-R6, R11, SP, LR}
;	undefined instruction
STMVSDA	R0, {R0, R1, R3, R7, R11, LR}
;	undefined instruction
LDMNVIB	R8, {R0-R10, IP-PC}^
;	undefined instruction
ADC	R1, R4, R0, ASR #16
BVS	0xFFF60A7C
STRHS	R2, [R0], #-769
ORRHS	R7, R0, R8, LSR #16
;	undefined instruction
LDRMI	LR, [R1], R11, LSL #1
TSTMI	IP, 0x09A00000
BVS	0x00B13C38
ANDLES	R2, R3, R0, LSL #24
SBCHS	R7, R7, R1, LSR #16
ANDLE	R4, R9, R8, LSL #4
STMHSDA	R0, {R5, R10-LR}
;	undefined instruction
;	undefined instruction
;	undefined instruction
AND	R7, R2, R1, LSR #0
ANDNV	R1, R0, R0, LSR #24
BLVS	0x019405C4
;	undefined instruction
SUBHS	R7, R0, R11, LSR #16
EORLES	R4, R11, R8, LSL R2
ANDNV	R1, R0, R8, LSR #24
ADDHS	PC, R0, R7, ROR #17
ANDHS	R7, R2, R8, LSR #0
SUBHS	R7, R0, R8, ROR #7
ANDHSS	R7, R6, R8, ROR #9
ANDHS	R7, R1, R8, ROR #12
STRVC	R1, [R8, R9, LSR #27]
;	undefined instruction
STMHSIB	R0, {R0, R4, R11-LR}
STMVCIB	R9!, {R0, R9, IP, LR, PC}^
;	undefined instruction
LDMHSIB	SP!, {R1, R3, R5, R10, SP, LR}
;	undefined instruction
;	undefined instruction
BLVS	0xFE0D3B1C
STMLOIA	PC, {R3, R10-IP}^
;	undefined instruction
SWINV	7337983
LDMHSIB	R0!, {R1, R2, R4, SP-PC}
;	undefined instruction
ADCVCS	R3, R8, 0x00B10000
BLVS	0x016D3B44
LDMNEDA	R11, {R7}
;	undefined instruction
LDRBNV	R1, [PC, R9, LSR #24]!
STMVCDA	R8!, {R5, R6, R8-PC}
EORLES	R2, R3, R0, LSL #16
LDMMIDA	R6, {R2, SP-PC}^
STMNEDA	R9, {R7, R8, R11-SP}
RSBVC	R7, R8, R8, LSL #16
STMHSDA	R0, {R3, R5, R6, R11-LR}
;	undefined instruction
;	undefined instruction
EORLE	R2, R5, R0, LSL #18
STMHSDA	R0, {R3, R5-R8, R10-LR}
SWIVC	2674722
ANDLE	R2, R2, R0, LSL #16
STRVC	R1, [R8, -R0, ASR #28]!
;	undefined instruction
;	undefined instruction
STMLODA	R0, {R0, R10-IP}^
STRLE	R0, [R2, #-1536]
LDRNE	R0, [R2], -R10, LSL #12
ADDHS	LR, R0, R1
;	undefined instruction
ORRNE	R4, R2, R0, ASR R3
SUBMIS	R7, R0, R8, LSR #27
ANDLE	R0, R9, R0, LSL #12
STMVCDA	R8!, {R1, R3, R5, R7, R8, R10, IP-LR}
STMHSDB	R0, {R0, R3, R5, R9-LR}
;	undefined instruction
;	undefined instruction
EORVC	R4, R8, R8, LSL #6
LDRBMI	R4, [R3], -R10, ASR #12
;	undefined instruction
SUBHSS	SP, R0, R3, LSL #26
SUBEQS	R1, R11, SP, LSR #16
LDRBMI	LR, [LR], -R8, ROR #14
;	undefined instruction
STREQ	R2, [R0], -R0, LSL #1
RSB	R6, R0, R8, ROR R0
;	undefined instruction
;	undefined instruction
;	undefined instruction
BVC	0x00EBC03C
STMVCDA	R8!, {R0, R2-R7, R9, R11, SP, LR}
ANDMI	R2, R1, 0x00000020
;	undefined instruction
SUBLE	R4, R11, R1, LSL #4
;	undefined instruction
LDRBNV	R1, [PC, R9, LSR #24]!
BVS	0x00B40844
EORLES	R2, LR, R0, LSL #24
SBCHS	R7, R7, R1, LSR #16
;	undefined instruction
ANDNV	R1, R0, R0, LSR #24
EORS	PC, R3, IP, ASR R8
STRHS	R7, [R7], -R0, ROR #16
STMVCDA	R11!, {R1, R2, LR}
ANDMIS	R2, R8, 0x00000003
;	undefined instruction
;	undefined instruction
ADCVC	R1, R0, R0, ASR #3
;	undefined instruction
RSCVC	R1, R0, R0, ASR #3
ANDLE	R2, R3, R0, LSL #28
;	undefined instruction
STRBVC	R4, [R0, -R8, LSL #6]!
ANDMIS	R2, R8, 0x0000000C
BVC	0x008763B0
;	undefined instruction
STRLE	R1, [R0, #-2058]
;	undefined instruction
STRBMI	SP, [R0], -IP
;	undefined instruction
;	undefined instruction
;	undefined instruction
SWIVC	6316576
;	undefined instruction
AND	R7, R5, R0, ROR #14
BVC	0x01A893B8
LDRBNV	R6, [PC, R0, ROR #20]!
EORVS	PC, R0, 0x000B1000
;	undefined instruction
STMVCDA	R8!, {R6-R8, IP, LR, PC}
;	undefined instruction
STRBMI	R7, [R10], -R8, LSR #0
;	undefined instruction
STMNEDA	SP!, {R4, R6, SP}
STMMIDA	R6, {R0-R2, R5, R7, R10-IP, LR, PC}
;	undefined instruction
STRMI	R4, [R9], R0, LSL #13
;	undefined instruction
STRMI	R11, [R0, -R1, LSL #24]
;	undefined instruction
;	undefined instruction
LDMVSDA	R3!, {R0, R1, R4, R6, R8, R10, R11, SP, LR}^
;	undefined instruction
;	undefined instruction
ANDGTS	R2, LR, R0, LSL #8
ANDGTS	IP, LR, LR, LSL R0
;	undefined instruction
BVS	0xFF0D418C
ANDLE	R2, R11, R0, LSL #22
BLVS	0x0009D0D8
ANDLE	R2, R1, R0, LSL #20
AND	R6, R0, R1, ASR R3
STMHSDB	R0, {R0, R3, R4, R9, SP, LR}
;	undefined instruction
SBCVS	R2, R1, 0x00000000
LDRBLT	R4, [R0, #-1904]!
STMVCDA	R9!, {R0, R2, R3, R10-IP}
ANDMI	R2, R8, 0x00000080
BVS	0x00B3644C
ANDLES	R2, R1, R0, LSL #24
STMVCDA	R0!, {R9, R10, SP}
ANDLE	R2, R10, R0, LSL #16
;	undefined instruction
ANDLE	R4, R4, R8, LSL R0
LDMVSDA	R11, {R0, R2, R7-R9, R11, LR}
;	undefined instruction
EORVC	PC, R6, R8, ROR LR
BLVS	0x0191AFB4
;	undefined instruction
;	undefined instruction
STRMI	R11, [R0, -R1, LSL #24]
;	undefined instruction
LDRBMI	R4, [R6], -SP, ASR #12
;	undefined instruction
;	undefined instruction
LDMMIDB	R10!, {R0, R2, R4, R10-IP}^
;	undefined instruction
STMNEDA	R0, {R0, R3-R6, R8, R11, LR}^
;	undefined instruction
LDMVCDA	R8, {R0, R1, R3, R5, R10, R11, SP, LR}
ANDLE	R2, LR, 0x00800000
;	undefined instruction
STMHSIA	R0, {R3, R4, R11-LR}
;	undefined instruction
LDMVCDA	R8, {R0, R1, R3, R4, R6, R10-IP}
ANDLE	R2, R3, 0x00800000
STMNEDA	R9, {R0, R3, R5, R8, R11-LR}
;	undefined instruction
;	undefined instruction
STMVCDA	R2!, {R2, R5, R10, IP, SP}
ANDMIS	R2, R0, 0x000000C0
STMVCDB	R11!, {R2, R5, IP, LR, PC}^
ANDMIS	R2, R0, 0x00000040
BVS	0xFFA76490
STMVCDA	R8, {R0, R3, R6, R7, R11, IP}
;	undefined instruction
STMNEDA	R9, {R0, R6}
BVS	0xFEA026B8
STRMI	R1, [R9], R9, LSL #16
LDMVCDA	R1!, {R1-R3, R6, R9, R10, LR}
ANDMI	R2, R8, 0x000000C0
ADCS	SP, R6, R0
ANDMIS	R2, R0, 0x00000080
LDMVCIA	R1!, {R1-R3, IP, LR, PC}^
ANDMI	R2, R8, 0x00000080
STMLOIB	R0, {R1, R2, IP, LR, PC}^
STRBVC	R0, [R9, #-73]!
;	undefined instruction
EORVC	R4, R8, R8, LSL #6
AND	R7, R1, R3, ROR R8
STMVCDB	R11!, {R0, R5, R7, R9, R10, LR}^
;	undefined instruction
SWIVC	6847089
LDMHSIA	PC!, {R6, R11, IP}^
RSCHSS	SP, PC, R0, LSL #18
STRBMI	R9, [LR], -R4
;	undefined instruction
STRLS	R4, [R3], -R6
STMLSDA	R1, {R3, R4, IP, LR, PC}
;	undefined instruction
ADDS	SP, R0, R0, LSL #2
MOVEQS	R1, R6, ROR LR
STMVCDA	R1!, {R2, R5, R11, IP}
ANDMI	R2, R8, 0x000000C7
SUBHS	SP, R0, R6, LSR R0
TEQLE	R3, R8, LSL #4
STMLSDA	R4, {R0, R5-R7, R10-LR}
;	undefined instruction
ADD	SP, R0, R0
ADCMI	R6, R8, 0x000E0000
RSBS	SP, IP, R10, LSR #4
;	undefined instruction
LDRMI	R2, [R0], R0, LSL #4
STMVCIB	R3!, {R0, R10-IP, PC}
STMVCDA	R1!, {R4, R6, R10, IP, SP}
ANDMI	R2, R8, 0x000000C7
SUBHS	SP, R0, LR, LSL R0
ANDLE	R4, R5, R8, LSL #4
;	undefined instruction
;	undefined instruction
AND	R6, LR, R7, ROR #21
;	undefined instruction
ADCMIS	R7, R0, 0x0000E000
;	undefined instruction
AND	R6, R6, R7, ROR #21
BVS	0xFF83856C
STMLEDB	R1, {R3-R5, R7, R9, LR}
AND	R1, R0, R7, LSL #24
;	undefined instruction
;	undefined instruction
;	undefined instruction
SUBLES	R2, R2, R0, LSL #24
LDRBNV	R1, [PC, R0, LSR #24]!
;	undefined instruction
BVS	0x00ADB1FC
BLHS	0x0001B308
TSTVS	IP, 0x00000000
RSCVS	R6, R5, 0xC0000002
STRVC	R7, [R8, -R8, ROR #29]!
ANDLE	R4, R1, R8, LSL #5
STRVC	R7, [R9, #1705]!
;	undefined instruction
STMNVDA	R4, {R0-R10, IP-PC}
;	undefined instruction
;	undefined instruction
EORVC	R9, R0, 0x00020000
LDMVCDA	R0!, {R1-R3, R6, R9, R10, LR}
LDMVSDA	R7!, {R5, R6, IP-LR}^
LDMVSIA	R0!, {R0-R2, R5, R6, R9, SP, LR}
BLHI	0xFFA1A734
;	undefined instruction
;	undefined instruction
ADCVC	R1, R0, R0, ASR #3
;	undefined instruction
RSCVC	R1, R0, R0, ASR #3
ANDHS	R7, R8, R1, LSR #20
STMNEDA	R11, {R3, R5, R9, R10, IP, LR}
;	undefined instruction
;	undefined instruction
STRBMI	SP, [LR], -PC
;	undefined instruction
;	undefined instruction
;	undefined instruction
BVC	0x01AA0570
STMLSDA	R3, {R0, R3, R4, R10-IP}
BLVS	0x006E91F8
;	undefined instruction
BVC	0x01ABA60C
;	undefined instruction
STMNVDB	IP!, {R0-R10, IP-PC}^
ADDHS	R6, R0, R0, LSR #4
STMVCDA	R9!, {R5, IP-LR}
;	undefined instruction
ANDLT	R7, R5, R8, LSR #0
;	undefined instruction
LDRMI	R4, [R2], R9, LSL #13
;	undefined instruction
ANDEQ	R4, R0, R0, LSL #14
;	undefined instruction
;	undefined instruction
;	undefined instruction
BLHS	0xFE020680
;	undefined instruction
STRVS	R1, [R10], #-3154
STMVCDB	R11, {SP-PC}^
STMHSDB	R0, {R0, R3, R9, R11, SP, LR}
STRHS	SP, [R3], #13
EORMI	R7, R2, 0x000A0000
;	undefined instruction
;	undefined instruction
;	undefined instruction
AND	R7, R2, R10
STMHSDB	R0, {R0, R3, R6, R8, R9, R11, SP, LR}
;	undefined instruction
STRMI	R11, [R0, -R1, LSL #24]
;	undefined instruction
;	undefined instruction
STMVCDA	R1!, {R2, R3, IP, LR, PC}
ANDMI	R2, R8, 0x000000C7
SUBHS	SP, R0, R2
EORVC	R4, R1, R1, LSL #6
LDRBNV	R1, [PC, R0, LSR #24]!
BLVS	0x01942110
;	undefined instruction
EORVC	R2, R8, R0
;	undefined instruction
;	undefined instruction
BMI	0x0028AB2C
ANDNV	R6, R0, R3, LSL R8
ANDGT	PC, R8, R6, LSL #16
;	undefined instruction
;	undefined instruction
STRLT	R7, [R1], #-2067
;	undefined instruction
ADDMI	R4, R2, 0x00030000
BLEQ	0xFE4372C0
;	undefined instruction
LDRBMI	R11, [R0, -R1, LSL #24]!
ANDEQ	R3, R0, R8, LSR R7
;	undefined instruction
LDMVCDA	R3, {R0, R1, R3, R10, SP, LR}
STRLT	LR, [R0, #-2029]
LDMVCIA	R0, {R1, R3, R10, R11, SP, LR}^
LDMVCIA	R3, {R9}
ANDEQ	R4, R0, 0x60000000
TSTMI	R8, 0x00530000
LDRBNV	R0, [PC, R0, LSL #4]!
TSTMI	R8, 0x00000384
;	undefined instruction
STMVCIA	R10, {R8-R10, LR}
ANDLE	R2, R8, 0x00003000
STMNEIA	R11, {R1, R4, R7}
;	undefined instruction
STMVCIA	R10, {R1, R3, R4, R6, R10, SP, LR}
ADDVC	R1, R10, R2, ASR IP
STR	LR, [SP, R3, ROR #15]!
BHS	0x00020938
;	undefined instruction
ADDEQS	R7, R2, R10, LSL #1
;	undefined instruction
LDRBMI	R6, [R0, -R10, LSL #8]!
;	undefined instruction
BLHS	0x00020774
;	undefined instruction
LDRB	R6, [R1, R10, LSL #8]
;	undefined instruction
LDRMI	R7, [IP], R11, ASR #1
SWINV	13039615
ANDLE	R4, R0, 0x27000000
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
SWINV	12253183
STRBMI	R7, [R0, -R11, ASR #14]!
;	undefined instruction
LDRHEQ	PC, [R11], #-245
BLHI	0xFF0A3570
BEQ	0x006D34B4
STRBMI	R8, [R0, -R3, LSL #8]!
;	undefined instruction
ADDVC	PC, R11, 0x000002AC
ANDHS	R7, IP, 0x000B0000
ANDVC	R4, R11, R3, LSL R3
;	undefined instruction
LDMVCDA	R3, {R1, R3, R10, R11, SP, LR}
STRVS	R1, [R10], #-3154
LDMNEIA	R2, {R1, R3, R4, R6}^
BLVS	0x000C29D8
LDMVSDA	R3, {R1, R4, R6, R7, R11, IP}
SWINV	9172991
LDMVSDA	R3, {R0, R1, R3, R6, R9, SP, LR}^
SWINV	8910847
LDMVSIA	R3, {R0, R1, R3, R7, R9, SP, LR}
SWINV	8648703
STRBMI	R6, [R0, -R11, ASR #5]!
;	undefined instruction
STRVC	PC, [R11], #3979
ANDHS	R7, R3, 0x000B0000
ANDVC	R4, R11, R3, LSL R3
;	undefined instruction
SWINV	8583167
STRVC	R3, [R11, #-2880]
ANDHS	R7, R3, 0x000B0000
ANDVC	R4, R11, R3, LSL R3
;	undefined instruction
SWINV	7927807
ORRVC	R3, R11, 0x00010000
ANDHS	R7, IP, 0x000B0000
ANDVC	R4, R11, R3, LSL R3
;	undefined instruction
SWINV	7272447
STMVCDA	R11, {R0, R1, R3, R6-R9, IP-LR}
TSTMI	R3, 0xC0000000
STRBMI	R7, [R0, -R11]!
;	undefined instruction
STRBVC	PC, [R11], -R5, ROR #30
;	undefined instruction
STRBMI	R7, [R0, -R11, LSL #11]!
;	undefined instruction
;	undefined instruction
;	undefined instruction
SWINV	5830655
BLHS	0x0001FF48
STRVC	SP, [R11, #256]
;	undefined instruction
SWINV	5306367
ADDMIS	R7, R8, 0x00000080
STRVC	SP, [R11], -R4
ANDHS	R7, PC, 0x000B0000
ANDVC	R4, R11, R3, LSL R3
;	undefined instruction
SWINV	4519935
;	undefined instruction
ANDHS	R7, IP, 0x000B0000
ANDVC	R4, R11, R3, LSL R3
;	undefined instruction
LDMVCDA	R3, {R1, R3, R10, R11, SP, LR}
STMMIDA	R3, {R1, R4, R6, R10-IP}
LDRBNV	R1, [PC, R0, ASR #17]!
ANDVC	PC, R3, R6, LSR PC
ANDEQ	R4, R0, R0, ROR #14
STREQ	R0, [R0], #-96
;	undefined instruction
STMEQDA	SP!, {R0, R4, R6, LR}^
;	undefined instruction
LDMEQDA	R2, {R0, R2, R6, LR}^
;	undefined instruction
LDRBLT	R4, [R4, #-1904]
LDRBVS	R4, [R11, #-1676]!
BLVS	0xFEE5DA74
ADDNE	R1, R9, R9, ASR #21
STMHSIB	R9, {R0-R2, R4, R8, R10-IP, LR, PC}
ORRHS	SP, R9, R0, LSL #26
;	undefined instruction
;	undefined instruction
;	undefined instruction
RSBMI	R6, R2, R10, LSL R8
SUBMI	R4, R10, R9, ASR R2
SUBMI	R6, R10, R9, ROR SP
;	undefined instruction
SWINV	14350335
;	undefined instruction
;	undefined instruction
;	undefined instruction
ANDNV	R11, R0, R0, LSL #10
;	undefined instruction
LDMHIDB	R1!, {R1-R3, R7, R9, R10, LR}
RSCLES	R0, IP, 0x00009000
LDRBLT	R4, [R10, #1904]!
SBCGE	R2, R11, 0x7C000003
STMNVIA	R6!, {IP-PC}^
;	undefined instruction
LDMNVDB	LR, {R1-R10, IP-PC}^
;	undefined instruction
EORMI	R2, R3, R8, ROR #7
;	undefined instruction
STMHSDB	R1, {R10, SP}
STMHSDB	R2, {R0, R1, IP, LR, PC}
;	undefined instruction
LDRBHI	R4, [IP, -IP, LSL #6]!
TEQVS	R8, R8, LSR R10
BNE	0x0091D2F8
ANDMIS	R4, IP, R0, ASR #23
;	undefined instruction
EORLE	PC, LR, R7, ASR #18
STMHIDB	R0!, {R1-R5, R7, R10, R11, LR}^
TSTMI	R0, 0x000E2000
TSTMI	R0, 0x00006200
TSTMI	R0, 0x00003880
EORLE	R0, R4, 0x00000000
SWIVC	12078778
SWIEQ	4196096
SWIHI	8030257
ANDLE	R2, R2, R0, LSL #20
SWIEQ	12584896
EORVCS	R7, R8, 0x00000E40
BLMI	0xFED9EE28
LDMMIIB	R10!, {R0, R1, R3, R4, R10, R11}^
;	undefined instruction
LDMMIIB	R9!, {R1, R8, IP, LR, PC}^
;	undefined instruction
;	undefined instruction
LDMVSIB	R9!, {R2-R5, R10, SP, LR}
SWIVC	3760185
;	undefined instruction
;	undefined instruction
LDMHSDB	R3!, {R0, R5-R7, R11-LR}^
;	undefined instruction
;	undefined instruction
LDMVSIA	SP!, {R0, R1, R3-R8, IP, LR, PC}^
LDMLODA	R4!, {R3, R5, R7, R11}
STMNEDB	R9, {R0, R3-R5, R8, R11, SP, LR}^
STMMIIB	R2!, {R0, R3-R7, SP, LR}
;	undefined instruction
SWINV	10156031
;	undefined instruction
LDMHIIA	R2!, {R0, R4, R5, R7, R11, PC}^
BLHS	0x00026784
;	undefined instruction
;	undefined instruction
STRHS	R7, [R2], #-506
LDMVSDB	R11!, {R2, R5, R7, R9, R10, LR}
BNE	0xFF25D290
SWIHI	12060809
LDMVSDA	R10, {R0-R2, R4, R9, IP, LR, PC}
SWIHI	4034552
SWINV	5699583
LDMVSDA	R9!, {R0, R2-R5, R8-R10, PC}
;	undefined instruction
EORVSS	R1, R9, R9, ASR #24
SUBMI	R6, R8, R8, LSL R8
BNE	0x0169D2B4
LDMNEDA	R2, {R0, R4-R8, R11, LR}^
;	undefined instruction
SUBMI	R4, R8, R1, ASR R0
LDRHI	R0, [R10, R2, LSL #24]!
LDRBNV	R4, [PC, IP, LSL #29]!
BVS	0x00E827B0
;	undefined instruction
BNE	0x01714488
SWIHI	7937700
ANDLE	R2, R0, R0, LSL #18
STMMIIB	R7!, {R2, R5, R7, R9-IP}^
BVC	0x00E88B90
LDMEQDA	R2, {R0, R2, R4, R5, R10-IP}^
STMHIDA	R9!, {R0, R2, R8, R9, IP, LR, PC}^
STREQ	R4, [R9], #-97
;	undefined instruction
LDRSHLE	LR, [IP, #119]!
STRBMI	R4, [R2, #-1652]!
ANDHS	SP, R0, R1, LSL #2
ANDNV	LR, R0, R10, LSR R0
;	undefined instruction
;	undefined instruction
STMHSDB	R0, {R0, R3-R6, R8-R11, PC}
;	undefined instruction
;	undefined instruction
ADDMIS	R6, R9, 0x00F90000
;	undefined instruction
LDRB	R1, [R0, R4, ROR #28]
LDRBNV	R2, [PC, R1, LSL #8]!
BVC	0x00EC2750
LDMEQDA	R2, {R0, R1, R4, R5, R10-IP}^
LDMHIDA	R9, {R0, R3, R8, R9, IP, LR, PC}^
ANDLE	R2, R4, R5, ROR R9
TSTLE	IP, R5, ROR #16
TSTLE	R10, R4, ROR R9
;	undefined instruction
LDRSHLE	LR, [IP, #115]!
ANDLE	R2, R5, R6, ROR #16
ANDLE	R2, R0, R0, LSL #24
ANDNV	R2, R0, R6, RRX
;	undefined instruction
ANDLE	R2, IP, R0, LSL #24
SWIHI	4034552
;	undefined instruction
;	undefined instruction
LDRBNV	R1, [PC, R8, LSR #24]!
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDRHLE	R4, [IP, #41]!
;	undefined instruction
ORRHSS	R4, R6, R0, LSL R7
;	undefined instruction
;	undefined instruction
STMHSDB	R0, {R0, R3-R6, R8-R11, PC}
LDMMIIB	R8!, {R8, IP, LR, PC}
;	undefined instruction
LDMMIIA	R7!, {R8, R10, IP, SP, PC}
STMHSDB	R1, {R0, R11-LR}
BVC	0xFEE36F04
;	undefined instruction
;	undefined instruction
;	undefined instruction
STMMIIB	PC!, {R3-R5, R7-R9, R11, SP, LR}
BLE	0x000C9304
;	undefined instruction
ADC	R4, R9, 0x00990000
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDRVC	SP, [R8, #-1532]!
STREQ	R0, [R1], R0, LSL #17
SUBMIS	R0, R1, R2, LSL R3
SUBMI	R1, R8, R9, ASR #15
ANDMI	R2, R1, PC, LSL R1
SUBEQS	R6, R0, 0x00BA0000
STMHSDA	R7, {R6, R8-R11}
;	undefined instruction
SWIEQ	4195088
BLLE	0x0000CB3C
ANDHSS	R2, PC, 0x00000000
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
STRLT	R11, [R0, #-1264]
;	undefined instruction
STMMIIB	R0, {R3-R7, R10, R11, SP, LR}
;	undefined instruction
ADD	R6, R0, 0xF8000000
;	undefined instruction
MOVHS	R4, R8, LSL #7
ORRHS	R4, R0, 0x00000048
ORRMIS	R0, R8, 0xB0000001
STMVCDA	R10, {R4, R7, R8, R11, LR}
ANDLE	R2, R3, R1, LSL #20
BVS	0x01295020
;	undefined instruction
EORVSS	R4, R8, R8, LSL R3
BLVC	0xFEFA1B68
STMHSDA	R0, {R3-R6, R8, R9, R11-LR}
ANDNV	SP, R0, R11, LSL R1
BLVC	0x00F00F44
;	undefined instruction
;	undefined instruction
;	undefined instruction
AND	R2, R10, R6, LSL #6
;	undefined instruction
STRLE	R1, [R9, #-3675]
;	undefined instruction
;	undefined instruction
STRHS	SP, [R1], -R4, LSL #10
LDMMIDB	IP, {R1-R4, R8, R9, SP}
STRHS	R6, [R0, #-889]
ANDNV	R7, R0, R11, LSR R3
;	undefined instruction
TEQVS	SP, R6, LSR R1
BMI	0x0191F6B0
BMI	0x01D9BAA8
;	undefined instruction
;	undefined instruction
;	undefined instruction
SBCHS	SP, R0, 0xC0000002
ADCHI	R0, R2, 0x20000001
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
ADCHI	SP, R5, 0x80000001
STMMIDB	R7, {R3, R4, R6, R9, R11, LR}
;	undefined instruction
LDRB	R6, [R4, R5, LSR #0]!
BMI	0xFF6A3690
STMMIDB	R7, {R1, R4, R10, R11}
LDRB	R0, [R5, R9, LSL #24]!
MSR	CPSR_cf, R3
BX	LR
;	undefined instruction
STREQ	R0, [R0], #-176
STREQ	R0, [R0], #-288
ANDEQ	R3, R0, SP, LSL R0
ORRGT	R1, R7, 0x00000089
;	undefined instruction
TSTLE	R9, R1, LSL #26
LDMNVIA	R10, {IP-PC}
SUBHIS	R2, R9, R0, LSL #3
;	undefined instruction
TSTHI	SP, R10, LSL R0
;	undefined instruction
;	undefined instruction
AND	R10, R7, R9, ASR #5
AND	R4, R3, R7, ASR #19
;	undefined instruction
;	undefined instruction
SUBGES	R8, R5, 0x40000008
;	undefined instruction
RSBS	R6, LR, R10, ROR R3
;	undefined instruction
;	undefined instruction
;	undefined instruction
STMHSDA	R0, {R1, IP, LR, PC}
RSBS	SP, R5, R5, ROR R0
LDMNVDA	R6!, {IP-PC}^
;	undefined instruction
;	undefined instruction
SWIHI	2216196
ANDMIS	R2, R1, R0, LSR R2
STR	SP, [R0, R4]
ORRLE	R2, R5, R1, LSL #28
TEQVS	R8, 0x02240000
TSTHI	R8, R1
STMHSDA	R0, {R3-R6, R10-LR}
;	undefined instruction
LDMMIDA	PC!, {R0, R3, R5, R8, IP, LR, PC}
LDMMIIB	R8!, {R10, R11}^
LDRBNV	R4, [PC, R6, LSR #22]!
;	undefined instruction
ADDMI	R6, R11, 0x0003E400
BLVS	0xFEE37200
;	undefined instruction
STMHIDA	R10, {R0, R3, R8-IP}
ADDMIS	R8, R3, 0x00007B00
ANDVS	SP, R8, R4, LSL R1
BMI	0xFFD9CFAC
ADDMIS	R4, R1, 0x00000011
BVC	0xFEE77108
STMNEIA	R9, {R1, R3-R5, R9, R11-LR}
STMNEIA	R9, {R1, R3-R6, R9, R11-LR}
BNE	0xFE2618C4
;	undefined instruction
;	undefined instruction
LDMNVIB	SP, {IP-PC}
EORLES	R2, R3, R0, LSL #16
;	undefined instruction
BLVS	0xFFEBADC0
ADDMIS	R6, R3, 0x00007B00
STMMIDA	LR, {R0-R3, R5, IP, LR, PC}
;	undefined instruction
STMMIDA	R11, {R0, R8, IP, LR, PC}
LDMMIDB	R0, {R2, R3, R8, R9, R11, LR}
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
BLNE	0xFE261C18
LDMNVDB	PC!, {IP-PC}^
;	undefined instruction
;	undefined instruction
ANDEQ	LR, R0, R5, LSL R0
ANDEQ	IP, R0, R11, ROR R3
ANDEQ	R10, R0, R7, LSL R5
;	undefined instruction
;	undefined instruction
RSBHSS	R6, R9, R0, LSR #4
;	undefined instruction
SWIVS	6579571
ANDEQ	R0, R0, 0x00000000
ANDVS	R2, R3, R3
;	undefined instruction
;	undefined instruction
;	undefined instruction
BLMI	0xFF28AD64
;	undefined instruction
LDRB	R2, [R10, R1]!
;	undefined instruction
;	undefined instruction
LDMHIDA	R1, {R0, R6, R7, R9, R11, LR}
BLVC	0xFE615C9C
;	undefined instruction
STMEQIB	R0, {R4, R8, R11, PC}^
BLVS	0x01637744
STMHSDA	R2, {R0-R2, R7, R9, R10, LR}
;	undefined instruction
ANDHS	R8, R7, R1, LSL R4
LDRB	R4, [R6, R1]!
ANDEQ	R0, R0, 0x000000C0
BICGE	R2, R1, R3, LSL #1
;	undefined instruction
;	undefined instruction
STMHSDA	R2!, {R3, R9, R11}^
BLVC	0xFE637360
;	undefined instruction
AND	R2, R2, R1
;	undefined instruction
LDRVC	R0, [R8, #3968]
;	undefined instruction
LDRBVC	R4, [R9, #-129]
ANDGE	R8, R10, R1, LSL R8
LDRVC	R6, [R9], #-856
TSTVC	R8, 0x0000000B
ANDMI	R2, R8, R1, LSL R0
STMEQDB	R8, {R0, R2, R6, R8, IP, LR, PC}
STMEQDB	R10, {R3, R8, R9, LR}
SUBMI	R4, R2, R10, ASR #0
TEQLE	LR, R2, LSL R7
ANDEQ	R2, R0, 0x00000072
;	undefined instruction
ANDEQ	LR, R0, R7, LSR #1
STMHSDA	R2!, {R3, R9, R11}^
STMHSDA	R1!, {R0, R3, R5-R7, IP, LR, PC}^
ANDHS	SP, R3, R3, LSR R1
;	undefined instruction
ORRVSS	R4, R10, 0x000A4000
ANDGE	R2, R1, R0, ROR #4
ANDEQ	LR, R0, R8
;	undefined instruction
ORRVSS	R1, R10, 0x00009200
;	undefined instruction
ANDGE	SP, R3, R0, LSL #2
ANDEQS	R6, R2, 0x9A000000
TSTMI	R1, 0x00001640
ANDEQ	LR, R0, R10, LSL #1
STMHSDA	R3!, {R3, R9, R11}^
RSCHSS	SP, PC, R1, ROR #3
;	undefined instruction
;	undefined instruction
STMHSDA	R2, {R3, R4, R7-R9, R11-LR}
;	undefined instruction
AND	R7, R5, R8, ASR R6
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDRBVC	R7, [R10, #2138]
;	undefined instruction
TSTMI	R1, 0x90000000
RSBS	LR, R8, IP, RRX
STMHSDA	R3!, {R3, R9, R11}^
STMHSDA	R4!, {R2, R5-R7, IP, LR, PC}^
;	undefined instruction
BLVC	0xFE6210E0
;	undefined instruction
RSCHSS	R7, PC, R10, ASR R7
;	undefined instruction
STRB	R10, [R10, R1]!
ANDEQ	LR, R0, LR, ASR R0
STMHSDA	R2, {R3, R4, R7-R9, R11-LR}
LDMHIDA	R0, {R0, R2, IP, LR, PC}^
LDMHIIA	R0, {R3, R4, R6, R8-R10, IP-LR}
LDMHIIA	R0, {R3, R4, R7-R10, IP-LR}^
;	undefined instruction
LDMMIDA	R7!, {R3, R6-R8, IP, SP}^
SUBMI	R4, R1, R8
LDMMIDB	R9!, {R0-R2, R4, R6, R8, IP, LR, PC}^
ANDLO	R1, R8, 0x000A0000
;	undefined instruction
ANDEQ	LR, R0, R4, ASR #0
STMHSDA	R2, {R3, R4, R7-R9, R11-LR}
;	undefined instruction
LDMVSDA	R1, {R1, R8, IP, LR, PC}
;	undefined instruction
ORRVSS	R1, R9, 0x00008100
ADDMI	R6, R8, 0x00036000
ANDGE	SP, R1, R7, LSR R1
ANDEQ	LR, R0, R4, LSR R0
TEQLE	LR, R5, ROR #18
BLVS	0xFF69E044
;	undefined instruction
EOR	R2, IP, R4, ROR R1
ANDGE	R2, R1, R5, ROR R1
ANDEQ	LR, R0, R8, LSR #0
RSCLES	R2, R9, R5, ROR #18
TEQLE	R0, R6, ROR #18
ANDGE	R8, R1, R9, LSL IP
ANDEQ	LR, R0, R0, LSR #0
ADDMI	R8, R8, 0x00001800
BLVC	0xFE6773AC
;	undefined instruction
;	undefined instruction
LDMEQDA	R11, {R0, R1, R3, R4, R6, R8-R11}^
LDMHIDA	R1, {R2, R8, R9, IP, LR, PC}^
;	undefined instruction
;	undefined instruction
BLMI	0x017B7714
LDMVSIB	R8, {R0, R3, R4, R8, IP, LR, PC}^
BNE	0x01022890
BNE	0x01022994
BNE	0x01022A98
;	undefined instruction
;	undefined instruction
EORGES	R7, R8, R9, ASR R4
BMI	0x0139BCA4
SUBHIS	R8, R1, R1, ASR R1
STMHSDA	R2, {R3, R4, R7-R9, R11-LR}
BMI	0x012F7358
TSTHI	R0, R4, LSL #16
TSTVS	R8, 0x0000000B
;	undefined instruction
;	undefined instruction
ANDEQ	LR, R0, LR, ROR #15
ANDNE	R5, R8, R8, LSL #1
;	undefined instruction
SUBVSS	R6, R8, R8, LSL R8
SUBMI	R4, R8, R5, ASR #18
ANDHS	R6, R11, R0, ASR R3
TSTHS	R0, R8, LSL R3
SUB	R10, R11, R0
;	undefined instruction
BICVCS	R2, R8, 0x00000003
ANDGE	R7, R1, R8, ASR R3
ANDEQ	LR, R0, R6, ASR #0
;	undefined instruction
;	undefined instruction
ANDMI	R0, R1, R9, LSL #4
EORGES	R0, R9, 0x00324000
LDMVSDA	R1, {R1, R4, R6, R11, IP}
ADDVSS	R4, R8, R8, ASR #0
RSBHSS	R0, PC, 0x00001000
STREQ	R4, [R0], #-17
ORRLO	SP, R0, R0, LSL #6
ANDMIS	R0, R0, R0, LSL #24
;	undefined instruction
SBCEQ	R3, R9, PC, LSR R1
ANDMI	R4, R8, PC, LSR #16
ANDLE	R4, R5, R8, LSL #5
;	undefined instruction
ADDVCS	R0, R8, 0x00000400
BICEQ	R2, R0, R9, LSL #1
LDMMIDB	R0!, {R2, R3, IP, SP}
LDRVS	R1, [R9], #-2057
ANDGE	R2, R1, R0, LSR #2
ANDEQ	LR, R0, R10, LSL R0
;	undefined instruction
TSTHS	R0, R0, LSL PC
BLVS	0x004130F4
BLVS	0xFE664C38
ORRVSS	IP, R9, 0x40000000
ADDMI	R6, R8, 0x00036000
STMMIDB	R4!, {R2, R5, R7, R8, IP, LR, PC}
;	undefined instruction
BICVSS	R6, R8, 0x00001800
STMMIDA	R2!, {R1-R4, R7-R10, SP-PC}
STMVSDA	R0, {R0, R6, R11, SP, LR}
;	undefined instruction
ANDGE	R2, R2, R0, LSL #2
;	undefined instruction
;	undefined instruction
STRLT	R4, [R0, #-1904]
ANDVSS	R4, R0, IP, LSL R10
TSTVC	R9, R9, LSL R11
ANDLE	R2, R1, R1, LSL #18
LDRHVC	R7, [R8, #-216]
;	undefined instruction
;	undefined instruction
LDRBNV	R1, [SP, R0, LSL #26]!
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDMHSDA	R6!, {R0, R1, SP-PC}^
LDRBNV	SP, [SP, R1, LSL #2]!
;	undefined instruction
ANDLE	R2, R7, R0, LSL #16
;	undefined instruction
;	undefined instruction
STMMIDB	PC, {R1-R3, R11, LR}
STMNVIB	R0!, {R1-R10, IP-PC}^
ANDEQ	LR, R0, R8, ROR #10
STREQ	R0, [R0], #-288
;	undefined instruction
;	undefined instruction
SWIVS	6579571
STREQ	R0, [R0], #-512
ANDEQ	R0, R0, 0x000000C0
ANDEQ	R0, R0, 0x0000003E
ANDEQ	R0, R0, 0x00000000
;	undefined instruction
ADDHI	R8, R0, R0, LSL #1
B	0x00003180
B	0x00003164
;	undefined instruction
ANDEQ	R3, R0, R0, LSL #19
EOREQ	R0, R8, R2, LSR #0
ADDEQ	R0, R8, R2, LSL #1
RSCEQ	R0, R8, R2, ROR #1
;	undefined instruction
STMEQDA	R2, {R9}
ANDEQ	R0, R0, R0
STMEQDA	R1, {R6-R8}
ANDEQ	R0, R0, LR, LSL R0
;	undefined instruction
STREQ	R0, [R6, -R4, LSL #10]
BLEQ	0x00285500
SWIEQ	920844
TSTNE	R2, 0x00000004
;	undefined instruction
ANDHSS	R1, LR, R8, LSL IP
;	undefined instruction
LDMLODA	R6!, {R4, R5, R10, IP, SP}
STRBMI	R4, [R2], #-60
SUBPL	R4, LR, R8, ASR #24
;	undefined instruction
ANDEQ	R0, R0, R0, RRX
;	undefined instruction
STRB	LR, [R6, R4, ROR #11]!
BL	0xFFABD8B4
BICLES	SP, R2, 0x00000034
;	undefined instruction
BLLE	0xFF6B9880
BICGT	IP, R2, 0x00000030
STRBGT	IP, [R6, R4, ASR #11]
BLGT	0xFF2B584C
;	undefined instruction
;	undefined instruction
BLLT	0xFEEB1818
;	undefined instruction
STRGE	R10, [R6, R4, LSR #11]!
BLGE	0xFEAAD7E4
ORRLSS	R9, R2, 0x00000024
;	undefined instruction
BLLS	0xFE6A97B0
ORRHI	R8, R2, 0x00000020
STRHI	R8, [R6, R4, LSL #11]
BLHI	0xFE2A577C
;	undefined instruction
;	undefined instruction
BLVC	0x01EA1748
;	undefined instruction
STRBVS	R6, [R6, -R4, ROR #10]!
BLVS	0x01A9D714
;	undefined instruction
;	undefined instruction
BLPL	0x016996E0
;	undefined instruction
STRBMI	R4, [R6, -R4, ASR #10]
BLMI	0x012956AC
TEQLO	R2, 0x0000000C
;	undefined instruction
BLLO	0x00E91678
;	undefined instruction
STRHS	R2, [R6, -R4, LSR #10]!
BLHS	0x00A8D644
TSTNE	R2, 0x00000004
;	undefined instruction
BLNE	0x00689610
;	undefined instruction
STREQ	R0, [R6, -R4, LSL #10]
BLEQ	0x002855DC
ANDHI	R0, R0, R0
;	undefined instruction
SWIHI	11327006
LDMLSDA	R7!, {R1, R4, R6, IP-PC}
;	undefined instruction
BGE	0xFF7052F4
STRLT	PC, [R4, #-820]
SWILT	13141691
BLGT	0x00C00688
STRBLE	PC, [R4, -R11, ASR #25]
LDR	PC, [R1], #-58
;	undefined instruction
ADDEQ	R0, R4, R0, RRX
;	undefined instruction
TEQEQ	R0, R8, LSL #2
BICEQ	R0, R0, R0, ROR #2
RSBEQ	R0, R0, 0x00000001
SBCEQ	R0, R0, 0x0000000A
SWINV	16777215
MVNEQS	R0, PC, LSL R0
MVNEQS	R2, PC, LSL R8
MVNEQS	R5, PC, LSL R8
MVNEQS	R0, R0
MVNEQS	R2, R10, LSL #16
MVNEQS	R5, R6, LSL R8
MVNEQS	R7, R0, LSL #24
MVNEQS	R7, R10, LSL #24
MVNEQS	R7, R6, LSL IP
ANDEQ	R7, R0, R0, LSL #24
ADCEQ	R7, R0, R10, LSL #24
;	undefined instruction
ANDEQ	R7, R0, PC, LSL IP
ADCEQ	R7, R0, PC, LSL IP
;	undefined instruction
ANDEQ	R0, R0, PC, LSL R0
ADCEQ	R2, R0, PC, LSL R8
;	undefined instruction
MVNEQS	R0, PC, LSL R0
MVNEQS	R2, PC, LSL R8
MVNEQS	R5, PC, LSL R8
MVNEQS	R7, PC, LSL IP
MVNEQS	R7, PC, LSL IP
MVNEQS	R7, PC, LSL IP
SWINV	2063360
;	undefined instruction
ANDEQ	SP, R0, R4, LSR #8
ANDEQ	R4, R0, PC
ADDHI	R0, R1, 0x00000000
;	undefined instruction
;	undefined instruction
;	undefined instruction
ANDGT	R0, R2, 0x00000080
BLEQ	0x001F3AC4
STMEQDB	R5, {R1, R2, R9, R11}
;	undefined instruction
;	undefined instruction
BEQ	0xFE0A4394
;	undefined instruction
STMLSIA	R11, {R0, R4, R10, SP}
;	undefined instruction
LDMNEIB	LR!, {R0, R1, R5, R7, R9, IP, LR}
SMULLHS	R0, LR, R3, R9
BMI	0x01294AF8
;	undefined instruction
;	undefined instruction
SWILT	13558658
LDRBLS	PC, [PC], #1157
;	undefined instruction
UMULLGT	R5, R10, R4, R6
;	undefined instruction
;	undefined instruction
ORRVSS	IP, R10, R3, LSR #21
;	undefined instruction
;	undefined instruction
BICVS	R1, R7, R3, LSR #26
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
TEQNV	R0, PC, ROR #10
STRBHI	PC, [R0, #2967]
STRHS	SP, [R0, #1632]
;	undefined instruction
EORS	R4, R8, 0x00000010
SWINV	3449593
STRMI	R3, [R3], #-3771
BLGT	0xFE4034F8
;	undefined instruction
;	undefined instruction
SWIGE	3993735
BLHI	0xFF90CA80
ADCVC	R0, IP, 0x00038000
LDRBEQ	SP, [R8, R1, LSR #8]!
ANDEQ	IP, R3, R4, LSR #0
ORREQ	R0, R0, PC
ANDMI	R4, R1, 0x00000000
BICMI	R0, R2, 0x00800000
STRBGT	R0, [R3], #-323
BICEQ	R0, R3, 0x00000028
STMEQIB	R3, {R0, R1, R6, R7, R9}^
STMEQDA	R7, {R0, R1, R3, R10}
;	undefined instruction
LDMLODA	R4, {R8, R9}^
LDMMIDA	IP, {R1, R10, R11}
LDMLSDB	R6, {R0, R1, R6, R7, LR, PC}^
STRBVC	R8, [SP, #-8]!
LDRMI	R10, [R10], #-1753
ADDHI	R4, R4, R1, LSR #0
EORNES	R11, R5, R6, LSR #15
;	undefined instruction
LDRBVS	R1, [R4], R2, LSR #11
EOREQ	R0, IP, R7, LSL #20
;	undefined instruction
STRBPL	R9, [R1, #3563]!
LDRMI	R4, [R0, #2270]!
;	undefined instruction
ANDVS	SP, R4, R8, ASR R8
STMHSDB	LR!, {R2, R8}
ADC	R6, PC, 0x000000C7
RSBNE	SP, R1, R1, ROR #12
STR	IP, [PC], #-1693
EORMIS	R1, R8, R9, ROR R3
BLNE	0x01DD8C04
BPL	0xFEC1EDE0
;	undefined instruction
TEQGT	SP, 0x00002800
MVNGTS	LR, R7, ROR #3
LDRLT	R9, [R10], #3348
BEQ	0xFE823610
;	undefined instruction
BLE	0x003707DC
BLPL	0x0010F5B0
ANDHS	R1, SP, 0x80000006
;	undefined instruction
LDRSBLS	LR, [R0, #48]!
EOR	R7, R5, 0xD0000004
STMGTDB	R0, {R1, R2, R5, R6, R11, IP}^
ADCGE	R0, IP, R8, LSL R6
BICHI	R4, R8, 0x00008500
STRLT	PC, [R6], #385
LDRB	R2, [R9, #2157]
BVS	0x00A05ECC
SWIHS	9744823
;	undefined instruction
;	undefined instruction
;	undefined instruction
BNV	0x00DE9CE4
LDRLS	R9, [R6, #3034]!
LDRLT	R1, [R1], R4, ASR #5
ADCEQ	R5, R8, SP, LSL R10
LDMVCIB	R4!, {R0, R1, R4, SP, PC}
ADDLS	R1, R1, 0x000000D2
BEQ	0xFE1B9D38
LDMHIIA	IP, {R0, R1, R5, R7, IP, SP}^
RSBLO	SP, IP, R0, ASR #13
;	undefined instruction
;	undefined instruction
LDRNE	R8, [LR], -R6, ASR #5
BVS	0xFEEF75B8
STRHS	R6, [R5], #-800
BLHS	0xFFEEC868
BLNE	0xFE798524
BPL	0xFE429288
LDMLOIA	R0, {R0-R6, R9-IP, LR, PC}
BEQ	0x00CA3E5C
;	undefined instruction
STMLSIA	R3, {R2, R8, R11-LR}^
EORLES	R6, R8, R3, ROR #5
SWILE	4611423
LDMLEDB	PC, {R0, R1, R6-R8, R11, SP}
;	undefined instruction
BGT	0x01203610
;	undefined instruction
;	undefined instruction
;	undefined instruction
SBCNVS	R0, R10, R11, ASR R6
;	undefined instruction
BLMI	0x012DDB3C
ORRHS	R0, R7, R10, LSR #30
ANDNE	R10, IP, R11, ASR R4
LDRVS	R10, [R0, #-4058]
BLPL	0xFE1BA85C
LDMLTIA	R1, {R0, R1, R6-R9, R11, IP}^
;	undefined instruction
LDMLEIA	R6!, {R0, R2, R4-R6, R9, R10, IP, PC}
;	undefined instruction
;	undefined instruction
STMHSIA	PC, {R2, R4-R6, R9-R11, LR, PC}^
;	undefined instruction
LDRBLT	SP, [R10], R10, ASR #22
BLLE	0xFF20CF3C
;	undefined instruction
;	undefined instruction
BGE	0xFE3513AC
;	undefined instruction
;	undefined instruction
SWIGT	2108418
SUBLES	R4, R11, 0x0000CE00
;	undefined instruction
;	undefined instruction
LDMNVIB	R9, {R4-R6, R9-PC}
STRVC	R10, [R0, #-2719]!
;	undefined instruction
LDMLOIB	R5!, {R1, R4, R6, IP, LR}^
;	undefined instruction
BLS	0xFFC98BD8
BHI	0x00179D2C
BLT	0xFEC21BA8
;	undefined instruction
STMIA	R6!, {R0, R3, R4, R7-R11, PC}^
STRBVC	R9, [LR, R8, ASR #4]!
STMNEIA	R5, {R2, R4, R6, R8, R11, IP}
STMEQDA	R8, {R1-R4, R6, R7, R10-IP, LR}^
;	undefined instruction
STRBHI	LR, [R1], #-1661
SBCNVS	R4, R4, R3, LSL #17
;	undefined instruction
LDR	R7, [R10, #-618]!
ADDLSS	R9, R9, LR, LSR #29
STRHS	R1, [R3], #-2314
ADCNV	R8, LR, R4, ROR R5
;	undefined instruction
;	undefined instruction
SWILO	4874895
TEQLS	R2, 0x0000CD00
LDMLSIB	R3!, {R0, R2, R3, R5, R7, R10, R11, LR, PC}
;	undefined instruction
BLLT	0xFEA95A8C
RSBLO	R2, SP, R11, ASR #19
SWIPL	5152675
TEQPL	R3, 0x6D000000
STMLODA	R11!, {R0, R2, R5, R7, R8, R10, IP}^
;	undefined instruction
BHI	0x00C80E9C
;	undefined instruction
STMGEDA	R8, {R2, R5, R10-IP, LR}^
;	undefined instruction
BLHI	0xFE653DE4
LDMNEIA	R5!, {R0, R1, R3-R5, R7-R9, LR, PC}
BLS	0x00EF99EC
;	undefined instruction
BGE	0x01DDEA64
SWIVS	4427472
SWI	4908273
;	undefined instruction
STRVS	R0, [R5, #1617]!
STRBGE	LR, [R6, -IP, ROR #20]!
SWINV	11792601
;	undefined instruction
;	undefined instruction
;	undefined instruction
STRBGE	R2, [IP], #537
BLVC	0xFEFA28E4
RSBNES	R11, IP, R11, LSL #20
SWINV	2796366
;	undefined instruction
RSBPL	R10, R5, 0x14000000
;	undefined instruction
;	undefined instruction
SUBHIS	R10, R11, 0x00016800
;	undefined instruction
;	undefined instruction
BLMI	0xFFAB62A0
SUBEQS	R11, PC, 0x00016000
BPL	0xFFBFA350
;	undefined instruction
SWIMI	15451355
LDRBVC	R7, [R1], -R6, ROR #8
STRBNE	IP, [SP, #-2904]!
LDRBLS	PC, [LR, #-1087]
;	undefined instruction
STMMIDA	IP, {R0, R3, R4, R8, SP-PC}^
SWINE	13441332
;	undefined instruction
LDRBVC	R7, [R5, R0, LSR #31]
LDR	R4, [R10, #-2615]
;	undefined instruction
LDRGE	LR, [R1, #-3207]!
LDR	R2, [PC, R0, LSL #12]
STREQ	R1, [R2, #-10]
;	undefined instruction
STMHIDA	R2!, {R3, R4, R7, SP}
STRBHI	R4, [R4, #-176]
STMVSDA	R5, {R0, R7, R8, R10, IP}
SUBLE	R8, R8, 0x00440000
BPL	0x00914144
;	undefined instruction
EORNE	LR, R2, R2, LSR R8
SBCHS	R8, R8, 0x00000044
STMHIIA	R1, {R3, R7, R11}
;	undefined instruction
;	undefined instruction
ORRVSS	IP, R7, R10, LSR #11
LDRVS	R0, [R0], #2184
STRBLT	R6, [R4], #2952
STRBMI	R2, [R4, #859]
STMVSIB	R8, {R0, R1, R7-R11, SP}
LDRGE	SP, [LR, #1880]
;	undefined instruction
BGE	0x01C15860
BPL	0x000BDC0C
STRLT	R2, [R6, #866]!
;	undefined instruction
ANDMIS	R0, R1, 0x000000A8
;	undefined instruction
LDMLTIB	R8, {R3, R4, R6, R8, SP, LR}
SWIHS	11096089
;	undefined instruction
BLEQ	0x011256A0
;	undefined instruction
LDRBLE	R9, [SP], #-136
;	undefined instruction
ANDEQ	R0, R0, R0
ADCGT	R2, SP, 0x02000000
;	undefined instruction
LDRGT	R2, [R6], #1568
SUBEQ	R0, R0, IP, LSL #19
;	undefined instruction
ANDEQ	R0, R0, R0, LSL #19
STMGTDA	R8!, {R5, R9, R10, SP}^
ANDEQ	R0, R0, IP, ASR #17
BGT	0x0140CF44
ANDEQ	R0, R0, R0, ASR #17
;	undefined instruction
ANDEQ	R0, R0, IP, LSL #16
;	undefined instruction
ANDEQ	R0, R0, R0, LSL #16
EORGTS	R6, R7, R6, ROR #8
ANDEQ	R5, R0, R0, ASR #22
RSBGTS	R6, R7, R6, ROR #8
ANDEQ	R5, R0, R0, ASR R11
;	undefined instruction
MULEQ	R0, R0, R2
SWINV	16711422
SWINV	65535
ANDEQ	R0, R1, R0
ANDEQ	R0, R1, 0x40000000
SWINV	16712194
ANDEQ	PC, R0, R0, LSL #30
;	undefined instruction
ANDEQ	PC, R0, R0, LSL #30
ANDEQ	R0, R0, R1
ANDEQ	R4, R0, R8, ROR R7
B	0x000001A0
ANDEQ	R4, R0, R8, ROR R7
B	0x0000018C
ANDEQ	R4, R0, R8, ROR R7
B	0x000003A8
ANDEQ	R4, R0, R8, ROR R7
B	0x00000328
ANDEQ	R4, R0, R8, ROR R7
B	0x00000CE0
ANDEQ	R2, R0, R5, ROR #12
ANDEQ	R2, R0, PC, ASR #13
ANDEQ	R2, R0, PC, ROR #13
ANDEQ	R2, R0, R9, LSL #14
ANDEQ	R2, R0, SP, LSL R7
ANDEQ	R2, R0, R5, ROR #12
ANDEQ	R2, R0, R5, ROR #12
ANDEQ	R2, R0, R5, ROR #12
ANDEQ	R2, R0, R5, ROR #12
ANDEQ	R2, R0, R11, ASR #14
ANDEQ	R2, R0, R5, ASR R7
ANDEQ	R2, R0, R9, ROR #14
ANDEQ	R2, R0, R11, ROR R7
ANDEQ	R2, R0, R9, LSR #15
;	undefined instruction
ANDEQ	R2, R0, PC, ASR #15
ANDEQ	R2, R0, R3, ROR #15
;	undefined instruction
ANDEQ	R2, R0, R5, LSL #16
ANDEQ	R2, R0, PC, LSL #16
ANDEQ	R2, R0, PC, LSL R8
ANDEQ	R2, R0, R5, ROR #12
ANDEQ	R2, R0, R5, ROR #12
ANDEQ	R2, R0, R7, LSR R8
ANDEQ	R2, R0, R5, ROR #12
ANDEQ	R2, R0, R5, ROR #12
ANDEQ	R2, R0, R5, ROR #12
ANDEQ	R2, R0, R11, ASR #16
ANDEQ	R2, R0, R5, ROR #12
ANDEQ	R2, R0, R9, LSR #12
ANDEQ	R1, R0, R11, LSL #14
ANDEQ	R2, R0, R7, ROR #7
ANDEQ	R1, R0, R5, LSR R5
;	undefined instruction
ANDEQ	R2, R0, R7, ASR #7
;	undefined instruction
ANDEQ	R3, R0, R0, LSL #24
ANDEQ	R3, R0, IP, LSR #16
;	undefined instruction
ANDEQ	R3, R0, R0, LSL #24
;	undefined instruction
LDMNVIB	R10, {R0-R8, R10, SP, PC}
ANDEQ	R3, R0, R0, LSL #24
ANDEQ	R3, R0, IP, LSR #16
;	undefined instruction
SWIPL	12255420
BLMI	0xFEF83AEC
STRLE	R4, [PC, #191]
ORRLT	R7, R6, R11, ASR R0
;	undefined instruction
;	undefined instruction
SUBVCS	SP, R6, R10, LSL #11
ADCEQS	R11, IP, R6, LSL #3
BLMI	0xFEF83B08
STRLE	R4, [R5, #191]
ORRLT	R7, R6, R3, ASR R0
;	undefined instruction
ANDEQ	R3, R0, R8, ASR #15
ANDEQ	R3, R0, IP, ROR #15
;	undefined instruction
ANDEQ	R3, R0, R10, LSL #16
ANDMI	R0, R0, R0
UMULLEQ	R11, R2, R5, R4
ANDEQ	R0, R0, R1
ANDEQ	R0, R0, R1, LSR #0
LDRMI	R1, [R1, -R0, LSL #18]!
;	undefined instruction
BVS	0x01D62E48
LDMNEDB	R1!, {R1, R3, R4, R6, R8-R10, LR}
STMLTIB	PC, {R8-R10, SP-PC}^
ORRHI	R9, R11, 0x0A600000
STRLS	R8, [R11], R1, LSL #7
STRB	R11, [PC, R6, LSR #19]
ANDEQ	R1, R0, R0, LSL #18
;	undefined instruction
LDRPL	R0, [LR, #189]!
STRLE	R4, [PC, #191]
ORRLT	R7, R6, R6, ASR R0
;	undefined instruction
;	undefined instruction
SUBVCS	SP, R11, R10, LSL #11
ADCEQS	R11, IP, R6, LSL #3
LDRPL	R0, [LR, #189]!
STRLE	R4, [R5, #191]
ORRLT	R7, R6, R6, ASR R0
;	undefined instruction
;	undefined instruction
;	undefined instruction
STRHEQ	R0, [R0], -R1
STRLT	R0, [R0, -R4]
ANDEQ	R3, R0, R8, ASR #15
ANDEQ	R3, R0, R0, ROR #16
ANDEQ	R3, R0, R0, ROR R8
ANDEQ	R3, R0, LR, ROR R8
ANDEQ	R3, R0, IP, LSL #17
BMI	0xFEEC3BAC
LDMVCIA	LR!, {R0, R2-R5, R7, R8}
STRHMI	R4, [R7, #15]!
;	undefined instruction
;	undefined instruction
;	undefined instruction
ORRLTS	R7, R8, R8, ASR #0
LDRHEQ	R0, [SP, IP]!
;	undefined instruction
;	undefined instruction
UMLALEQS	R11, IP, R8, R1
LDMVCIA	LR!, {R0, R2-R5, R7, R8}
;	undefined instruction
ORRLTS	R6, R8, PC, ASR #24
LDRHEQ	R0, [SP, IP]!
;	undefined instruction
;	undefined instruction
UMLALEQS	R11, IP, R8, R1
LDMVCIA	LR!, {R0, R2-R5, R7, R8}
;	undefined instruction
ORRLTS	R6, R8, R6, ASR R0
ANDLE	R0, R0, R6
ANDEQ	R3, R0, R8, ASR #15
;	undefined instruction
ANDEQ	R3, R0, R3, ASR #17
;	undefined instruction
;	undefined instruction
ANDEQ	R3, R0, IP, ROR #17
;	undefined instruction
;	undefined instruction
;	undefined instruction
STRLE	R4, [PC, #191]
ORRLT	R7, R6, R4, ROR #16
;	undefined instruction
;	undefined instruction
STMVCDA	R2!, {R1, R3, R7, R8, R10, IP, LR, PC}^
ADCEQS	R11, IP, R6, LSL #3
;	undefined instruction
STRLE	R4, [R5, #191]
ORRLT	R7, R6, R0, ROR #16
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
SWILT	6209024
LDRBVS	R9, [R5], R0, ASR #8
;	undefined instruction
;	undefined instruction
STMLSDA	R0, {R1-R4, R6, R8-SP, PC}^
STMVCDA	R7!, {R0, R7-R9, R11, IP, LR, PC}^
ANDEQ	R11, R0, IP, LSL #3
ANDLT	R0, R0, 0x00000006
ANDEQ	R3, R0, R8, ASR #15
ANDEQ	R3, R0, R8, LSR #18
ANDEQ	R3, R0, R8, LSR R9
ANDEQ	R3, R0, R6, ASR #18
ANDEQ	R3, R0, R4, ASR R9
ANDEQ	R3, R0, R1, ROR #18
ANDEQ	R3, R0, PC, ROR #18
BMI	0xFEEC3C98
LDRPL	R0, [LR, #701]!
ORRLE	R4, R4, 0x000000BF
ORRLT	R7, R5, IP, ROR #16
ADCEQS	R0, SP, 0x000000BC
;	undefined instruction
;	undefined instruction
STRHEQ	R0, [R0], -R1
ANDLE	R0, R0, R2
ANDEQ	R3, R0, R8, ASR #15
ANDEQ	R3, R0, R0, LSR #19
;	undefined instruction
ANDMI	R0, R0, R0
EOREQ	R5, PC, R8, ASR R6
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0, LSR #10
;	undefined instruction
STRBGT	LR, [R3], R4, LSR #22
;	undefined instruction
;	undefined instruction
ANDLOS	LR, R10, 0xD000000B
SBCLTS	R1, R6, R7, LSR #0
STRMI	SP, [SP], #-2493
;	undefined instruction
RSCLOS	SP, R4, 0x8000002F
LDREQ	R5, [LR, #-600]!
STRBNV	R11, [R9], R4, ASR #11
BLNE	0x00ED4AD8
STMGTIB	IP!, {R2, R4, R6-R8, R10, SP, PC}
TEQHS	R5, 0x00C00000
;	undefined instruction
LDRSHMI	R3, [R1, #-65]
;	undefined instruction
;	undefined instruction
SBCLTS	R2, R11, SP, ASR #12
;	undefined instruction
;	undefined instruction
;	undefined instruction
BLGT	0x0038F734
LDRBNE	R11, [R8, #2214]
LDMEQDA	R7!, {R1-R3, R6, R8, R10, R11, LR}
STMNVIA	PC, {R1, R2, R6-R10, IP, SP, PC}^
;	undefined instruction
BGT	0xFEBF2A50
;	undefined instruction
STMGEIB	R0!, {R0, R2, R4, R9-R11, LR, PC}
;	undefined instruction
STMGEIB	LR!, {R1, R5, R10, R11, SP-PC}
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDRLE	R4, [LR], -R4, ROR #24
;	undefined instruction
EORNV	R4, R10, SP, ASR #24
;	undefined instruction
;	undefined instruction
SWILE	11903945
SUBLOS	R5, R3, 0x00000019
SWIGT	11650305
BLPL	0x01992A90
LDMGEIB	R7!, {R2, R4, R5, R9, R11-PC}
;	undefined instruction
;	undefined instruction
ANDMI	SP, IP, R8, LSR #11
RSCLT	R1, R7, R1, ASR #20
LDMLOIA	LR!, {R2, R5, R7, R9, R11, LR, PC}^
ANDS	R4, R7, 0x6C000001
;	undefined instruction
STRBNE	R6, [R6, #-2647]
BL	0xFEEAD618
SWINE	5198364
ORRGTS	R11, R10, LR, ROR #5
;	undefined instruction
;	undefined instruction
STRBPL	R1, [PC], -R9, ROR #19
;	undefined instruction
BVS	0x00E05224
LDMLTIB	R9!, {R0, R1, R3, R4, R6, R8-R10, SP}^
STMLODB	R2, {R0-R2, R5, R7-R10, IP, LR, PC}
STRLE	R3, [R3], #-1116
LDMEQIB	PC, {R2-R4, R7, R9, R11, SP, PC}^
STR	R4, [SP, -R1, ASR #6]
BICEQS	R10, R2, 0xC000002D
;	undefined instruction
;	undefined instruction
BLO	0x01AD8B6C
SWILT	10869518
;	undefined instruction
BLS	0xFEDFFF54
;	undefined instruction
LDRBGE	PC, [R6], #1573
BLMI	0x006005EC
;	undefined instruction
STRLO	SP, [R10], #-2731
BLNV	0x007188C4
MVNEQ	R10, 0x0002EC00
EOREQ	R5, R9, R7, LSR R11
;	undefined instruction
TEQEQ	LR, 0x00000060
BLE	0xFE8F36E0
LDRBLO	R2, [R8, #-3333]
SWILT	11987974
;	undefined instruction
BGE	0xFF806800
TSTPL	R7, R7, ASR #11
;	undefined instruction
RSCHSS	SP, R5, R0, LSR #5
;	undefined instruction
;	undefined instruction
;	undefined instruction
BLEQ	0xFF8702B0
STRBNE	R6, [R9], -PC, LSR #4
;	undefined instruction
SUBHSS	R3, R1, R2, LSL #6
BLT	0xFEA7BF70
TEQLO	R7, 0xE9000000
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDMMIDB	R9, {R0-R2, R6-R8, R10-PC}
STR	R2, [R10], #-2136
LDRBNE	IP, [R5, #4022]!
STMNVDA	R10, {R0-R2, R6, R11-SP}
LDRBNV	R10, [R7], R6, ASR #27
LDMNVDB	R4, {R0, R1, R3, R4, R8, R11-SP}
STMNVIA	R5, {R2, R5-R8, R10, IP, SP, PC}^
EORNES	R3, SP, 0x00044000
LDR	SP, [LR, #3071]!
;	undefined instruction
BICGT	PC, PC, R5, LSL SP
;	undefined instruction
STMLTIA	R7!, {R0, R2-R4, R9}^
BHS	0x0013DEC0
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDMNEIA	R10!, {R0, R2, R3, R6-R8, IP, LR, PC}^
STMEQDB	R7!, {R2-R5, R11, LR}
LDRBNV	IP, [R3], #2539
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
SWIHS	2625525
;	undefined instruction
;	undefined instruction
SWILE	16652086
ANDHS	LR, R2, LR, ASR #5
;	undefined instruction
;	undefined instruction
STMNVDB	R11, {R1, R2, R4, R10-IP}
SBCEQS	IP, PC, 0x000DF000
;	undefined instruction
;	undefined instruction
LDMHSDA	R7!, {R1, R2, R4, R8, R9, R11, SP}
LDRBLE	PC, [R11, #1290]
;	undefined instruction
BLGT	0xFF983070
STRNE	PC, [R5], #-1491
BLE	0xFFC44C80
;	undefined instruction
;	undefined instruction
BLNE	0x001BCFA8
TSTEQ	R10, R9, LSR #4
;	undefined instruction
STMEQDB	R3!, {R4, R8-IP}
BIC	LR, IP, 0x000000F8
TSTNE	R6, 0xEC000003
;	undefined instruction
LDRHS	R0, [R3], #-1789
RSCS	PC, R0, R1, LSL LR
BLHS	0x00607C20
;	undefined instruction
SWIEQ	323545
STRNV	R1, [R2, -R4, LSR #20]
;	undefined instruction
;	undefined instruction
SWINV	15455979
STMEQDA	R0!, {R0, R8, R9, R11, IP}
;	undefined instruction
;	undefined instruction
SWILE	14876682
LDRHS	R0, [R5, #-248]
RSCLE	R0, PC, R0, LSL R3
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
STMEQDA	R2, {R1, R2, R5-R11, SP-PC}
BLEQ	0x0058E520
;	undefined instruction
;	undefined instruction
BICS	LR, R2, 0x80000000
LDRNE	PC, [LR, #-4072]
BICS	PC, SP, 0x00700000
TSTHS	R5, 0x0ED00000
;	undefined instruction
;	undefined instruction
BL	0x001C9550
;	undefined instruction
STMNVDA	LR, {R1, R2, R5, R10-IP}
;	undefined instruction
LDREQ	R2, [R4, #-272]
STMIB	R1!, {R2, R3, R5-R7, R10-IP, LR, PC}^
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDMHSDB	R11, {R3, R5-R7, R9-PC}
RSCLE	R0, R11, 0x001C0000
;	undefined instruction
;	undefined instruction
;	undefined instruction
BNV	0x0034C998
LDMEQIA	R1!, {R0, R3, R5-R9, SP-PC}^
BEQ	0x0088F988
LDRSHNV	SP, [R9], #180
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
ANDLOS	PC, SP, R1, ROR #31
;	undefined instruction
;	undefined instruction
STMDA	R1, {R2, R4, R5, R8-R10, IP}
LDMNEIA	SP!, {R1-R3, R6, R7, R9-IP, LR, PC}^
STRNV	R2, [R10], #-2613
;	undefined instruction
SWINV	1651743
BICNV	IP, IP, R10, ROR #13
;	undefined instruction
LDMIB	R0, {R0-R7, R11, SP-PC}^
;	undefined instruction
BGT	0xFF542974
;	undefined instruction
STMLTIB	R3!, {R1, R3, R4}^
STRLO	LR, [IP], #-4039
;	undefined instruction
;	undefined instruction
STMNVDA	R4, {R0-R5, R8, R9, SP}
;	undefined instruction
LDREQ	R4, [R8], #-307
;	undefined instruction
BEQ	0x00CD41CC
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDMMIDB	R11!, {R0, R2, R5-R9, R11}
STMLTIB	R3!, {R0, R3, R4, R8, R9}^
BLMI	0x00703CEC
;	undefined instruction
BLHS	0x0003C04C
;	undefined instruction
;	undefined instruction
;	undefined instruction
;	undefined instruction
LDMEQDB	R3!, {R2, R5, R8-R11, LR}
SWI	12633845
SWINE	5126411
;	undefined instruction
;	undefined instruction
BGE	0xFF0009EC
;	undefined instruction
SWILT	15269929
TSTMI	R1, R8, ASR #9
BLLE	0xFFF4A6FC
STRHS	SP, [R0], #-1978
;	undefined instruction
STMEQIA	R2!, {R0, R3-R5, R7, R9-R11, SP, PC}^
BLNV	0x00896EB0
STRBNV	R10, [R0], #2518
SUBNE	R4, R2, R6, LSL R3
;	undefined instruction
STRBLO	R2, [PC, #-3333]
BICGT	LR, R5, 0x00010000
;	undefined instruction
BLGE	0xFF481E80
STMMIDA	R1!, {R3, R6, R7, R10-PC}
STMLTIA	R4!, {R0, R2-R5, R8, R11}^
;	undefined instruction
BLE	0xFFE4E73C
;	undefined instruction
ANDNVS	R4, R9, R4, ASR #18
;	undefined instruction
;	undefined instruction
LDR	R11, [R4, #2783]!
STRBHS	R3, [R10], #-2324
;	undefined instruction
;	undefined instruction
SWILT	13230093
;	undefined instruction
BGT	0xFF702F0C
MSRMI	CPSR_x, #201
STMGTIB	R10!, {R0, R1, R3, R6, SP}^
;	undefined instruction
;	undefined instruction
LDRBNE	R11, [SP], #951
;	undefined instruction
STMNVIA	R8, {R0, R2, R3, R6-R9, LR, PC}^
STRBNE	R4, [R5, #-553]
;	undefined instruction
BLO	0x01291EA8
;	undefined instruction
;	undefined instruction
;	undefined instruction
EORMI	R0, IP, R5, ASR #1
;	undefined instruction
LDMLODB	R9, {R0, R1, R6, R7, R9-IP, LR, PC}
;	undefined instruction
;	undefined instruction
;	undefined instruction
SWIEQ	14008262
BNV	0x00E14F64
;	undefined instruction
SUBHS	R3, R2, 0x001F0000
;	undefined instruction
SUBMI	R3, R0, R1, LSL #2
SBCLES	SP, R1, 0x0A000000
LDRMI	R1, [IP, -R6, ROR #27]!
STRBGT	PC, [R9, #307]
;	undefined instruction
BLLT	0xFF489BB8
ANDLO	IP, R10, 0x00000BA0
;	undefined instruction
RSCHS	IP, R9, 0x0031C000
;	undefined instruction
LDRBEQ	SP, [LR, PC, ASR #15]
;	undefined instruction
;	undefined instruction
LDMHSDB	R10!, {R3, R4, R8, R9, IP, SP}
BLGT	0xFF17568C
TEQLO	R1, 0x8000003C
BICLE	SP, R11, R0, LSL R8
;	undefined instruction
BLLE	0xFF602F98
ANDLOS	PC, LR, R1, ROR #17
STRBLE	R1, [R11, #3637]!
STRHS	LR, [R4, #-471]
STRLE	R2, [R5, -PC, LSR #24]
;	undefined instruction
SWI	1845796
BNV	0xFF7B9E54
ANDEQ	R0, R0, R11
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
ANDEQ	R0, R0, R0
