; ModuleID = '/llk/IR_all_yes/kernel/locking/spinlock.c_pt.bc'
source_filename = "../kernel/locking/spinlock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+_raw_spin_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_spin_trylock\09\09\09\09"
module asm "\09.long\09__crc__raw_spin_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_trylock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_spin_trylock_bh\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_spin_trylock_bh\09\09\09\09"
module asm "\09.long\09__crc__raw_spin_trylock_bh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_trylock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_trylock_bh\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_trylock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_spin_lock\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_spin_lock\09\09\09\09"
module asm "\09.long\09__crc__raw_spin_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_lock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_spin_lock_irqsave\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_spin_lock_irqsave\09\09\09\09"
module asm "\09.long\09__crc__raw_spin_lock_irqsave\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_lock_irqsave\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_spin_lock_irq\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_spin_lock_irq\09\09\09\09"
module asm "\09.long\09__crc__raw_spin_lock_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_lock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_lock_irq\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_lock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_spin_lock_bh\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_spin_lock_bh\09\09\09\09"
module asm "\09.long\09__crc__raw_spin_lock_bh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_lock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_lock_bh\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_lock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_spin_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_spin_unlock\09\09\09\09"
module asm "\09.long\09__crc__raw_spin_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_unlock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_spin_unlock_irqrestore\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_spin_unlock_irqrestore\09\09\09\09"
module asm "\09.long\09__crc__raw_spin_unlock_irqrestore\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_unlock_irqrestore:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_unlock_irqrestore\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_unlock_irqrestore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_spin_unlock_irq\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_spin_unlock_irq\09\09\09\09"
module asm "\09.long\09__crc__raw_spin_unlock_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_unlock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_unlock_irq\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_unlock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_spin_unlock_bh\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_spin_unlock_bh\09\09\09\09"
module asm "\09.long\09__crc__raw_spin_unlock_bh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_unlock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_unlock_bh\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_unlock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_read_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_read_trylock\09\09\09\09"
module asm "\09.long\09__crc__raw_read_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_trylock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_read_lock\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_read_lock\09\09\09\09"
module asm "\09.long\09__crc__raw_read_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_lock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_read_lock_irqsave\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_read_lock_irqsave\09\09\09\09"
module asm "\09.long\09__crc__raw_read_lock_irqsave\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_lock_irqsave\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_read_lock_irq\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_read_lock_irq\09\09\09\09"
module asm "\09.long\09__crc__raw_read_lock_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_lock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_lock_irq\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_lock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_read_lock_bh\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_read_lock_bh\09\09\09\09"
module asm "\09.long\09__crc__raw_read_lock_bh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_lock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_lock_bh\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_lock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_read_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_read_unlock\09\09\09\09"
module asm "\09.long\09__crc__raw_read_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_unlock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_read_unlock_irqrestore\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_read_unlock_irqrestore\09\09\09\09"
module asm "\09.long\09__crc__raw_read_unlock_irqrestore\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_unlock_irqrestore:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_unlock_irqrestore\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_unlock_irqrestore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_read_unlock_irq\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_read_unlock_irq\09\09\09\09"
module asm "\09.long\09__crc__raw_read_unlock_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_unlock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_unlock_irq\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_unlock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_read_unlock_bh\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_read_unlock_bh\09\09\09\09"
module asm "\09.long\09__crc__raw_read_unlock_bh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_read_unlock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_read_unlock_bh\22\09\09\09\09\09"
module asm "__kstrtabns__raw_read_unlock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_write_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_write_trylock\09\09\09\09"
module asm "\09.long\09__crc__raw_write_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_trylock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_write_lock\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_write_lock\09\09\09\09"
module asm "\09.long\09__crc__raw_write_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_lock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_write_lock_nested\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_write_lock_nested\09\09\09\09"
module asm "\09.long\09__crc__raw_write_lock_nested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_lock_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_lock_nested\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_lock_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_write_lock_irqsave\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_write_lock_irqsave\09\09\09\09"
module asm "\09.long\09__crc__raw_write_lock_irqsave\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_lock_irqsave\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_write_lock_irq\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_write_lock_irq\09\09\09\09"
module asm "\09.long\09__crc__raw_write_lock_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_lock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_lock_irq\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_lock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_write_lock_bh\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_write_lock_bh\09\09\09\09"
module asm "\09.long\09__crc__raw_write_lock_bh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_lock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_lock_bh\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_lock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_write_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_write_unlock\09\09\09\09"
module asm "\09.long\09__crc__raw_write_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_unlock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_write_unlock_irqrestore\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_write_unlock_irqrestore\09\09\09\09"
module asm "\09.long\09__crc__raw_write_unlock_irqrestore\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_unlock_irqrestore:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_unlock_irqrestore\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_unlock_irqrestore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_write_unlock_irq\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_write_unlock_irq\09\09\09\09"
module asm "\09.long\09__crc__raw_write_unlock_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_unlock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_unlock_irq\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_unlock_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_write_unlock_bh\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_write_unlock_bh\09\09\09\09"
module asm "\09.long\09__crc__raw_write_unlock_bh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_write_unlock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_write_unlock_bh\22\09\09\09\09\09"
module asm "__kstrtabns__raw_write_unlock_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_spin_lock_nested\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_spin_lock_nested\09\09\09\09"
module asm "\09.long\09__crc__raw_spin_lock_nested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_lock_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_lock_nested\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_lock_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_spin_lock_irqsave_nested\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_spin_lock_irqsave_nested\09\09\09\09"
module asm "\09.long\09__crc__raw_spin_lock_irqsave_nested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_lock_irqsave_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_lock_irqsave_nested\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_lock_irqsave_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_raw_spin_lock_nest_lock\22, \22a\22\09"
module asm "\09.weak\09__crc__raw_spin_lock_nest_lock\09\09\09\09"
module asm "\09.long\09__crc__raw_spin_lock_nest_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__raw_spin_lock_nest_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22_raw_spin_lock_nest_lock\22\09\09\09\09\09"
module asm "__kstrtabns__raw_spin_lock_nest_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+in_lock_functions\22, \22a\22\09"
module asm "\09.weak\09__crc_in_lock_functions\09\09\09\09"
module asm "\09.long\09__crc_in_lock_functions\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_in_lock_functions:\09\09\09\09\09"
module asm "\09.asciz \09\22in_lock_functions\22\09\09\09\09\09"
module asm "__kstrtabns_in_lock_functions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@__kstrtab__raw_spin_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_trylock to i32), ptr @__kstrtab__raw_spin_trylock, ptr @__kstrtabns__raw_spin_trylock }, section "___ksymtab+_raw_spin_trylock", align 4
@__kstrtab__raw_spin_trylock_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_trylock_bh = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_trylock_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_trylock_bh to i32), ptr @__kstrtab__raw_spin_trylock_bh, ptr @__kstrtabns__raw_spin_trylock_bh }, section "___ksymtab+_raw_spin_trylock_bh", align 4
@__kstrtab__raw_spin_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_lock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_lock to i32), ptr @__kstrtab__raw_spin_lock, ptr @__kstrtabns__raw_spin_lock }, section "___ksymtab+_raw_spin_lock", align 4
@__kstrtab__raw_spin_lock_irqsave = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_lock_irqsave = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_lock_irqsave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_lock_irqsave to i32), ptr @__kstrtab__raw_spin_lock_irqsave, ptr @__kstrtabns__raw_spin_lock_irqsave }, section "___ksymtab+_raw_spin_lock_irqsave", align 4
@__kstrtab__raw_spin_lock_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_lock_irq = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_lock_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_lock_irq to i32), ptr @__kstrtab__raw_spin_lock_irq, ptr @__kstrtabns__raw_spin_lock_irq }, section "___ksymtab+_raw_spin_lock_irq", align 4
@__kstrtab__raw_spin_lock_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_lock_bh = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_lock_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_lock_bh to i32), ptr @__kstrtab__raw_spin_lock_bh, ptr @__kstrtabns__raw_spin_lock_bh }, section "___ksymtab+_raw_spin_lock_bh", align 4
@__kstrtab__raw_spin_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_unlock to i32), ptr @__kstrtab__raw_spin_unlock, ptr @__kstrtabns__raw_spin_unlock }, section "___ksymtab+_raw_spin_unlock", align 4
@__kstrtab__raw_spin_unlock_irqrestore = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_unlock_irqrestore = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_unlock_irqrestore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_unlock_irqrestore to i32), ptr @__kstrtab__raw_spin_unlock_irqrestore, ptr @__kstrtabns__raw_spin_unlock_irqrestore }, section "___ksymtab+_raw_spin_unlock_irqrestore", align 4
@__kstrtab__raw_spin_unlock_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_unlock_irq = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_unlock_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_unlock_irq to i32), ptr @__kstrtab__raw_spin_unlock_irq, ptr @__kstrtabns__raw_spin_unlock_irq }, section "___ksymtab+_raw_spin_unlock_irq", align 4
@__kstrtab__raw_spin_unlock_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_unlock_bh = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_unlock_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_unlock_bh to i32), ptr @__kstrtab__raw_spin_unlock_bh, ptr @__kstrtabns__raw_spin_unlock_bh }, section "___ksymtab+_raw_spin_unlock_bh", align 4
@__kstrtab__raw_read_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_trylock to i32), ptr @__kstrtab__raw_read_trylock, ptr @__kstrtabns__raw_read_trylock }, section "___ksymtab+_raw_read_trylock", align 4
@__kstrtab__raw_read_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_lock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_lock to i32), ptr @__kstrtab__raw_read_lock, ptr @__kstrtabns__raw_read_lock }, section "___ksymtab+_raw_read_lock", align 4
@__kstrtab__raw_read_lock_irqsave = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_lock_irqsave = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_lock_irqsave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_lock_irqsave to i32), ptr @__kstrtab__raw_read_lock_irqsave, ptr @__kstrtabns__raw_read_lock_irqsave }, section "___ksymtab+_raw_read_lock_irqsave", align 4
@__kstrtab__raw_read_lock_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_lock_irq = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_lock_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_lock_irq to i32), ptr @__kstrtab__raw_read_lock_irq, ptr @__kstrtabns__raw_read_lock_irq }, section "___ksymtab+_raw_read_lock_irq", align 4
@__kstrtab__raw_read_lock_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_lock_bh = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_lock_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_lock_bh to i32), ptr @__kstrtab__raw_read_lock_bh, ptr @__kstrtabns__raw_read_lock_bh }, section "___ksymtab+_raw_read_lock_bh", align 4
@__kstrtab__raw_read_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_unlock to i32), ptr @__kstrtab__raw_read_unlock, ptr @__kstrtabns__raw_read_unlock }, section "___ksymtab+_raw_read_unlock", align 4
@__kstrtab__raw_read_unlock_irqrestore = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_unlock_irqrestore = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_unlock_irqrestore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_unlock_irqrestore to i32), ptr @__kstrtab__raw_read_unlock_irqrestore, ptr @__kstrtabns__raw_read_unlock_irqrestore }, section "___ksymtab+_raw_read_unlock_irqrestore", align 4
@__kstrtab__raw_read_unlock_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_unlock_irq = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_unlock_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_unlock_irq to i32), ptr @__kstrtab__raw_read_unlock_irq, ptr @__kstrtabns__raw_read_unlock_irq }, section "___ksymtab+_raw_read_unlock_irq", align 4
@__kstrtab__raw_read_unlock_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_read_unlock_bh = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_read_unlock_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_read_unlock_bh to i32), ptr @__kstrtab__raw_read_unlock_bh, ptr @__kstrtabns__raw_read_unlock_bh }, section "___ksymtab+_raw_read_unlock_bh", align 4
@__kstrtab__raw_write_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_trylock to i32), ptr @__kstrtab__raw_write_trylock, ptr @__kstrtabns__raw_write_trylock }, section "___ksymtab+_raw_write_trylock", align 4
@__kstrtab__raw_write_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_lock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_lock to i32), ptr @__kstrtab__raw_write_lock, ptr @__kstrtabns__raw_write_lock }, section "___ksymtab+_raw_write_lock", align 4
@__kstrtab__raw_write_lock_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_lock_nested = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_lock_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_lock_nested to i32), ptr @__kstrtab__raw_write_lock_nested, ptr @__kstrtabns__raw_write_lock_nested }, section "___ksymtab+_raw_write_lock_nested", align 4
@__kstrtab__raw_write_lock_irqsave = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_lock_irqsave = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_lock_irqsave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_lock_irqsave to i32), ptr @__kstrtab__raw_write_lock_irqsave, ptr @__kstrtabns__raw_write_lock_irqsave }, section "___ksymtab+_raw_write_lock_irqsave", align 4
@__kstrtab__raw_write_lock_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_lock_irq = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_lock_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_lock_irq to i32), ptr @__kstrtab__raw_write_lock_irq, ptr @__kstrtabns__raw_write_lock_irq }, section "___ksymtab+_raw_write_lock_irq", align 4
@__kstrtab__raw_write_lock_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_lock_bh = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_lock_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_lock_bh to i32), ptr @__kstrtab__raw_write_lock_bh, ptr @__kstrtabns__raw_write_lock_bh }, section "___ksymtab+_raw_write_lock_bh", align 4
@__kstrtab__raw_write_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_unlock to i32), ptr @__kstrtab__raw_write_unlock, ptr @__kstrtabns__raw_write_unlock }, section "___ksymtab+_raw_write_unlock", align 4
@__kstrtab__raw_write_unlock_irqrestore = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_unlock_irqrestore = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_unlock_irqrestore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_unlock_irqrestore to i32), ptr @__kstrtab__raw_write_unlock_irqrestore, ptr @__kstrtabns__raw_write_unlock_irqrestore }, section "___ksymtab+_raw_write_unlock_irqrestore", align 4
@__kstrtab__raw_write_unlock_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_unlock_irq = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_unlock_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_unlock_irq to i32), ptr @__kstrtab__raw_write_unlock_irq, ptr @__kstrtabns__raw_write_unlock_irq }, section "___ksymtab+_raw_write_unlock_irq", align 4
@__kstrtab__raw_write_unlock_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_write_unlock_bh = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_write_unlock_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_write_unlock_bh to i32), ptr @__kstrtab__raw_write_unlock_bh, ptr @__kstrtabns__raw_write_unlock_bh }, section "___ksymtab+_raw_write_unlock_bh", align 4
@__kstrtab__raw_spin_lock_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_lock_nested = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_lock_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_lock_nested to i32), ptr @__kstrtab__raw_spin_lock_nested, ptr @__kstrtabns__raw_spin_lock_nested }, section "___ksymtab+_raw_spin_lock_nested", align 4
@__kstrtab__raw_spin_lock_irqsave_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_lock_irqsave_nested = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_lock_irqsave_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_lock_irqsave_nested to i32), ptr @__kstrtab__raw_spin_lock_irqsave_nested, ptr @__kstrtabns__raw_spin_lock_irqsave_nested }, section "___ksymtab+_raw_spin_lock_irqsave_nested", align 4
@__kstrtab__raw_spin_lock_nest_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns__raw_spin_lock_nest_lock = external dso_local constant [0 x i8], align 1
@__ksymtab__raw_spin_lock_nest_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_raw_spin_lock_nest_lock to i32), ptr @__kstrtab__raw_spin_lock_nest_lock, ptr @__kstrtabns__raw_spin_lock_nest_lock }, section "___ksymtab+_raw_spin_lock_nest_lock", align 4
@__lock_text_start = external dso_local global [0 x i8], align 1
@__lock_text_end = external dso_local global [0 x i8], align 1
@__kstrtab_in_lock_functions = external dso_local constant [0 x i8], align 1
@__kstrtabns_in_lock_functions = external dso_local constant [0 x i8], align 1
@__ksymtab_in_lock_functions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @in_lock_functions to i32), ptr @__kstrtab_in_lock_functions, ptr @__kstrtabns_in_lock_functions }, section "___ksymtab+in_lock_functions", align 4
@llvm.compiler.used = appending global [33 x ptr] [ptr @__ksymtab__raw_read_lock, ptr @__ksymtab__raw_read_lock_bh, ptr @__ksymtab__raw_read_lock_irq, ptr @__ksymtab__raw_read_lock_irqsave, ptr @__ksymtab__raw_read_trylock, ptr @__ksymtab__raw_read_unlock, ptr @__ksymtab__raw_read_unlock_bh, ptr @__ksymtab__raw_read_unlock_irq, ptr @__ksymtab__raw_read_unlock_irqrestore, ptr @__ksymtab__raw_spin_lock, ptr @__ksymtab__raw_spin_lock_bh, ptr @__ksymtab__raw_spin_lock_irq, ptr @__ksymtab__raw_spin_lock_irqsave, ptr @__ksymtab__raw_spin_lock_irqsave_nested, ptr @__ksymtab__raw_spin_lock_nest_lock, ptr @__ksymtab__raw_spin_lock_nested, ptr @__ksymtab__raw_spin_trylock, ptr @__ksymtab__raw_spin_trylock_bh, ptr @__ksymtab__raw_spin_unlock, ptr @__ksymtab__raw_spin_unlock_bh, ptr @__ksymtab__raw_spin_unlock_irq, ptr @__ksymtab__raw_spin_unlock_irqrestore, ptr @__ksymtab__raw_write_lock, ptr @__ksymtab__raw_write_lock_bh, ptr @__ksymtab__raw_write_lock_irq, ptr @__ksymtab__raw_write_lock_irqsave, ptr @__ksymtab__raw_write_lock_nested, ptr @__ksymtab__raw_write_trylock, ptr @__ksymtab__raw_write_unlock, ptr @__ksymtab__raw_write_unlock_bh, ptr @__ksymtab__raw_write_unlock_irq, ptr @__ksymtab__raw_write_unlock_irqrestore, ptr @__ksymtab_in_lock_functions], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_raw_spin_trylock(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !76
  %call.i = tail call i32 @do_raw_spin_trylock(ptr noundef %lock) #5
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body1.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %4 = tail call ptr @llvm.returnaddress(i32 0) #5
  %5 = ptrtoint ptr %4 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %5) #5
  br label %__raw_spin_trylock.exit

