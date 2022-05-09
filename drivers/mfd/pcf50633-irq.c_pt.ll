; ModuleID = '/llk/IR_all_yes/drivers/mfd/pcf50633-irq.c_pt.bc'
source_filename = "../drivers/mfd/pcf50633-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pcf50633_register_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_register_irq\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_register_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_register_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_register_irq\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_register_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_free_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_free_irq\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_free_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_free_irq\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_irq_mask\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_irq_mask\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_irq_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_irq_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_irq_mask\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_irq_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_irq_unmask\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_irq_unmask\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_irq_unmask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_irq_unmask:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_irq_unmask\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_irq_unmask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_irq_mask_get\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_irq_mask_get\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_irq_mask_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_irq_mask_get:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_irq_mask_get\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_irq_mask_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pcf50633 = type { ptr, ptr, ptr, i32, [40 x %struct.pcf50633_irq], %struct.work_struct, ptr, %struct.mutex, [5 x i8], [5 x i8], [5 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }
%struct.pcf50633_irq = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pcf50633_platform_data = type { [11 x %struct.regulator_init_data], ptr, i32, i32, ptr, ptr, ptr, ptr, [5 x i8], ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mfd/pcf50633-irq.c\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_pcf50633_register_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_register_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_register_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_register_irq to i32), ptr @__kstrtab_pcf50633_register_irq, ptr @__kstrtabns_pcf50633_register_irq }, section "___ksymtab_gpl+pcf50633_register_irq", align 4
@__kstrtab_pcf50633_free_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_free_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_free_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_free_irq to i32), ptr @__kstrtab_pcf50633_free_irq, ptr @__kstrtabns_pcf50633_free_irq }, section "___ksymtab_gpl+pcf50633_free_irq", align 4
@pcf50633_irq_mask.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcf50633\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcf50633_irq_mask\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Masking IRQ %d\0A\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_pcf50633_irq_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_irq_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_irq_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_irq_mask to i32), ptr @__kstrtab_pcf50633_irq_mask, ptr @__kstrtabns_pcf50633_irq_mask }, section "___ksymtab_gpl+pcf50633_irq_mask", align 4
@pcf50633_irq_unmask.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcf50633_irq_unmask\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unmasking IRQ %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_pcf50633_irq_unmask = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_irq_unmask = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_irq_unmask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_irq_unmask to i32), ptr @__kstrtab_pcf50633_irq_unmask, ptr @__kstrtabns_pcf50633_irq_unmask }, section "___ksymtab_gpl+pcf50633_irq_unmask", align 4
@__kstrtab_pcf50633_irq_mask_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_irq_mask_get = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_irq_mask_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_irq_mask_get to i32), ptr @__kstrtab_pcf50633_irq_mask_get, ptr @__kstrtabns_pcf50633_irq_mask_get }, section "___ksymtab_gpl+pcf50633_irq_mask_get", align 4
@pcf50633_irq_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 239, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error saving irq masks\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcf50633_irq_suspend\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcf50633_irq_suspend._entry_ptr = internal global ptr @pcf50633_irq_suspend._entry, section ".printk_index", align 4
@pcf50633_irq_suspend._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str, i32 250, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error writing wakeup irq masks\0A\00", [32 x i8] zeroinitializer }, align 32
@pcf50633_irq_suspend._entry_ptr.12 = internal global ptr @pcf50633_irq_suspend._entry.10, section ".printk_index", align 4
@pcf50633_irq_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 269, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error restoring saved suspend masks\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcf50633_irq_resume\00", [44 x i8] zeroinitializer }, align 32
@pcf50633_irq_resume._entry_ptr = internal global ptr @pcf50633_irq_resume._entry, section ".printk_index", align 4
@pcf50633_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 297, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcf50633_irq_init\00", [46 x i8] zeroinitializer }, align 32
@pcf50633_irq_init._entry_ptr = internal global ptr @pcf50633_irq_init._entry, section ".printk_index", align 4
@pcf50633_irq_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str, i32 301, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"IRQ %u cannot be enabled as wake-up sourcein this hardware revision\00", [60 x i8] zeroinitializer }, align 32
@pcf50633_irq_init._entry_ptr.19 = internal global ptr @pcf50633_irq_init._entry.17, section ".printk_index", align 4
@pcf50633_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 119, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error reading INT registers\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcf50633_irq\00", [19 x i8] zeroinitializer }, align 32
@pcf50633_irq._entry_ptr = internal global ptr @pcf50633_irq._entry, section ".printk_index", align 4
@pcf50633_irq.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str, ptr @.str.22, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"INT1=0x%02x INT2=0x%02x INT3=0x%02x INT4=0x%02x INT5=0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@pcf50633_irq._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str, i32 158, ptr @.str.25, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ONKEY1S held for %d secs\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pcf50633_irq._entry_ptr.26 = internal global ptr @pcf50633_irq._entry.23, section ".printk_index", align 4
@pcf50633_irq._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str, i32 165, ptr @.str.25, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ONKEY1S held\0A\00", [18 x i8] zeroinitializer }, align 32
@pcf50633_irq._entry_ptr.29 = internal global ptr @pcf50633_irq._entry.27, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 25, i32 6 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 75, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 83, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 239, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 250, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 269, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 297, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 300, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 119, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 150, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 157, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [30 x i8] c"../drivers/mfd/pcf50633-irq.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 165, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__ksymtab_pcf50633_free_irq, ptr @__ksymtab_pcf50633_irq_mask, ptr @__ksymtab_pcf50633_irq_mask_get, ptr @__ksymtab_pcf50633_irq_unmask, ptr @__ksymtab_pcf50633_register_irq, ptr @pcf50633_irq._entry, ptr @pcf50633_irq._entry.23, ptr @pcf50633_irq._entry.27, ptr @pcf50633_irq._entry_ptr, ptr @pcf50633_irq._entry_ptr.26, ptr @pcf50633_irq._entry_ptr.29, ptr @pcf50633_irq_init._entry, ptr @pcf50633_irq_init._entry.17, ptr @pcf50633_irq_init._entry_ptr, ptr @pcf50633_irq_init._entry_ptr.19, ptr @pcf50633_irq_resume._entry, ptr @pcf50633_irq_resume._entry_ptr, ptr @pcf50633_irq_suspend._entry, ptr @pcf50633_irq_suspend._entry.10, ptr @pcf50633_irq_suspend._entry_ptr, ptr @pcf50633_irq_suspend._entry_ptr.12, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_irq_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_irq_suspend._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_irq_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_irq_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_irq._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_irq._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_register_irq(ptr noundef %pcf, i32 noundef %irq, ptr noundef %handler, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %irq)
  %0 = icmp ugt i32 %irq, 39
  %tobool.not = icmp eq ptr %handler, null
  %or.cond46 = or i1 %0, %tobool.not
  br i1 %or.cond46, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.pcf50633, ptr %pcf, i32 0, i32 4, i32 %irq
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.end28, label %do.end, !prof !72

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 25, i32 noundef 9, ptr noundef null) #5
  br label %return

