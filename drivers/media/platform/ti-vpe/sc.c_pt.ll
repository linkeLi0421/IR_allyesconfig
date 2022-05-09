; ModuleID = '/llk/IR_all_yes/drivers/media/platform/ti-vpe/sc.c_pt.bc'
source_filename = "../drivers/media/platform/ti-vpe/sc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sc_dump_regs\22, \22a\22\09"
module asm "\09.weak\09__crc_sc_dump_regs\09\09\09\09"
module asm "\09.long\09__crc_sc_dump_regs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sc_dump_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22sc_dump_regs\22\09\09\09\09\09"
module asm "__kstrtabns_sc_dump_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sc_set_hs_coeffs\22, \22a\22\09"
module asm "\09.weak\09__crc_sc_set_hs_coeffs\09\09\09\09"
module asm "\09.long\09__crc_sc_set_hs_coeffs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sc_set_hs_coeffs:\09\09\09\09\09"
module asm "\09.asciz \09\22sc_set_hs_coeffs\22\09\09\09\09\09"
module asm "__kstrtabns_sc_set_hs_coeffs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sc_set_vs_coeffs\22, \22a\22\09"
module asm "\09.weak\09__crc_sc_set_vs_coeffs\09\09\09\09"
module asm "\09.long\09__crc_sc_set_vs_coeffs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sc_set_vs_coeffs:\09\09\09\09\09"
module asm "\09.asciz \09\22sc_set_vs_coeffs\22\09\09\09\09\09"
module asm "__kstrtabns_sc_set_vs_coeffs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sc_config_scaler\22, \22a\22\09"
module asm "\09.weak\09__crc_sc_config_scaler\09\09\09\09"
module asm "\09.long\09__crc_sc_config_scaler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sc_config_scaler:\09\09\09\09\09"
module asm "\09.asciz \09\22sc_config_scaler\22\09\09\09\09\09"
module asm "__kstrtabns_sc_config_scaler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sc_create\22, \22a\22\09"
module asm "\09.weak\09__crc_sc_create\09\09\09\09"
module asm "\09.long\09__crc_sc_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22sc_create\22\09\09\09\09\09"
module asm "__kstrtabns_sc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sc_data = type { ptr, ptr, i32, i32, i8, i8, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@sc_dump_regs.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 7, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ti_sc\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sc_dump_regs\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/platform/ti-vpe/sc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SC Registers @ %pa:\0A\00", [43 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 7, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-35s %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SC0\00", [28 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 7, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SC1\00", [28 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 8, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SC2\00", [28 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 8, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SC3\00", [28 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 8, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SC4\00", [28 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 8, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SC5\00", [28 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 9, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SC6\00", [28 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 9, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SC8\00", [28 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 9, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SC9\00", [28 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 9, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SC10\00", [27 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 10, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SC11\00", [27 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 10, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SC12\00", [27 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 10, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SC13\00", [27 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 10, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SC17\00", [27 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 11, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SC18\00", [27 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 11, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SC19\00", [27 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 11, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SC20\00", [27 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 11, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SC21\00", [27 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 12, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SC22\00", [27 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 12, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SC23\00", [27 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 12, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SC24\00", [27 x i8] zeroinitializer }, align 32
@sc_dump_regs.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 12, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SC25\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_sc_dump_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns_sc_dump_regs = external dso_local constant [0 x i8], align 1
@__ksymtab_sc_dump_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sc_dump_regs to i32), ptr @__kstrtab_sc_dump_regs, ptr @__kstrtabns_sc_dump_regs }, section "___ksymtab+sc_dump_regs", align 4
@scaler_hs_coeffs = internal constant { [13 x [448 x i16]], [2912 x i8] } { [13 x [448 x i16]] [[448 x i16] [i16 31, i16 8080, i16 210, i16 1790, i16 210, i16 8080, i16 31, i16 28, i16 8094, i16 159, i16 1787, i16 264, i16 8066, i16 34, i16 25, i16 8108, i16 111, i16 1779, i16 320, i16 8052, i16 37, i16 22, i16 8121, i16 65, i16 1767, i16 379, i16 8038, i16 40, i16 19, i16 8134, i16 23, i16 1750, i16 439, i16 8024, i16 43, i16 16, i16 8147, i16 8175, i16 1728, i16 502, i16 8011, i16 45, i16 14, i16 8159, i16 8139, i16 1701, i16 565, i16 7999, i16 47, i16 11, i16 8170, i16 8106, i16 1670, i16 631, i16 7987, i16 49, i16 9, i16 8181, i16 8076, i16 1635, i16 696, i16 7976, i16 51, i16 7, i16 8191, i16 8050, i16 1594, i16 763, i16 7967, i16 52, i16 5, i16 8, i16 8026, i16 1551, i16 830, i16 7959, i16 53, i16 3, i16 16, i16 8006, i16 1504, i16 898, i16 7952, i16 53, i16 2, i16 23, i16 7988, i16 1455, i16 965, i16 7947, i16 52, i16 1, i16 30, i16 7974, i16 1401, i16 1031, i16 7944, i16 51, i16 0, i16 35, i16 7962, i16 1345, i16 1097, i16 7943, i16 50, i16 8191, i16 40, i16 7954, i16 1286, i16 1162, i16 7944, i16 47, i16 44, i16 7948, i16 1224, i16 1224, i16 7948, i16 44, i16 0, i16 47, i16 7944, i16 1162, i16 1286, i16 7954, i16 40, i16 8191, i16 50, i16 7943, i16 1097, i16 1345, i16 7962, i16 35, i16 0, i16 51, i16 7944, i16 1031, i16 1401, i16 7974, i16 30, i16 1, i16 52, i16 7947, i16 965, i16 1455, i16 7988, i16 23, i16 2, i16 53, i16 7952, i16 898, i16 1504, i16 8006, i16 16, i16 3, i16 53, i16 7959, i16 830, i16 1551, i16 8026, i16 8, i16 5, i16 52, i16 7967, i16 763, i16 1594, i16 8050, i16 8191, i16 7, i16 51, i16 7976, i16 696, i16 1635, i16 8076, i16 8181, i16 9, i16 49, i16 7987, i16 631, i16 1670, i16 8106, i16 8170, i16 11, i16 47, i16 7999, i16 565, i16 1701, i16 8139, i16 8159, i16 14, i16 45, i16 8011, i16 502, i16 1728, i16 8175, i16 8147, i16 16, i16 43, i16 8024, i16 439, i16 1750, i16 23, i16 8134, i16 19, i16 40, i16 8038, i16 379, i16 1767, i16 65, i16 8121, i16 22, i16 37, i16 8052, i16 320, i16 1779, i16 111, i16 8108, i16 25, i16 34, i16 8066, i16 264, i16 1787, i16 159, i16 8094, i16 28, i16 31, i16 8080, i16 210, i16 1790, i16 210, i16 8080, i16 31, i16 28, i16 8094, i16 159, i16 1787, i16 264, i16 8066, i16 34, i16 25, i16 8108, i16 111, i16 1779, i16 320, i16 8052, i16 37, i16 22, i16 8121, i16 65, i16 1767, i16 379, i16 8038, i16 40, i16 19, i16 8134, i16 23, i16 1750, i16 439, i16 8024, i16 43, i16 16, i16 8147, i16 8175, i16 1728, i16 502, i16 8011, i16 45, i16 14, i16 8159, i16 8139, i16 1701, i16 565, i16 7999, i16 47, i16 11, i16 8170, i16 8106, i16 1670, i16 631, i16 7987, i16 49, i16 9, i16 8181, i16 8076, i16 1635, i16 696, i16 7976, i16 51, i16 7, i16 8191, i16 8050, i16 1594, i16 763, i16 7967, i16 52, i16 5, i16 8, i16 8026, i16 1551, i16 830, i16 7959, i16 53, i16 3, i16 16, i16 8006, i16 1504, i16 898, i16 7952, i16 53, i16 2, i16 23, i16 7988, i16 1455, i16 965, i16 7947, i16 52, i16 1, i16 30, i16 7974, i16 1401, i16 1031, i16 7944, i16 51, i16 0, i16 35, i16 7962, i16 1345, i16 1097, i16 7943, i16 50, i16 8191, i16 40, i16 7954, i16 1286, i16 1162, i16 7944, i16 47, i16 44, i16 7948, i16 1224, i16 1224, i16 7948, i16 44, i16 0, i16 47, i16 7944, i16 1162, i16 1286, i16 7954, i16 40, i16 8191, i16 50, i16 7943, i16 1097, i16 1345, i16 7962, i16 35, i16 0, i16 51, i16 7944, i16 1031, i16 1401, i16 7974, i16 30, i16 1, i16 52, i16 7947, i16 965, i16 1455, i16 7988, i16 23, i16 2, i16 53, i16 7952, i16 898, i16 1504, i16 8006, i16 16, i16 3, i16 53, i16 7959, i16 830, i16 1551, i16 8026, i16 8, i16 5, i16 52, i16 7967, i16 763, i16 1594, i16 8050, i16 8191, i16 7, i16 51, i16 7976, i16 696, i16 1635, i16 8076, i16 8181, i16 9, i16 49, i16 7987, i16 631, i16 1670, i16 8106, i16 8170, i16 11, i16 47, i16 7999, i16 565, i16 1701, i16 8139, i16 8159, i16 14, i16 45, i16 8011, i16 502, i16 1728, i16 8175, i16 8147, i16 16, i16 43, i16 8024, i16 439, i16 1750, i16 23, i16 8134, i16 19, i16 40, i16 8038, i16 379, i16 1767, i16 65, i16 8121, i16 22, i16 37, i16 8052, i16 320, i16 1779, i16 111, i16 8108, i16 25, i16 34, i16 8066, i16 264, i16 1787, i16 159, i16 8094, i16 28], [448 x i16] [i16 8099, i16 94, i16 586, i16 874, i16 586, i16 94, i16 8099, i16 8099, i16 82, i16 570, i16 874, i16 601, i16 106, i16 8100, i16 8099, i16 70, i16 554, i16 874, i16 617, i16 118, i16 8100, i16 8099, i16 59, i16 538, i16 872, i16 632, i16 131, i16 8101, i16 8100, i16 49, i16 522, i16 869, i16 646, i16 144, i16 8102, i16 8101, i16 38, i16 505, i16 866, i16 660, i16 158, i16 8104, i16 8102, i16 28, i16 488, i16 862, i16 675, i16 171, i16 8106, i16 8103, i16 19, i16 471, i16 858, i16 688, i16 185, i16 8108, i16 8105, i16 10, i16 454, i16 852, i16 701, i16 199, i16 8111, i16 8106, i16 1, i16 438, i16 846, i16 713, i16 214, i16 8114, i16 8108, i16 8185, i16 421, i16 839, i16 725, i16 229, i16 8117, i16 8110, i16 8177, i16 404, i16 832, i16 737, i16 243, i16 8121, i16 8112, i16 8170, i16 387, i16 824, i16 748, i16 258, i16 8125, i16 8114, i16 8163, i16 370, i16 816, i16 758, i16 274, i16 8129, i16 8116, i16 8156, i16 353, i16 807, i16 769, i16 289, i16 8134, i16 8119, i16 8150, i16 337, i16 797, i16 778, i16 304, i16 8139, i16 8146, i16 310, i16 760, i16 760, i16 310, i16 8146, i16 0, i16 8139, i16 304, i16 778, i16 797, i16 337, i16 8150, i16 8119, i16 8134, i16 289, i16 769, i16 807, i16 353, i16 8156, i16 8116, i16 8129, i16 274, i16 758, i16 816, i16 370, i16 8163, i16 8114, i16 8125, i16 258, i16 748, i16 824, i16 387, i16 8170, i16 8112, i16 8121, i16 243, i16 737, i16 832, i16 404, i16 8177, i16 8110, i16 8117, i16 229, i16 725, i16 839, i16 421, i16 8185, i16 8108, i16 8114, i16 214, i16 713, i16 846, i16 438, i16 1, i16 8106, i16 8111, i16 199, i16 701, i16 852, i16 454, i16 10, i16 8105, i16 8108, i16 185, i16 688, i16 858, i16 471, i16 19, i16 8103, i16 8106, i16 171, i16 675, i16 862, i16 488, i16 28, i16 8102, i16 8104, i16 158, i16 660, i16 866, i16 505, i16 38, i16 8101, i16 8102, i16 144, i16 646, i16 869, i16 522, i16 49, i16 8100, i16 8101, i16 131, i16 632, i16 872, i16 538, i16 59, i16 8099, i16 8100, i16 118, i16 617, i16 874, i16 554, i16 70, i16 8099, i16 8100, i16 106, i16 601, i16 874, i16 570, i16 82, i16 8099, i16 8099, i16 94, i16 586, i16 874, i16 586, i16 94, i16 8099, i16 8099, i16 82, i16 570, i16 874, i16 601, i16 106, i16 8100, i16 8099, i16 70, i16 554, i16 874, i16 617, i16 118, i16 8100, i16 8099, i16 59, i16 538, i16 872, i16 632, i16 131, i16 8101, i16 8100, i16 49, i16 522, i16 869, i16 646, i16 144, i16 8102, i16 8101, i16 38, i16 505, i16 866, i16 660, i16 158, i16 8104, i16 8102, i16 28, i16 488, i16 862, i16 675, i16 171, i16 8106, i16 8103, i16 19, i16 471, i16 858, i16 688, i16 185, i16 8108, i16 8105, i16 10, i16 454, i16 852, i16 701, i16 199, i16 8111, i16 8106, i16 1, i16 438, i16 846, i16 713, i16 214, i16 8114, i16 8108, i16 8185, i16 421, i16 839, i16 725, i16 229, i16 8117, i16 8110, i16 8177, i16 404, i16 832, i16 737, i16 243, i16 8121, i16 8112, i16 8170, i16 387, i16 824, i16 748, i16 258, i16 8125, i16 8114, i16 8163, i16 370, i16 816, i16 758, i16 274, i16 8129, i16 8116, i16 8156, i16 353, i16 807, i16 769, i16 289, i16 8134, i16 8119, i16 8150, i16 337, i16 797, i16 778, i16 304, i16 8139, i16 8146, i16 310, i16 760, i16 760, i16 310, i16 8146, i16 0, i16 8139, i16 304, i16 778, i16 797, i16 337, i16 8150, i16 8119, i16 8134, i16 289, i16 769, i16 807, i16 353, i16 8156, i16 8116, i16 8129, i16 274, i16 758, i16 816, i16 370, i16 8163, i16 8114, i16 8125, i16 258, i16 748, i16 824, i16 387, i16 8170, i16 8112, i16 8121, i16 243, i16 737, i16 832, i16 404, i16 8177, i16 8110, i16 8117, i16 229, i16 725, i16 839, i16 421, i16 8185, i16 8108, i16 8114, i16 214, i16 713, i16 846, i16 438, i16 1, i16 8106, i16 8111, i16 199, i16 701, i16 852, i16 454, i16 10, i16 8105, i16 8108, i16 185, i16 688, i16 858, i16 471, i16 19, i16 8103, i16 8106, i16 171, i16 675, i16 862, i16 488, i16 28, i16 8102, i16 8104, i16 158, i16 660, i16 866, i16 505, i16 38, i16 8101, i16 8102, i16 144, i16 646, i16 869, i16 522, i16 49, i16 8100, i16 8101, i16 131, i16 632, i16 872, i16 538, i16 59, i16 8099, i16 8100, i16 118, i16 617, i16 874, i16 554, i16 70, i16 8099, i16 8100, i16 106, i16 601, i16 874, i16 570, i16 82, i16 8099], [448 x i16] [i16 8077, i16 12, i16 618, i16 1018, i16 618, i16 12, i16 8077, i16 8079, i16 0, i16 597, i16 1018, i16 639, i16 25, i16 8074, i16 8082, i16 8181, i16 575, i16 1016, i16 659, i16 39, i16 8072, i16 8085, i16 8170, i16 554, i16 1014, i16 679, i16 52, i16 8070, i16 8089, i16 8159, i16 531, i16 1010, i16 699, i16 67, i16 8069, i16 8092, i16 8149, i16 510, i16 1005, i16 719, i16 82, i16 8067, i16 8096, i16 8140, i16 488, i16 999, i16 737, i16 97, i16 8067, i16 8100, i16 8131, i16 466, i16 992, i16 756, i16 113, i16 8066, i16 8103, i16 8123, i16 444, i16 985, i16 774, i16 129, i16 8066, i16 8107, i16 8116, i16 422, i16 976, i16 791, i16 146, i16 8066, i16 8111, i16 8109, i16 400, i16 967, i16 807, i16 163, i16 8067, i16 8115, i16 8103, i16 378, i16 956, i16 823, i16 181, i16 8068, i16 8120, i16 8097, i16 357, i16 944, i16 838, i16 199, i16 8069, i16 8124, i16 8092, i16 336, i16 932, i16 852, i16 217, i16 8071, i16 8128, i16 8088, i16 314, i16 919, i16 865, i16 236, i16 8074, i16 8132, i16 8083, i16 294, i16 905, i16 879, i16 254, i16 8077, i16 8083, i16 266, i16 867, i16 867, i16 266, i16 8083, i16 0, i16 8077, i16 254, i16 879, i16 905, i16 294, i16 8083, i16 8132, i16 8074, i16 236, i16 865, i16 919, i16 314, i16 8088, i16 8128, i16 8071, i16 217, i16 852, i16 932, i16 336, i16 8092, i16 8124, i16 8069, i16 199, i16 838, i16 944, i16 357, i16 8097, i16 8120, i16 8068, i16 181, i16 823, i16 956, i16 378, i16 8103, i16 8115, i16 8067, i16 163, i16 807, i16 967, i16 400, i16 8109, i16 8111, i16 8066, i16 146, i16 791, i16 976, i16 422, i16 8116, i16 8107, i16 8066, i16 129, i16 774, i16 985, i16 444, i16 8123, i16 8103, i16 8066, i16 113, i16 756, i16 992, i16 466, i16 8131, i16 8100, i16 8067, i16 97, i16 737, i16 999, i16 488, i16 8140, i16 8096, i16 8067, i16 82, i16 719, i16 1005, i16 510, i16 8149, i16 8092, i16 8069, i16 67, i16 699, i16 1010, i16 531, i16 8159, i16 8089, i16 8070, i16 52, i16 679, i16 1014, i16 554, i16 8170, i16 8085, i16 8072, i16 39, i16 659, i16 1016, i16 575, i16 8181, i16 8082, i16 8074, i16 25, i16 639, i16 1018, i16 597, i16 0, i16 8079, i16 8077, i16 12, i16 618, i16 1018, i16 618, i16 12, i16 8077, i16 8079, i16 0, i16 597, i16 1018, i16 639, i16 25, i16 8074, i16 8082, i16 8181, i16 575, i16 1016, i16 659, i16 39, i16 8072, i16 8085, i16 8170, i16 554, i16 1014, i16 679, i16 52, i16 8070, i16 8089, i16 8159, i16 531, i16 1010, i16 699, i16 67, i16 8069, i16 8092, i16 8149, i16 510, i16 1005, i16 719, i16 82, i16 8067, i16 8096, i16 8140, i16 488, i16 999, i16 737, i16 97, i16 8067, i16 8100, i16 8131, i16 466, i16 992, i16 756, i16 113, i16 8066, i16 8103, i16 8123, i16 444, i16 985, i16 774, i16 129, i16 8066, i16 8107, i16 8116, i16 422, i16 976, i16 791, i16 146, i16 8066, i16 8111, i16 8109, i16 400, i16 967, i16 807, i16 163, i16 8067, i16 8115, i16 8103, i16 378, i16 956, i16 823, i16 181, i16 8068, i16 8120, i16 8097, i16 357, i16 944, i16 838, i16 199, i16 8069, i16 8124, i16 8092, i16 336, i16 932, i16 852, i16 217, i16 8071, i16 8128, i16 8088, i16 314, i16 919, i16 865, i16 236, i16 8074, i16 8132, i16 8083, i16 294, i16 905, i16 879, i16 254, i16 8077, i16 8083, i16 266, i16 867, i16 867, i16 266, i16 8083, i16 0, i16 8077, i16 254, i16 879, i16 905, i16 294, i16 8083, i16 8132, i16 8074, i16 236, i16 865, i16 919, i16 314, i16 8088, i16 8128, i16 8071, i16 217, i16 852, i16 932, i16 336, i16 8092, i16 8124, i16 8069, i16 199, i16 838, i16 944, i16 357, i16 8097, i16 8120, i16 8068, i16 181, i16 823, i16 956, i16 378, i16 8103, i16 8115, i16 8067, i16 163, i16 807, i16 967, i16 400, i16 8109, i16 8111, i16 8066, i16 146, i16 791, i16 976, i16 422, i16 8116, i16 8107, i16 8066, i16 129, i16 774, i16 985, i16 444, i16 8123, i16 8103, i16 8066, i16 113, i16 756, i16 992, i16 466, i16 8131, i16 8100, i16 8067, i16 97, i16 737, i16 999, i16 488, i16 8140, i16 8096, i16 8067, i16 82, i16 719, i16 1005, i16 510, i16 8149, i16 8092, i16 8069, i16 67, i16 699, i16 1010, i16 531, i16 8159, i16 8089, i16 8070, i16 52, i16 679, i16 1014, i16 554, i16 8170, i16 8085, i16 8072, i16 39, i16 659, i16 1016, i16 575, i16 8181, i16 8082, i16 8074, i16 25, i16 639, i16 1018, i16 597, i16 0, i16 8079], [448 x i16] [i16 8085, i16 8117, i16 626, i16 1160, i16 626, i16 8117, i16 8085, i16 8091, i16 8106, i16 599, i16 1158, i16 653, i16 8129, i16 8080, i16 8096, i16 8096, i16 572, i16 1157, i16 680, i16 8141, i16 8074, i16 8102, i16 8086, i16 545, i16 1153, i16 706, i16 8155, i16 8069, i16 8108, i16 8078, i16 517, i16 1148, i16 732, i16 8169, i16 8064, i16 8113, i16 8070, i16 489, i16 1142, i16 758, i16 8184, i16 8060, i16 8119, i16 8063, i16 462, i16 1134, i16 783, i16 8, i16 8055, i16 8125, i16 8057, i16 435, i16 1125, i16 806, i16 25, i16 8051, i16 8131, i16 8051, i16 407, i16 1115, i16 830, i16 42, i16 8048, i16 8136, i16 8047, i16 381, i16 1102, i16 853, i16 60, i16 8045, i16 8142, i16 8043, i16 354, i16 1089, i16 875, i16 79, i16 8042, i16 8147, i16 8040, i16 328, i16 1075, i16 896, i16 99, i16 8039, i16 8152, i16 8037, i16 302, i16 1060, i16 917, i16 119, i16 8037, i16 8158, i16 8035, i16 277, i16 1043, i16 936, i16 139, i16 8036, i16 8163, i16 8034, i16 252, i16 1027, i16 954, i16 160, i16 8034, i16 8167, i16 8034, i16 228, i16 1007, i16 972, i16 182, i16 8034, i16 8035, i16 202, i16 979, i16 979, i16 202, i16 8035, i16 0, i16 8034, i16 182, i16 972, i16 1007, i16 228, i16 8034, i16 8167, i16 8034, i16 160, i16 954, i16 1027, i16 252, i16 8034, i16 8163, i16 8036, i16 139, i16 936, i16 1043, i16 277, i16 8035, i16 8158, i16 8037, i16 119, i16 917, i16 1060, i16 302, i16 8037, i16 8152, i16 8039, i16 99, i16 896, i16 1075, i16 328, i16 8040, i16 8147, i16 8042, i16 79, i16 875, i16 1089, i16 354, i16 8043, i16 8142, i16 8045, i16 60, i16 853, i16 1102, i16 381, i16 8047, i16 8136, i16 8048, i16 42, i16 830, i16 1115, i16 407, i16 8051, i16 8131, i16 8051, i16 25, i16 806, i16 1125, i16 435, i16 8057, i16 8125, i16 8055, i16 8, i16 783, i16 1134, i16 462, i16 8063, i16 8119, i16 8060, i16 8184, i16 758, i16 1142, i16 489, i16 8070, i16 8113, i16 8064, i16 8169, i16 732, i16 1148, i16 517, i16 8078, i16 8108, i16 8069, i16 8155, i16 706, i16 1153, i16 545, i16 8086, i16 8102, i16 8074, i16 8141, i16 680, i16 1157, i16 572, i16 8096, i16 8096, i16 8080, i16 8129, i16 653, i16 1158, i16 599, i16 8106, i16 8091, i16 8085, i16 8117, i16 626, i16 1160, i16 626, i16 8117, i16 8085, i16 8091, i16 8106, i16 599, i16 1158, i16 653, i16 8129, i16 8080, i16 8096, i16 8096, i16 572, i16 1157, i16 680, i16 8141, i16 8074, i16 8102, i16 8086, i16 545, i16 1153, i16 706, i16 8155, i16 8069, i16 8108, i16 8078, i16 517, i16 1148, i16 732, i16 8169, i16 8064, i16 8113, i16 8070, i16 489, i16 1142, i16 758, i16 8184, i16 8060, i16 8119, i16 8063, i16 462, i16 1134, i16 783, i16 8, i16 8055, i16 8125, i16 8057, i16 435, i16 1125, i16 806, i16 25, i16 8051, i16 8131, i16 8051, i16 407, i16 1115, i16 830, i16 42, i16 8048, i16 8136, i16 8047, i16 381, i16 1102, i16 853, i16 60, i16 8045, i16 8142, i16 8043, i16 354, i16 1089, i16 875, i16 79, i16 8042, i16 8147, i16 8040, i16 328, i16 1075, i16 896, i16 99, i16 8039, i16 8152, i16 8037, i16 302, i16 1060, i16 917, i16 119, i16 8037, i16 8158, i16 8035, i16 277, i16 1043, i16 936, i16 139, i16 8036, i16 8163, i16 8034, i16 252, i16 1027, i16 954, i16 160, i16 8034, i16 8167, i16 8034, i16 228, i16 1007, i16 972, i16 182, i16 8034, i16 8035, i16 202, i16 979, i16 979, i16 202, i16 8035, i16 0, i16 8034, i16 182, i16 972, i16 1007, i16 228, i16 8034, i16 8167, i16 8034, i16 160, i16 954, i16 1027, i16 252, i16 8034, i16 8163, i16 8036, i16 139, i16 936, i16 1043, i16 277, i16 8035, i16 8158, i16 8037, i16 119, i16 917, i16 1060, i16 302, i16 8037, i16 8152, i16 8039, i16 99, i16 896, i16 1075, i16 328, i16 8040, i16 8147, i16 8042, i16 79, i16 875, i16 1089, i16 354, i16 8043, i16 8142, i16 8045, i16 60, i16 853, i16 1102, i16 381, i16 8047, i16 8136, i16 8048, i16 42, i16 830, i16 1115, i16 407, i16 8051, i16 8131, i16 8051, i16 25, i16 806, i16 1125, i16 435, i16 8057, i16 8125, i16 8055, i16 8, i16 783, i16 1134, i16 462, i16 8063, i16 8119, i16 8060, i16 8184, i16 758, i16 1142, i16 489, i16 8070, i16 8113, i16 8064, i16 8169, i16 732, i16 1148, i16 517, i16 8078, i16 8108, i16 8069, i16 8155, i16 706, i16 1153, i16 545, i16 8086, i16 8102, i16 8074, i16 8141, i16 680, i16 1157, i16 572, i16 8096, i16 8096, i16 8080, i16 8129, i16 653, i16 1158, i16 599, i16 8106, i16 8091], [448 x i16] [i16 8123, i16 8037, i16 606, i16 1284, i16 606, i16 8037, i16 8123, i16 8131, i16 8029, i16 572, i16 1283, i16 639, i16 8046, i16 8116, i16 8138, i16 8022, i16 539, i16 1281, i16 672, i16 8056, i16 8108, i16 8145, i16 8016, i16 506, i16 1277, i16 704, i16 8067, i16 8101, i16 8152, i16 8011, i16 473, i16 1270, i16 737, i16 8080, i16 8093, i16 8159, i16 8007, i16 440, i16 1263, i16 769, i16 8093, i16 8085, i16 8166, i16 8003, i16 408, i16 1253, i16 801, i16 8107, i16 8078, i16 8172, i16 8001, i16 376, i16 1242, i16 832, i16 8123, i16 8070, i16 8178, i16 8000, i16 345, i16 1228, i16 862, i16 8140, i16 8063, i16 8184, i16 8000, i16 314, i16 1214, i16 891, i16 8157, i16 8056, i16 8190, i16 8000, i16 283, i16 1197, i16 920, i16 8176, i16 8050, i16 3, i16 8001, i16 253, i16 1180, i16 948, i16 4, i16 8043, i16 8, i16 8003, i16 224, i16 1161, i16 974, i16 25, i16 8037, i16 13, i16 8006, i16 196, i16 1140, i16 1000, i16 46, i16 8031, i16 17, i16 8009, i16 169, i16 1118, i16 1024, i16 69, i16 8026, i16 21, i16 8013, i16 142, i16 1095, i16 1048, i16 92, i16 8021, i16 8015, i16 118, i16 1083, i16 1083, i16 118, i16 8015, i16 0, i16 8021, i16 92, i16 1048, i16 1095, i16 142, i16 8013, i16 21, i16 8026, i16 69, i16 1024, i16 1118, i16 169, i16 8009, i16 17, i16 8031, i16 46, i16 1000, i16 1140, i16 196, i16 8006, i16 13, i16 8037, i16 25, i16 974, i16 1161, i16 224, i16 8003, i16 8, i16 8043, i16 4, i16 948, i16 1180, i16 253, i16 8001, i16 3, i16 8050, i16 8176, i16 920, i16 1197, i16 283, i16 8000, i16 8190, i16 8056, i16 8157, i16 891, i16 1214, i16 314, i16 8000, i16 8184, i16 8063, i16 8140, i16 862, i16 1228, i16 345, i16 8000, i16 8178, i16 8070, i16 8123, i16 832, i16 1242, i16 376, i16 8001, i16 8172, i16 8078, i16 8107, i16 801, i16 1253, i16 408, i16 8003, i16 8166, i16 8085, i16 8093, i16 769, i16 1263, i16 440, i16 8007, i16 8159, i16 8093, i16 8080, i16 737, i16 1270, i16 473, i16 8011, i16 8152, i16 8101, i16 8067, i16 704, i16 1277, i16 506, i16 8016, i16 8145, i16 8108, i16 8056, i16 672, i16 1281, i16 539, i16 8022, i16 8138, i16 8116, i16 8046, i16 639, i16 1283, i16 572, i16 8029, i16 8131, i16 8123, i16 8037, i16 606, i16 1284, i16 606, i16 8037, i16 8123, i16 8131, i16 8029, i16 572, i16 1283, i16 639, i16 8046, i16 8116, i16 8138, i16 8022, i16 539, i16 1281, i16 672, i16 8056, i16 8108, i16 8145, i16 8016, i16 506, i16 1277, i16 704, i16 8067, i16 8101, i16 8152, i16 8011, i16 473, i16 1270, i16 737, i16 8080, i16 8093, i16 8159, i16 8007, i16 440, i16 1263, i16 769, i16 8093, i16 8085, i16 8166, i16 8003, i16 408, i16 1253, i16 801, i16 8107, i16 8078, i16 8172, i16 8001, i16 376, i16 1242, i16 832, i16 8123, i16 8070, i16 8178, i16 8000, i16 345, i16 1228, i16 862, i16 8140, i16 8063, i16 8184, i16 8000, i16 314, i16 1214, i16 891, i16 8157, i16 8056, i16 8190, i16 8000, i16 283, i16 1197, i16 920, i16 8176, i16 8050, i16 3, i16 8001, i16 253, i16 1180, i16 948, i16 4, i16 8043, i16 8, i16 8003, i16 224, i16 1161, i16 974, i16 25, i16 8037, i16 13, i16 8006, i16 196, i16 1140, i16 1000, i16 46, i16 8031, i16 17, i16 8009, i16 169, i16 1118, i16 1024, i16 69, i16 8026, i16 21, i16 8013, i16 142, i16 1095, i16 1048, i16 92, i16 8021, i16 8015, i16 118, i16 1083, i16 1083, i16 118, i16 8015, i16 0, i16 8021, i16 92, i16 1048, i16 1095, i16 142, i16 8013, i16 21, i16 8026, i16 69, i16 1024, i16 1118, i16 169, i16 8009, i16 17, i16 8031, i16 46, i16 1000, i16 1140, i16 196, i16 8006, i16 13, i16 8037, i16 25, i16 974, i16 1161, i16 224, i16 8003, i16 8, i16 8043, i16 4, i16 948, i16 1180, i16 253, i16 8001, i16 3, i16 8050, i16 8176, i16 920, i16 1197, i16 283, i16 8000, i16 8190, i16 8056, i16 8157, i16 891, i16 1214, i16 314, i16 8000, i16 8184, i16 8063, i16 8140, i16 862, i16 1228, i16 345, i16 8000, i16 8178, i16 8070, i16 8123, i16 832, i16 1242, i16 376, i16 8001, i16 8172, i16 8078, i16 8107, i16 801, i16 1253, i16 408, i16 8003, i16 8166, i16 8085, i16 8093, i16 769, i16 1263, i16 440, i16 8007, i16 8159, i16 8093, i16 8080, i16 737, i16 1270, i16 473, i16 8011, i16 8152, i16 8101, i16 8067, i16 704, i16 1277, i16 506, i16 8016, i16 8145, i16 8108, i16 8056, i16 672, i16 1281, i16 539, i16 8022, i16 8138, i16 8116, i16 8046, i16 639, i16 1283, i16 572, i16 8029, i16 8131], [448 x i16] [i16 8180, i16 7977, i16 557, i16 1388, i16 557, i16 7977, i16 8180, i16 8188, i16 7974, i16 518, i16 1386, i16 596, i16 7982, i16 8172, i16 3, i16 7972, i16 480, i16 1383, i16 634, i16 7988, i16 8164, i16 10, i16 7971, i16 442, i16 1377, i16 674, i16 7995, i16 8155, i16 17, i16 7970, i16 404, i16 1371, i16 713, i16 8003, i16 8146, i16 23, i16 7971, i16 367, i16 1361, i16 752, i16 8013, i16 8137, i16 29, i16 7973, i16 331, i16 1349, i16 790, i16 8024, i16 8128, i16 34, i16 7976, i16 295, i16 1336, i16 828, i16 8037, i16 8118, i16 39, i16 7980, i16 260, i16 1320, i16 865, i16 8051, i16 8109, i16 43, i16 7984, i16 226, i16 1304, i16 902, i16 8066, i16 8099, i16 47, i16 7990, i16 194, i16 1284, i16 938, i16 8082, i16 8089, i16 50, i16 7996, i16 162, i16 1263, i16 973, i16 8100, i16 8080, i16 53, i16 8002, i16 131, i16 1241, i16 1007, i16 8120, i16 8070, i16 56, i16 8009, i16 101, i16 1216, i16 1040, i16 8141, i16 8061, i16 58, i16 8017, i16 72, i16 1190, i16 1073, i16 8163, i16 8051, i16 60, i16 8025, i16 45, i16 1162, i16 1104, i16 8186, i16 8042, i16 8029, i16 20, i16 1167, i16 1167, i16 20, i16 8029, i16 0, i16 8042, i16 8186, i16 1104, i16 1162, i16 45, i16 8025, i16 60, i16 8051, i16 8163, i16 1073, i16 1190, i16 72, i16 8017, i16 58, i16 8061, i16 8141, i16 1040, i16 1216, i16 101, i16 8009, i16 56, i16 8070, i16 8120, i16 1007, i16 1241, i16 131, i16 8002, i16 53, i16 8080, i16 8100, i16 973, i16 1263, i16 162, i16 7996, i16 50, i16 8089, i16 8082, i16 938, i16 1284, i16 194, i16 7990, i16 47, i16 8099, i16 8066, i16 902, i16 1304, i16 226, i16 7984, i16 43, i16 8109, i16 8051, i16 865, i16 1320, i16 260, i16 7980, i16 39, i16 8118, i16 8037, i16 828, i16 1336, i16 295, i16 7976, i16 34, i16 8128, i16 8024, i16 790, i16 1349, i16 331, i16 7973, i16 29, i16 8137, i16 8013, i16 752, i16 1361, i16 367, i16 7971, i16 23, i16 8146, i16 8003, i16 713, i16 1371, i16 404, i16 7970, i16 17, i16 8155, i16 7995, i16 674, i16 1377, i16 442, i16 7971, i16 10, i16 8164, i16 7988, i16 634, i16 1383, i16 480, i16 7972, i16 3, i16 8172, i16 7982, i16 596, i16 1386, i16 518, i16 7974, i16 8188, i16 8180, i16 7977, i16 557, i16 1388, i16 557, i16 7977, i16 8180, i16 8188, i16 7974, i16 518, i16 1386, i16 596, i16 7982, i16 8172, i16 3, i16 7972, i16 480, i16 1383, i16 634, i16 7988, i16 8164, i16 10, i16 7971, i16 442, i16 1377, i16 674, i16 7995, i16 8155, i16 17, i16 7970, i16 404, i16 1371, i16 713, i16 8003, i16 8146, i16 23, i16 7971, i16 367, i16 1361, i16 752, i16 8013, i16 8137, i16 29, i16 7973, i16 331, i16 1349, i16 790, i16 8024, i16 8128, i16 34, i16 7976, i16 295, i16 1336, i16 828, i16 8037, i16 8118, i16 39, i16 7980, i16 260, i16 1320, i16 865, i16 8051, i16 8109, i16 43, i16 7984, i16 226, i16 1304, i16 902, i16 8066, i16 8099, i16 47, i16 7990, i16 194, i16 1284, i16 938, i16 8082, i16 8089, i16 50, i16 7996, i16 162, i16 1263, i16 973, i16 8100, i16 8080, i16 53, i16 8002, i16 131, i16 1241, i16 1007, i16 8120, i16 8070, i16 56, i16 8009, i16 101, i16 1216, i16 1040, i16 8141, i16 8061, i16 58, i16 8017, i16 72, i16 1190, i16 1073, i16 8163, i16 8051, i16 60, i16 8025, i16 45, i16 1162, i16 1104, i16 8186, i16 8042, i16 8029, i16 20, i16 1167, i16 1167, i16 20, i16 8029, i16 0, i16 8042, i16 8186, i16 1104, i16 1162, i16 45, i16 8025, i16 60, i16 8051, i16 8163, i16 1073, i16 1190, i16 72, i16 8017, i16 58, i16 8061, i16 8141, i16 1040, i16 1216, i16 101, i16 8009, i16 56, i16 8070, i16 8120, i16 1007, i16 1241, i16 131, i16 8002, i16 53, i16 8080, i16 8100, i16 973, i16 1263, i16 162, i16 7996, i16 50, i16 8089, i16 8082, i16 938, i16 1284, i16 194, i16 7990, i16 47, i16 8099, i16 8066, i16 902, i16 1304, i16 226, i16 7984, i16 43, i16 8109, i16 8051, i16 865, i16 1320, i16 260, i16 7980, i16 39, i16 8118, i16 8037, i16 828, i16 1336, i16 295, i16 7976, i16 34, i16 8128, i16 8024, i16 790, i16 1349, i16 331, i16 7973, i16 29, i16 8137, i16 8013, i16 752, i16 1361, i16 367, i16 7971, i16 23, i16 8146, i16 8003, i16 713, i16 1371, i16 404, i16 7970, i16 17, i16 8155, i16 7995, i16 674, i16 1377, i16 442, i16 7971, i16 10, i16 8164, i16 7988, i16 634, i16 1383, i16 480, i16 7972, i16 3, i16 8172, i16 7982, i16 596, i16 1386, i16 518, i16 7974, i16 8188], [448 x i16] [i16 47, i16 7947, i16 487, i16 1470, i16 487, i16 7947, i16 47, i16 53, i16 7949, i16 444, i16 1469, i16 531, i16 7946, i16 40, i16 58, i16 7953, i16 401, i16 1466, i16 575, i16 7946, i16 33, i16 63, i16 7957, i16 359, i16 1459, i16 620, i16 7948, i16 26, i16 67, i16 7963, i16 318, i16 1450, i16 665, i16 7951, i16 18, i16 70, i16 7969, i16 278, i16 1441, i16 710, i16 7955, i16 9, i16 73, i16 7976, i16 239, i16 1427, i16 756, i16 7961, i16 0, i16 76, i16 7984, i16 201, i16 1412, i16 801, i16 7968, i16 8182, i16 78, i16 7993, i16 164, i16 1394, i16 845, i16 7978, i16 8172, i16 79, i16 8003, i16 128, i16 1374, i16 890, i16 7988, i16 8162, i16 80, i16 8013, i16 94, i16 1352, i16 933, i16 8001, i16 8151, i16 80, i16 8023, i16 61, i16 1329, i16 977, i16 8015, i16 8139, i16 80, i16 8034, i16 30, i16 1302, i16 1019, i16 8031, i16 8128, i16 79, i16 8045, i16 0, i16 1274, i16 1061, i16 8049, i16 8116, i16 78, i16 8057, i16 8164, i16 1244, i16 1101, i16 8068, i16 8104, i16 77, i16 8068, i16 8138, i16 1212, i16 1140, i16 8089, i16 8092, i16 8076, i16 8110, i16 1222, i16 1222, i16 8110, i16 8076, i16 0, i16 8092, i16 8089, i16 1140, i16 1212, i16 8138, i16 8068, i16 77, i16 8104, i16 8068, i16 1101, i16 1244, i16 8164, i16 8057, i16 78, i16 8116, i16 8049, i16 1061, i16 1274, i16 0, i16 8045, i16 79, i16 8128, i16 8031, i16 1019, i16 1302, i16 30, i16 8034, i16 80, i16 8139, i16 8015, i16 977, i16 1329, i16 61, i16 8023, i16 80, i16 8151, i16 8001, i16 933, i16 1352, i16 94, i16 8013, i16 80, i16 8162, i16 7988, i16 890, i16 1374, i16 128, i16 8003, i16 79, i16 8172, i16 7978, i16 845, i16 1394, i16 164, i16 7993, i16 78, i16 8182, i16 7968, i16 801, i16 1412, i16 201, i16 7984, i16 76, i16 0, i16 7961, i16 756, i16 1427, i16 239, i16 7976, i16 73, i16 9, i16 7955, i16 710, i16 1441, i16 278, i16 7969, i16 70, i16 18, i16 7951, i16 665, i16 1450, i16 318, i16 7963, i16 67, i16 26, i16 7948, i16 620, i16 1459, i16 359, i16 7957, i16 63, i16 33, i16 7946, i16 575, i16 1466, i16 401, i16 7953, i16 58, i16 40, i16 7946, i16 531, i16 1469, i16 444, i16 7949, i16 53, i16 47, i16 7947, i16 487, i16 1470, i16 487, i16 7947, i16 47, i16 53, i16 7949, i16 444, i16 1469, i16 531, i16 7946, i16 40, i16 58, i16 7953, i16 401, i16 1466, i16 575, i16 7946, i16 33, i16 63, i16 7957, i16 359, i16 1459, i16 620, i16 7948, i16 26, i16 67, i16 7963, i16 318, i16 1450, i16 665, i16 7951, i16 18, i16 70, i16 7969, i16 278, i16 1441, i16 710, i16 7955, i16 9, i16 73, i16 7976, i16 239, i16 1427, i16 756, i16 7961, i16 0, i16 76, i16 7984, i16 201, i16 1412, i16 801, i16 7968, i16 8182, i16 78, i16 7993, i16 164, i16 1394, i16 845, i16 7978, i16 8172, i16 79, i16 8003, i16 128, i16 1374, i16 890, i16 7988, i16 8162, i16 80, i16 8013, i16 94, i16 1352, i16 933, i16 8001, i16 8151, i16 80, i16 8023, i16 61, i16 1329, i16 977, i16 8015, i16 8139, i16 80, i16 8034, i16 30, i16 1302, i16 1019, i16 8031, i16 8128, i16 79, i16 8045, i16 0, i16 1274, i16 1061, i16 8049, i16 8116, i16 78, i16 8057, i16 8164, i16 1244, i16 1101, i16 8068, i16 8104, i16 77, i16 8068, i16 8138, i16 1212, i16 1140, i16 8089, i16 8092, i16 8076, i16 8110, i16 1222, i16 1222, i16 8110, i16 8076, i16 0, i16 8092, i16 8089, i16 1140, i16 1212, i16 8138, i16 8068, i16 77, i16 8104, i16 8068, i16 1101, i16 1244, i16 8164, i16 8057, i16 78, i16 8116, i16 8049, i16 1061, i16 1274, i16 0, i16 8045, i16 79, i16 8128, i16 8031, i16 1019, i16 1302, i16 30, i16 8034, i16 80, i16 8139, i16 8015, i16 977, i16 1329, i16 61, i16 8023, i16 80, i16 8151, i16 8001, i16 933, i16 1352, i16 94, i16 8013, i16 80, i16 8162, i16 7988, i16 890, i16 1374, i16 128, i16 8003, i16 79, i16 8172, i16 7978, i16 845, i16 1394, i16 164, i16 7993, i16 78, i16 8182, i16 7968, i16 801, i16 1412, i16 201, i16 7984, i16 76, i16 0, i16 7961, i16 756, i16 1427, i16 239, i16 7976, i16 73, i16 9, i16 7955, i16 710, i16 1441, i16 278, i16 7969, i16 70, i16 18, i16 7951, i16 665, i16 1450, i16 318, i16 7963, i16 67, i16 26, i16 7948, i16 620, i16 1459, i16 359, i16 7957, i16 63, i16 33, i16 7946, i16 575, i16 1466, i16 401, i16 7953, i16 58, i16 40, i16 7946, i16 531, i16 1469, i16 444, i16 7949, i16 53], [448 x i16] [i16 91, i16 7946, i16 405, i16 1548, i16 405, i16 7946, i16 91, i16 93, i16 7955, i16 358, i16 1545, i16 454, i16 7939, i16 88, i16 95, i16 7964, i16 312, i16 1541, i16 503, i16 7933, i16 84, i16 96, i16 7974, i16 267, i16 1535, i16 553, i16 7928, i16 79, i16 96, i16 7985, i16 223, i16 1525, i16 604, i16 7925, i16 74, i16 96, i16 7997, i16 181, i16 1512, i16 655, i16 7923, i16 68, i16 95, i16 8009, i16 140, i16 1498, i16 707, i16 7922, i16 61, i16 94, i16 8022, i16 101, i16 1479, i16 758, i16 7924, i16 54, i16 92, i16 8035, i16 63, i16 1459, i16 811, i16 7927, i16 45, i16 89, i16 8049, i16 27, i16 1437, i16 863, i16 7931, i16 36, i16 87, i16 8063, i16 8185, i16 1411, i16 914, i16 7938, i16 26, i16 83, i16 8077, i16 8153, i16 1383, i16 965, i16 7947, i16 16, i16 80, i16 8091, i16 8123, i16 1352, i16 1016, i16 7957, i16 5, i16 76, i16 8105, i16 8094, i16 1320, i16 1066, i16 7970, i16 8185, i16 72, i16 8119, i16 8068, i16 1285, i16 1114, i16 7985, i16 8173, i16 67, i16 8133, i16 8044, i16 1248, i16 1162, i16 8002, i16 8160, i16 8145, i16 8016, i16 1247, i16 1247, i16 8016, i16 8145, i16 0, i16 8160, i16 8002, i16 1162, i16 1248, i16 8044, i16 8133, i16 67, i16 8173, i16 7985, i16 1114, i16 1285, i16 8068, i16 8119, i16 72, i16 8185, i16 7970, i16 1066, i16 1320, i16 8094, i16 8105, i16 76, i16 5, i16 7957, i16 1016, i16 1352, i16 8123, i16 8091, i16 80, i16 16, i16 7947, i16 965, i16 1383, i16 8153, i16 8077, i16 83, i16 26, i16 7938, i16 914, i16 1411, i16 8185, i16 8063, i16 87, i16 36, i16 7931, i16 863, i16 1437, i16 27, i16 8049, i16 89, i16 45, i16 7927, i16 811, i16 1459, i16 63, i16 8035, i16 92, i16 54, i16 7924, i16 758, i16 1479, i16 101, i16 8022, i16 94, i16 61, i16 7922, i16 707, i16 1498, i16 140, i16 8009, i16 95, i16 68, i16 7923, i16 655, i16 1512, i16 181, i16 7997, i16 96, i16 74, i16 7925, i16 604, i16 1525, i16 223, i16 7985, i16 96, i16 79, i16 7928, i16 553, i16 1535, i16 267, i16 7974, i16 96, i16 84, i16 7933, i16 503, i16 1541, i16 312, i16 7964, i16 95, i16 88, i16 7939, i16 454, i16 1545, i16 358, i16 7955, i16 93, i16 91, i16 7946, i16 405, i16 1548, i16 405, i16 7946, i16 91, i16 93, i16 7955, i16 358, i16 1545, i16 454, i16 7939, i16 88, i16 95, i16 7964, i16 312, i16 1541, i16 503, i16 7933, i16 84, i16 96, i16 7974, i16 267, i16 1535, i16 553, i16 7928, i16 79, i16 96, i16 7985, i16 223, i16 1525, i16 604, i16 7925, i16 74, i16 96, i16 7997, i16 181, i16 1512, i16 655, i16 7923, i16 68, i16 95, i16 8009, i16 140, i16 1498, i16 707, i16 7922, i16 61, i16 94, i16 8022, i16 101, i16 1479, i16 758, i16 7924, i16 54, i16 92, i16 8035, i16 63, i16 1459, i16 811, i16 7927, i16 45, i16 89, i16 8049, i16 27, i16 1437, i16 863, i16 7931, i16 36, i16 87, i16 8063, i16 8185, i16 1411, i16 914, i16 7938, i16 26, i16 83, i16 8077, i16 8153, i16 1383, i16 965, i16 7947, i16 16, i16 80, i16 8091, i16 8123, i16 1352, i16 1016, i16 7957, i16 5, i16 76, i16 8105, i16 8094, i16 1320, i16 1066, i16 7970, i16 8185, i16 72, i16 8119, i16 8068, i16 1285, i16 1114, i16 7985, i16 8173, i16 67, i16 8133, i16 8044, i16 1248, i16 1162, i16 8002, i16 8160, i16 8145, i16 8016, i16 1247, i16 1247, i16 8016, i16 8145, i16 0, i16 8160, i16 8002, i16 1162, i16 1248, i16 8044, i16 8133, i16 67, i16 8173, i16 7985, i16 1114, i16 1285, i16 8068, i16 8119, i16 72, i16 8185, i16 7970, i16 1066, i16 1320, i16 8094, i16 8105, i16 76, i16 5, i16 7957, i16 1016, i16 1352, i16 8123, i16 8091, i16 80, i16 16, i16 7947, i16 965, i16 1383, i16 8153, i16 8077, i16 83, i16 26, i16 7938, i16 914, i16 1411, i16 8185, i16 8063, i16 87, i16 36, i16 7931, i16 863, i16 1437, i16 27, i16 8049, i16 89, i16 45, i16 7927, i16 811, i16 1459, i16 63, i16 8035, i16 92, i16 54, i16 7924, i16 758, i16 1479, i16 101, i16 8022, i16 94, i16 61, i16 7922, i16 707, i16 1498, i16 140, i16 8009, i16 95, i16 68, i16 7923, i16 655, i16 1512, i16 181, i16 7997, i16 96, i16 74, i16 7925, i16 604, i16 1525, i16 223, i16 7985, i16 96, i16 79, i16 7928, i16 553, i16 1535, i16 267, i16 7974, i16 96, i16 84, i16 7933, i16 503, i16 1541, i16 312, i16 7964, i16 95, i16 88, i16 7939, i16 454, i16 1545, i16 358, i16 7955, i16 93], [448 x i16] [i16 110, i16 7972, i16 318, i16 1632, i16 318, i16 7972, i16 110, i16 108, i16 7987, i16 267, i16 1629, i16 370, i16 7959, i16 112, i16 105, i16 8001, i16 218, i16 1625, i16 424, i16 7947, i16 112, i16 102, i16 8017, i16 170, i16 1616, i16 479, i16 7936, i16 112, i16 98, i16 8033, i16 125, i16 1604, i16 535, i16 7926, i16 111, i16 94, i16 8049, i16 81, i16 1590, i16 592, i16 7917, i16 109, i16 89, i16 8065, i16 40, i16 1572, i16 650, i16 7909, i16 107, i16 84, i16 8081, i16 0, i16 1551, i16 709, i16 7904, i16 103, i16 78, i16 8098, i16 8155, i16 1526, i16 768, i16 7900, i16 99, i16 73, i16 8114, i16 8120, i16 1499, i16 827, i16 7898, i16 93, i16 67, i16 8131, i16 8088, i16 1468, i16 886, i16 7897, i16 87, i16 61, i16 8147, i16 8058, i16 1435, i16 945, i16 7899, i16 79, i16 54, i16 8162, i16 8030, i16 1400, i16 1004, i16 7903, i16 71, i16 48, i16 8177, i16 8005, i16 1361, i16 1062, i16 7910, i16 61, i16 42, i16 0, i16 7982, i16 1320, i16 1119, i16 7918, i16 51, i16 35, i16 14, i16 7961, i16 1277, i16 1176, i16 7930, i16 39, i16 27, i16 7940, i16 1249, i16 1249, i16 7940, i16 27, i16 0, i16 39, i16 7930, i16 1176, i16 1277, i16 7961, i16 14, i16 35, i16 51, i16 7918, i16 1119, i16 1320, i16 7982, i16 0, i16 42, i16 61, i16 7910, i16 1062, i16 1361, i16 8005, i16 8177, i16 48, i16 71, i16 7903, i16 1004, i16 1400, i16 8030, i16 8162, i16 54, i16 79, i16 7899, i16 945, i16 1435, i16 8058, i16 8147, i16 61, i16 87, i16 7897, i16 886, i16 1468, i16 8088, i16 8131, i16 67, i16 93, i16 7898, i16 827, i16 1499, i16 8120, i16 8114, i16 73, i16 99, i16 7900, i16 768, i16 1526, i16 8155, i16 8098, i16 78, i16 103, i16 7904, i16 709, i16 1551, i16 0, i16 8081, i16 84, i16 107, i16 7909, i16 650, i16 1572, i16 40, i16 8065, i16 89, i16 109, i16 7917, i16 592, i16 1590, i16 81, i16 8049, i16 94, i16 111, i16 7926, i16 535, i16 1604, i16 125, i16 8033, i16 98, i16 112, i16 7936, i16 479, i16 1616, i16 170, i16 8017, i16 102, i16 112, i16 7947, i16 424, i16 1625, i16 218, i16 8001, i16 105, i16 112, i16 7959, i16 370, i16 1629, i16 267, i16 7987, i16 108, i16 110, i16 7972, i16 318, i16 1632, i16 318, i16 7972, i16 110, i16 108, i16 7987, i16 267, i16 1629, i16 370, i16 7959, i16 112, i16 105, i16 8001, i16 218, i16 1625, i16 424, i16 7947, i16 112, i16 102, i16 8017, i16 170, i16 1616, i16 479, i16 7936, i16 112, i16 98, i16 8033, i16 125, i16 1604, i16 535, i16 7926, i16 111, i16 94, i16 8049, i16 81, i16 1590, i16 592, i16 7917, i16 109, i16 89, i16 8065, i16 40, i16 1572, i16 650, i16 7909, i16 107, i16 84, i16 8081, i16 0, i16 1551, i16 709, i16 7904, i16 103, i16 78, i16 8098, i16 8155, i16 1526, i16 768, i16 7900, i16 99, i16 73, i16 8114, i16 8120, i16 1499, i16 827, i16 7898, i16 93, i16 67, i16 8131, i16 8088, i16 1468, i16 886, i16 7897, i16 87, i16 61, i16 8147, i16 8058, i16 1435, i16 945, i16 7899, i16 79, i16 54, i16 8162, i16 8030, i16 1400, i16 1004, i16 7903, i16 71, i16 48, i16 8177, i16 8005, i16 1361, i16 1062, i16 7910, i16 61, i16 42, i16 0, i16 7982, i16 1320, i16 1119, i16 7918, i16 51, i16 35, i16 14, i16 7961, i16 1277, i16 1176, i16 7930, i16 39, i16 27, i16 7940, i16 1249, i16 1249, i16 7940, i16 27, i16 0, i16 39, i16 7930, i16 1176, i16 1277, i16 7961, i16 14, i16 35, i16 51, i16 7918, i16 1119, i16 1320, i16 7982, i16 0, i16 42, i16 61, i16 7910, i16 1062, i16 1361, i16 8005, i16 8177, i16 48, i16 71, i16 7903, i16 1004, i16 1400, i16 8030, i16 8162, i16 54, i16 79, i16 7899, i16 945, i16 1435, i16 8058, i16 8147, i16 61, i16 87, i16 7897, i16 886, i16 1468, i16 8088, i16 8131, i16 67, i16 93, i16 7898, i16 827, i16 1499, i16 8120, i16 8114, i16 73, i16 99, i16 7900, i16 768, i16 1526, i16 8155, i16 8098, i16 78, i16 103, i16 7904, i16 709, i16 1551, i16 0, i16 8081, i16 84, i16 107, i16 7909, i16 650, i16 1572, i16 40, i16 8065, i16 89, i16 109, i16 7917, i16 592, i16 1590, i16 81, i16 8049, i16 94, i16 111, i16 7926, i16 535, i16 1604, i16 125, i16 8033, i16 98, i16 112, i16 7936, i16 479, i16 1616, i16 170, i16 8017, i16 102, i16 112, i16 7947, i16 424, i16 1625, i16 218, i16 8001, i16 105, i16 112, i16 7959, i16 370, i16 1629, i16 267, i16 7987, i16 108], [448 x i16] zeroinitializer, [448 x i16] zeroinitializer, [448 x i16] zeroinitializer, [448 x i16] zeroinitializer], [2912 x i8] zeroinitializer }, align 32
@__kstrtab_sc_set_hs_coeffs = external dso_local constant [0 x i8], align 1
@__kstrtabns_sc_set_hs_coeffs = external dso_local constant [0 x i8], align 1
@__ksymtab_sc_set_hs_coeffs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sc_set_hs_coeffs to i32), ptr @__kstrtab_sc_set_hs_coeffs, ptr @__kstrtabns_sc_set_hs_coeffs }, section "___ksymtab+sc_set_hs_coeffs", align 4
@scaler_vs_coeffs = internal constant { [15 x [320 x i16]], [2400 x i8] } { [15 x [320 x i16]] [[320 x i16] [i16 8145, i16 177, i16 1788, i16 177, i16 8145, i16 8152, i16 133, i16 1785, i16 225, i16 8137, i16 8159, i16 91, i16 1778, i16 276, i16 8128, i16 8165, i16 53, i16 1765, i16 330, i16 8119, i16 8171, i16 18, i16 1747, i16 386, i16 8110, i16 8177, i16 8179, i16 1722, i16 445, i16 8101, i16 8181, i16 8151, i16 1693, i16 507, i16 8092, i16 8185, i16 8126, i16 1660, i16 570, i16 8083, i16 8189, i16 8104, i16 1622, i16 635, i16 8074, i16 0, i16 8085, i16 1579, i16 703, i16 8065, i16 2, i16 8070, i16 1532, i16 771, i16 8057, i16 4, i16 8057, i16 1482, i16 839, i16 8050, i16 5, i16 8047, i16 1428, i16 909, i16 8043, i16 6, i16 8039, i16 1371, i16 978, i16 8038, i16 7, i16 8034, i16 1310, i16 1047, i16 8034, i16 7, i16 8031, i16 1247, i16 1116, i16 8031, i16 8030, i16 1186, i16 1186, i16 8030, i16 0, i16 8031, i16 1116, i16 1247, i16 8031, i16 7, i16 8034, i16 1047, i16 1310, i16 8034, i16 7, i16 8038, i16 978, i16 1371, i16 8039, i16 6, i16 8043, i16 909, i16 1428, i16 8047, i16 5, i16 8050, i16 839, i16 1482, i16 8057, i16 4, i16 8057, i16 771, i16 1532, i16 8070, i16 2, i16 8065, i16 703, i16 1579, i16 8085, i16 0, i16 8074, i16 635, i16 1622, i16 8104, i16 8189, i16 8083, i16 570, i16 1660, i16 8126, i16 8185, i16 8092, i16 507, i16 1693, i16 8151, i16 8181, i16 8101, i16 445, i16 1722, i16 8179, i16 8177, i16 8110, i16 386, i16 1747, i16 18, i16 8171, i16 8119, i16 330, i16 1765, i16 53, i16 8165, i16 8128, i16 276, i16 1778, i16 91, i16 8159, i16 8137, i16 225, i16 1785, i16 133, i16 8152, i16 8145, i16 177, i16 1788, i16 177, i16 8145, i16 8152, i16 133, i16 1785, i16 225, i16 8137, i16 8159, i16 91, i16 1778, i16 276, i16 8128, i16 8165, i16 53, i16 1765, i16 330, i16 8119, i16 8171, i16 18, i16 1747, i16 386, i16 8110, i16 8177, i16 8179, i16 1722, i16 445, i16 8101, i16 8181, i16 8151, i16 1693, i16 507, i16 8092, i16 8185, i16 8126, i16 1660, i16 570, i16 8083, i16 8189, i16 8104, i16 1622, i16 635, i16 8074, i16 0, i16 8085, i16 1579, i16 703, i16 8065, i16 2, i16 8070, i16 1532, i16 771, i16 8057, i16 4, i16 8057, i16 1482, i16 839, i16 8050, i16 5, i16 8047, i16 1428, i16 909, i16 8043, i16 6, i16 8039, i16 1371, i16 978, i16 8038, i16 7, i16 8034, i16 1310, i16 1047, i16 8034, i16 7, i16 8031, i16 1247, i16 1116, i16 8031, i16 8030, i16 1186, i16 1186, i16 8030, i16 0, i16 8031, i16 1116, i16 1247, i16 8031, i16 7, i16 8034, i16 1047, i16 1310, i16 8034, i16 7, i16 8038, i16 978, i16 1371, i16 8039, i16 6, i16 8043, i16 909, i16 1428, i16 8047, i16 5, i16 8050, i16 839, i16 1482, i16 8057, i16 4, i16 8057, i16 771, i16 1532, i16 8070, i16 2, i16 8065, i16 703, i16 1579, i16 8085, i16 0, i16 8074, i16 635, i16 1622, i16 8104, i16 8189, i16 8083, i16 570, i16 1660, i16 8126, i16 8185, i16 8092, i16 507, i16 1693, i16 8151, i16 8181, i16 8101, i16 445, i16 1722, i16 8179, i16 8177, i16 8110, i16 386, i16 1747, i16 18, i16 8171, i16 8119, i16 330, i16 1765, i16 53, i16 8165, i16 8128, i16 276, i16 1778, i16 91, i16 8159, i16 8137, i16 225, i16 1785, i16 133, i16 8152], [320 x i16] [i16 28, i16 502, i16 988, i16 502, i16 28, i16 24, i16 479, i16 987, i16 524, i16 34, i16 19, i16 457, i16 985, i16 547, i16 40, i16 15, i16 435, i16 982, i16 570, i16 46, i16 12, i16 413, i16 978, i16 592, i16 53, i16 9, i16 392, i16 972, i16 614, i16 61, i16 6, i16 371, i16 965, i16 637, i16 69, i16 4, i16 350, i16 957, i16 659, i16 78, i16 2, i16 330, i16 948, i16 680, i16 88, i16 0, i16 310, i16 938, i16 702, i16 98, i16 8191, i16 291, i16 926, i16 723, i16 109, i16 8190, i16 272, i16 914, i16 744, i16 120, i16 8189, i16 254, i16 900, i16 764, i16 133, i16 8189, i16 237, i16 886, i16 783, i16 145, i16 8188, i16 220, i16 871, i16 802, i16 159, i16 8188, i16 204, i16 855, i16 820, i16 173, i16 188, i16 836, i16 836, i16 188, i16 0, i16 173, i16 820, i16 855, i16 204, i16 8188, i16 159, i16 802, i16 871, i16 220, i16 8188, i16 145, i16 783, i16 886, i16 237, i16 8189, i16 133, i16 764, i16 900, i16 254, i16 8189, i16 120, i16 744, i16 914, i16 272, i16 8190, i16 109, i16 723, i16 926, i16 291, i16 8191, i16 98, i16 702, i16 938, i16 310, i16 0, i16 88, i16 680, i16 948, i16 330, i16 2, i16 78, i16 659, i16 957, i16 350, i16 4, i16 69, i16 637, i16 965, i16 371, i16 6, i16 61, i16 614, i16 972, i16 392, i16 9, i16 53, i16 592, i16 978, i16 413, i16 12, i16 46, i16 570, i16 982, i16 435, i16 15, i16 40, i16 547, i16 985, i16 457, i16 19, i16 34, i16 524, i16 987, i16 479, i16 24, i16 28, i16 502, i16 988, i16 502, i16 28, i16 24, i16 479, i16 987, i16 524, i16 34, i16 19, i16 457, i16 985, i16 547, i16 40, i16 15, i16 435, i16 982, i16 570, i16 46, i16 12, i16 413, i16 978, i16 592, i16 53, i16 9, i16 392, i16 972, i16 614, i16 61, i16 6, i16 371, i16 965, i16 637, i16 69, i16 4, i16 350, i16 957, i16 659, i16 78, i16 2, i16 330, i16 948, i16 680, i16 88, i16 0, i16 310, i16 938, i16 702, i16 98, i16 8191, i16 291, i16 926, i16 723, i16 109, i16 8190, i16 272, i16 914, i16 744, i16 120, i16 8189, i16 254, i16 900, i16 764, i16 133, i16 8189, i16 237, i16 886, i16 783, i16 145, i16 8188, i16 220, i16 871, i16 802, i16 159, i16 8188, i16 204, i16 855, i16 820, i16 173, i16 188, i16 836, i16 836, i16 188, i16 0, i16 173, i16 820, i16 855, i16 204, i16 8188, i16 159, i16 802, i16 871, i16 220, i16 8188, i16 145, i16 783, i16 886, i16 237, i16 8189, i16 133, i16 764, i16 900, i16 254, i16 8189, i16 120, i16 744, i16 914, i16 272, i16 8190, i16 109, i16 723, i16 926, i16 291, i16 8191, i16 98, i16 702, i16 938, i16 310, i16 0, i16 88, i16 680, i16 948, i16 330, i16 2, i16 78, i16 659, i16 957, i16 350, i16 4, i16 69, i16 637, i16 965, i16 371, i16 6, i16 61, i16 614, i16 972, i16 392, i16 9, i16 53, i16 592, i16 978, i16 413, i16 12, i16 46, i16 570, i16 982, i16 435, i16 15, i16 40, i16 547, i16 985, i16 457, i16 19, i16 34, i16 524, i16 987, i16 479, i16 24], [320 x i16] [i16 3, i16 489, i16 1064, i16 489, i16 3, i16 0, i16 464, i16 1062, i16 515, i16 7, i16 8189, i16 439, i16 1060, i16 540, i16 12, i16 8187, i16 414, i16 1056, i16 566, i16 17, i16 8185, i16 390, i16 1050, i16 592, i16 23, i16 8183, i16 366, i16 1044, i16 618, i16 29, i16 8182, i16 343, i16 1035, i16 644, i16 36, i16 8181, i16 320, i16 1025, i16 670, i16 44, i16 8180, i16 298, i16 1014, i16 695, i16 53, i16 8180, i16 277, i16 1001, i16 720, i16 62, i16 8180, i16 256, i16 987, i16 745, i16 72, i16 8180, i16 236, i16 972, i16 769, i16 83, i16 8180, i16 217, i16 956, i16 792, i16 95, i16 8181, i16 199, i16 938, i16 815, i16 107, i16 8182, i16 181, i16 920, i16 837, i16 120, i16 8182, i16 165, i16 900, i16 859, i16 134, i16 148, i16 876, i16 876, i16 148, i16 0, i16 134, i16 859, i16 900, i16 165, i16 8182, i16 120, i16 837, i16 920, i16 181, i16 8182, i16 107, i16 815, i16 938, i16 199, i16 8181, i16 95, i16 792, i16 956, i16 217, i16 8180, i16 83, i16 769, i16 972, i16 236, i16 8180, i16 72, i16 745, i16 987, i16 256, i16 8180, i16 62, i16 720, i16 1001, i16 277, i16 8180, i16 53, i16 695, i16 1014, i16 298, i16 8180, i16 44, i16 670, i16 1025, i16 320, i16 8181, i16 36, i16 644, i16 1035, i16 343, i16 8182, i16 29, i16 618, i16 1044, i16 366, i16 8183, i16 23, i16 592, i16 1050, i16 390, i16 8185, i16 17, i16 566, i16 1056, i16 414, i16 8187, i16 12, i16 540, i16 1060, i16 439, i16 8189, i16 7, i16 515, i16 1062, i16 464, i16 0, i16 3, i16 489, i16 1064, i16 489, i16 3, i16 0, i16 464, i16 1062, i16 515, i16 7, i16 8189, i16 439, i16 1060, i16 540, i16 12, i16 8187, i16 414, i16 1056, i16 566, i16 17, i16 8185, i16 390, i16 1050, i16 592, i16 23, i16 8183, i16 366, i16 1044, i16 618, i16 29, i16 8182, i16 343, i16 1035, i16 644, i16 36, i16 8181, i16 320, i16 1025, i16 670, i16 44, i16 8180, i16 298, i16 1014, i16 695, i16 53, i16 8180, i16 277, i16 1001, i16 720, i16 62, i16 8180, i16 256, i16 987, i16 745, i16 72, i16 8180, i16 236, i16 972, i16 769, i16 83, i16 8180, i16 217, i16 956, i16 792, i16 95, i16 8181, i16 199, i16 938, i16 815, i16 107, i16 8182, i16 181, i16 920, i16 837, i16 120, i16 8182, i16 165, i16 900, i16 859, i16 134, i16 148, i16 876, i16 876, i16 148, i16 0, i16 134, i16 859, i16 900, i16 165, i16 8182, i16 120, i16 837, i16 920, i16 181, i16 8182, i16 107, i16 815, i16 938, i16 199, i16 8181, i16 95, i16 792, i16 956, i16 217, i16 8180, i16 83, i16 769, i16 972, i16 236, i16 8180, i16 72, i16 745, i16 987, i16 256, i16 8180, i16 62, i16 720, i16 1001, i16 277, i16 8180, i16 53, i16 695, i16 1014, i16 298, i16 8180, i16 44, i16 670, i16 1025, i16 320, i16 8181, i16 36, i16 644, i16 1035, i16 343, i16 8182, i16 29, i16 618, i16 1044, i16 366, i16 8183, i16 23, i16 592, i16 1050, i16 390, i16 8185, i16 17, i16 566, i16 1056, i16 414, i16 8187, i16 12, i16 540, i16 1060, i16 439, i16 8189, i16 7, i16 515, i16 1062, i16 464, i16 0], [320 x i16] [i16 8172, i16 470, i16 1148, i16 470, i16 8172, i16 8170, i16 442, i16 1147, i16 499, i16 8174, i16 8169, i16 413, i16 1144, i16 529, i16 8177, i16 8168, i16 386, i16 1139, i16 558, i16 8181, i16 8168, i16 359, i16 1132, i16 588, i16 8185, i16 8168, i16 333, i16 1124, i16 618, i16 8189, i16 8168, i16 308, i16 1113, i16 648, i16 3, i16 8169, i16 283, i16 1101, i16 678, i16 9, i16 8169, i16 260, i16 1088, i16 707, i16 16, i16 8170, i16 237, i16 1072, i16 737, i16 24, i16 8171, i16 215, i16 1056, i16 765, i16 33, i16 8173, i16 194, i16 1037, i16 793, i16 43, i16 8174, i16 174, i16 1017, i16 822, i16 53, i16 8176, i16 156, i16 995, i16 848, i16 65, i16 8177, i16 138, i16 973, i16 875, i16 77, i16 8179, i16 121, i16 949, i16 900, i16 91, i16 105, i16 919, i16 919, i16 105, i16 0, i16 91, i16 900, i16 949, i16 121, i16 8179, i16 77, i16 875, i16 973, i16 138, i16 8177, i16 65, i16 848, i16 995, i16 156, i16 8176, i16 53, i16 822, i16 1017, i16 174, i16 8174, i16 43, i16 793, i16 1037, i16 194, i16 8173, i16 33, i16 765, i16 1056, i16 215, i16 8171, i16 24, i16 737, i16 1072, i16 237, i16 8170, i16 16, i16 707, i16 1088, i16 260, i16 8169, i16 9, i16 678, i16 1101, i16 283, i16 8169, i16 3, i16 648, i16 1113, i16 308, i16 8168, i16 8189, i16 618, i16 1124, i16 333, i16 8168, i16 8185, i16 588, i16 1132, i16 359, i16 8168, i16 8181, i16 558, i16 1139, i16 386, i16 8168, i16 8177, i16 529, i16 1144, i16 413, i16 8169, i16 8174, i16 499, i16 1147, i16 442, i16 8170, i16 8172, i16 470, i16 1148, i16 470, i16 8172, i16 8170, i16 442, i16 1147, i16 499, i16 8174, i16 8169, i16 413, i16 1144, i16 529, i16 8177, i16 8168, i16 386, i16 1139, i16 558, i16 8181, i16 8168, i16 359, i16 1132, i16 588, i16 8185, i16 8168, i16 333, i16 1124, i16 618, i16 8189, i16 8168, i16 308, i16 1113, i16 648, i16 3, i16 8169, i16 283, i16 1101, i16 678, i16 9, i16 8169, i16 260, i16 1088, i16 707, i16 16, i16 8170, i16 237, i16 1072, i16 737, i16 24, i16 8171, i16 215, i16 1056, i16 765, i16 33, i16 8173, i16 194, i16 1037, i16 793, i16 43, i16 8174, i16 174, i16 1017, i16 822, i16 53, i16 8176, i16 156, i16 995, i16 848, i16 65, i16 8177, i16 138, i16 973, i16 875, i16 77, i16 8179, i16 121, i16 949, i16 900, i16 91, i16 105, i16 919, i16 919, i16 105, i16 0, i16 91, i16 900, i16 949, i16 121, i16 8179, i16 77, i16 875, i16 973, i16 138, i16 8177, i16 65, i16 848, i16 995, i16 156, i16 8176, i16 53, i16 822, i16 1017, i16 174, i16 8174, i16 43, i16 793, i16 1037, i16 194, i16 8173, i16 33, i16 765, i16 1056, i16 215, i16 8171, i16 24, i16 737, i16 1072, i16 237, i16 8170, i16 16, i16 707, i16 1088, i16 260, i16 8169, i16 9, i16 678, i16 1101, i16 283, i16 8169, i16 3, i16 648, i16 1113, i16 308, i16 8168, i16 8189, i16 618, i16 1124, i16 333, i16 8168, i16 8185, i16 588, i16 1132, i16 359, i16 8168, i16 8181, i16 558, i16 1139, i16 386, i16 8168, i16 8177, i16 529, i16 1144, i16 413, i16 8169, i16 8174, i16 499, i16 1147, i16 442, i16 8170], [320 x i16] [i16 8152, i16 444, i16 1240, i16 444, i16 8152, i16 8152, i16 412, i16 1240, i16 476, i16 8152, i16 8152, i16 381, i16 1236, i16 510, i16 8153, i16 8153, i16 350, i16 1231, i16 544, i16 8154, i16 8155, i16 321, i16 1223, i16 577, i16 8156, i16 8156, i16 293, i16 1212, i16 612, i16 8159, i16 8158, i16 265, i16 1200, i16 646, i16 8163, i16 8160, i16 239, i16 1185, i16 681, i16 8167, i16 8162, i16 214, i16 1169, i16 715, i16 8172, i16 8164, i16 190, i16 1150, i16 750, i16 8178, i16 8166, i16 167, i16 1130, i16 783, i16 8186, i16 8169, i16 146, i16 1107, i16 816, i16 2, i16 8171, i16 126, i16 1083, i16 849, i16 11, i16 8173, i16 107, i16 1057, i16 882, i16 21, i16 8175, i16 90, i16 1030, i16 913, i16 32, i16 8177, i16 73, i16 1002, i16 943, i16 45, i16 58, i16 966, i16 966, i16 58, i16 0, i16 45, i16 943, i16 1002, i16 73, i16 8177, i16 32, i16 913, i16 1030, i16 90, i16 8175, i16 21, i16 882, i16 1057, i16 107, i16 8173, i16 11, i16 849, i16 1083, i16 126, i16 8171, i16 2, i16 816, i16 1107, i16 146, i16 8169, i16 8186, i16 783, i16 1130, i16 167, i16 8166, i16 8178, i16 750, i16 1150, i16 190, i16 8164, i16 8172, i16 715, i16 1169, i16 214, i16 8162, i16 8167, i16 681, i16 1185, i16 239, i16 8160, i16 8163, i16 646, i16 1200, i16 265, i16 8158, i16 8159, i16 612, i16 1212, i16 293, i16 8156, i16 8156, i16 577, i16 1223, i16 321, i16 8155, i16 8154, i16 544, i16 1231, i16 350, i16 8153, i16 8153, i16 510, i16 1236, i16 381, i16 8152, i16 8152, i16 476, i16 1240, i16 412, i16 8152, i16 8152, i16 444, i16 1240, i16 444, i16 8152, i16 8152, i16 412, i16 1240, i16 476, i16 8152, i16 8152, i16 381, i16 1236, i16 510, i16 8153, i16 8153, i16 350, i16 1231, i16 544, i16 8154, i16 8155, i16 321, i16 1223, i16 577, i16 8156, i16 8156, i16 293, i16 1212, i16 612, i16 8159, i16 8158, i16 265, i16 1200, i16 646, i16 8163, i16 8160, i16 239, i16 1185, i16 681, i16 8167, i16 8162, i16 214, i16 1169, i16 715, i16 8172, i16 8164, i16 190, i16 1150, i16 750, i16 8178, i16 8166, i16 167, i16 1130, i16 783, i16 8186, i16 8169, i16 146, i16 1107, i16 816, i16 2, i16 8171, i16 126, i16 1083, i16 849, i16 11, i16 8173, i16 107, i16 1057, i16 882, i16 21, i16 8175, i16 90, i16 1030, i16 913, i16 32, i16 8177, i16 73, i16 1002, i16 943, i16 45, i16 58, i16 966, i16 966, i16 58, i16 0, i16 45, i16 943, i16 1002, i16 73, i16 8177, i16 32, i16 913, i16 1030, i16 90, i16 8175, i16 21, i16 882, i16 1057, i16 107, i16 8173, i16 11, i16 849, i16 1083, i16 126, i16 8171, i16 2, i16 816, i16 1107, i16 146, i16 8169, i16 8186, i16 783, i16 1130, i16 167, i16 8166, i16 8178, i16 750, i16 1150, i16 190, i16 8164, i16 8172, i16 715, i16 1169, i16 214, i16 8162, i16 8167, i16 681, i16 1185, i16 239, i16 8160, i16 8163, i16 646, i16 1200, i16 265, i16 8158, i16 8159, i16 612, i16 1212, i16 293, i16 8156, i16 8156, i16 577, i16 1223, i16 321, i16 8155, i16 8154, i16 544, i16 1231, i16 350, i16 8153, i16 8153, i16 510, i16 1236, i16 381, i16 8152, i16 8152, i16 476, i16 1240, i16 412, i16 8152], [320 x i16] [i16 8136, i16 409, i16 1342, i16 409, i16 8136, i16 8138, i16 373, i16 1342, i16 445, i16 8134, i16 8141, i16 339, i16 1337, i16 482, i16 8133, i16 8143, i16 306, i16 1330, i16 521, i16 8132, i16 8146, i16 274, i16 1321, i16 559, i16 8132, i16 8149, i16 244, i16 1308, i16 598, i16 8133, i16 8152, i16 215, i16 1293, i16 638, i16 8134, i16 8156, i16 187, i16 1275, i16 678, i16 8136, i16 8159, i16 161, i16 1255, i16 718, i16 8139, i16 8162, i16 137, i16 1233, i16 757, i16 8143, i16 8165, i16 114, i16 1208, i16 797, i16 8148, i16 8168, i16 93, i16 1182, i16 836, i16 8153, i16 8171, i16 73, i16 1152, i16 875, i16 8161, i16 8174, i16 55, i16 1122, i16 912, i16 8169, i16 8176, i16 38, i16 1090, i16 950, i16 8178, i16 8178, i16 23, i16 1056, i16 986, i16 8189, i16 9, i16 1015, i16 1015, i16 9, i16 0, i16 8189, i16 986, i16 1056, i16 23, i16 8178, i16 8178, i16 950, i16 1090, i16 38, i16 8176, i16 8169, i16 912, i16 1122, i16 55, i16 8174, i16 8161, i16 875, i16 1152, i16 73, i16 8171, i16 8153, i16 836, i16 1182, i16 93, i16 8168, i16 8148, i16 797, i16 1208, i16 114, i16 8165, i16 8143, i16 757, i16 1233, i16 137, i16 8162, i16 8139, i16 718, i16 1255, i16 161, i16 8159, i16 8136, i16 678, i16 1275, i16 187, i16 8156, i16 8134, i16 638, i16 1293, i16 215, i16 8152, i16 8133, i16 598, i16 1308, i16 244, i16 8149, i16 8132, i16 559, i16 1321, i16 274, i16 8146, i16 8132, i16 521, i16 1330, i16 306, i16 8143, i16 8133, i16 482, i16 1337, i16 339, i16 8141, i16 8134, i16 445, i16 1342, i16 373, i16 8138, i16 8136, i16 409, i16 1342, i16 409, i16 8136, i16 8138, i16 373, i16 1342, i16 445, i16 8134, i16 8141, i16 339, i16 1337, i16 482, i16 8133, i16 8143, i16 306, i16 1330, i16 521, i16 8132, i16 8146, i16 274, i16 1321, i16 559, i16 8132, i16 8149, i16 244, i16 1308, i16 598, i16 8133, i16 8152, i16 215, i16 1293, i16 638, i16 8134, i16 8156, i16 187, i16 1275, i16 678, i16 8136, i16 8159, i16 161, i16 1255, i16 718, i16 8139, i16 8162, i16 137, i16 1233, i16 757, i16 8143, i16 8165, i16 114, i16 1208, i16 797, i16 8148, i16 8168, i16 93, i16 1182, i16 836, i16 8153, i16 8171, i16 73, i16 1152, i16 875, i16 8161, i16 8174, i16 55, i16 1122, i16 912, i16 8169, i16 8176, i16 38, i16 1090, i16 950, i16 8178, i16 8178, i16 23, i16 1056, i16 986, i16 8189, i16 9, i16 1015, i16 1015, i16 9, i16 0, i16 8189, i16 986, i16 1056, i16 23, i16 8178, i16 8178, i16 950, i16 1090, i16 38, i16 8176, i16 8169, i16 912, i16 1122, i16 55, i16 8174, i16 8161, i16 875, i16 1152, i16 73, i16 8171, i16 8153, i16 836, i16 1182, i16 93, i16 8168, i16 8148, i16 797, i16 1208, i16 114, i16 8165, i16 8143, i16 757, i16 1233, i16 137, i16 8162, i16 8139, i16 718, i16 1255, i16 161, i16 8159, i16 8136, i16 678, i16 1275, i16 187, i16 8156, i16 8134, i16 638, i16 1293, i16 215, i16 8152, i16 8133, i16 598, i16 1308, i16 244, i16 8149, i16 8132, i16 559, i16 1321, i16 274, i16 8146, i16 8132, i16 521, i16 1330, i16 306, i16 8143, i16 8133, i16 482, i16 1337, i16 339, i16 8141, i16 8134, i16 445, i16 1342, i16 373, i16 8138], [320 x i16] [i16 8127, i16 364, i16 1450, i16 364, i16 8127, i16 8131, i16 326, i16 1448, i16 404, i16 8123, i16 8135, i16 289, i16 1443, i16 445, i16 8120, i16 8139, i16 253, i16 1435, i16 488, i16 8117, i16 8144, i16 220, i16 1423, i16 531, i16 8114, i16 8148, i16 188, i16 1408, i16 576, i16 8112, i16 8152, i16 158, i16 1390, i16 621, i16 8111, i16 8156, i16 130, i16 1370, i16 666, i16 8110, i16 8160, i16 103, i16 1346, i16 713, i16 8110, i16 8164, i16 79, i16 1320, i16 758, i16 8111, i16 8168, i16 56, i16 1290, i16 805, i16 8113, i16 8171, i16 36, i16 1259, i16 850, i16 8116, i16 8174, i16 17, i16 1224, i16 896, i16 8121, i16 8177, i16 0, i16 1188, i16 940, i16 8127, i16 8180, i16 8177, i16 1149, i16 984, i16 8134, i16 8182, i16 8164, i16 1109, i16 1027, i16 8142, i16 8152, i16 1064, i16 1064, i16 8152, i16 0, i16 8142, i16 1027, i16 1109, i16 8164, i16 8182, i16 8134, i16 984, i16 1149, i16 8177, i16 8180, i16 8127, i16 940, i16 1188, i16 0, i16 8177, i16 8121, i16 896, i16 1224, i16 17, i16 8174, i16 8116, i16 850, i16 1259, i16 36, i16 8171, i16 8113, i16 805, i16 1290, i16 56, i16 8168, i16 8111, i16 758, i16 1320, i16 79, i16 8164, i16 8110, i16 713, i16 1346, i16 103, i16 8160, i16 8110, i16 666, i16 1370, i16 130, i16 8156, i16 8111, i16 621, i16 1390, i16 158, i16 8152, i16 8112, i16 576, i16 1408, i16 188, i16 8148, i16 8114, i16 531, i16 1423, i16 220, i16 8144, i16 8117, i16 488, i16 1435, i16 253, i16 8139, i16 8120, i16 445, i16 1443, i16 289, i16 8135, i16 8123, i16 404, i16 1448, i16 326, i16 8131, i16 8127, i16 364, i16 1450, i16 364, i16 8127, i16 8131, i16 326, i16 1448, i16 404, i16 8123, i16 8135, i16 289, i16 1443, i16 445, i16 8120, i16 8139, i16 253, i16 1435, i16 488, i16 8117, i16 8144, i16 220, i16 1423, i16 531, i16 8114, i16 8148, i16 188, i16 1408, i16 576, i16 8112, i16 8152, i16 158, i16 1390, i16 621, i16 8111, i16 8156, i16 130, i16 1370, i16 666, i16 8110, i16 8160, i16 103, i16 1346, i16 713, i16 8110, i16 8164, i16 79, i16 1320, i16 758, i16 8111, i16 8168, i16 56, i16 1290, i16 805, i16 8113, i16 8171, i16 36, i16 1259, i16 850, i16 8116, i16 8174, i16 17, i16 1224, i16 896, i16 8121, i16 8177, i16 0, i16 1188, i16 940, i16 8127, i16 8180, i16 8177, i16 1149, i16 984, i16 8134, i16 8182, i16 8164, i16 1109, i16 1027, i16 8142, i16 8152, i16 1064, i16 1064, i16 8152, i16 0, i16 8142, i16 1027, i16 1109, i16 8164, i16 8182, i16 8134, i16 984, i16 1149, i16 8177, i16 8180, i16 8127, i16 940, i16 1188, i16 0, i16 8177, i16 8121, i16 896, i16 1224, i16 17, i16 8174, i16 8116, i16 850, i16 1259, i16 36, i16 8171, i16 8113, i16 805, i16 1290, i16 56, i16 8168, i16 8111, i16 758, i16 1320, i16 79, i16 8164, i16 8110, i16 713, i16 1346, i16 103, i16 8160, i16 8110, i16 666, i16 1370, i16 130, i16 8156, i16 8111, i16 621, i16 1390, i16 158, i16 8152, i16 8112, i16 576, i16 1408, i16 188, i16 8148, i16 8114, i16 531, i16 1423, i16 220, i16 8144, i16 8117, i16 488, i16 1435, i16 253, i16 8139, i16 8120, i16 445, i16 1443, i16 289, i16 8135, i16 8123, i16 404, i16 1448, i16 326, i16 8131], [320 x i16] [i16 8125, i16 310, i16 1562, i16 310, i16 8125, i16 8131, i16 269, i16 1559, i16 353, i16 8120, i16 8137, i16 230, i16 1553, i16 398, i16 8114, i16 8142, i16 193, i16 1543, i16 445, i16 8109, i16 8148, i16 158, i16 1529, i16 493, i16 8104, i16 8153, i16 125, i16 1512, i16 543, i16 8099, i16 8158, i16 94, i16 1491, i16 594, i16 8095, i16 8162, i16 66, i16 1468, i16 645, i16 8091, i16 8167, i16 41, i16 1439, i16 697, i16 8088, i16 8170, i16 17, i16 1408, i16 751, i16 8086, i16 8174, i16 8188, i16 1373, i16 804, i16 8085, i16 8177, i16 8169, i16 1336, i16 857, i16 8085, i16 8180, i16 8152, i16 1296, i16 910, i16 8086, i16 8183, i16 8137, i16 1253, i16 962, i16 8089, i16 8185, i16 8125, i16 1208, i16 1013, i16 8093, i16 8187, i16 8114, i16 1161, i16 1064, i16 8098, i16 8106, i16 1110, i16 1110, i16 8106, i16 0, i16 8098, i16 1064, i16 1161, i16 8114, i16 8187, i16 8093, i16 1013, i16 1208, i16 8125, i16 8185, i16 8089, i16 962, i16 1253, i16 8137, i16 8183, i16 8086, i16 910, i16 1296, i16 8152, i16 8180, i16 8085, i16 857, i16 1336, i16 8169, i16 8177, i16 8085, i16 804, i16 1373, i16 8188, i16 8174, i16 8086, i16 751, i16 1408, i16 17, i16 8170, i16 8088, i16 697, i16 1439, i16 41, i16 8167, i16 8091, i16 645, i16 1468, i16 66, i16 8162, i16 8095, i16 594, i16 1491, i16 94, i16 8158, i16 8099, i16 543, i16 1512, i16 125, i16 8153, i16 8104, i16 493, i16 1529, i16 158, i16 8148, i16 8109, i16 445, i16 1543, i16 193, i16 8142, i16 8114, i16 398, i16 1553, i16 230, i16 8137, i16 8120, i16 353, i16 1559, i16 269, i16 8131, i16 8125, i16 310, i16 1562, i16 310, i16 8125, i16 8131, i16 269, i16 1559, i16 353, i16 8120, i16 8137, i16 230, i16 1553, i16 398, i16 8114, i16 8142, i16 193, i16 1543, i16 445, i16 8109, i16 8148, i16 158, i16 1529, i16 493, i16 8104, i16 8153, i16 125, i16 1512, i16 543, i16 8099, i16 8158, i16 94, i16 1491, i16 594, i16 8095, i16 8162, i16 66, i16 1468, i16 645, i16 8091, i16 8167, i16 41, i16 1439, i16 697, i16 8088, i16 8170, i16 17, i16 1408, i16 751, i16 8086, i16 8174, i16 8188, i16 1373, i16 804, i16 8085, i16 8177, i16 8169, i16 1336, i16 857, i16 8085, i16 8180, i16 8152, i16 1296, i16 910, i16 8086, i16 8183, i16 8137, i16 1253, i16 962, i16 8089, i16 8185, i16 8125, i16 1208, i16 1013, i16 8093, i16 8187, i16 8114, i16 1161, i16 1064, i16 8098, i16 8106, i16 1110, i16 1110, i16 8106, i16 0, i16 8098, i16 1064, i16 1161, i16 8114, i16 8187, i16 8093, i16 1013, i16 1208, i16 8125, i16 8185, i16 8089, i16 962, i16 1253, i16 8137, i16 8183, i16 8086, i16 910, i16 1296, i16 8152, i16 8180, i16 8085, i16 857, i16 1336, i16 8169, i16 8177, i16 8085, i16 804, i16 1373, i16 8188, i16 8174, i16 8086, i16 751, i16 1408, i16 17, i16 8170, i16 8088, i16 697, i16 1439, i16 41, i16 8167, i16 8091, i16 645, i16 1468, i16 66, i16 8162, i16 8095, i16 594, i16 1491, i16 94, i16 8158, i16 8099, i16 543, i16 1512, i16 125, i16 8153, i16 8104, i16 493, i16 1529, i16 158, i16 8148, i16 8109, i16 445, i16 1543, i16 193, i16 8142, i16 8114, i16 398, i16 1553, i16 230, i16 8137, i16 8120, i16 353, i16 1559, i16 269, i16 8131], [320 x i16] [i16 8131, i16 248, i16 1674, i16 248, i16 8131, i16 8138, i16 204, i16 1673, i16 293, i16 8124, i16 8145, i16 163, i16 1665, i16 342, i16 8117, i16 8151, i16 125, i16 1654, i16 392, i16 8110, i16 8157, i16 90, i16 1638, i16 445, i16 8102, i16 8163, i16 57, i16 1618, i16 499, i16 8095, i16 8168, i16 27, i16 1593, i16 556, i16 8088, i16 8172, i16 0, i16 1565, i16 613, i16 8082, i16 8176, i16 8168, i16 1532, i16 672, i16 8076, i16 8180, i16 8146, i16 1495, i16 732, i16 8071, i16 8183, i16 8127, i16 1455, i16 793, i16 8066, i16 8186, i16 8111, i16 1411, i16 854, i16 8062, i16 8188, i16 8097, i16 1364, i16 915, i16 8060, i16 8190, i16 8085, i16 1315, i16 975, i16 8059, i16 0, i16 8076, i16 1262, i16 1035, i16 8059, i16 1, i16 8069, i16 1208, i16 1094, i16 8060, i16 8064, i16 1152, i16 1152, i16 8064, i16 0, i16 8060, i16 1094, i16 1208, i16 8069, i16 1, i16 8059, i16 1035, i16 1262, i16 8076, i16 0, i16 8059, i16 975, i16 1315, i16 8085, i16 8190, i16 8060, i16 915, i16 1364, i16 8097, i16 8188, i16 8062, i16 854, i16 1411, i16 8111, i16 8186, i16 8066, i16 793, i16 1455, i16 8127, i16 8183, i16 8071, i16 732, i16 1495, i16 8146, i16 8180, i16 8076, i16 672, i16 1532, i16 8168, i16 8176, i16 8082, i16 613, i16 1565, i16 0, i16 8172, i16 8088, i16 556, i16 1593, i16 27, i16 8168, i16 8095, i16 499, i16 1618, i16 57, i16 8163, i16 8102, i16 445, i16 1638, i16 90, i16 8157, i16 8110, i16 392, i16 1654, i16 125, i16 8151, i16 8117, i16 342, i16 1665, i16 163, i16 8145, i16 8124, i16 293, i16 1673, i16 204, i16 8138, i16 8131, i16 248, i16 1674, i16 248, i16 8131, i16 8138, i16 204, i16 1673, i16 293, i16 8124, i16 8145, i16 163, i16 1665, i16 342, i16 8117, i16 8151, i16 125, i16 1654, i16 392, i16 8110, i16 8157, i16 90, i16 1638, i16 445, i16 8102, i16 8163, i16 57, i16 1618, i16 499, i16 8095, i16 8168, i16 27, i16 1593, i16 556, i16 8088, i16 8172, i16 0, i16 1565, i16 613, i16 8082, i16 8176, i16 8168, i16 1532, i16 672, i16 8076, i16 8180, i16 8146, i16 1495, i16 732, i16 8071, i16 8183, i16 8127, i16 1455, i16 793, i16 8066, i16 8186, i16 8111, i16 1411, i16 854, i16 8062, i16 8188, i16 8097, i16 1364, i16 915, i16 8060, i16 8190, i16 8085, i16 1315, i16 975, i16 8059, i16 0, i16 8076, i16 1262, i16 1035, i16 8059, i16 1, i16 8069, i16 1208, i16 1094, i16 8060, i16 8064, i16 1152, i16 1152, i16 8064, i16 0, i16 8060, i16 1094, i16 1208, i16 8069, i16 1, i16 8059, i16 1035, i16 1262, i16 8076, i16 0, i16 8059, i16 975, i16 1315, i16 8085, i16 8190, i16 8060, i16 915, i16 1364, i16 8097, i16 8188, i16 8062, i16 854, i16 1411, i16 8111, i16 8186, i16 8066, i16 793, i16 1455, i16 8127, i16 8183, i16 8071, i16 732, i16 1495, i16 8146, i16 8180, i16 8076, i16 672, i16 1532, i16 8168, i16 8176, i16 8082, i16 613, i16 1565, i16 0, i16 8172, i16 8088, i16 556, i16 1593, i16 27, i16 8168, i16 8095, i16 499, i16 1618, i16 57, i16 8163, i16 8102, i16 445, i16 1638, i16 90, i16 8157, i16 8110, i16 392, i16 1654, i16 125, i16 8151, i16 8117, i16 342, i16 1665, i16 163, i16 8145, i16 8124, i16 293, i16 1673, i16 204, i16 8138], [320 x i16] [i16 0, i16 0, i16 2048, i16 0, i16 0, i16 8152, i16 133, i16 1785, i16 225, i16 8137, i16 8159, i16 91, i16 1778, i16 276, i16 8128, i16 8165, i16 53, i16 1765, i16 330, i16 8119, i16 8171, i16 18, i16 1747, i16 386, i16 8110, i16 8177, i16 8179, i16 1722, i16 445, i16 8101, i16 8181, i16 8151, i16 1693, i16 507, i16 8092, i16 8185, i16 8126, i16 1660, i16 570, i16 8083, i16 8189, i16 8104, i16 1622, i16 635, i16 8074, i16 0, i16 8085, i16 1579, i16 703, i16 8065, i16 2, i16 8070, i16 1532, i16 771, i16 8057, i16 4, i16 8057, i16 1482, i16 839, i16 8050, i16 5, i16 8047, i16 1428, i16 909, i16 8043, i16 6, i16 8039, i16 1371, i16 978, i16 8038, i16 7, i16 8034, i16 1310, i16 1047, i16 8034, i16 7, i16 8031, i16 1247, i16 1116, i16 8031, i16 8030, i16 1186, i16 1186, i16 8030, i16 0, i16 8031, i16 1116, i16 1247, i16 8031, i16 7, i16 8034, i16 1047, i16 1310, i16 8034, i16 7, i16 8038, i16 978, i16 1371, i16 8039, i16 6, i16 8043, i16 909, i16 1428, i16 8047, i16 5, i16 8050, i16 839, i16 1482, i16 8057, i16 4, i16 8057, i16 771, i16 1532, i16 8070, i16 2, i16 8065, i16 703, i16 1579, i16 8085, i16 0, i16 8074, i16 635, i16 1622, i16 8104, i16 8189, i16 8083, i16 570, i16 1660, i16 8126, i16 8185, i16 8092, i16 507, i16 1693, i16 8151, i16 8181, i16 8101, i16 445, i16 1722, i16 8179, i16 8177, i16 8110, i16 386, i16 1747, i16 18, i16 8171, i16 8119, i16 330, i16 1765, i16 53, i16 8165, i16 8128, i16 276, i16 1778, i16 91, i16 8159, i16 8137, i16 225, i16 1785, i16 133, i16 8152, i16 0, i16 0, i16 2048, i16 0, i16 0, i16 8152, i16 133, i16 1785, i16 225, i16 8137, i16 8159, i16 91, i16 1778, i16 276, i16 8128, i16 8165, i16 53, i16 1765, i16 330, i16 8119, i16 8171, i16 18, i16 1747, i16 386, i16 8110, i16 8177, i16 8179, i16 1722, i16 445, i16 8101, i16 8181, i16 8151, i16 1693, i16 507, i16 8092, i16 8185, i16 8126, i16 1660, i16 570, i16 8083, i16 8189, i16 8104, i16 1622, i16 635, i16 8074, i16 0, i16 8085, i16 1579, i16 703, i16 8065, i16 2, i16 8070, i16 1532, i16 771, i16 8057, i16 4, i16 8057, i16 1482, i16 839, i16 8050, i16 5, i16 8047, i16 1428, i16 909, i16 8043, i16 6, i16 8039, i16 1371, i16 978, i16 8038, i16 7, i16 8034, i16 1310, i16 1047, i16 8034, i16 7, i16 8031, i16 1247, i16 1116, i16 8031, i16 8030, i16 1186, i16 1186, i16 8030, i16 0, i16 8031, i16 1116, i16 1247, i16 8031, i16 7, i16 8034, i16 1047, i16 1310, i16 8034, i16 7, i16 8038, i16 978, i16 1371, i16 8039, i16 6, i16 8043, i16 909, i16 1428, i16 8047, i16 5, i16 8050, i16 839, i16 1482, i16 8057, i16 4, i16 8057, i16 771, i16 1532, i16 8070, i16 2, i16 8065, i16 703, i16 1579, i16 8085, i16 0, i16 8074, i16 635, i16 1622, i16 8104, i16 8189, i16 8083, i16 570, i16 1660, i16 8126, i16 8185, i16 8092, i16 507, i16 1693, i16 8151, i16 8181, i16 8101, i16 445, i16 1722, i16 8179, i16 8177, i16 8110, i16 386, i16 1747, i16 18, i16 8171, i16 8119, i16 330, i16 1765, i16 53, i16 8165, i16 8128, i16 276, i16 1778, i16 91, i16 8159, i16 8137, i16 225, i16 1785, i16 133, i16 8152], [320 x i16] zeroinitializer, [320 x i16] zeroinitializer, [320 x i16] zeroinitializer, [320 x i16] zeroinitializer, [320 x i16] zeroinitializer], [2400 x i8] zeroinitializer }, align 32
@__kstrtab_sc_set_vs_coeffs = external dso_local constant [0 x i8], align 1
@__kstrtabns_sc_set_vs_coeffs = external dso_local constant [0 x i8], align 1
@__ksymtab_sc_set_vs_coeffs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sc_set_vs_coeffs to i32), ptr @__kstrtab_sc_set_vs_coeffs, ptr @__kstrtabns_sc_set_vs_coeffs }, section "___ksymtab+sc_set_vs_coeffs", align 4
@sc_config_scaler.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 52, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sc_config_scaler\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"hs config: src_w = %d, dst_w = %d, decimation = %s, lin_acc_inc = %08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"4x\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2x\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@sc_config_scaler.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.32, i8 0, i8 59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"vs config(RAV): src_h = %d, dst_h = %d, factor = %d, acc_init = %08x, acc_init_b = %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@sc_config_scaler.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.33, i8 0, i8 61, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"vs config(POLY): src_h = %d, dst_h = %d,row_acc_inc = %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_sc_config_scaler = external dso_local constant [0 x i8], align 1
@__kstrtabns_sc_config_scaler = external dso_local constant [0 x i8], align 1
@__ksymtab_sc_config_scaler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sc_config_scaler to i32), ptr @__kstrtab_sc_config_scaler, ptr @__kstrtabns_sc_config_scaler }, section "___ksymtab+sc_config_scaler", align 4
@sc_create.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 69, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sc_create\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sc_create\0A\00", [21 x i8] zeroinitializer }, align 32
@sc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 283, ptr @.str.37, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't alloc sc_data\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sc_create._entry_ptr = internal global ptr @sc_create._entry, section ".printk_index", align 4
@sc_create._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.34, ptr @.str.2, i32 292, ptr @.str.37, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing '%s' platform resources data\0A\00", [58 x i8] zeroinitializer }, align 32
@sc_create._entry_ptr.41 = internal global ptr @sc_create._entry.39, section ".printk_index", align 4
@__kstrtab_sc_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_sc_create = external dso_local constant [0 x i8], align 1
@__ksymtab_sc_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sc_create to i32), ptr @__kstrtab_sc_create, ptr @__kstrtabns_sc_create }, section "___ksymtab+sc_create", align 4
@__UNIQUE_ID_description210 = internal constant [36 x i8] c"ti_sc.description=TI VIP/VPE Scaler\00", section ".modinfo", align 1
@__UNIQUE_ID_author211 = internal constant [36 x i8] c"ti_sc.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file212 = internal constant [47 x i8] c"ti_sc.file=drivers/media/platform/ti-vpe/ti-sc\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [21 x i8] c"ti_sc.license=GPL v2\00", section ".modinfo", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 28, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 30, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 31, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 32, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 33, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 34, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 35, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 36, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 37, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 38, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 39, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 40, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 41, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 42, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 43, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 44, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 45, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 46, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 47, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 48, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 49, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 50, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 51, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"scaler_hs_coeffs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 28, i32 18 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"scaler_vs_coeffs\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [44 x i8] c"../drivers/media/platform/ti-vpe/sc_coeff.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 657, i32 18 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 206, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 237, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 246, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 279, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 283, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [38 x i8] c"../drivers/media/platform/ti-vpe/sc.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 291, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description210, ptr @__UNIQUE_ID_file212, ptr @__UNIQUE_ID_license213, ptr @__ksymtab_sc_config_scaler, ptr @__ksymtab_sc_create, ptr @__ksymtab_sc_dump_regs, ptr @__ksymtab_sc_set_hs_coeffs, ptr @__ksymtab_sc_set_vs_coeffs, ptr @sc_create._entry, ptr @sc_create._entry.39, ptr @sc_create._entry_ptr, ptr @sc_create._entry_ptr.41, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @scaler_hs_coeffs, ptr @scaler_vs_coeffs, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_hs_coeffs to i32), i32 11648, i32 14560, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_vs_coeffs to i32), i32 9600, i32 12000, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_create._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sc_dump_regs(ptr noundef readonly %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.sc_data, ptr %sc, i32 0, i32 6
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body5)) #5
          to label %if.then [label %do.body5], !srcloc !130

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %res = getelementptr inbounds %struct.sc_data, ptr %sc, i32 0, i32 1
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug183, ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef %3) #5
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body24)) #5
          to label %if.then19 [label %do.body24], !srcloc !130

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !131
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug184, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %7) #5
  br label %do.body24