do.body1.i:                                       ; preds = %entry
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !77
  %6 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i4.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i4.i to ptr
  %preempt_count.i.i5.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i5.i, align 4
  %sub.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i5.i, align 4
  br label %__raw_spin_trylock.exit

__raw_spin_trylock.exit:                          ; preds = %do.body1.i, %if.then.i
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 0, %do.body1.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_raw_spin_trylock_bh(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @__local_bh_disable_ip(i32 noundef %1, i32 noundef 513) #5
  %call.i = tail call i32 @do_raw_spin_trylock(ptr noundef %lock) #5
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #5
  br label %__raw_spin_trylock_bh.exit

if.end.i:                                         ; preds = %entry
  tail call void @__local_bh_enable_ip(i32 noundef %1, i32 noundef 513) #5
  br label %__raw_spin_trylock_bh.exit

__raw_spin_trylock_bh.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_spin_lock(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !78
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %4 = tail call ptr @llvm.returnaddress(i32 0) #5
  %5 = ptrtoint ptr %4 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %5) #5
  %call.i = tail call i32 @do_raw_spin_trylock(ptr noundef %lock) #5
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %__raw_spin_lock.exit

if.then.i:                                        ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map.i, i32 noundef %5) #5
  tail call void @do_raw_spin_lock(ptr noundef %lock) #5
  br label %__raw_spin_lock.exit