if.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %handler, ptr %arrayidx, align 4
  %data34 = getelementptr %struct.pcf50633, ptr %pcf, i32 0, i32 4, i32 %irq, i32 1
  %4 = ptrtoint ptr %data34 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data34, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %return

return:                                           ; preds = %if.end28, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end28 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_free_irq(ptr noundef %pcf, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %irq)
  %0 = icmp ugt i32 %irq, 39
  br i1 %0, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %arrayidx = getelementptr %struct.pcf50633, ptr %pcf, i32 0, i32 4, i32 %irq
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_irq_mask(ptr noundef %pcf, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf50633_irq_mask.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcf50633_irq_mask, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf50633_irq_mask.__UNIQUE_ID_ddebug288, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %irq) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shr.i = ashr i32 %irq, 3
  %2 = trunc i32 %shr.i to i8
  %conv.i = add i8 %2, 7
  %and.i = and i32 %irq, 7
  %shl.i = shl nuw nsw i32 1, %and.i
  %conv1.i = trunc i32 %shl.i to i8
  %call.i = tail call i32 @pcf50633_reg_set_bit_mask(ptr noundef %pcf, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv1.i, i8 noundef zeroext %conv1.i) #5
  %lock.i = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %arrayidx11.i = getelementptr %struct.pcf50633, ptr %pcf, i32 0, i32 8, i32 %shr.i
  %3 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx11.i, align 1
  %conv8.i = or i8 %4, %conv1.i
  store i8 %conv8.i, ptr %arrayidx11.i, align 1
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_irq_unmask(ptr noundef %pcf, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf50633_irq_unmask.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcf50633_irq_unmask, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf50633_irq_unmask.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %irq) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shr.i = ashr i32 %irq, 3
  %2 = trunc i32 %shr.i to i8
  %conv.i = add i8 %2, 7
  %and.i = and i32 %irq, 7
  %shl.i = shl nuw nsw i32 1, %and.i
  %conv1.i = trunc i32 %shl.i to i8
  %call.i = tail call i32 @pcf50633_reg_set_bit_mask(ptr noundef %pcf, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv1.i, i8 noundef zeroext 0) #5
  %lock.i = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %arrayidx11.i = getelementptr %struct.pcf50633, ptr %pcf, i32 0, i32 8, i32 %shr.i
  %3 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx11.i, align 1
  %5 = xor i8 %conv1.i, -1
  %conv14.i = and i8 %4, %5
  store i8 %conv14.i, ptr %arrayidx11.i, align 1
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pcf50633_irq_mask_get(ptr nocapture noundef readonly %pcf, i32 noundef %irq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %irq, 3
  %and = and i32 %irq, 7
  %shl = shl nuw nsw i32 1, %and
  %idxprom = and i32 %0, 255
  %arrayidx = getelementptr %struct.pcf50633, ptr %pcf, i32 0, i32 8, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %2 to i32
  %and4 = and i32 %shl, %conv2
  ret i32 %and4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_irq_suspend(ptr noundef %pcf) local_unnamed_addr #0 align 64 {
entry:
  %res = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %res) #5
  %irq = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 3
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #5
  %suspend_irq_masks = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 9
  %call = tail call i32 @pcf50633_read_block(ptr noundef %pcf, i8 noundef zeroext 7, i32 noundef 5, ptr noundef %suspend_irq_masks) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %2 = getelementptr inbounds [5 x i8], ptr %res, i32 0, i32 4
  %3 = getelementptr inbounds [5 x i8], ptr %res, i32 0, i32 3
  %4 = getelementptr inbounds [5 x i8], ptr %res, i32 0, i32 2
  %5 = getelementptr inbounds [5 x i8], ptr %res, i32 0, i32 1
  %pdata = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 2
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %arrayidx = getelementptr %struct.pcf50633_platform_data, ptr %7, i32 0, i32 8, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %neg = xor i8 %9, -1
  %10 = ptrtoint ptr %res to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %neg, ptr %res, align 1
  %arrayidx.1 = getelementptr %struct.pcf50633_platform_data, ptr %7, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  %neg.1 = xor i8 %12, -1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %neg.1, ptr %5, align 1
  %arrayidx.2 = getelementptr %struct.pcf50633_platform_data, ptr %7, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.2, align 1
  %neg.2 = xor i8 %15, -1
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %neg.2, ptr %4, align 1
  %arrayidx.3 = getelementptr %struct.pcf50633_platform_data, ptr %7, i32 0, i32 8, i32 3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.3, align 1
  %neg.3 = xor i8 %18, -1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %neg.3, ptr %3, align 1
  %arrayidx.4 = getelementptr %struct.pcf50633_platform_data, ptr %7, i32 0, i32 8, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4, align 1
  %neg.4 = xor i8 %21, -1
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %neg.4, ptr %2, align 1
  %call5 = call i32 @pcf50633_write_block(ptr noundef %pcf, i8 noundef zeroext 7, i32 noundef 5, ptr noundef nonnull %res) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end11, label %if.end13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcf, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.6) #8
  br label %out

