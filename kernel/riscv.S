.globl r_mhartid
.align 4
r_mhartid:
        csrr a0, mhartid
        ret

.globl r_mstatus
.align 4
r_mstatus:
	csrr a0, mstatus
	ret

.globl w_mstatus
.align 4
w_mstatus:
        csrw mstatus, a0
	ret

.globl w_mepc
w_mepc:
	csrw mepc, a0
        ret

.globl r_sstatus
r_sstatus:
        csrr a0, sstatus
        ret

.globl w_sstatus
w_sstatus:
        csrw sstatus, a0
        ret

.globl r_sip
r_sip:
	csrr a0, sip
        ret

.globl w_sip
w_sip:
        csrw sip, a0
        ret

.globl r_sie
r_sie:
        csrr a0, sie
        ret

.globl w_sie
w_sie:
        csrw sie, a0
        ret

.globl r_mie
r_mie:
        csrr a0, mie
        ret

.globl w_mie
w_mie:
        csrw mie, a0
        ret

.globl w_sepc
w_sepc:
        csrw sepc, a0
        ret

.globl r_sepc
r_sepc:
        csrr a0, sepc
        ret

.globl r_medeleg
r_medeleg:
        csrr a0, medeleg
        ret

.globl w_medeleg
w_medeleg:
        csrw medeleg, a0
        ret

.globl r_mideleg
r_mideleg:
        csrr a0, mideleg
        ret

.globl w_mideleg
w_mideleg:
        csrw mideleg, a0
        ret

.globl w_stvec
w_stvec:
        csrw stvec, a0
        ret

.globl r_stvec
r_stvec:
        csrr a0, stvec
        ret

.globl w_mtvec
w_mtvec:
        csrw mtvec, a0
        ret

.globl w_satp
w_satp:
        csrw satp, a0
        ret

.globl r_satp
r_satp:
        csrr a0, satp
        ret

.globl w_sscratch
w_sscratch:
        csrw sscratch, a0
        ret

.globl w_mscratch
w_mscratch:
        csrw mscratch, a0
        ret

.globl r_scause
r_scause:
        csrr a0, scause
        ret

.globl r_stval
r_stval:
        csrr a0, stval
        ret

.globl w_mcounteren
w_mcounteren:
        csrw mcounteren, a0
        ret

.globl r_mcounteren
r_mcounteren:
        csrr a0, mcounteren
        ret

.globl r_time
r_time:
        csrr a0, time
        ret

.globl sfence_vma, zero
sfence_vma:
        // the zero, zero means flush all TLB entries.
        sfence.vma zero, zero
        ret

.globl r_tp
r_tp:
        mv a0, tp
	ret

.globl w_tp
w_tp:
        mv tp, a0
        ret