__raw_spin_lock.exit:                             ; preds = %if.then.i, %entry
  tail call void @lock_acquired(ptr noundef %dep_map.i, i32 noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !79
  %and.i.i = and i32 %0, 128
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body12.i

if.then.i:                                        ; preds = %entry
  tail call void @trace_hardirqs_off() #5
  br label %do.body12.i

do.body12.i:                                      ; preds = %if.then.i, %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !80
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %5 = tail call ptr @llvm.returnaddress(i32 0) #5
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %6) #5
  %call16.i = tail call i32 @do_raw_spin_trylock(ptr noundef %lock) #5
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %__raw_spin_lock_irqsave.exit

if.then18.i:                                      ; preds = %do.body12.i
  tail call void @lock_contended(ptr noundef %dep_map.i, i32 noundef %6) #5
  tail call void @do_raw_spin_lock(ptr noundef %lock) #5
  br label %__raw_spin_lock_irqsave.exit

__raw_spin_lock_irqsave.exit:                     ; preds = %if.then18.i, %do.body12.i
  tail call void @lock_acquired(ptr noundef %dep_map.i, i32 noundef %6) #5
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_spin_lock_irq(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !81
  %and.i.i.i = and i32 %0, 128
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #5, !srcloc !82
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  tail call void @trace_hardirqs_off() #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !83
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %5 = tail call ptr @llvm.returnaddress(i32 0) #5
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %6) #5
  %call5.i = tail call i32 @do_raw_spin_trylock(ptr noundef %lock) #5
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %__raw_spin_lock_irq.exit