do.end11:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcf, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.11) #8
  br label %out

if.end13:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %is_suspended = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 11
  %27 = ptrtoint ptr %is_suspended to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %is_suspended, align 4
  br label %out

out:                                              ; preds = %if.end13, %do.end11, %do.end
  %ret.0 = phi i32 [ %call, %do.end ], [ %call5, %do.end11 ], [ %call5, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %res) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_read_block(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_write_block(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_irq_resume(ptr noundef %pcf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %suspend_irq_masks = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 9
  %call = tail call i32 @pcf50633_write_block(ptr noundef %pcf, i8 noundef zeroext 7, i32 noundef 5, ptr noundef %suspend_irq_masks) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcf, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %3) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_irq_init(ptr noundef %pcf, i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq1 = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 3
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %irq, ptr %irq1, align 4
  %mask_regs = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 8
  %1 = ptrtoint ptr %mask_regs to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -128, ptr %mask_regs, align 4
  %call = tail call i32 @pcf50633_reg_write(ptr noundef %pcf, i8 noundef zeroext 7, i8 noundef zeroext -128) #5
  %call4 = tail call i32 @pcf50633_reg_write(ptr noundef %pcf, i8 noundef zeroext 8, i8 noundef zeroext 0) #5
  %call5 = tail call i32 @pcf50633_reg_write(ptr noundef %pcf, i8 noundef zeroext 9, i8 noundef zeroext 0) #5
  %call6 = tail call i32 @pcf50633_reg_write(ptr noundef %pcf, i8 noundef zeroext 10, i8 noundef zeroext 0) #5
  %call7 = tail call i32 @pcf50633_reg_write(ptr noundef %pcf, i8 noundef zeroext 11, i8 noundef zeroext 0) #5
  %call8 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef null, ptr noundef nonnull @pcf50633_irq, i32 noundef 8200, ptr noundef nonnull @.str.1, ptr noundef %pcf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcf, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %call8) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %irq, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end13, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcf, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %irq) #8
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %if.end.if.end15_crit_edge
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %pcf_int = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %pcf_int) #5
  %0 = getelementptr inbounds [5 x i8], ptr %pcf_int, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %pcf_int, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %pcf_int, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %pcf_int, i32 0, i32 4
  %4 = call ptr @memset(ptr %pcf_int, i32 255, i32 5)
  %call = call i32 @pcf50633_read_block(ptr noundef %data, i8 noundef zeroext 2, i32 noundef 5, ptr noundef nonnull %pcf_int) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp.not = icmp eq i32 %call, 5
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.20) #8
  br label %out