do.body24:                                        ; preds = %if.then19, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body45)) #5
          to label %if.then38 [label %do.body45], !srcloc !130

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc, align 4
  %add.ptr40 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #5, !srcloc !131
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug185, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %11) #5
  br label %do.body45

do.body45:                                        ; preds = %if.then38, %do.body24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body66)) #5
          to label %if.then59 [label %do.body66], !srcloc !130

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc, align 4
  %add.ptr61 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #5, !srcloc !131
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug186, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef %15) #5
  br label %do.body66

do.body66:                                        ; preds = %if.then59, %do.body45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body87)) #5
          to label %if.then80 [label %do.body87], !srcloc !130

if.then80:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc, align 4
  %add.ptr82 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #5, !srcloc !131
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug187, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, i32 noundef %19) #5
  br label %do.body87

do.body87:                                        ; preds = %if.then80, %do.body66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body108)) #5
          to label %if.then101 [label %do.body108], !srcloc !130

if.then101:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc, align 4
  %add.ptr103 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #5, !srcloc !131
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug188, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %23) #5
  br label %do.body108

do.body108:                                       ; preds = %if.then101, %do.body87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body129)) #5
          to label %if.then122 [label %do.body129], !srcloc !130

if.then122:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sc, align 4
  %add.ptr124 = getelementptr i8, ptr %25, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #5, !srcloc !131
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug189, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10, i32 noundef %27) #5
  br label %do.body129