if.then7.i:                                       ; preds = %if.end.i
  tail call void @lock_contended(ptr noundef %dep_map.i, i32 noundef %6) #5
  tail call void @do_raw_spin_lock(ptr noundef %lock) #5
  br label %__raw_spin_lock_irq.exit

__raw_spin_lock_irq.exit:                         ; preds = %if.then7.i, %if.end.i
  tail call void @lock_acquired(ptr noundef %dep_map.i, i32 noundef %6) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_spin_lock_bh(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @__local_bh_disable_ip(i32 noundef %1, i32 noundef 513) #5
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #5
  %call.i = tail call i32 @do_raw_spin_trylock(ptr noundef %lock) #5
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %__raw_spin_lock_bh.exit

if.then.i:                                        ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_spin_lock(ptr noundef %lock) #5
  br label %__raw_spin_lock_bh.exit

__raw_spin_lock_bh.exit:                          ; preds = %if.then.i, %entry
  tail call void @lock_acquired(ptr noundef %dep_map.i, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_spin_unlock(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_spin_unlock(ptr noundef %lock) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !84
  %2 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %5, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_spin_unlock(ptr noundef %lock) #5
  %and.i.i = and i32 %flags, 128
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body2.i

if.then.i:                                        ; preds = %entry
  tail call void @trace_hardirqs_on() #5
  br label %do.body2.i

do.body2.i:                                       ; preds = %if.then.i, %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !81
  %and.i.i.i = and i32 %2, 128
  %tobool10.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool10.not.i, label %if.then14.i, label %__raw_spin_unlock_irqrestore.exit, !prof !85

if.then14.i:                                      ; preds = %do.body2.i
  tail call void @warn_bogus_irq_restore() #5
  br label %__raw_spin_unlock_irqrestore.exit

__raw_spin_unlock_irqrestore.exit:                ; preds = %if.then14.i, %do.body2.i
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %flags) #5, !srcloc !86
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !87
  %3 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_spin_unlock_irq(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_spin_unlock(ptr noundef %lock) #5
  tail call void @trace_hardirqs_on() #5
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !88
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !89
  %2 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %5, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_spin_unlock_bh(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_spin_unlock(ptr noundef %lock) #5
  tail call void @__local_bh_enable_ip(i32 noundef %1, i32 noundef 513) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_raw_read_trylock(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !90
  %call.i = tail call i32 @do_raw_read_trylock(ptr noundef %lock) #5
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %do.body1.i

do.body1.i:                                       ; preds = %entry
  %call2.i = tail call zeroext i1 @read_lock_is_recursive() #5
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %4 = tail call ptr @llvm.returnaddress(i32 0) #5
  %5 = ptrtoint ptr %4 to i32
  br i1 %call2.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %do.body1.i
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %5) #5
  br label %__raw_read_trylock.exit

if.else.i:                                        ; preds = %do.body1.i
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %5) #5
  br label %__raw_read_trylock.exit

do.body7.i:                                       ; preds = %entry
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !91
  %6 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i11.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i11.i to ptr
  %preempt_count.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i12.i, align 4
  %sub.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i12.i, align 4
  br label %__raw_read_trylock.exit

__raw_read_trylock.exit:                          ; preds = %do.body7.i, %if.else.i, %if.then3.i
  %retval.0.i = phi i32 [ 0, %do.body7.i ], [ 1, %if.then3.i ], [ 1, %if.else.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_read_lock(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !92
  %call.i = tail call zeroext i1 @read_lock_is_recursive() #5
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %4 = tail call ptr @llvm.returnaddress(i32 0) #5
  %5 = ptrtoint ptr %4 to i32
  %..i = select i1 %call.i, i32 2, i32 1
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef %..i, i32 noundef 1, ptr noundef null, i32 noundef %5) #5
  %call5.i = tail call i32 @do_raw_read_trylock(ptr noundef %lock) #5
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.then6.i, label %__raw_read_lock.exit

if.then6.i:                                       ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map.i, i32 noundef %5) #5
  tail call void @do_raw_read_lock(ptr noundef %lock) #5
  br label %__raw_read_lock.exit

__raw_read_lock.exit:                             ; preds = %if.then6.i, %entry
  tail call void @lock_acquired(ptr noundef %dep_map.i, i32 noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_raw_read_lock_irqsave(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !79
  %and.i.i = and i32 %0, 128
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body12.i

if.then.i:                                        ; preds = %entry
  tail call void @trace_hardirqs_off() #5
  br label %do.body12.i

do.body12.i:                                      ; preds = %if.then.i, %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !93
  %call16.i = tail call zeroext i1 @read_lock_is_recursive() #5
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %5 = tail call ptr @llvm.returnaddress(i32 0) #5
  %6 = ptrtoint ptr %5 to i32
  %..i = select i1 %call16.i, i32 2, i32 1
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef %..i, i32 noundef 1, ptr noundef null, i32 noundef %6) #5
  %call23.i = tail call i32 @do_raw_read_trylock(ptr noundef %lock) #5
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %__raw_read_lock_irqsave.exit

if.then25.i:                                      ; preds = %do.body12.i
  tail call void @lock_contended(ptr noundef %dep_map.i, i32 noundef %6) #5
  tail call void @do_raw_read_lock(ptr noundef %lock) #5
  br label %__raw_read_lock_irqsave.exit

__raw_read_lock_irqsave.exit:                     ; preds = %if.then25.i, %do.body12.i
  tail call void @lock_acquired(ptr noundef %dep_map.i, i32 noundef %6) #5
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_read_lock_irq(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !81
  %and.i.i.i = and i32 %0, 128
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #5, !srcloc !82
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  tail call void @trace_hardirqs_off() #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !94
  %call5.i = tail call zeroext i1 @read_lock_is_recursive() #5
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %5 = tail call ptr @llvm.returnaddress(i32 0) #5
  %6 = ptrtoint ptr %5 to i32
  %..i = select i1 %call5.i, i32 2, i32 1
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef %..i, i32 noundef 1, ptr noundef null, i32 noundef %6) #5
  %call11.i = tail call i32 @do_raw_read_trylock(ptr noundef %lock) #5
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %__raw_read_lock_irq.exit

if.then13.i:                                      ; preds = %if.end.i
  tail call void @lock_contended(ptr noundef %dep_map.i, i32 noundef %6) #5
  tail call void @do_raw_read_lock(ptr noundef %lock) #5
  br label %__raw_read_lock_irq.exit

__raw_read_lock_irq.exit:                         ; preds = %if.then13.i, %if.end.i
  tail call void @lock_acquired(ptr noundef %dep_map.i, i32 noundef %6) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_read_lock_bh(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @__local_bh_disable_ip(i32 noundef %1, i32 noundef 513) #5
  %call.i = tail call zeroext i1 @read_lock_is_recursive() #5
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %..i = select i1 %call.i, i32 2, i32 1
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef %..i, i32 noundef 1, ptr noundef null, i32 noundef %1) #5
  %call3.i = tail call i32 @do_raw_read_trylock(ptr noundef %lock) #5
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.then4.i, label %__raw_read_lock_bh.exit

if.then4.i:                                       ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_read_lock(ptr noundef %lock) #5
  br label %__raw_read_lock_bh.exit

__raw_read_lock_bh.exit:                          ; preds = %if.then4.i, %entry
  tail call void @lock_acquired(ptr noundef %dep_map.i, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_read_unlock(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_read_unlock(ptr noundef %lock) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !95
  %2 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %5, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_read_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_read_unlock(ptr noundef %lock) #5
  %and.i.i = and i32 %flags, 128
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body2.i

if.then.i:                                        ; preds = %entry
  tail call void @trace_hardirqs_on() #5
  br label %do.body2.i

do.body2.i:                                       ; preds = %if.then.i, %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !81
  %and.i.i.i = and i32 %2, 128
  %tobool10.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool10.not.i, label %if.then14.i, label %__raw_read_unlock_irqrestore.exit, !prof !85

if.then14.i:                                      ; preds = %do.body2.i
  tail call void @warn_bogus_irq_restore() #5
  br label %__raw_read_unlock_irqrestore.exit

__raw_read_unlock_irqrestore.exit:                ; preds = %if.then14.i, %do.body2.i
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %flags) #5, !srcloc !86
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !96
  %3 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_read_unlock_irq(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_read_unlock(ptr noundef %lock) #5
  tail call void @trace_hardirqs_on() #5
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !88
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !97
  %2 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %5, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_read_unlock_bh(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_read_unlock(ptr noundef %lock) #5
  tail call void @__local_bh_enable_ip(i32 noundef %1, i32 noundef 513) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_raw_write_trylock(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !98
  %call.i = tail call i32 @do_raw_write_trylock(ptr noundef %lock) #5
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body1.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %4 = tail call ptr @llvm.returnaddress(i32 0) #5
  %5 = ptrtoint ptr %4 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %5) #5
  br label %__raw_write_trylock.exit

do.body1.i:                                       ; preds = %entry
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !99
  %6 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i4.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i4.i to ptr
  %preempt_count.i.i5.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i5.i, align 4
  %sub.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i5.i, align 4
  br label %__raw_write_trylock.exit

__raw_write_trylock.exit:                         ; preds = %do.body1.i, %if.then.i
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 0, %do.body1.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_write_lock(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !100
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %4 = tail call ptr @llvm.returnaddress(i32 0) #5
  %5 = ptrtoint ptr %4 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %5) #5
  %call.i = tail call i32 @do_raw_write_trylock(ptr noundef %lock) #5
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %__raw_write_lock.exit

if.then.i:                                        ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map.i, i32 noundef %5) #5
  tail call void @do_raw_write_lock(ptr noundef %lock) #5
  br label %__raw_write_lock.exit

__raw_write_lock.exit:                            ; preds = %if.then.i, %entry
  tail call void @lock_acquired(ptr noundef %dep_map.i, i32 noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_write_lock_nested(ptr noundef %lock, i32 noundef %subclass) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !101
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %4 = tail call ptr @llvm.returnaddress(i32 0) #5
  %5 = ptrtoint ptr %4 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef %subclass, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %5) #5
  %call.i = tail call i32 @do_raw_write_trylock(ptr noundef %lock) #5
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %__raw_write_lock_nested.exit

if.then.i:                                        ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map.i, i32 noundef %5) #5
  tail call void @do_raw_write_lock(ptr noundef %lock) #5
  br label %__raw_write_lock_nested.exit

__raw_write_lock_nested.exit:                     ; preds = %if.then.i, %entry
  tail call void @lock_acquired(ptr noundef %dep_map.i, i32 noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_raw_write_lock_irqsave(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !79
  %and.i.i = and i32 %0, 128
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body12.i

if.then.i:                                        ; preds = %entry
  tail call void @trace_hardirqs_off() #5
  br label %do.body12.i

do.body12.i:                                      ; preds = %if.then.i, %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !102
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %5 = tail call ptr @llvm.returnaddress(i32 0) #5
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %6) #5
  %call16.i = tail call i32 @do_raw_write_trylock(ptr noundef %lock) #5
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %__raw_write_lock_irqsave.exit

if.then18.i:                                      ; preds = %do.body12.i
  tail call void @lock_contended(ptr noundef %dep_map.i, i32 noundef %6) #5
  tail call void @do_raw_write_lock(ptr noundef %lock) #5
  br label %__raw_write_lock_irqsave.exit

__raw_write_lock_irqsave.exit:                    ; preds = %if.then18.i, %do.body12.i
  tail call void @lock_acquired(ptr noundef %dep_map.i, i32 noundef %6) #5
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_write_lock_irq(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !81
  %and.i.i.i = and i32 %0, 128
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #5, !srcloc !82
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  tail call void @trace_hardirqs_off() #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !103
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %5 = tail call ptr @llvm.returnaddress(i32 0) #5
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %6) #5
  %call5.i = tail call i32 @do_raw_write_trylock(ptr noundef %lock) #5
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %__raw_write_lock_irq.exit

if.then7.i:                                       ; preds = %if.end.i
  tail call void @lock_contended(ptr noundef %dep_map.i, i32 noundef %6) #5
  tail call void @do_raw_write_lock(ptr noundef %lock) #5
  br label %__raw_write_lock_irq.exit

__raw_write_lock_irq.exit:                        ; preds = %if.then7.i, %if.end.i
  tail call void @lock_acquired(ptr noundef %dep_map.i, i32 noundef %6) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_write_lock_bh(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @__local_bh_disable_ip(i32 noundef %1, i32 noundef 513) #5
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #5
  %call.i = tail call i32 @do_raw_write_trylock(ptr noundef %lock) #5
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %__raw_write_lock_bh.exit

if.then.i:                                        ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_write_lock(ptr noundef %lock) #5
  br label %__raw_write_lock_bh.exit

__raw_write_lock_bh.exit:                         ; preds = %if.then.i, %entry
  tail call void @lock_acquired(ptr noundef %dep_map.i, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_write_unlock(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_write_unlock(ptr noundef %lock) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !104
  %2 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %5, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_write_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_write_unlock(ptr noundef %lock) #5
  %and.i.i = and i32 %flags, 128
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body2.i

if.then.i:                                        ; preds = %entry
  tail call void @trace_hardirqs_on() #5
  br label %do.body2.i

do.body2.i:                                       ; preds = %if.then.i, %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !81
  %and.i.i.i = and i32 %2, 128
  %tobool10.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool10.not.i, label %if.then14.i, label %__raw_write_unlock_irqrestore.exit, !prof !85

if.then14.i:                                      ; preds = %do.body2.i
  tail call void @warn_bogus_irq_restore() #5
  br label %__raw_write_unlock_irqrestore.exit

__raw_write_unlock_irqrestore.exit:               ; preds = %if.then14.i, %do.body2.i
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %flags) #5, !srcloc !86
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !105
  %3 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_write_unlock_irq(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_write_unlock(ptr noundef %lock) #5
  tail call void @trace_hardirqs_on() #5
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !88
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !106
  %2 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %5, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_write_unlock_bh(ptr noundef %lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %lock, i32 0, i32 4
  %0 = tail call ptr @llvm.returnaddress(i32 0) #5
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #5
  tail call void @do_raw_write_unlock(ptr noundef %lock) #5
  tail call void @__local_bh_enable_ip(i32 noundef %1, i32 noundef 513) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_spin_lock_nested(ptr noundef %lock, i32 noundef %subclass) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !107
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = ptrtoint ptr %4 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef %subclass, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %5) #5
  %call = tail call i32 @do_raw_spin_trylock(ptr noundef %lock) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %5) #5
  tail call void @do_raw_spin_lock(ptr noundef %lock) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @lock_acquired(ptr noundef %dep_map, i32 noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_raw_spin_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_contended(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_raw_spin_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquired(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_raw_spin_lock_irqsave_nested(ptr noundef %lock, i32 noundef %subclass) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !79
  %and.i = and i32 %0, 128
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body12

if.then:                                          ; preds = %entry
  tail call void @trace_hardirqs_off() #5
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !108
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef %subclass, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %6) #5
  %call16 = tail call i32 @do_raw_spin_trylock(ptr noundef %lock) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end20

if.then18:                                        ; preds = %do.body12
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %6) #5
  tail call void @do_raw_spin_lock(ptr noundef %lock) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.body12
  tail call void @lock_acquired(ptr noundef %dep_map, i32 noundef %6) #5
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_raw_spin_lock_nest_lock(ptr noundef %lock, ptr noundef %nest_lock) #0 section ".spinlock.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !109
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = ptrtoint ptr %4 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %nest_lock, i32 noundef %5) #5
  %call = tail call i32 @do_raw_spin_trylock(ptr noundef %lock) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %5) #5
  tail call void @do_raw_spin_lock(ptr noundef %lock) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @lock_acquired(ptr noundef %dep_map, i32 noundef %5) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @in_lock_functions(i32 noundef %addr) #3 align 64 {
entry:
  %cmp.not = icmp uge i32 %addr, ptrtoint (ptr @__lock_text_start to i32)
  %cmp1 = icmp ult i32 %addr, ptrtoint (ptr @__lock_text_end to i32)
  %narrow = and i1 %cmp.not, %cmp1
  %0 = zext i1 %narrow to i32
  ret i32 %0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_raw_spin_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_raw_read_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @read_lock_is_recursive() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_raw_read_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_raw_read_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_raw_write_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_raw_write_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_raw_write_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__ksymtab__raw_spin_trylock, !1, !"__ksymtab__raw_spin_trylock", i1 false, i1 false}
!1 = !{!"../kernel/locking/spinlock.c", i32 140, i32 1}
!2 = !{ptr @__ksymtab__raw_spin_trylock_bh, !3, !"__ksymtab__raw_spin_trylock_bh", i1 false, i1 false}
!3 = !{!"../kernel/locking/spinlock.c", i32 148, i32 1}
!4 = !{ptr @__ksymtab__raw_spin_lock, !5, !"__ksymtab__raw_spin_lock", i1 false, i1 false}
!5 = !{!"../kernel/locking/spinlock.c", i32 156, i32 1}
!6 = !{ptr @__ksymtab__raw_spin_lock_irqsave, !7, !"__ksymtab__raw_spin_lock_irqsave", i1 false, i1 false}
!7 = !{!"../kernel/locking/spinlock.c", i32 164, i32 1}
!8 = !{ptr @__ksymtab__raw_spin_lock_irq, !9, !"__ksymtab__raw_spin_lock_irq", i1 false, i1 false}
!9 = !{!"../kernel/locking/spinlock.c", i32 172, i32 1}
!10 = !{ptr @__ksymtab__raw_spin_lock_bh, !11, !"__ksymtab__raw_spin_lock_bh", i1 false, i1 false}
!11 = !{!"../kernel/locking/spinlock.c", i32 180, i32 1}
!12 = !{ptr @__ksymtab__raw_spin_unlock, !13, !"__ksymtab__raw_spin_unlock", i1 false, i1 false}
!13 = !{!"../kernel/locking/spinlock.c", i32 188, i32 1}
!14 = !{ptr @__ksymtab__raw_spin_unlock_irqrestore, !15, !"__ksymtab__raw_spin_unlock_irqrestore", i1 false, i1 false}
!15 = !{!"../kernel/locking/spinlock.c", i32 196, i32 1}
!16 = !{ptr @__ksymtab__raw_spin_unlock_irq, !17, !"__ksymtab__raw_spin_unlock_irq", i1 false, i1 false}
!17 = !{!"../kernel/locking/spinlock.c", i32 204, i32 1}
!18 = !{ptr @__ksymtab__raw_spin_unlock_bh, !19, !"__ksymtab__raw_spin_unlock_bh", i1 false, i1 false}
!19 = !{!"../kernel/locking/spinlock.c", i32 212, i32 1}
!20 = !{ptr @__ksymtab__raw_read_trylock, !21, !"__ksymtab__raw_read_trylock", i1 false, i1 false}
!21 = !{!"../kernel/locking/spinlock.c", i32 222, i32 1}
!22 = !{ptr @__ksymtab__raw_read_lock, !23, !"__ksymtab__raw_read_lock", i1 false, i1 false}
!23 = !{!"../kernel/locking/spinlock.c", i32 230, i32 1}
!24 = !{ptr @__ksymtab__raw_read_lock_irqsave, !25, !"__ksymtab__raw_read_lock_irqsave", i1 false, i1 false}
!25 = !{!"../kernel/locking/spinlock.c", i32 238, i32 1}
!26 = !{ptr @__ksymtab__raw_read_lock_irq, !27, !"__ksymtab__raw_read_lock_irq", i1 false, i1 false}
!27 = !{!"../kernel/locking/spinlock.c", i32 246, i32 1}
!28 = !{ptr @__ksymtab__raw_read_lock_bh, !29, !"__ksymtab__raw_read_lock_bh", i1 false, i1 false}
!29 = !{!"../kernel/locking/spinlock.c", i32 254, i32 1}
!30 = !{ptr @__ksymtab__raw_read_unlock, !31, !"__ksymtab__raw_read_unlock", i1 false, i1 false}
!31 = !{!"../kernel/locking/spinlock.c", i32 262, i32 1}
!32 = !{ptr @__ksymtab__raw_read_unlock_irqrestore, !33, !"__ksymtab__raw_read_unlock_irqrestore", i1 false, i1 false}
!33 = !{!"../kernel/locking/spinlock.c", i32 270, i32 1}
!34 = !{ptr @__ksymtab__raw_read_unlock_irq, !35, !"__ksymtab__raw_read_unlock_irq", i1 false, i1 false}
!35 = !{!"../kernel/locking/spinlock.c", i32 278, i32 1}
!36 = !{ptr @__ksymtab__raw_read_unlock_bh, !37, !"__ksymtab__raw_read_unlock_bh", i1 false, i1 false}
!37 = !{!"../kernel/locking/spinlock.c", i32 286, i32 1}
!38 = !{ptr @__ksymtab__raw_write_trylock, !39, !"__ksymtab__raw_write_trylock", i1 false, i1 false}
!39 = !{!"../kernel/locking/spinlock.c", i32 294, i32 1}
!40 = !{ptr @__ksymtab__raw_write_lock, !41, !"__ksymtab__raw_write_lock", i1 false, i1 false}
!41 = !{!"../kernel/locking/spinlock.c", i32 302, i32 1}
!42 = !{ptr @__ksymtab__raw_write_lock_nested, !43, !"__ksymtab__raw_write_lock_nested", i1 false, i1 false}
!43 = !{!"../kernel/locking/spinlock.c", i32 312, i32 1}
!44 = !{ptr @__ksymtab__raw_write_lock_irqsave, !45, !"__ksymtab__raw_write_lock_irqsave", i1 false, i1 false}
!45 = !{!"../kernel/locking/spinlock.c", i32 320, i32 1}
!46 = !{ptr @__ksymtab__raw_write_lock_irq, !47, !"__ksymtab__raw_write_lock_irq", i1 false, i1 false}
!47 = !{!"../kernel/locking/spinlock.c", i32 328, i32 1}
!48 = !{ptr @__ksymtab__raw_write_lock_bh, !49, !"__ksymtab__raw_write_lock_bh", i1 false, i1 false}
!49 = !{!"../kernel/locking/spinlock.c", i32 336, i32 1}
!50 = !{ptr @__ksymtab__raw_write_unlock, !51, !"__ksymtab__raw_write_unlock", i1 false, i1 false}
!51 = !{!"../kernel/locking/spinlock.c", i32 344, i32 1}
!52 = !{ptr @__ksymtab__raw_write_unlock_irqrestore, !53, !"__ksymtab__raw_write_unlock_irqrestore", i1 false, i1 false}
!53 = !{!"../kernel/locking/spinlock.c", i32 352, i32 1}
!54 = !{ptr @__ksymtab__raw_write_unlock_irq, !55, !"__ksymtab__raw_write_unlock_irq", i1 false, i1 false}
!55 = !{!"../kernel/locking/spinlock.c", i32 360, i32 1}
!56 = !{ptr @__ksymtab__raw_write_unlock_bh, !57, !"__ksymtab__raw_write_unlock_bh", i1 false, i1 false}
!57 = !{!"../kernel/locking/spinlock.c", i32 368, i32 1}
!58 = !{ptr @__ksymtab__raw_spin_lock_nested, !59, !"__ksymtab__raw_spin_lock_nested", i1 false, i1 false}
!59 = !{!"../kernel/locking/spinlock.c", i32 381, i32 1}
!60 = !{ptr @__ksymtab__raw_spin_lock_irqsave_nested, !61, !"__ksymtab__raw_spin_lock_irqsave_nested", i1 false, i1 false}
!61 = !{!"../kernel/locking/spinlock.c", i32 394, i32 1}
!62 = !{ptr @__ksymtab__raw_spin_lock_nest_lock, !63, !"__ksymtab__raw_spin_lock_nest_lock", i1 false, i1 false}
!63 = !{!"../kernel/locking/spinlock.c", i32 403, i32 1}
!64 = !{ptr @__ksymtab_in_lock_functions, !65, !"__ksymtab_in_lock_functions", i1 false, i1 false}
!65 = !{!"../kernel/locking/spinlock.c", i32 415, i32 1}
!66 = !{!"sp"}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2149154320}
!77 = !{i64 2149154683}
!78 = !{i64 2149158683}
!79 = !{i64 876290, i64 876351}
!80 = !{i64 2149155652}
!81 = !{i64 879022}
!82 = !{i64 876725}
!83 = !{i64 2149156782}
!84 = !{i64 2149159662}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 879307}
!87 = !{i64 2149160890}
!88 = !{i64 876535}
!89 = !{i64 2149161452}
!90 = !{i64 2149172853}
!91 = !{i64 2149173536}
!92 = !{i64 2149174623}
!93 = !{i64 2149176457}
!94 = !{i64 2149177907}
!95 = !{i64 2149186430}
!96 = !{i64 2149187658}
!97 = !{i64 2149188220}
!98 = !{i64 2149173898}
!99 = !{i64 2149174261}
!100 = !{i64 2149184092}
!101 = !{i64 2149185001}
!102 = !{i64 2149181055}
!103 = !{i64 2149182187}
!104 = !{i64 2149185996}
!105 = !{i64 2149189969}
!106 = !{i64 2149190531}
!107 = !{i64 2152624857}
!108 = !{i64 2152627866}
!109 = !{i64 2152634529}