if.end:                                           ; preds = %entry
  %call1 = call i32 @pcf50633_reg_write(ptr noundef %data, i8 noundef zeroext 12, i8 noundef zeroext 4) #5
  %7 = ptrtoint ptr %pcf_int to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pcf_int, align 1
  %9 = and i8 %8, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then2

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then2:                                         ; preds = %if.end
  %call3 = call zeroext i8 @pcf50633_reg_read(ptr noundef %data, i8 noundef zeroext 76) #5
  %10 = and i8 %call3, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %pcf_int to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pcf_int, align 1
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %13 = and i8 %12, -9
  %14 = ptrtoint ptr %pcf_int to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %pcf_int, align 1
  br label %if.end17

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %15 = and i8 %12, -5
  %16 = ptrtoint ptr %pcf_int to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %pcf_int, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then7, %if.end.if.end17_crit_edge
  %17 = ptrtoint ptr %pcf_int to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pcf_int, align 1
  %19 = and i8 %18, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool21.not = icmp eq i8 %19, 0
  br i1 %tobool21.not, label %if.end17.do.body39_crit_edge, label %if.then22

if.end17.do.body39_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

if.then22:                                        ; preds = %if.end17
  %call23 = call zeroext i8 @pcf50633_reg_read(ptr noundef %data, i8 noundef zeroext 76) #5
  %20 = and i8 %call23, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26.not = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %pcf_int to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pcf_int, align 1
  br i1 %tobool26.not, label %if.else32, label %if.then27

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %23 = and i8 %22, -3
  %24 = ptrtoint ptr %pcf_int to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %pcf_int, align 1
  br label %do.body39

if.else32:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %25 = and i8 %22, -2
  %26 = ptrtoint ptr %pcf_int to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %pcf_int, align 1
  br label %do.body39

do.body39:                                        ; preds = %if.else32, %if.then27, %if.end17.do.body39_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf50633_irq.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcf50633_irq, %if.then44)) #5
          to label %do.end58 [label %if.then44], !srcloc !73

if.then44:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %pcf_int to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pcf_int, align 1
  %conv47 = zext i8 %30 to i32
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %0, align 1
  %conv49 = zext i8 %32 to i32
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %1, align 1
  %conv51 = zext i8 %34 to i32
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %2, align 1
  %conv53 = zext i8 %36 to i32
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %3, align 1
  %conv55 = zext i8 %38 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf50633_irq.__UNIQUE_ID_ddebug290, ptr noundef %28, ptr noundef nonnull @.str.22, i32 noundef %conv47, i32 noundef %conv49, i32 noundef %conv51, i32 noundef %conv53, i32 noundef %conv55) #5
  br label %do.end58

do.end58:                                         ; preds = %if.then44, %do.body39
  %39 = ptrtoint ptr %pcf_int to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pcf_int, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %40)
  %tobool62.not = icmp sgt i8 %40, -1
  br i1 %tobool62.not, label %do.end58.if.end80_crit_edge, label %land.lhs.true

do.end58.if.end80_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

land.lhs.true:                                    ; preds = %do.end58
  %onkey1s_held = getelementptr inbounds %struct.pcf50633, ptr %data, i32 0, i32 12
  %41 = ptrtoint ptr %onkey1s_held to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %onkey1s_held, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool63.not = icmp eq i32 %42, 0
  br i1 %tobool63.not, label %land.lhs.true.if.end80_crit_edge, label %do.end67

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end67:                                         ; preds = %land.lhs.true
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.24, i32 noundef %42) #8
  %45 = ptrtoint ptr %onkey1s_held to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %onkey1s_held, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %onkey1s_held, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %46)
  %cmp71 = icmp eq i32 %46, 8
  br i1 %cmp71, label %if.then73, label %do.end67.if.end80_crit_edge

do.end67.if.end80_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then73:                                        ; preds = %do.end67
  %pdata = getelementptr inbounds %struct.pcf50633, ptr %data, i32 0, i32 2
  %47 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdata, align 4
  %force_shutdown = getelementptr inbounds %struct.pcf50633_platform_data, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %force_shutdown to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %force_shutdown, align 4
  %tobool74.not = icmp eq ptr %50, null
  br i1 %tobool74.not, label %if.then73.if.end80_crit_edge, label %if.then75

if.then73.if.end80_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then75:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  call void %50(ptr noundef %data) #5
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.then73.if.end80_crit_edge, %do.end67.if.end80_crit_edge, %land.lhs.true.if.end80_crit_edge, %do.end58.if.end80_crit_edge
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %52)
  %tobool84.not = icmp sgt i8 %52, -1
  br i1 %tobool84.not, label %if.end80.if.end93_crit_edge, label %do.end88

if.end80.if.end93_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

do.end88:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.28) #8
  %onkey1s_held90 = getelementptr inbounds %struct.pcf50633, ptr %data, i32 0, i32 12
  %55 = ptrtoint ptr %onkey1s_held90 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %onkey1s_held90, align 4
  %call91 = call i32 @pcf50633_reg_clear_bits(ptr noundef %data, i8 noundef zeroext 7, i8 noundef zeroext -128) #5
  %call92 = call i32 @pcf50633_reg_clear_bits(ptr noundef %data, i8 noundef zeroext 8, i8 noundef zeroext 1) #5
  br label %if.end93