do.body129:                                       ; preds = %if.then122, %do.body108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body150)) #5
          to label %if.then143 [label %do.body150], !srcloc !130

if.then143:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sc, align 4
  %add.ptr145 = getelementptr i8, ptr %29, i32 24
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #5, !srcloc !131
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug190, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i32 noundef %31) #5
  br label %do.body150

do.body150:                                       ; preds = %if.then143, %do.body129
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body171)) #5
          to label %if.then164 [label %do.body171], !srcloc !130

if.then164:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sc, align 4
  %add.ptr166 = getelementptr i8, ptr %33, i32 32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr166) #5, !srcloc !131
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug191, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, i32 noundef %35) #5
  br label %do.body171

do.body171:                                       ; preds = %if.then164, %do.body150
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body192)) #5
          to label %if.then185 [label %do.body192], !srcloc !130

if.then185:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sc, align 4
  %add.ptr187 = getelementptr i8, ptr %37, i32 36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr187) #5, !srcloc !131
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug192, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.13, i32 noundef %39) #5
  br label %do.body192

do.body192:                                       ; preds = %if.then185, %do.body171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body213)) #5
          to label %if.then206 [label %do.body213], !srcloc !130

if.then206:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sc, align 4
  %add.ptr208 = getelementptr i8, ptr %41, i32 40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr208) #5, !srcloc !131
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug193, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, i32 noundef %43) #5
  br label %do.body213

do.body213:                                       ; preds = %if.then206, %do.body192
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body234)) #5
          to label %if.then227 [label %do.body234], !srcloc !130

if.then227:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sc, align 4
  %add.ptr229 = getelementptr i8, ptr %45, i32 44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr229) #5, !srcloc !131
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug194, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15, i32 noundef %47) #5
  br label %do.body234

do.body234:                                       ; preds = %if.then227, %do.body213
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body255)) #5
          to label %if.then248 [label %do.body255], !srcloc !130

if.then248:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sc, align 4
  %add.ptr250 = getelementptr i8, ptr %49, i32 48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr250) #5, !srcloc !131
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug195, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef %51) #5
  br label %do.body255

do.body255:                                       ; preds = %if.then248, %do.body234
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body276)) #5
          to label %if.then269 [label %do.body276], !srcloc !130

if.then269:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sc, align 4
  %add.ptr271 = getelementptr i8, ptr %53, i32 52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr271) #5, !srcloc !131
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug196, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.17, i32 noundef %55) #5
  br label %do.body276

do.body276:                                       ; preds = %if.then269, %do.body255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body297)) #5
          to label %if.then290 [label %do.body297], !srcloc !130

if.then290:                                       ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sc, align 4
  %add.ptr292 = getelementptr i8, ptr %57, i32 68
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr292) #5, !srcloc !131
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug197, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.18, i32 noundef %59) #5
  br label %do.body297