if.end93:                                         ; preds = %do.end88, %if.end80.if.end93_crit_edge
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %0, align 1
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool97.not = icmp eq i8 %58, 0
  br i1 %tobool97.not, label %if.end93.if.end118_crit_edge, label %land.lhs.true98

if.end93.if.end118_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

land.lhs.true98:                                  ; preds = %if.end93
  %onkey1s_held99 = getelementptr inbounds %struct.pcf50633, ptr %data, i32 0, i32 12
  %59 = ptrtoint ptr %onkey1s_held99 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %onkey1s_held99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool100.not = icmp eq i32 %60, 0
  br i1 %tobool100.not, label %land.lhs.true98.if.end118_crit_edge, label %if.then101

land.lhs.true98.if.end118_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

if.then101:                                       ; preds = %land.lhs.true98
  %61 = ptrtoint ptr %onkey1s_held99 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %onkey1s_held99, align 4
  %mask_regs = getelementptr inbounds %struct.pcf50633, ptr %data, i32 0, i32 8
  %62 = ptrtoint ptr %mask_regs to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %mask_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %tobool106.not = icmp sgt i8 %63, -1
  br i1 %tobool106.not, label %if.then101.if.end109_crit_edge, label %if.then107

if.then101.if.end109_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.then107:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #7
  %call108 = call i32 @pcf50633_reg_set_bit_mask(ptr noundef %data, i8 noundef zeroext 7, i8 noundef zeroext -128, i8 noundef zeroext -128) #5
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.then101.if.end109_crit_edge
  %arrayidx111 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 8, i32 1
  %64 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx111, align 1
  %66 = and i8 %65, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool114.not = icmp eq i8 %66, 0
  br i1 %tobool114.not, label %if.end109.if.end118_crit_edge, label %if.then115

if.end109.if.end118_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