do.body297:                                       ; preds = %if.then290, %do.body276
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body318)) #5
          to label %if.then311 [label %do.body318], !srcloc !130

if.then311:                                       ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sc, align 4
  %add.ptr313 = getelementptr i8, ptr %61, i32 72
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr313) #5, !srcloc !131
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug198, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19, i32 noundef %63) #5
  br label %do.body318

do.body318:                                       ; preds = %if.then311, %do.body297
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body339)) #5
          to label %if.then332 [label %do.body339], !srcloc !130

if.then332:                                       ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sc, align 4
  %add.ptr334 = getelementptr i8, ptr %65, i32 76
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr334) #5, !srcloc !131
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug199, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef %67) #5
  br label %do.body339

do.body339:                                       ; preds = %if.then332, %do.body318
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body360)) #5
          to label %if.then353 [label %do.body360], !srcloc !130

if.then353:                                       ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sc, align 4
  %add.ptr355 = getelementptr i8, ptr %69, i32 80
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr355) #5, !srcloc !131
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug200, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21, i32 noundef %71) #5
  br label %do.body360

do.body360:                                       ; preds = %if.then353, %do.body339
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body381)) #5
          to label %if.then374 [label %do.body381], !srcloc !130

if.then374:                                       ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sc, align 4
  %add.ptr376 = getelementptr i8, ptr %73, i32 84
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr376) #5, !srcloc !131
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug201, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22, i32 noundef %75) #5
  br label %do.body381

do.body381:                                       ; preds = %if.then374, %do.body360
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body402)) #5
          to label %if.then395 [label %do.body402], !srcloc !130

if.then395:                                       ; preds = %do.body381
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sc, align 4
  %add.ptr397 = getelementptr i8, ptr %77, i32 88
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr397) #5, !srcloc !131
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug202, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.23, i32 noundef %79) #5
  br label %do.body402

do.body402:                                       ; preds = %if.then395, %do.body381
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body423)) #5
          to label %if.then416 [label %do.body423], !srcloc !130

if.then416:                                       ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sc, align 4
  %add.ptr418 = getelementptr i8, ptr %81, i32 92
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr418) #5, !srcloc !131
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug203, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.24, i32 noundef %83) #5
  br label %do.body423

do.body423:                                       ; preds = %if.then416, %do.body402
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.body444)) #5
          to label %if.then437 [label %do.body444], !srcloc !130

if.then437:                                       ; preds = %do.body423
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sc, align 4
  %add.ptr439 = getelementptr i8, ptr %85, i32 96
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr439) #5, !srcloc !131
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug204, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25, i32 noundef %87) #5
  br label %do.body444

do.body444:                                       ; preds = %if.then437, %do.body423
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_dump_regs.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_dump_regs, %do.end464)) #5
          to label %if.then458 [label %do.end464], !srcloc !130