if.then115:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  %call116 = call i32 @pcf50633_reg_set_bit_mask(ptr noundef %data, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %if.end109.if.end118_crit_edge, %land.lhs.true98.if.end118_crit_edge, %if.end93.if.end118_crit_edge
  %is_suspended = getelementptr inbounds %struct.pcf50633, ptr %data, i32 0, i32 11
  %67 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %is_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool119.not = icmp eq i32 %68, 0
  br i1 %tobool119.not, label %if.end118.for.body141.preheader_crit_edge, label %if.then120

if.end118.for.body141.preheader_crit_edge:        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body141.preheader

if.then120:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %is_suspended to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %is_suspended, align 4
  %pdata126 = getelementptr inbounds %struct.pcf50633, ptr %data, i32 0, i32 2
  %70 = ptrtoint ptr %pdata126 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdata126, align 4
  %72 = ptrtoint ptr %pcf_int to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %pcf_int, align 1
  %arrayidx127 = getelementptr %struct.pcf50633_platform_data, ptr %71, i32 0, i32 8, i32 0
  %74 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx127, align 1
  %and129208 = and i8 %75, %73
  %arrayidx131 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 10, i32 0
  %76 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %and129208, ptr %arrayidx131, align 1
  %77 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %0, align 1
  %arrayidx127.1 = getelementptr %struct.pcf50633_platform_data, ptr %71, i32 0, i32 8, i32 1
  %79 = ptrtoint ptr %arrayidx127.1 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx127.1, align 1
  %and129208.1 = and i8 %80, %78
  %arrayidx131.1 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 10, i32 1
  %81 = ptrtoint ptr %arrayidx131.1 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %and129208.1, ptr %arrayidx131.1, align 1
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %1, align 1
  %arrayidx127.2 = getelementptr %struct.pcf50633_platform_data, ptr %71, i32 0, i32 8, i32 2
  %84 = ptrtoint ptr %arrayidx127.2 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx127.2, align 1
  %and129208.2 = and i8 %85, %83
  %arrayidx131.2 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 10, i32 2
  %86 = ptrtoint ptr %arrayidx131.2 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %and129208.2, ptr %arrayidx131.2, align 1
  %87 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %2, align 1
  %arrayidx127.3 = getelementptr %struct.pcf50633_platform_data, ptr %71, i32 0, i32 8, i32 3
  %89 = ptrtoint ptr %arrayidx127.3 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx127.3, align 1
  %and129208.3 = and i8 %90, %88
  %arrayidx131.3 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 10, i32 3
  %91 = ptrtoint ptr %arrayidx131.3 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %and129208.3, ptr %arrayidx131.3, align 1
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %3, align 1
  %arrayidx127.4 = getelementptr %struct.pcf50633_platform_data, ptr %71, i32 0, i32 8, i32 4
  %94 = ptrtoint ptr %arrayidx127.4 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx127.4, align 1
  %and129208.4 = and i8 %95, %93
  %arrayidx131.4 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 10, i32 4
  %96 = ptrtoint ptr %arrayidx131.4 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %and129208.4, ptr %arrayidx131.4, align 1
  %97 = and i8 %78, -4
  store i8 %97, ptr %0, align 1
  br label %for.body141.preheader

for.body141.preheader:                            ; preds = %if.then120, %if.end118.for.body141.preheader_crit_edge
  br label %for.body141

for.body141:                                      ; preds = %for.inc159.7.for.body141_crit_edge, %for.body141.preheader
  %i.1213 = phi i32 [ %inc163, %for.inc159.7.for.body141_crit_edge ], [ 0, %for.body141.preheader ]
  %arrayidx143 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 8, i32 %i.1213
  %98 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx143, align 1
  %neg = xor i8 %99, -1
  %arrayidx145 = getelementptr [5 x i8], ptr %pcf_int, i32 0, i32 %i.1213
  %100 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx145, align 1
  %and147 = and i8 %101, %neg
  store i8 %and147, ptr %arrayidx145, align 1
  %mul = shl i32 %i.1213, 3
  %102 = and i8 %and147, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool156.not = icmp eq i8 %102, 0
  br i1 %tobool156.not, label %for.body141.for.inc159_crit_edge, label %if.then157

for.body141.for.inc159_crit_edge:                 ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159

if.then157:                                       ; preds = %for.body141
  %arrayidx.i = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %mul
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %104, null
  br i1 %tobool.not.i, label %if.then157.for.inc159_crit_edge, label %if.then.i

if.then157.for.inc159_crit_edge:                  ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159

if.then.i:                                        ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #7
  %data.i = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %mul, i32 1
  %105 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data.i, align 4
  call void %104(i32 noundef %mul, ptr noundef %106) #5
  br label %for.inc159

for.inc159:                                       ; preds = %if.then.i, %if.then157.for.inc159_crit_edge, %for.body141.for.inc159_crit_edge
  %107 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx145, align 1
  %109 = and i8 %108, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool156.not.1 = icmp eq i8 %109, 0
  br i1 %tobool156.not.1, label %for.inc159.for.inc159.1_crit_edge, label %if.then157.1

for.inc159.for.inc159.1_crit_edge:                ; preds = %for.inc159
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159.1

if.then157.1:                                     ; preds = %for.inc159
  %add.1 = or i32 %mul, 1
  %arrayidx.i.1 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %add.1
  %110 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %111, null
  br i1 %tobool.not.i.1, label %if.then157.1.for.inc159.1_crit_edge, label %if.then.i.1

if.then157.1.for.inc159.1_crit_edge:              ; preds = %if.then157.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159.1

if.then.i.1:                                      ; preds = %if.then157.1
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.1 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %add.1, i32 1
  %112 = ptrtoint ptr %data.i.1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data.i.1, align 4
  call void %111(i32 noundef %add.1, ptr noundef %113) #5
  br label %for.inc159.1

for.inc159.1:                                     ; preds = %if.then.i.1, %if.then157.1.for.inc159.1_crit_edge, %for.inc159.for.inc159.1_crit_edge
  %114 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx145, align 1
  %116 = and i8 %115, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool156.not.2 = icmp eq i8 %116, 0
  br i1 %tobool156.not.2, label %for.inc159.1.for.inc159.2_crit_edge, label %if.then157.2

for.inc159.1.for.inc159.2_crit_edge:              ; preds = %for.inc159.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159.2

if.then157.2:                                     ; preds = %for.inc159.1
  %add.2 = or i32 %mul, 2
  %arrayidx.i.2 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %add.2
  %117 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool.not.i.2 = icmp eq ptr %118, null
  br i1 %tobool.not.i.2, label %if.then157.2.for.inc159.2_crit_edge, label %if.then.i.2

if.then157.2.for.inc159.2_crit_edge:              ; preds = %if.then157.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159.2

if.then.i.2:                                      ; preds = %if.then157.2
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.2 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %add.2, i32 1
  %119 = ptrtoint ptr %data.i.2 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data.i.2, align 4
  call void %118(i32 noundef %add.2, ptr noundef %120) #5
  br label %for.inc159.2

for.inc159.2:                                     ; preds = %if.then.i.2, %if.then157.2.for.inc159.2_crit_edge, %for.inc159.1.for.inc159.2_crit_edge
  %121 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx145, align 1
  %123 = and i8 %122, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool156.not.3 = icmp eq i8 %123, 0
  br i1 %tobool156.not.3, label %for.inc159.2.for.inc159.3_crit_edge, label %if.then157.3

for.inc159.2.for.inc159.3_crit_edge:              ; preds = %for.inc159.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159.3

if.then157.3:                                     ; preds = %for.inc159.2
  %add.3 = or i32 %mul, 3
  %arrayidx.i.3 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %add.3
  %124 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i.3, align 4
  %tobool.not.i.3 = icmp eq ptr %125, null
  br i1 %tobool.not.i.3, label %if.then157.3.for.inc159.3_crit_edge, label %if.then.i.3

if.then157.3.for.inc159.3_crit_edge:              ; preds = %if.then157.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159.3

if.then.i.3:                                      ; preds = %if.then157.3
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.3 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %add.3, i32 1
  %126 = ptrtoint ptr %data.i.3 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data.i.3, align 4
  call void %125(i32 noundef %add.3, ptr noundef %127) #5
  br label %for.inc159.3

for.inc159.3:                                     ; preds = %if.then.i.3, %if.then157.3.for.inc159.3_crit_edge, %for.inc159.2.for.inc159.3_crit_edge
  %128 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx145, align 1
  %130 = and i8 %129, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool156.not.4 = icmp eq i8 %130, 0
  br i1 %tobool156.not.4, label %for.inc159.3.for.inc159.4_crit_edge, label %if.then157.4

for.inc159.3.for.inc159.4_crit_edge:              ; preds = %for.inc159.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159.4

if.then157.4:                                     ; preds = %for.inc159.3
  %add.4 = or i32 %mul, 4
  %arrayidx.i.4 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %add.4
  %131 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i.4, align 4
  %tobool.not.i.4 = icmp eq ptr %132, null
  br i1 %tobool.not.i.4, label %if.then157.4.for.inc159.4_crit_edge, label %if.then.i.4

if.then157.4.for.inc159.4_crit_edge:              ; preds = %if.then157.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159.4

if.then.i.4:                                      ; preds = %if.then157.4
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.4 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %add.4, i32 1
  %133 = ptrtoint ptr %data.i.4 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data.i.4, align 4
  call void %132(i32 noundef %add.4, ptr noundef %134) #5
  br label %for.inc159.4

for.inc159.4:                                     ; preds = %if.then.i.4, %if.then157.4.for.inc159.4_crit_edge, %for.inc159.3.for.inc159.4_crit_edge
  %135 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx145, align 1
  %137 = and i8 %136, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool156.not.5 = icmp eq i8 %137, 0
  br i1 %tobool156.not.5, label %for.inc159.4.for.inc159.5_crit_edge, label %if.then157.5

for.inc159.4.for.inc159.5_crit_edge:              ; preds = %for.inc159.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159.5

if.then157.5:                                     ; preds = %for.inc159.4
  %add.5 = or i32 %mul, 5
  %arrayidx.i.5 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %add.5
  %138 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i.5, align 4
  %tobool.not.i.5 = icmp eq ptr %139, null
  br i1 %tobool.not.i.5, label %if.then157.5.for.inc159.5_crit_edge, label %if.then.i.5

if.then157.5.for.inc159.5_crit_edge:              ; preds = %if.then157.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159.5

if.then.i.5:                                      ; preds = %if.then157.5
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.5 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %add.5, i32 1
  %140 = ptrtoint ptr %data.i.5 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %data.i.5, align 4
  call void %139(i32 noundef %add.5, ptr noundef %141) #5
  br label %for.inc159.5

for.inc159.5:                                     ; preds = %if.then.i.5, %if.then157.5.for.inc159.5_crit_edge, %for.inc159.4.for.inc159.5_crit_edge
  %142 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx145, align 1
  %144 = and i8 %143, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool156.not.6 = icmp eq i8 %144, 0
  br i1 %tobool156.not.6, label %for.inc159.5.for.inc159.6_crit_edge, label %if.then157.6

for.inc159.5.for.inc159.6_crit_edge:              ; preds = %for.inc159.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159.6

if.then157.6:                                     ; preds = %for.inc159.5
  %add.6 = or i32 %mul, 6
  %arrayidx.i.6 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %add.6
  %145 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i.6, align 4
  %tobool.not.i.6 = icmp eq ptr %146, null
  br i1 %tobool.not.i.6, label %if.then157.6.for.inc159.6thread-pre-split_crit_edge, label %if.then.i.6

if.then157.6.for.inc159.6thread-pre-split_crit_edge: ; preds = %if.then157.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159.6thread-pre-split

if.then.i.6:                                      ; preds = %if.then157.6
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.6 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %add.6, i32 1
  %147 = ptrtoint ptr %data.i.6 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data.i.6, align 4
  call void %146(i32 noundef %add.6, ptr noundef %148) #5
  br label %for.inc159.6thread-pre-split

for.inc159.6thread-pre-split:                     ; preds = %if.then.i.6, %if.then157.6.for.inc159.6thread-pre-split_crit_edge
  %149 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %149)
  %.pr = load i8, ptr %arrayidx145, align 1
  br label %for.inc159.6