if.then458:                                       ; preds = %do.body444
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sc, align 4
  %add.ptr460 = getelementptr i8, ptr %89, i32 100
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr460) #5, !srcloc !131
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_dump_regs.__UNIQUE_ID_ddebug205, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.26, i32 noundef %91) #5
  br label %do.end464

do.end464:                                        ; preds = %if.then458, %do.body444
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sc_set_hs_coeffs(ptr nocapture noundef writeonly %sc, ptr nocapture noundef writeonly %addr, i32 noundef %src_w, i32 noundef %dst_w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_w, i32 %src_w)
  %cmp = icmp ugt i32 %dst_w, %src_w
  br i1 %cmp, label %entry.if.end17_crit_edge, label %if.else

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.else:                                          ; preds = %entry
  %shl = shl i32 %dst_w, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %src_w)
  %cmp1 = icmp ult i32 %shl, %src_w
  %spec.select = select i1 %cmp1, i32 %shl, i32 %dst_w
  %shl4 = shl i32 %spec.select, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl4, i32 %src_w)
  %cmp5 = icmp ult i32 %shl4, %src_w
  %dst_w.addr.1 = select i1 %cmp5, i32 %shl4, i32 %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_w.addr.1, i32 %src_w)
  %cmp9 = icmp eq i32 %dst_w.addr.1, %src_w
  br i1 %cmp9, label %if.else.if.end17_crit_edge, label %if.else11

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %shl12 = shl i32 %dst_w.addr.1, 4
  %div = udiv i32 %shl12, %src_w
  %0 = tail call i32 @llvm.smax.i32(i32 %div, i32 8)
  %sub = add nsw i32 %0, -7
  br label %if.end17

if.end17:                                         ; preds = %if.else11, %if.else.if.end17_crit_edge, %entry.if.end17_crit_edge
  %idx.0 = phi i32 [ %sub, %if.else11 ], [ 0, %entry.if.end17_crit_edge ], [ 8, %if.else.if.end17_crit_edge ]
  %arrayidx = getelementptr [13 x [448 x i16]], ptr @scaler_hs_coeffs, i32 0, i32 %idx.0
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond19.preheader.for.cond19.preheader_crit_edge, %if.end17
  %cp.045 = phi ptr [ %arrayidx, %if.end17 ], [ %incdec.ptr.6, %for.cond19.preheader.for.cond19.preheader_crit_edge ]
  %coeff_h.044 = phi ptr [ %addr, %if.end17 ], [ %add.ptr, %for.cond19.preheader.for.cond19.preheader_crit_edge ]
  %i.043 = phi i32 [ 0, %if.end17 ], [ %inc24, %for.cond19.preheader.for.cond19.preheader_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %cp.045, i32 1
  %1 = ptrtoint ptr %cp.045 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cp.045, align 2
  %incdec.ptr22 = getelementptr i16, ptr %coeff_h.044, i32 1
  %3 = ptrtoint ptr %coeff_h.044 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %coeff_h.044, align 2
  %incdec.ptr.1 = getelementptr i16, ptr %cp.045, i32 2
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %incdec.ptr, align 2
  %incdec.ptr22.1 = getelementptr i16, ptr %coeff_h.044, i32 2
  %6 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %incdec.ptr22, align 2
  %incdec.ptr.2 = getelementptr i16, ptr %cp.045, i32 3
  %7 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %incdec.ptr.1, align 2
  %incdec.ptr22.2 = getelementptr i16, ptr %coeff_h.044, i32 3
  %9 = ptrtoint ptr %incdec.ptr22.1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %incdec.ptr22.1, align 2
  %incdec.ptr.3 = getelementptr i16, ptr %cp.045, i32 4
  %10 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %incdec.ptr.2, align 2
  %incdec.ptr22.3 = getelementptr i16, ptr %coeff_h.044, i32 4
  %12 = ptrtoint ptr %incdec.ptr22.2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %incdec.ptr22.2, align 2
  %incdec.ptr.4 = getelementptr i16, ptr %cp.045, i32 5
  %13 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %incdec.ptr.3, align 2
  %incdec.ptr22.4 = getelementptr i16, ptr %coeff_h.044, i32 5
  %15 = ptrtoint ptr %incdec.ptr22.3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %incdec.ptr22.3, align 2
  %incdec.ptr.5 = getelementptr i16, ptr %cp.045, i32 6
  %16 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %incdec.ptr.4, align 2
  %incdec.ptr22.5 = getelementptr i16, ptr %coeff_h.044, i32 6
  %18 = ptrtoint ptr %incdec.ptr22.4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %incdec.ptr22.4, align 2
  %incdec.ptr.6 = getelementptr i16, ptr %cp.045, i32 7
  %19 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %incdec.ptr.5, align 2
  %21 = ptrtoint ptr %incdec.ptr22.5 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %incdec.ptr22.5, align 2
  %add.ptr = getelementptr i16, ptr %coeff_h.044, i32 8
  %inc24 = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc24, 64
  br i1 %exitcond.not, label %for.end25, label %for.cond19.preheader.for.cond19.preheader_crit_edge

for.cond19.preheader.for.cond19.preheader_crit_edge: ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond19.preheader

for.end25:                                        ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %load_coeff_h = getelementptr inbounds %struct.sc_data, ptr %sc, i32 0, i32 4
  %22 = ptrtoint ptr %load_coeff_h to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %load_coeff_h, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sc_set_vs_coeffs(ptr nocapture noundef writeonly %sc, ptr nocapture noundef writeonly %addr, i32 noundef %src_h, i32 noundef %dst_h) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_h, i32 %src_h)
  %cmp = icmp ugt i32 %dst_h, %src_h
  br i1 %cmp, label %entry.if.end7_crit_edge, label %if.else

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_h, i32 %src_h)
  %cmp1 = icmp eq i32 %dst_h, %src_h
  br i1 %cmp1, label %if.else.if.end7_crit_edge, label %if.else3

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl i32 %dst_h, 4
  %div = udiv i32 %shl, %src_h
  %0 = tail call i32 @llvm.smax.i32(i32 %div, i32 8)
  %sub = add nsw i32 %0, -7
  br label %if.end7

if.end7:                                          ; preds = %if.else3, %if.else.if.end7_crit_edge, %entry.if.end7_crit_edge
  %idx.0 = phi i32 [ %sub, %if.else3 ], [ 0, %entry.if.end7_crit_edge ], [ 9, %if.else.if.end7_crit_edge ]
  %arrayidx = getelementptr [15 x [320 x i16]], ptr @scaler_vs_coeffs, i32 0, i32 %idx.0
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond9.preheader.for.cond9.preheader_crit_edge, %if.end7
  %cp.029 = phi ptr [ %arrayidx, %if.end7 ], [ %incdec.ptr.4, %for.cond9.preheader.for.cond9.preheader_crit_edge ]
  %coeff_v.028 = phi ptr [ %addr, %if.end7 ], [ %add.ptr, %for.cond9.preheader.for.cond9.preheader_crit_edge ]
  %i.027 = phi i32 [ 0, %if.end7 ], [ %inc14, %for.cond9.preheader.for.cond9.preheader_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %cp.029, i32 1
  %1 = ptrtoint ptr %cp.029 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cp.029, align 2
  %incdec.ptr12 = getelementptr i16, ptr %coeff_v.028, i32 1
  %3 = ptrtoint ptr %coeff_v.028 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %coeff_v.028, align 2
  %incdec.ptr.1 = getelementptr i16, ptr %cp.029, i32 2
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %incdec.ptr, align 2
  %incdec.ptr12.1 = getelementptr i16, ptr %coeff_v.028, i32 2
  %6 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %incdec.ptr12, align 2
  %incdec.ptr.2 = getelementptr i16, ptr %cp.029, i32 3
  %7 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %incdec.ptr.1, align 2
  %incdec.ptr12.2 = getelementptr i16, ptr %coeff_v.028, i32 3
  %9 = ptrtoint ptr %incdec.ptr12.1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %incdec.ptr12.1, align 2
  %incdec.ptr.3 = getelementptr i16, ptr %cp.029, i32 4
  %10 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %incdec.ptr.2, align 2
  %incdec.ptr12.3 = getelementptr i16, ptr %coeff_v.028, i32 4
  %12 = ptrtoint ptr %incdec.ptr12.2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %incdec.ptr12.2, align 2
  %incdec.ptr.4 = getelementptr i16, ptr %cp.029, i32 5
  %13 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %incdec.ptr.3, align 2
  %15 = ptrtoint ptr %incdec.ptr12.3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %incdec.ptr12.3, align 2
  %add.ptr = getelementptr i16, ptr %coeff_v.028, i32 8
  %inc14 = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc14, 64
  br i1 %exitcond.not, label %for.end15, label %for.cond9.preheader.for.cond9.preheader_crit_edge

for.cond9.preheader.for.cond9.preheader_crit_edge: ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.end15:                                        ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %load_coeff_v = getelementptr inbounds %struct.sc_data, ptr %sc, i32 0, i32 5
  %16 = ptrtoint ptr %load_coeff_v to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %load_coeff_v, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sc_config_scaler(ptr nocapture noundef readonly %sc, ptr nocapture noundef %sc_reg0, ptr nocapture noundef writeonly %sc_reg8, ptr nocapture noundef writeonly %sc_reg17, i32 noundef %src_w, i32 noundef %src_h, i32 noundef %dst_w, i32 noundef %dst_h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.sc_data, ptr %sc, i32 0, i32 6
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %add.ptr = getelementptr i32, ptr %sc_reg8, i32 1
  %add.ptr2 = getelementptr i32, ptr %sc_reg8, i32 4
  %add.ptr3 = getelementptr i32, ptr %sc_reg8, i32 5
  %add.ptr4 = getelementptr i32, ptr %sc_reg17, i32 7
  %2 = ptrtoint ptr %sc_reg0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sc_reg0, align 4
  %and = and i32 %3, -118784
  call void @__sanitizer_cov_trace_cmp4(i32 %src_w, i32 %dst_w)
  %cmp = icmp eq i32 %src_w, %dst_w
  call void @__sanitizer_cov_trace_cmp4(i32 %src_h, i32 %dst_h)
  %cmp5 = icmp eq i32 %src_h, %dst_h
  %or.cond = and i1 %cmp, %cmp5
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %and, 4
  %4 = ptrtoint ptr %sc_reg0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %sc_reg0, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = udiv i32 %src_w, %dst_w
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div)
  %cmp8 = icmp sgt i32 %div, 4
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or10 = or i32 %and, 258
  br label %if.end16

if.else:                                          ; preds = %if.end
  %or7 = or i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div)
  %cmp11 = icmp sgt i32 %div, 2
  br i1 %cmp11, label %if.then12, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %or13 = or i32 %and, 130
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.else.if.end16_crit_edge, %if.then9
  %spec.select = phi ptr [ @.str.31, %if.else.if.end16_crit_edge ], [ @.str.30, %if.then12 ], [ @.str.29, %if.then9 ]
  %dcm_shift.0 = phi i32 [ 0, %if.else.if.end16_crit_edge ], [ 1, %if.then12 ], [ 2, %if.then9 ]
  %val.0 = phi i32 [ %or7, %if.else.if.end16_crit_edge ], [ %or13, %if.then12 ], [ %or10, %if.then9 ]
  %sub = add i32 %dst_w, -1
  %shr = lshr i32 %src_w, %dcm_shift.0
  %conv = zext i32 %shr to i64
  %sub17 = shl nuw nsw i64 %conv, 24
  %shl = add nsw i64 %sub17, -16777216
  %conv18 = zext i32 %sub to i64
  %call = tail call i64 @div64_u64(i64 noundef %shl, i64 noundef %conv18) #5
  %conv19 = trunc i64 %call to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_config_scaler.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_config_scaler, %do.end)) #5
          to label %if.then24 [label %do.end], !srcloc !130

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_config_scaler.__UNIQUE_ID_ddebug206, ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %src_w, i32 noundef %dst_w, ptr noundef nonnull %spec.select, i32 noundef %conv19) #5
  br label %do.end

do.end:                                           ; preds = %if.then24, %if.end16
  %shr31 = lshr i32 %src_h, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr31, i32 %dst_h)
  %cmp32 = icmp ugt i32 %shr31, %dst_h
  %or35 = or i32 %val.0, 16
  %val.1 = select i1 %cmp32, i32 %or35, i32 %val.0
  br i1 %cmp32, label %if.then39, label %if.else80

if.then39:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl40 = shl i32 %dst_h, 10
  %div41 = udiv i32 %shl40, %src_h
  %conv43 = and i32 %div41, 65535
  %add = add nuw nsw i32 %conv43, 1
  %5 = lshr i32 %add, 1
  %add46 = add nuw nsw i32 %5, %conv43
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add46)
  %cmp47 = icmp ugt i32 %add46, 1023
  %sub50 = add nsw i32 %add46, -1024
  %spec.select205 = select i1 %cmp47, i32 %sub50, i32 %add46
  %shr52215 = lshr i32 %spec.select205, 1
  %add54 = add nsw i32 %spec.select205, -511
  %sub55 = add nsw i32 %add54, %shr52215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub55)
  %cmp56 = icmp slt i32 %sub55, 0
  %sub55.lobit = lshr i32 %sub55, 31
  %row_acc_init_rav.1 = shl nuw nsw i32 %spec.select205, %sub55.lobit
  %add59 = select i1 %cmp56, i32 %spec.select205, i32 0
  %row_acc_init_rav_b.0 = add nsw i32 %add59, %sub55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_config_scaler.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_config_scaler, %if.end103)) #5
          to label %if.then75 [label %if.end103], !srcloc !130

if.then75:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_config_scaler.__UNIQUE_ID_ddebug207, ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %src_h, i32 noundef %dst_h, i32 noundef %conv43, i32 noundef %row_acc_init_rav.1, i32 noundef %row_acc_init_rav_b.0) #5
  br label %if.end103

if.else80:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub81 = shl i32 %src_h, 16
  %shl82 = add i32 %sub81, -65536
  %sub83 = add i32 %dst_h, -1
  %div84 = udiv i32 %shl82, %sub83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_config_scaler.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_config_scaler, %if.end103)) #5
          to label %if.then99 [label %if.end103], !srcloc !130

if.then99:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_config_scaler.__UNIQUE_ID_ddebug208, ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %src_h, i32 noundef %dst_h, i32 noundef %div84) #5
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %if.else80, %if.then75, %if.then39
  %factor.0 = phi i32 [ %div41, %if.then75 ], [ 0, %if.then99 ], [ %div41, %if.then39 ], [ 0, %if.else80 ]
  %row_acc_init_rav.2 = phi i32 [ %row_acc_init_rav.1, %if.then75 ], [ 0, %if.then99 ], [ %row_acc_init_rav.1, %if.then39 ], [ 0, %if.else80 ]
  %row_acc_init_rav_b.1 = phi i32 [ %row_acc_init_rav_b.0, %if.then75 ], [ 0, %if.then99 ], [ %row_acc_init_rav_b.0, %if.then39 ], [ 0, %if.else80 ]
  %row_acc_inc.0 = phi i32 [ 0, %if.then75 ], [ %div84, %if.then99 ], [ 0, %if.then39 ], [ %div84, %if.else80 ]
  %6 = ptrtoint ptr %sc_reg0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %val.1, ptr %sc_reg0, align 4
  %arrayidx105 = getelementptr i32, ptr %sc_reg0, i32 1
  %7 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %row_acc_inc.0, ptr %arrayidx105, align 4
  %arrayidx106 = getelementptr i32, ptr %sc_reg0, i32 2
  %8 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx106, align 4
  %arrayidx107 = getelementptr i32, ptr %sc_reg0, i32 3
  %9 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx107, align 4
  %shl110 = shl i32 %dst_w, 12
  %or113 = or i32 %shl110, %dst_h
  %arrayidx114 = getelementptr i32, ptr %sc_reg0, i32 4
  %10 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or113, ptr %arrayidx114, align 4
  %shl115 = shl i32 %src_w, 12
  %or117 = or i32 %shl115, %src_h
  %arrayidx118 = getelementptr i32, ptr %sc_reg0, i32 5
  %11 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or117, ptr %arrayidx118, align 4
  %shl119 = shl nsw i32 %row_acc_init_rav_b.1, 10
  %or121 = or i32 %shl119, %row_acc_init_rav.2
  %arrayidx122 = getelementptr i32, ptr %sc_reg0, i32 6
  %12 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or121, ptr %arrayidx122, align 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv19, ptr %add.ptr, align 4
  %14 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %add.ptr2, align 4
  %conv124 = and i32 %factor.0, 65535
  %15 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv124, ptr %add.ptr3, align 4
  %shl125 = shl i32 %src_w, 16
  %or127 = or i32 %shl125, %src_h
  %16 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or127, ptr %add.ptr4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sc_create(ptr noundef %pdev, ptr noundef %res_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc_create.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sc_create, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !130

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc_create.__UNIQUE_ID_ddebug209, ptr noundef %dev, ptr noundef nonnull @.str.35) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev4, i32 noundef 24, i32 noundef 3520) #5
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.36) #8
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %pdev14 = getelementptr inbounds %struct.sc_data, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %pdev14 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev14, align 4
  %call15 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %res_name) #5
  %res = getelementptr inbounds %struct.sc_data, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call15, ptr %res, align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.40, ptr noundef %res_name) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call ptr @devm_ioremap_resource(ptr noundef %dev4, ptr noundef nonnull %call15) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call27, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr %call27, ptr %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end21, %do.end10
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end21 ], [ inttoptr (i32 -12 to ptr), %do.end10 ], [ %spec.select, %if.end24 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !77, !79, !81, !82, !83, !84, !85, !86, !88, !89, !91, !92, !94, !96, !97, !98, !100, !101, !102, !103, !104, !106, !107, !108, !110, !112, !114, !116, !117, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 28, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug183, !1, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 30, i32 2}
!8 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug184, !7, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug185, !11, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 31, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug186, !14, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 32, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug187, !17, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 33, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug188, !20, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 34, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug189, !23, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 35, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug190, !26, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 36, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug191, !29, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 37, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug192, !32, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 38, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug193, !35, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 39, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug194, !38, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 40, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug195, !41, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 41, i32 2}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug196, !44, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 42, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug197, !47, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 43, i32 2}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug198, !50, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 44, i32 2}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug199, !53, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 45, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug200, !56, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 46, i32 2}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug201, !59, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 47, i32 2}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug202, !62, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 48, i32 2}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug203, !65, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 49, i32 2}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug204, !68, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 50, i32 2}
!69 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sc_dump_regs.__UNIQUE_ID_ddebug205, !71, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 51, i32 2}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @__ksymtab_sc_dump_regs, !74, !"__ksymtab_sc_dump_regs", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 55, i32 1}
!75 = !{ptr @__ksymtab_sc_set_hs_coeffs, !76, !"__ksymtab_sc_set_hs_coeffs", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 104, i32 1}
!77 = !{ptr @__ksymtab_sc_set_vs_coeffs, !78, !"__ksymtab_sc_set_vs_coeffs", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 145, i32 1}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 206, i32 2}
!81 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sc_config_scaler.__UNIQUE_ID_ddebug206, !80, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!83 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 237, i32 3}
!88 = !{ptr @sc_config_scaler.__UNIQUE_ID_ddebug207, !87, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 246, i32 3}
!91 = !{ptr @sc_config_scaler.__UNIQUE_ID_ddebug208, !90, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
!92 = !{ptr @__ksymtab_sc_config_scaler, !93, !"__ksymtab_sc_config_scaler", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 273, i32 1}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 279, i32 2}
!96 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sc_create.__UNIQUE_ID_ddebug209, !95, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 283, i32 3}
!100 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @sc_create._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @sc_create._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 291, i32 3}
!106 = !{ptr @sc_create._entry.39, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @sc_create._entry_ptr.41, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @__ksymtab_sc_create, !109, !"__ksymtab_sc_create", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 302, i32 1}
!110 = !{ptr @__UNIQUE_ID_description210, !111, !"__UNIQUE_ID_description210", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 304, i32 1}
!112 = !{ptr @__UNIQUE_ID_author211, !113, !"__UNIQUE_ID_author211", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 305, i32 1}
!114 = !{ptr @__UNIQUE_ID_file212, !115, !"__UNIQUE_ID_file212", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/ti-vpe/sc.c", i32 306, i32 1}
!116 = !{ptr @__UNIQUE_ID_license213, !115, !"__UNIQUE_ID_license213", i1 false, i1 false}
!117 = !{ptr @scaler_hs_coeffs, !118, !"scaler_hs_coeffs", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/ti-vpe/sc_coeff.h", i32 28, i32 18}
!119 = !{ptr @scaler_vs_coeffs, !120, !"scaler_vs_coeffs", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/ti-vpe/sc_coeff.h", i32 657, i32 18}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{i64 2148168223, i64 2148168228, i64 2148168241, i64 2148168285, i64 2148168319, i64 2148168340}
!131 = !{i64 691000}
!132 = !{i64 2148876173}