for.inc159.6:                                     ; preds = %for.inc159.6thread-pre-split, %for.inc159.5.for.inc159.6_crit_edge
  %150 = phi i8 [ %.pr, %for.inc159.6thread-pre-split ], [ %143, %for.inc159.5.for.inc159.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %150)
  %tobool156.not.7 = icmp sgt i8 %150, -1
  br i1 %tobool156.not.7, label %for.inc159.6.for.inc159.7_crit_edge, label %if.then157.7

for.inc159.6.for.inc159.7_crit_edge:              ; preds = %for.inc159.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159.7

if.then157.7:                                     ; preds = %for.inc159.6
  %add.7 = or i32 %mul, 7
  %arrayidx.i.7 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %add.7
  %151 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx.i.7, align 4
  %tobool.not.i.7 = icmp eq ptr %152, null
  br i1 %tobool.not.i.7, label %if.then157.7.for.inc159.7_crit_edge, label %if.then.i.7

if.then157.7.for.inc159.7_crit_edge:              ; preds = %if.then157.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc159.7

if.then.i.7:                                      ; preds = %if.then157.7
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.7 = getelementptr %struct.pcf50633, ptr %data, i32 0, i32 4, i32 %add.7, i32 1
  %153 = ptrtoint ptr %data.i.7 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %data.i.7, align 4
  call void %152(i32 noundef %add.7, ptr noundef %154) #5
  br label %for.inc159.7

for.inc159.7:                                     ; preds = %if.then.i.7, %if.then157.7.for.inc159.7_crit_edge, %for.inc159.6.for.inc159.7_crit_edge
  %inc163 = add nuw nsw i32 %i.1213, 1
  %exitcond.not = icmp eq i32 %inc163, 5
  br i1 %exitcond.not, label %for.inc159.7.out_crit_edge, label %for.inc159.7.for.body141_crit_edge

for.inc159.7.for.body141_crit_edge:               ; preds = %for.inc159.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body141

for.inc159.7.out_crit_edge:                       ; preds = %for.inc159.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %for.inc159.7.out_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pcf_int) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcf50633_irq_free(ptr noundef %pcf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 3
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %pcf) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_reg_set_bit_mask(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pcf50633_reg_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_reg_clear_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !15, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/pcf50633-irq.c", i32 25, i32 6}
!2 = !{ptr @__ksymtab_pcf50633_register_irq, !3, !"__ksymtab_pcf50633_register_irq", i1 false, i1 false}
!3 = !{!"../drivers/mfd/pcf50633-irq.c", i32 35, i32 1}
!4 = !{ptr @__ksymtab_pcf50633_free_irq, !5, !"__ksymtab_pcf50633_free_irq", i1 false, i1 false}
!5 = !{!"../drivers/mfd/pcf50633-irq.c", i32 48, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mfd/pcf50633-irq.c", i32 75, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @pcf50633_irq_mask.__UNIQUE_ID_ddebug288, !7, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!11 = !{ptr @__ksymtab_pcf50633_irq_mask, !12, !"__ksymtab_pcf50633_irq_mask", i1 false, i1 false}
!12 = !{!"../drivers/mfd/pcf50633-irq.c", i32 79, i32 1}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mfd/pcf50633-irq.c", i32 83, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @pcf50633_irq_unmask.__UNIQUE_ID_ddebug289, !14, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!17 = !{ptr @__ksymtab_pcf50633_irq_unmask, !18, !"__ksymtab_pcf50633_irq_unmask", i1 false, i1 false}
!18 = !{!"../drivers/mfd/pcf50633-irq.c", i32 87, i32 1}
!19 = !{ptr @__ksymtab_pcf50633_irq_mask_get, !20, !"__ksymtab_pcf50633_irq_mask_get", i1 false, i1 false}
!20 = !{!"../drivers/mfd/pcf50633-irq.c", i32 98, i32 1}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mfd/pcf50633-irq.c", i32 239, i32 3}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pcf50633_irq_suspend._entry, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @pcf50633_irq_suspend._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mfd/pcf50633-irq.c", i32 250, i32 3}
!30 = !{ptr @pcf50633_irq_suspend._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pcf50633_irq_suspend._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/pcf50633-irq.c", i32 269, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pcf50633_irq_resume._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @pcf50633_irq_resume._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/pcf50633-irq.c", i32 297, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pcf50633_irq_init._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @pcf50633_irq_init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/pcf50633-irq.c", i32 300, i32 3}
!44 = !{ptr @pcf50633_irq_init._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pcf50633_irq_init._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mfd/pcf50633-irq.c", i32 119, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pcf50633_irq._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @pcf50633_irq._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/pcf50633-irq.c", i32 150, i32 2}
!53 = !{ptr @pcf50633_irq.__UNIQUE_ID_ddebug290, !52, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mfd/pcf50633-irq.c", i32 157, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @pcf50633_irq._entry.23, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @pcf50633_irq._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/pcf50633-irq.c", i32 165, i32 3}
!61 = !{ptr @pcf50633_irq._entry.27, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @pcf50633_irq._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2148722851, i64 2148722856, i64 2148722869, i64 2148722913, i64 2148722947, i64 2148722968}
