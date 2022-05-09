; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ni_labpc_common.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ni_labpc_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+labpc_common_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_labpc_common_attach\09\09\09\09"
module asm "\09.long\09__crc_labpc_common_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_labpc_common_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22labpc_common_attach\22\09\09\09\09\09"
module asm "__kstrtabns_labpc_common_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+labpc_common_detach\22, \22a\22\09"
module asm "\09.weak\09__crc_labpc_common_detach\09\09\09\09"
module asm "\09.long\09__crc_labpc_common_detach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_labpc_common_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22labpc_common_detach\22\09\09\09\09\09"
module asm "__kstrtabns_labpc_common_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.labpc_private = type { ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.labpc_boardinfo = type { ptr, i32, i8 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_8254 = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i8], ptr }

@__kstrtab_labpc_common_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_labpc_common_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_labpc_common_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @labpc_common_attach to i32), ptr @__kstrtab_labpc_common_attach, ptr @__kstrtabns_labpc_common_attach }, section "___ksymtab_gpl+labpc_common_attach", align 4
@__kstrtab_labpc_common_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_labpc_common_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_labpc_common_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @labpc_common_detach to i32), ptr @__kstrtab_labpc_common_detach, ptr @__kstrtabns_labpc_common_detach }, section "___ksymtab_gpl+labpc_common_detach", align 4
@__initcall__kmod_ni_labpc_common__239_1353_labpc_common_init6 = internal global ptr @labpc_common_init, section ".initcall6.init", align 4
@__exitcall_labpc_common_exit = internal global ptr @labpc_common_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [53 x i8] c"ni_labpc_common.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [82 x i8] c"ni_labpc_common.description=Comedi helper for ni_labpc, ni_labpc_pci, ni_labpc_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [60 x i8] c"ni_labpc_common.file=drivers/comedi/drivers/ni_labpc_common\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [28 x i8] c"ni_labpc_common.license=GPL\00", section ".modinfo", align 1
@labpc_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 823, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"premature interrupt\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"labpc_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/comedi/drivers/ni_labpc_common.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@labpc_interrupt._entry_ptr = internal global ptr @labpc_interrupt._entry, section ".printk_index", align 4
@labpc_interrupt._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 847, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"overrun\0A\00", [23 x i8] zeroinitializer }, align 32
@labpc_interrupt._entry_ptr.7 = internal global ptr @labpc_interrupt._entry.5, section ".printk_index", align 4
@labpc_interrupt._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 857, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"handled timer interrupt?\0A\00", [38 x i8] zeroinitializer }, align 32
@labpc_interrupt._entry_ptr.10 = internal global ptr @labpc_interrupt._entry.8, section ".printk_index", align 4
@labpc_interrupt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 867, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"overflow\0A\00", [22 x i8] zeroinitializer }, align 32
@labpc_interrupt._entry_ptr.13 = internal global ptr @labpc_interrupt._entry.11, section ".printk_index", align 4
@labpc_drain_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 790, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ai timeout, fifo never empties\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"labpc_drain_fifo\00", [47 x i8] zeroinitializer }, align 32
@labpc_drain_fifo._entry_ptr = internal global ptr @labpc_drain_fifo._entry, section ".printk_index", align 4
@range_labpc_1200_ai = internal constant { { i32, [14 x %struct.comedi_krange] }, [52 x i8] } { { i32, [14 x %struct.comedi_krange] } { i32 14, [14 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -250000, i32 250000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 500000, i32 0 }, %struct.comedi_krange { i32 0, i32 200000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }] }, [52 x i8] zeroinitializer }, align 32
@range_labpc_plus_ai = internal constant { { i32, [16 x %struct.comedi_krange] }, [60 x i8] } { { i32, [16 x %struct.comedi_krange] } { i32 16, [16 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -4000000, i32 4000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -250000, i32 250000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 8000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 500000, i32 0 }, %struct.comedi_krange { i32 0, i32 200000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@labpc_ai_check_chanlist.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 115, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ni_labpc_common\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"labpc_ai_check_chanlist\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"channel scanning order specified in chanlist is not supported by hardware\0A\00", [53 x i8] zeroinitializer }, align 32
@labpc_ai_check_chanlist.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 116, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@labpc_ai_check_chanlist.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@labpc_ai_check_chanlist.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 0, i8 120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"entries in chanlist must all have the same range\0A\00", [46 x i8] zeroinitializer }, align 32
@labpc_ai_check_chanlist.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 0, i8 122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"entries in chanlist must all have the same reference\0A\00", [42 x i8] zeroinitializer }, align 32
@range_labpc_ao = internal constant { { i32, [2 x %struct.comedi_krange] }, [36 x i8] } { { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }] }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 32]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 823, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 847, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 857, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 867, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 790, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"range_labpc_1200_ai\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 51, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"range_labpc_plus_ai\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 30, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 459, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 481, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 487, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"range_labpc_ao\00", align 1
@___asan_gen_.93 = private constant [44 x i8] c"../drivers/comedi/drivers/ni_labpc_common.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 70, i32 35 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_labpc_common_exit, ptr @__initcall__kmod_ni_labpc_common__239_1353_labpc_common_init6, ptr @__ksymtab_labpc_common_attach, ptr @__ksymtab_labpc_common_detach, ptr @labpc_common_exit, ptr @labpc_drain_fifo._entry, ptr @labpc_drain_fifo._entry_ptr, ptr @labpc_interrupt._entry, ptr @labpc_interrupt._entry.11, ptr @labpc_interrupt._entry.5, ptr @labpc_interrupt._entry.8, ptr @labpc_interrupt._entry_ptr, ptr @labpc_interrupt._entry_ptr.10, ptr @labpc_interrupt._entry_ptr.13, ptr @labpc_interrupt._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @range_labpc_1200_ai, ptr @range_labpc_plus_ai, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @range_labpc_ao], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @labpc_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @labpc_interrupt._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @labpc_interrupt._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @labpc_interrupt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @labpc_drain_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_labpc_1200_ai to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_labpc_plus_ai to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_labpc_ao to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @labpc_common_attach(ptr noundef %dev, i32 noundef %irq, i32 noundef %isr_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %call = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 64) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %tobool1.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool1.not, ptr @labpc_inb, ptr @labpc_readb
  %spec.select296 = select i1 %tobool1.not, ptr @labpc_outb, ptr @labpc_writeb
  %4 = getelementptr inbounds %struct.labpc_private, ptr %call, i32 0, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select, ptr %4, align 4
  %6 = getelementptr inbounds %struct.labpc_private, ptr %call, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select296, ptr %6, align 8
  %cmd1 = getelementptr inbounds %struct.labpc_private, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd1, align 8
  tail call void %spec.select296(ptr noundef %dev, i32 noundef %9, i32 noundef 0) #6
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %6, align 8
  %cmd2 = getelementptr inbounds %struct.labpc_private, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd2, align 4
  tail call void %11(ptr noundef %dev, i32 noundef %13, i32 noundef 1) #6
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %6, align 8
  %cmd3 = getelementptr inbounds %struct.labpc_private, ptr %call, i32 0, i32 5
  %16 = ptrtoint ptr %cmd3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd3, align 8
  tail call void %15(ptr noundef %dev, i32 noundef %17, i32 noundef 2) #6
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %6, align 8
  %cmd4 = getelementptr inbounds %struct.labpc_private, ptr %call, i32 0, i32 6
  %20 = ptrtoint ptr %cmd4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd4, align 4
  tail call void %19(ptr noundef %dev, i32 noundef %21, i32 noundef 15) #6
  %is_labpc1200 = getelementptr inbounds %struct.labpc_boardinfo, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %is_labpc1200 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %is_labpc1200, align 4
  %23 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not = icmp eq i8 %23, 0
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %6, align 8
  %cmd5 = getelementptr inbounds %struct.labpc_private, ptr %call, i32 0, i32 7
  %26 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd5, align 8
  tail call void %25(ptr noundef %dev, i32 noundef %27, i32 noundef 28) #6
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %6, align 8
  %cmd6 = getelementptr inbounds %struct.labpc_private, ptr %call, i32 0, i32 8
  %30 = ptrtoint ptr %cmd6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmd6, align 4
  tail call void %29(ptr noundef %dev, i32 noundef %31, i32 noundef 14) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool15.not = icmp eq i32 %irq, 0
  br i1 %tobool15.not, label %if.end14.if.end21_crit_edge, label %if.then16

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then16:                                        ; preds = %if.end14
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %32 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @labpc_interrupt, ptr noundef null, i32 noundef %isr_flags, ptr noundef %33, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then18, label %if.then16.if.end21_crit_edge

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %irq19 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %34 = ptrtoint ptr %irq19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %irq, ptr %irq19, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then16.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  %35 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio, align 4
  %tobool23.not = icmp eq ptr %36, null
  br i1 %tobool23.not, label %if.else30, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %36, i32 24
  %call26 = tail call ptr @comedi_8254_mm_init(ptr noundef %add.ptr, i32 noundef 500, i32 noundef 1, i32 noundef 0) #6
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %37 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call26, ptr %pacer, align 4
  %38 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio, align 4
  %add.ptr28 = getelementptr i8, ptr %39, i32 20
  %call29 = tail call ptr @comedi_8254_mm_init(ptr noundef %add.ptr28, i32 noundef 500, i32 noundef 1, i32 noundef 0) #6
  br label %if.end37

if.else30:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %40 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase, align 4
  %add = add i32 %41, 24
  %call31 = tail call ptr @comedi_8254_init(i32 noundef %add, i32 noundef 500, i32 noundef 1, i32 noundef 0) #6
  %pacer32 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %42 = ptrtoint ptr %pacer32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call31, ptr %pacer32, align 4
  %43 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iobase, align 4
  %add34 = add i32 %44, 20
  %call35 = tail call ptr @comedi_8254_init(i32 noundef %add34, i32 noundef 500, i32 noundef 1, i32 noundef 0) #6
  br label %if.end37

if.end37:                                         ; preds = %if.else30, %if.then24
  %call29.sink = phi ptr [ %call35, %if.else30 ], [ %call29, %if.then24 ]
  %45 = getelementptr inbounds %struct.labpc_private, ptr %call, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call29.sink, ptr %45, align 4
  %pacer38 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %47 = ptrtoint ptr %pacer38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pacer38, align 4
  %tobool39.not = icmp eq ptr %48, null
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %lor.lhs.false

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end37
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %45, align 4
  %tobool41.not = icmp eq ptr %50, null
  br i1 %tobool41.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end43

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false
  %call44 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %51 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 4
  %54 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 7405568, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 3
  %55 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 8, ptr %n_chan, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 5
  %56 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8, ptr %len_chanlist, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 13
  %57 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4095, ptr %maxdata, align 4
  %58 = ptrtoint ptr %is_labpc1200 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load49 = load i8, ptr %is_labpc1200, align 4
  %59 = and i8 %bf.load49, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool53.not = icmp eq i8 %59, 0
  %cond = select i1 %tobool53.not, ptr @range_labpc_plus_ai, ptr @range_labpc_1200_ai
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 15
  %60 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %cond, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 18
  %61 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @labpc_ai_insn_read, ptr %insn_read, align 4
  %irq54 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %62 = ptrtoint ptr %irq54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool55.not = icmp eq i32 %63, 0
  br i1 %tobool55.not, label %if.end47.if.end58_crit_edge, label %if.then56

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then56:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %64 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %52, ptr %read_subdev, align 4
  %65 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %66, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 22
  %67 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @labpc_ai_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 23
  %68 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @labpc_ai_cmdtest, ptr %do_cmdtest, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 25
  %69 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @labpc_cancel, ptr %cancel, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end47.if.end58_crit_edge
  %70 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %subdevices, align 4
  %72 = ptrtoint ptr %is_labpc1200 to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load61 = load i8, ptr %is_labpc1200, align 4
  %73 = and i8 %bf.load61, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool65.not = icmp eq i8 %73, 0
  br i1 %tobool65.not, label %if.else79, label %if.then66

if.then66:                                        ; preds = %if.end58
  %arrayidx60 = getelementptr %struct.comedi_subdevice, ptr %71, i32 1
  %type67 = getelementptr %struct.comedi_subdevice, ptr %71, i32 1, i32 2
  %74 = ptrtoint ptr %type67 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %type67, align 4
  %subdev_flags68 = getelementptr %struct.comedi_subdevice, ptr %71, i32 1, i32 4
  %75 = ptrtoint ptr %subdev_flags68 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1245184, ptr %subdev_flags68, align 4
  %n_chan69 = getelementptr %struct.comedi_subdevice, ptr %71, i32 1, i32 3
  %76 = ptrtoint ptr %n_chan69 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %n_chan69, align 4
  %maxdata70 = getelementptr %struct.comedi_subdevice, ptr %71, i32 1, i32 13
  %77 = ptrtoint ptr %maxdata70 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4095, ptr %maxdata70, align 4
  %range_table71 = getelementptr %struct.comedi_subdevice, ptr %71, i32 1, i32 15
  %78 = ptrtoint ptr %range_table71 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @range_labpc_ao, ptr %range_table71, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %71, i32 1, i32 19
  %79 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @labpc_ao_insn_write, ptr %insn_write, align 4
  %call72 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx60) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %for.cond.preheader, label %if.then66.cleanup_crit_edge

if.then66.cleanup_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then66
  %80 = ptrtoint ptr %n_chan69 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %n_chan69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp77290 = icmp sgt i32 %81, 0
  br i1 %cmp77290, label %for.body.lr.ph, label %for.cond.preheader.if.end81_crit_edge

for.cond.preheader.if.end81_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %readback.i = getelementptr %struct.comedi_subdevice, ptr %71, i32 1, i32 32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0291 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %82 = ptrtoint ptr %maxdata70 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %maxdata70, align 4
  %div286 = lshr i32 %83, 1
  %84 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %private.i, align 4
  %write_byte.i = getelementptr inbounds %struct.labpc_private, ptr %85, i32 0, i32 13
  %86 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write_byte.i, align 8
  %and.i = and i32 %div286, 255
  %mul.i = shl nuw i32 %i.0291, 1
  %add.i = add i32 %mul.i, 4
  tail call void %87(ptr noundef %dev, i32 noundef %and.i, i32 noundef %add.i) #6
  %88 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write_byte.i, align 8
  %shr.i = lshr i32 %83, 9
  %and2.i = and i32 %shr.i, 255
  %add4.i = add i32 %mul.i, 5
  tail call void %89(ptr noundef %dev, i32 noundef %and2.i, i32 noundef %add4.i) #6
  %90 = ptrtoint ptr %readback.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %readback.i, align 4
  %arrayidx.i = getelementptr i32, ptr %91, i32 %i.0291
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %div286, ptr %arrayidx.i, align 4
  %inc = add nuw nsw i32 %i.0291, 1
  %93 = ptrtoint ptr %n_chan69 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %n_chan69, align 4
  %cmp77 = icmp slt i32 %inc, %94
  br i1 %cmp77, label %for.body.for.body_crit_edge, label %for.body.if.end81_crit_edge

for.body.if.end81_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.else79:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %type80 = getelementptr %struct.comedi_subdevice, ptr %71, i32 1, i32 2
  %95 = ptrtoint ptr %type80 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %type80, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %for.body.if.end81_crit_edge, %for.cond.preheader.if.end81_crit_edge
  %96 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %subdevices, align 4
  %arrayidx83 = getelementptr %struct.comedi_subdevice, ptr %97, i32 2
  %98 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmio, align 4
  %tobool85.not = icmp eq ptr %99, null
  br i1 %tobool85.not, label %if.else88, label %if.then86

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %call87 = tail call i32 @subdev_8255_mm_init(ptr noundef %dev, ptr noundef %arrayidx83, ptr noundef null, i32 noundef 16) #6
  br label %if.end90

if.else88:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %call89 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx83, ptr noundef null, i32 noundef 16) #6
  br label %if.end90

if.end90:                                         ; preds = %if.else88, %if.then86
  %ret.0 = phi i32 [ %call87, %if.then86 ], [ %call89, %if.else88 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool91.not = icmp eq i32 %ret.0, 0
  br i1 %tobool91.not, label %if.end93, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end93:                                         ; preds = %if.end90
  %100 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %subdevices, align 4
  %102 = ptrtoint ptr %is_labpc1200 to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load97 = load i8, ptr %is_labpc1200, align 4
  %103 = and i8 %bf.load97, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool101.not = icmp eq i8 %103, 0
  br i1 %tobool101.not, label %if.else124, label %if.then102

if.then102:                                       ; preds = %if.end93
  %arrayidx95 = getelementptr %struct.comedi_subdevice, ptr %101, i32 3
  %type103 = getelementptr %struct.comedi_subdevice, ptr %101, i32 3, i32 2
  %104 = ptrtoint ptr %type103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 9, ptr %type103, align 4
  %subdev_flags104 = getelementptr %struct.comedi_subdevice, ptr %101, i32 3, i32 4
  %105 = ptrtoint ptr %subdev_flags104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 458752, ptr %subdev_flags104, align 4
  %n_chan105 = getelementptr %struct.comedi_subdevice, ptr %101, i32 3, i32 3
  %106 = ptrtoint ptr %n_chan105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 16, ptr %n_chan105, align 4
  %maxdata106 = getelementptr %struct.comedi_subdevice, ptr %101, i32 3, i32 13
  %107 = ptrtoint ptr %maxdata106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 255, ptr %maxdata106, align 4
  %insn_write107 = getelementptr %struct.comedi_subdevice, ptr %101, i32 3, i32 19
  %108 = ptrtoint ptr %insn_write107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @labpc_calib_insn_write, ptr %insn_write107, align 4
  %call108 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx95) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %for.cond112.preheader, label %if.then102.cleanup_crit_edge

if.then102.cleanup_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond112.preheader:                            ; preds = %if.then102
  %109 = ptrtoint ptr %n_chan105 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %n_chan105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp114292 = icmp sgt i32 %110, 0
  br i1 %cmp114292, label %for.body115.lr.ph, label %for.cond112.preheader.if.end126_crit_edge

for.cond112.preheader.if.end126_crit_edge:        ; preds = %for.cond112.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

for.body115.lr.ph:                                ; preds = %for.cond112.preheader
  %readback = getelementptr %struct.comedi_subdevice, ptr %101, i32 3, i32 32
  br label %for.body115

for.body115:                                      ; preds = %for.body115.for.body115_crit_edge, %for.body115.lr.ph
  %i.1293 = phi i32 [ 0, %for.body115.lr.ph ], [ %inc122, %for.body115.for.body115_crit_edge ]
  %111 = ptrtoint ptr %maxdata106 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %maxdata106, align 4
  %div117284 = lshr i32 %112, 1
  tail call fastcc void @write_caldac(ptr noundef %dev, i32 noundef %i.1293, i32 noundef %div117284)
  %113 = ptrtoint ptr %maxdata106 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %maxdata106, align 4
  %div119285 = lshr i32 %114, 1
  %115 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %readback, align 4
  %arrayidx120 = getelementptr i32, ptr %116, i32 %i.1293
  %117 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %div119285, ptr %arrayidx120, align 4
  %inc122 = add nuw nsw i32 %i.1293, 1
  %118 = ptrtoint ptr %n_chan105 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %n_chan105, align 4
  %cmp114 = icmp slt i32 %inc122, %119
  br i1 %cmp114, label %for.body115.for.body115_crit_edge, label %for.body115.if.end126_crit_edge

for.body115.if.end126_crit_edge:                  ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

for.body115.for.body115_crit_edge:                ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body115

if.else124:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %type125 = getelementptr %struct.comedi_subdevice, ptr %101, i32 3, i32 2
  %120 = ptrtoint ptr %type125 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %type125, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.else124, %for.body115.if.end126_crit_edge, %for.cond112.preheader.if.end126_crit_edge
  %121 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %subdevices, align 4
  %123 = ptrtoint ptr %is_labpc1200 to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load130 = load i8, ptr %is_labpc1200, align 4
  %124 = and i8 %bf.load130, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool134.not = icmp eq i8 %124, 0
  br i1 %tobool134.not, label %if.else155, label %if.then135

if.then135:                                       ; preds = %if.end126
  %arrayidx128 = getelementptr %struct.comedi_subdevice, ptr %122, i32 4
  %type136 = getelementptr %struct.comedi_subdevice, ptr %122, i32 4, i32 2
  %125 = ptrtoint ptr %type136 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 8, ptr %type136, align 4
  %subdev_flags137 = getelementptr %struct.comedi_subdevice, ptr %122, i32 4, i32 4
  %126 = ptrtoint ptr %subdev_flags137 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 458752, ptr %subdev_flags137, align 4
  %n_chan138 = getelementptr %struct.comedi_subdevice, ptr %122, i32 4, i32 3
  %127 = ptrtoint ptr %n_chan138 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 256, ptr %n_chan138, align 4
  %maxdata139 = getelementptr %struct.comedi_subdevice, ptr %122, i32 4, i32 13
  %128 = ptrtoint ptr %maxdata139 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 255, ptr %maxdata139, align 4
  %insn_write140 = getelementptr %struct.comedi_subdevice, ptr %122, i32 4, i32 19
  %129 = ptrtoint ptr %insn_write140 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @labpc_eeprom_insn_write, ptr %insn_write140, align 4
  %call141 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %for.cond145.preheader, label %if.then135.cleanup_crit_edge

if.then135.cleanup_crit_edge:                     ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond145.preheader:                            ; preds = %if.then135
  %130 = ptrtoint ptr %n_chan138 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %n_chan138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp147294 = icmp sgt i32 %131, 0
  br i1 %cmp147294, label %for.body148.lr.ph, label %for.cond145.preheader.cleanup_crit_edge

for.cond145.preheader.cleanup_crit_edge:          ; preds = %for.cond145.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body148.lr.ph:                                ; preds = %for.cond145.preheader
  %private.i287 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %readback150 = getelementptr %struct.comedi_subdevice, ptr %122, i32 4, i32 32
  br label %for.body148

for.body148:                                      ; preds = %labpc_eeprom_read.exit.for.body148_crit_edge, %for.body148.lr.ph
  %i.2295 = phi i32 [ 0, %for.body148.lr.ph ], [ %inc153, %labpc_eeprom_read.exit.for.body148_crit_edge ]
  %132 = ptrtoint ptr %private.i287 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %private.i287, align 4
  %cmd5.i = getelementptr inbounds %struct.labpc_private, ptr %133, i32 0, i32 7
  %134 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cmd5.i, align 8
  %and.i288 = and i32 %135, -129
  store i32 %and.i288, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748) #6
  %write_byte.i289 = getelementptr inbounds %struct.labpc_private, ptr %133, i32 0, i32 13
  %137 = ptrtoint ptr %write_byte.i289 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write_byte.i289, align 8
  %139 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cmd5.i, align 8
  tail call void %138(ptr noundef %dev, i32 noundef %140, i32 noundef 28) #6
  %141 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cmd5.i, align 8
  %or.i = or i32 %142, 132
  store i32 %or.i, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748) #6
  %144 = ptrtoint ptr %write_byte.i289 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write_byte.i289, align 8
  %146 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cmd5.i, align 8
  tail call void %145(ptr noundef %dev, i32 noundef %147, i32 noundef 28) #6
  %148 = ptrtoint ptr %private.i287 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %private.i287, align 4
  %cmd5.i.i = getelementptr inbounds %struct.labpc_private, ptr %149, i32 0, i32 7
  %write_byte.i.i = getelementptr inbounds %struct.labpc_private, ptr %149, i32 0, i32 13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body148
  %i.023.i.i = phi i32 [ 1, %for.body148 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %150 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cmd5.i.i, align 8
  %and.i.i = and i32 %151, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.023.i.i)
  %tobool.not.i.i = icmp ult i32 %i.023.i.i, 7
  %or.i.i = or i32 %and.i.i, 64
  %storemerge.i.i = select i1 %tobool.not.i.i, i32 %and.i.i, i32 %or.i.i
  %152 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %storemerge.i.i, ptr %cmd5.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748) #6
  %154 = ptrtoint ptr %write_byte.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write_byte.i.i, align 8
  %156 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cmd5.i.i, align 8
  tail call void %155(ptr noundef %dev, i32 noundef %157, i32 noundef 28) #6
  %158 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %cmd5.i.i, align 8
  %or7.i.i = or i32 %159, 32
  store i32 %or7.i.i, ptr %cmd5.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %160(i32 noundef 214748) #6
  %161 = ptrtoint ptr %write_byte.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write_byte.i.i, align 8
  %163 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cmd5.i.i, align 8
  tail call void %162(ptr noundef %dev, i32 noundef %164, i32 noundef 28) #6
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.i = icmp eq i32 %inc.i.i, 9
  br i1 %exitcond.i, label %labpc_serial_out.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

labpc_serial_out.exit.i:                          ; preds = %for.body.i.i
  %165 = ptrtoint ptr %private.i287 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %private.i287, align 4
  %cmd5.i24.i = getelementptr inbounds %struct.labpc_private, ptr %166, i32 0, i32 7
  %write_byte.i25.i = getelementptr inbounds %struct.labpc_private, ptr %166, i32 0, i32 13
  br label %for.body.i37.i

for.body.i37.i:                                   ; preds = %for.body.i37.i.for.body.i37.i_crit_edge, %labpc_serial_out.exit.i
  %i.023.i26.i = phi i32 [ 1, %labpc_serial_out.exit.i ], [ %inc.i35.i, %for.body.i37.i.for.body.i37.i_crit_edge ]
  %167 = ptrtoint ptr %cmd5.i24.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cmd5.i24.i, align 8
  %and.i27.i = and i32 %168, -97
  %sub.i28.i = sub nuw nsw i32 8, %i.023.i26.i
  %shl.i29.i = shl nuw nsw i32 1, %sub.i28.i
  %and1.i30.i = and i32 %shl.i29.i, %i.2295
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i)
  %tobool.not.i31.i = icmp eq i32 %and1.i30.i, 0
  %or.i32.i = or i32 %and.i27.i, 64
  %storemerge.i33.i = select i1 %tobool.not.i31.i, i32 %and.i27.i, i32 %or.i32.i
  %169 = ptrtoint ptr %cmd5.i24.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %storemerge.i33.i, ptr %cmd5.i24.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %170(i32 noundef 214748) #6
  %171 = ptrtoint ptr %write_byte.i25.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %write_byte.i25.i, align 8
  %173 = ptrtoint ptr %cmd5.i24.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %cmd5.i24.i, align 8
  tail call void %172(ptr noundef %dev, i32 noundef %174, i32 noundef 28) #6
  %175 = ptrtoint ptr %cmd5.i24.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %cmd5.i24.i, align 8
  %or7.i34.i = or i32 %176, 32
  store i32 %or7.i34.i, ptr %cmd5.i24.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %177 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %177(i32 noundef 214748) #6
  %178 = ptrtoint ptr %write_byte.i25.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write_byte.i25.i, align 8
  %180 = ptrtoint ptr %cmd5.i24.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %cmd5.i24.i, align 8
  tail call void %179(ptr noundef %dev, i32 noundef %181, i32 noundef 28) #6
  %inc.i35.i = add nuw nsw i32 %i.023.i26.i, 1
  %exitcond51.i = icmp eq i32 %inc.i35.i, 9
  br i1 %exitcond51.i, label %labpc_serial_out.exit38.i, label %for.body.i37.i.for.body.i37.i_crit_edge

for.body.i37.i.for.body.i37.i_crit_edge:          ; preds = %for.body.i37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i37.i

labpc_serial_out.exit38.i:                        ; preds = %for.body.i37.i
  %182 = ptrtoint ptr %private.i287 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %private.i287, align 4
  %cmd5.i40.i = getelementptr inbounds %struct.labpc_private, ptr %183, i32 0, i32 7
  %write_byte.i41.i = getelementptr inbounds %struct.labpc_private, ptr %183, i32 0, i32 13
  %read_byte.i.i = getelementptr inbounds %struct.labpc_private, ptr %183, i32 0, i32 12
  %stat2.i.i = getelementptr inbounds %struct.labpc_private, ptr %183, i32 0, i32 10
  br label %for.body.i50.i

for.body.i50.i:                                   ; preds = %for.body.i50.i.for.body.i50.i_crit_edge, %labpc_serial_out.exit38.i
  %i.023.i42.i = phi i32 [ 1, %labpc_serial_out.exit38.i ], [ %inc.i49.i, %for.body.i50.i.for.body.i50.i_crit_edge ]
  %value.022.i.i = phi i32 [ 0, %labpc_serial_out.exit38.i ], [ %value.1.i.i, %for.body.i50.i.for.body.i50.i_crit_edge ]
  %184 = ptrtoint ptr %cmd5.i40.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cmd5.i40.i, align 8
  %or.i43.i = or i32 %185, 32
  store i32 %or.i43.i, ptr %cmd5.i40.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %186 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %186(i32 noundef 214748) #6
  %187 = ptrtoint ptr %write_byte.i41.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %write_byte.i41.i, align 8
  %189 = ptrtoint ptr %cmd5.i40.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %cmd5.i40.i, align 8
  tail call void %188(ptr noundef %dev, i32 noundef %190, i32 noundef 28) #6
  %191 = ptrtoint ptr %cmd5.i40.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cmd5.i40.i, align 8
  %and.i44.i = and i32 %192, -33
  store i32 %and.i44.i, ptr %cmd5.i40.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %193(i32 noundef 214748) #6
  %194 = ptrtoint ptr %write_byte.i41.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %write_byte.i41.i, align 8
  %196 = ptrtoint ptr %cmd5.i40.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cmd5.i40.i, align 8
  tail call void %195(ptr noundef %dev, i32 noundef %197, i32 noundef 28) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %198 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %198(i32 noundef 214748) #6
  %199 = ptrtoint ptr %read_byte.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %read_byte.i.i, align 4
  %call.i.i = tail call i32 %200(ptr noundef %dev, i32 noundef 29) #6
  %201 = ptrtoint ptr %stat2.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %call.i.i, ptr %stat2.i.i, align 4
  %and6.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool.not.i45.i = icmp eq i32 %and6.i.i, 0
  %sub.i46.i = sub nuw nsw i32 8, %i.023.i42.i
  %shl.i47.i = shl nuw nsw i32 1, %sub.i46.i
  %or7.i48.i = select i1 %tobool.not.i45.i, i32 0, i32 %shl.i47.i
  %value.1.i.i = or i32 %or7.i48.i, %value.022.i.i
  %inc.i49.i = add nuw nsw i32 %i.023.i42.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i49.i, 9
  br i1 %exitcond.not.i.i, label %labpc_eeprom_read.exit, label %for.body.i50.i.for.body.i50.i_crit_edge

for.body.i50.i.for.body.i50.i_crit_edge:          ; preds = %for.body.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i50.i

labpc_eeprom_read.exit:                           ; preds = %for.body.i50.i
  %202 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %cmd5.i, align 8
  %and6.i = and i32 %203, -133
  store i32 %and6.i, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %204 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %204(i32 noundef 214748) #6
  %205 = ptrtoint ptr %write_byte.i289 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %write_byte.i289, align 8
  %207 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %cmd5.i, align 8
  tail call void %206(ptr noundef %dev, i32 noundef %208, i32 noundef 28) #6
  %209 = ptrtoint ptr %readback150 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %readback150, align 4
  %arrayidx151 = getelementptr i32, ptr %210, i32 %i.2295
  %211 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %value.1.i.i, ptr %arrayidx151, align 4
  %inc153 = add nuw nsw i32 %i.2295, 1
  %212 = ptrtoint ptr %n_chan138 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %n_chan138, align 4
  %cmp147 = icmp slt i32 %inc153, %213
  br i1 %cmp147, label %labpc_eeprom_read.exit.for.body148_crit_edge, label %labpc_eeprom_read.exit.cleanup_crit_edge

labpc_eeprom_read.exit.cleanup_crit_edge:         ; preds = %labpc_eeprom_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

labpc_eeprom_read.exit.for.body148_crit_edge:     ; preds = %labpc_eeprom_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body148

if.else155:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  %type156 = getelementptr %struct.comedi_subdevice, ptr %122, i32 4, i32 2
  %214 = ptrtoint ptr %type156 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 0, ptr %type156, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else155, %labpc_eeprom_read.exit.cleanup_crit_edge, %for.cond145.preheader.cleanup_crit_edge, %if.then135.cleanup_crit_edge, %if.then102.cleanup_crit_edge, %if.end90.cleanup_crit_edge, %if.then66.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %lor.lhs.false.cleanup_crit_edge ], [ -12, %if.end37.cleanup_crit_edge ], [ %call44, %if.end43.cleanup_crit_edge ], [ %call72, %if.then66.cleanup_crit_edge ], [ %ret.0, %if.end90.cleanup_crit_edge ], [ %call108, %if.then102.cleanup_crit_edge ], [ %call141, %if.then135.cleanup_crit_edge ], [ 0, %if.else155 ], [ 0, %for.cond145.preheader.cleanup_crit_edge ], [ 0, %labpc_eeprom_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @labpc_readb(ptr nocapture noundef readonly %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @labpc_writeb(ptr nocapture noundef readonly %dev, i32 noundef %byte, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %byte to i8
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #6, !srcloc !73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @labpc_inb(ptr nocapture noundef readonly %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, %reg
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %conv = zext i8 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @labpc_outb(ptr nocapture noundef readonly %dev, i32 noundef %byte, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %byte to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, %reg
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv) #6, !srcloc !73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @labpc_interrupt(i32 noundef %irq, ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %2 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_subdev, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %4 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %5 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 9
  %7 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %board_ptr, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %async1, align 4
  %read_byte = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_byte, align 4
  %call = tail call i32 %12(ptr noundef %d, i32 noundef 0) #6
  %stat1 = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %stat1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call, ptr %stat1, align 8
  %is_labpc1200 = getelementptr inbounds %struct.labpc_boardinfo, ptr %8, i32 0, i32 2
  %14 = ptrtoint ptr %is_labpc1200 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load3 = load i8, ptr %is_labpc1200, align 4
  %15 = and i8 %bf.load3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_byte, align 4
  %call9 = tail call i32 %17(ptr noundef %d, i32 noundef 29) #6
  %stat2 = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %stat2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call9, ptr %stat2, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %19 = ptrtoint ptr %stat1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stat1, align 8
  %and = and i32 %20, 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end10
  %stat212 = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %stat212 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stat212, align 4
  %23 = and i32 %22, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %.not = icmp eq i32 %23, 4
  br i1 %.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %and22 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end30, label %if.then24

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %write_byte = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_byte, align 8
  tail call void %25(ptr noundef %d, i32 noundef 1, i32 noundef 8) #6
  %events = getelementptr inbounds %struct.comedi_async, ptr %10, i32 0, i32 16
  %26 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %events, align 4
  %or = or i32 %27, 16
  store i32 %or, ptr %events, align 4
  %call25 = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %3) #6
  %class_dev29 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %28 = ptrtoint ptr %class_dev29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %class_dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %current_transfer = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 11
  %30 = ptrtoint ptr %current_transfer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %current_transfer, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp31 = icmp eq i32 %31, 2
  br i1 %cmp31, label %if.end30.if.end34_crit_edge, label %if.else

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @labpc_drain_fifo(ptr noundef %d)
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end30.if.end34_crit_edge
  %32 = ptrtoint ptr %stat1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stat1, align 8
  %and36 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end44_crit_edge, label %do.end41

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev42 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %34 = ptrtoint ptr %class_dev42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %class_dev42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.9) #9
  %write_byte43 = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 13
  %36 = ptrtoint ptr %write_byte43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_byte43, align 8
  tail call void %37(ptr noundef %d, i32 noundef 1, i32 noundef 12) #6
  br label %if.end44

if.end44:                                         ; preds = %do.end41, %if.end34.if.end44_crit_edge
  %38 = ptrtoint ptr %stat1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stat1, align 8
  %and46 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end57, label %if.then48

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %write_byte49 = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 13
  %40 = ptrtoint ptr %write_byte49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_byte49, align 8
  tail call void %41(ptr noundef %d, i32 noundef 1, i32 noundef 8) #6
  %events50 = getelementptr inbounds %struct.comedi_async, ptr %10, i32 0, i32 16
  %42 = ptrtoint ptr %events50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %events50, align 4
  %or51 = or i32 %43, 16
  store i32 %or51, ptr %events50, align 4
  %call52 = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %3) #6
  %class_dev56 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %44 = ptrtoint ptr %class_dev56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %class_dev56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end44
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %10, i32 0, i32 17, i32 10
  %46 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %47)
  %cmp58 = icmp eq i32 %47, 64
  br i1 %cmp58, label %if.then59, label %if.end57.if.end67_crit_edge

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then59:                                        ; preds = %if.end57
  %stat260 = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 10
  %48 = ptrtoint ptr %stat260 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stat260, align 4
  %and61 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.then59.if.end67thread-pre-split_crit_edge, label %if.then63

if.then59.if.end67thread-pre-split_crit_edge:     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67thread-pre-split

if.then63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @labpc_drain_fifo(ptr noundef %d) #6
  %events64 = getelementptr inbounds %struct.comedi_async, ptr %10, i32 0, i32 16
  %50 = ptrtoint ptr %events64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %events64, align 4
  %or65 = or i32 %51, 2
  store i32 %or65, ptr %events64, align 4
  br label %if.end67thread-pre-split

if.end67thread-pre-split:                         ; preds = %if.then63, %if.then59.if.end67thread-pre-split_crit_edge
  %52 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load i32, ptr %stop_src, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end67thread-pre-split, %if.end57.if.end67_crit_edge
  %53 = phi i32 [ %.pr, %if.end67thread-pre-split ], [ %47, %if.end57.if.end67_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %53)
  %cmp69 = icmp eq i32 %53, 32
  br i1 %cmp69, label %if.then70, label %if.end67.if.end76_crit_edge

if.end67.if.end76_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then70:                                        ; preds = %if.end67
  %count = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %cmp71 = icmp eq i64 %55, 0
  br i1 %cmp71, label %if.then72, label %if.then70.if.end76_crit_edge

if.then70.if.end76_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then72:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  %events73 = getelementptr inbounds %struct.comedi_async, ptr %10, i32 0, i32 16
  %56 = ptrtoint ptr %events73 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %events73, align 4
  %or74 = or i32 %57, 2
  store i32 %or74, ptr %events73, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.then70.if.end76_crit_edge, %if.end67.if.end76_crit_edge
  %call77 = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.then48, %if.then24, %land.lhs.true.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %if.then24 ], [ 1, %if.then48 ], [ 1, %if.end76 ], [ 1, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_mm_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @labpc_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %3, 16
  %and2 = and i32 %shr, 255
  %shr4 = lshr i32 %3, 24
  %and5 = and i32 %shr4, 3
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #6
  %cmd2.i = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd2.i, align 4
  %and.i = and i32 %5, -8
  store i32 %and.i, ptr %cmd2.i, align 4
  %write_byte.i = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_byte.i, align 8
  tail call void %7(ptr noundef %dev, i32 noundef %and.i, i32 noundef 1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #6
  %cmd3.i = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %cmd3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cmd3.i, align 8
  %9 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_byte.i, align 8
  tail call void %10(ptr noundef %dev, i32 noundef 0, i32 noundef 2) #6
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %11 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %board_ptr.i, align 4
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private, align 4
  %is_labpc1200.i = getelementptr inbounds %struct.labpc_boardinfo, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %is_labpc1200.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %is_labpc1200.i, align 4
  %16 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %entry.labpc_ai_set_chan_and_gain.exit_crit_edge, label %if.then.i

entry.labpc_ai_set_chan_and_gain.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_ai_set_chan_and_gain.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp.i = icmp ne i32 %and2, 0
  %conv.i = zext i1 %cmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and2)
  %cmp1.i = icmp ugt i32 %and2, 7
  %conv2.i = zext i1 %cmp1.i to i32
  %add.i = add nuw nsw i32 %and2, %conv2.i
  %add3.i = add nuw nsw i32 %add.i, %conv.i
  br label %labpc_ai_set_chan_and_gain.exit

labpc_ai_set_chan_and_gain.exit:                  ; preds = %if.then.i, %entry.labpc_ai_set_chan_and_gain.exit_crit_edge
  %range.addr.0.i = phi i32 [ %add3.i, %if.then.i ], [ %and2, %entry.labpc_ai_set_chan_and_gain.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and5)
  %cmp8.i = icmp eq i32 %and5, 2
  %spec.select.i = zext i1 %cmp8.i to i32
  %chan.addr.0.i = shl i32 %3, %spec.select.i
  %and.i51 = and i32 %chan.addr.0.i, 7
  %cmd1.i = getelementptr inbounds %struct.labpc_private, ptr %14, i32 0, i32 3
  %and12.i = shl nuw nsw i32 %range.addr.0.i, 4
  %shl13.i = and i32 %and12.i, 112
  %or.i = or i32 %shl13.i, %and.i51
  %17 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %cmd1.i, align 8
  %write_byte.i52 = getelementptr inbounds %struct.labpc_private, ptr %14, i32 0, i32 13
  %18 = ptrtoint ptr %write_byte.i52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_byte.i52, align 8
  tail call void %19(ptr noundef %dev, i32 noundef %or.i, i32 noundef 0) #6
  %20 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %board_ptr.i, align 4
  %is_labpc1200.i54 = getelementptr inbounds %struct.labpc_boardinfo, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %is_labpc1200.i54 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i55 = load i8, ptr %is_labpc1200.i54, align 4
  %23 = and i8 %bf.load.i55, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i56 = icmp eq i8 %23, 0
  br i1 %tobool.not.i56, label %labpc_ai_set_chan_and_gain.exit.labpc_setup_cmd6_reg.exit_crit_edge, label %if.end.i

labpc_ai_set_chan_and_gain.exit.labpc_setup_cmd6_reg.exit_crit_edge: ; preds = %labpc_ai_set_chan_and_gain.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_setup_cmd6_reg.exit

if.end.i:                                         ; preds = %labpc_ai_set_chan_and_gain.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp.not.i = icmp ne i32 %and5, 0
  %cmd62.i = getelementptr inbounds %struct.labpc_private, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %cmd62.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd62.i, align 4
  %and.i58 = and i32 %27, -2
  %masksel.i = zext i1 %cmp.not.i to i32
  %and.sink.i = or i32 %and.i58, %masksel.i
  store i32 %and.sink.i, ptr %cmd62.i, align 4
  %range_table.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %28 = ptrtoint ptr %range_table.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %range_table.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.comedi_lrange, ptr %29, i32 0, i32 1, i32 %and2
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  %and9.i = and i32 %and.sink.i, -227
  %32 = lshr i32 %31, 30
  %33 = and i32 %32, 2
  %34 = or i32 %33, %and9.i
  %and33.sink.i = xor i32 %34, 2
  store i32 %and33.sink.i, ptr %cmd62.i, align 4
  %write_byte.i59 = getelementptr inbounds %struct.labpc_private, ptr %25, i32 0, i32 13
  %35 = ptrtoint ptr %write_byte.i59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_byte.i59, align 8
  tail call void %36(ptr noundef %dev, i32 noundef %and33.sink.i, i32 noundef 14) #6
  br label %labpc_setup_cmd6_reg.exit

labpc_setup_cmd6_reg.exit:                        ; preds = %if.end.i, %labpc_ai_set_chan_and_gain.exit.labpc_setup_cmd6_reg.exit_crit_edge
  %cmd4 = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 6
  %spec.select = select i1 %cmp8.i, i32 24, i32 16
  %37 = ptrtoint ptr %cmd4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select, ptr %cmd4, align 4
  %38 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_byte.i, align 8
  tail call void %39(ptr noundef %dev, i32 noundef %spec.select, i32 noundef 15) #6
  %counter = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %counter, align 4
  %call10 = tail call i32 @comedi_8254_set_mode(ptr noundef %41, i32 noundef 0, i32 noundef 4) #6
  %42 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %private, align 4
  %write_byte.i61 = getelementptr inbounds %struct.labpc_private, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %write_byte.i61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_byte.i61, align 8
  tail call void %45(ptr noundef %dev, i32 noundef 1, i32 noundef 8) #6
  %46 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %private, align 4
  %read_byte.i.i = getelementptr inbounds %struct.labpc_private, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %read_byte.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_byte.i.i, align 4
  %call.i.i = tail call i32 %49(ptr noundef %dev, i32 noundef 10) #6
  %50 = ptrtoint ptr %read_byte.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_byte.i.i, align 4
  %call2.i.i = tail call i32 %51(ptr noundef %dev, i32 noundef 10) #6
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %52 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp1165.not = icmp eq i32 %53, 0
  br i1 %cmp1165.not, label %labpc_setup_cmd6_reg.exit.cleanup_crit_edge, label %labpc_setup_cmd6_reg.exit.for.body_crit_edge

labpc_setup_cmd6_reg.exit.for.body_crit_edge:     ; preds = %labpc_setup_cmd6_reg.exit
  br label %for.body

labpc_setup_cmd6_reg.exit.cleanup_crit_edge:      ; preds = %labpc_setup_cmd6_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %labpc_setup_cmd6_reg.exit.for.body_crit_edge
  %i.066 = phi i32 [ %inc, %if.end15.for.body_crit_edge ], [ 0, %labpc_setup_cmd6_reg.exit.for.body_crit_edge ]
  %54 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_byte.i, align 8
  tail call void %55(ptr noundef %dev, i32 noundef 1, i32 noundef 3) #6
  %call13 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @labpc_ai_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end15, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %for.body
  %56 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %private, align 4
  %read_byte.i = getelementptr inbounds %struct.labpc_private, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %read_byte.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_byte.i, align 4
  %call.i = tail call i32 %59(ptr noundef %dev, i32 noundef 10) #6
  %60 = ptrtoint ptr %read_byte.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read_byte.i, align 4
  %call2.i63 = tail call i32 %61(ptr noundef %dev, i32 noundef 10) #6
  %shl.i = shl i32 %call2.i63, 8
  %or.i64 = or i32 %shl.i, %call.i
  %arrayidx = getelementptr i32, ptr %data, i32 %i.066
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or.i64, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.066, 1
  %63 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %n, align 4
  %cmp11 = icmp ult i32 %inc, %64
  br i1 %cmp11, label %if.end15.for.body_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %if.end15.cleanup_crit_edge, %for.body.cleanup_crit_edge, %labpc_setup_cmd6_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %labpc_setup_cmd6_reg.exit.cleanup_crit_edge ], [ %64, %if.end15.cleanup_crit_edge ], [ %call13, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @labpc_ai_cmd(ptr noundef %dev, ptr nocapture noundef readonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %4 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async1, align 4
  %chanlist_len.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %6 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chanlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %entry.cond.false_crit_edge, label %if.end.i

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

if.end.i:                                         ; preds = %entry
  %chanlist.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %8 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chanlist.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.cond.true_crit_edge, label %if.end2.i

if.end.i.cond.true_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

if.end2.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and.i = and i32 %11, 65535
  %arrayidx5.i = getelementptr i32, ptr %9, i32 1
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.i, align 4
  %and6.i = and i32 %13, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and6.i)
  %cmp7.i = icmp ult i32 %and.i, %and6.i
  br i1 %cmp7.i, label %if.end2.i.cond.true_crit_edge, label %if.end9.i

if.end2.i.cond.true_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

if.end9.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and6.i)
  %cmp10.i = icmp ugt i32 %and.i, %and6.i
  %..i = select i1 %cmp10.i, i32 3, i32 1
  br label %cond.false

cond.true:                                        ; preds = %if.end2.i.cond.true_crit_edge, %if.end.i.cond.true_crit_edge
  %14 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chanlist.i, align 4
  %16 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chanlist_len.i, align 4
  %sub = add i32 %17, -1
  %arrayidx = getelementptr i32, ptr %15, i32 %sub
  br label %cond.end

cond.false:                                       ; preds = %if.end9.i, %entry.cond.false_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.cond.false_crit_edge ], [ %..i, %if.end9.i ]
  %chanlist3 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %18 = ptrtoint ptr %chanlist3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chanlist3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cmp279 = phi i32 [ 128, %cond.true ], [ 0, %cond.false ]
  %retval.0.i274 = phi i32 [ 2, %cond.true ], [ %retval.0.i, %cond.false ]
  %cond.in = phi ptr [ %arrayidx, %cond.true ], [ %19, %cond.false ]
  %20 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %cond = load i32, ptr %cond.in, align 4
  %shr = lshr i32 %cond, 16
  %and5 = and i32 %shr, 255
  %shr6 = lshr i32 %cond, 24
  %and7 = and i32 %shr6, 3
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #6
  %cmd2.i = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmd2.i, align 4
  %and.i237 = and i32 %22, -8
  store i32 %and.i237, ptr %cmd2.i, align 4
  %write_byte.i = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 13
  %23 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_byte.i, align 8
  tail call void %24(ptr noundef %dev, i32 noundef %and.i237, i32 noundef 1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #6
  %cmd3.i = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %cmd3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %cmd3.i, align 8
  %26 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_byte.i, align 8
  tail call void %27(ptr noundef %dev, i32 noundef 0, i32 noundef 2) #6
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 10
  %28 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %29)
  %cmp9 = icmp eq i32 %29, 32
  br i1 %cmp9, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 11
  %30 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stop_arg, align 4
  %32 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chanlist_len.i, align 4
  %mul = mul i32 %33, %31
  %conv = zext i32 %mul to i64
  %count = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 2
  %34 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv, ptr %count, align 8
  %35 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %stop_src, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %36 = phi i32 [ %.pr, %if.then ], [ %29, %cond.end.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %36)
  %cmp12 = icmp eq i32 %36, 64
  %counter = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 1
  %37 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %counter, align 4
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 @comedi_8254_load(ptr noundef %38, i32 noundef 1, i32 noundef 3, i32 noundef 0) #6
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 @comedi_8254_set_mode(ptr noundef %38, i32 noundef 1, i32 noundef 0) #6
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 8
  %tobool.not = icmp eq ptr %40, null
  br i1 %tobool.not, label %if.end18.if.else24_crit_edge, label %land.lhs.true

if.end18.if.else24_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else24

land.lhs.true:                                    ; preds = %if.end18
  %flags19 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 1
  %41 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags19, align 4
  %and20 = and i32 %42, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp21 = icmp eq i32 %and20, 0
  br i1 %cmp21, label %land.lhs.true.if.end41_crit_edge, label %land.lhs.true.if.else24_crit_edge

land.lhs.true.if.else24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else24

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.else24:                                        ; preds = %land.lhs.true.if.else24_crit_edge, %if.end18.if.else24_crit_edge
  %is_labpc1200 = getelementptr inbounds %struct.labpc_boardinfo, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %is_labpc1200 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %is_labpc1200, align 4
  %44 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool25.not = icmp eq i8 %44, 0
  br i1 %tobool25.not, label %if.else24.if.else39_crit_edge, label %land.lhs.true26

if.else24.if.else39_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else39

land.lhs.true26:                                  ; preds = %if.else24
  %flags27 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 1
  %45 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags27, align 4
  %and28 = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cmp29 = icmp eq i32 %and28, 0
  br i1 %cmp29, label %land.lhs.true31, label %land.lhs.true26.if.else39_crit_edge

land.lhs.true26.if.else39_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else39

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %47 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %48)
  %cmp33.not = icmp eq i32 %48, 32
  br i1 %cmp33.not, label %lor.lhs.false, label %land.lhs.true31.if.end41_crit_edge

land.lhs.true31.if.end41_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

lor.lhs.false:                                    ; preds = %land.lhs.true31
  %count35 = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 2
  %49 = ptrtoint ptr %count35 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %count35, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %50)
  %cmp36 = icmp ugt i64 %50, 256
  br i1 %cmp36, label %lor.lhs.false.if.end41_crit_edge, label %lor.lhs.false.if.else39_crit_edge

lor.lhs.false.if.else39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else39

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.else39:                                        ; preds = %lor.lhs.false.if.else39_crit_edge, %land.lhs.true26.if.else39_crit_edge, %if.else24.if.else39_crit_edge
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %lor.lhs.false.if.end41_crit_edge, %land.lhs.true31.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge
  %cmp82 = phi i32 [ 48, %if.else39 ], [ 16, %land.lhs.true.if.end41_crit_edge ], [ 16, %lor.lhs.false.if.end41_crit_edge ], [ 16, %land.lhs.true31.if.end41_crit_edge ]
  %cmp11.i = phi i32 [ 0, %if.else39 ], [ 0, %land.lhs.true.if.end41_crit_edge ], [ 32, %lor.lhs.false.if.end41_crit_edge ], [ 32, %land.lhs.true31.if.end41_crit_edge ]
  %xfer.0 = phi i32 [ 0, %if.else39 ], [ 2, %land.lhs.true.if.end41_crit_edge ], [ 1, %lor.lhs.false.if.end41_crit_edge ], [ 1, %land.lhs.true31.if.end41_crit_edge ]
  %current_transfer = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 11
  %51 = ptrtoint ptr %current_transfer to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %xfer.0, ptr %current_transfer, align 8
  %52 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %board_ptr, align 4
  %54 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %private, align 4
  %is_labpc1200.i = getelementptr inbounds %struct.labpc_boardinfo, ptr %53, i32 0, i32 2
  %56 = ptrtoint ptr %is_labpc1200.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i = load i8, ptr %is_labpc1200.i, align 4
  %57 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i239 = icmp eq i8 %57, 0
  br i1 %tobool.not.i239, label %if.end41.labpc_ai_set_chan_and_gain.exit_crit_edge, label %if.then.i

if.end41.labpc_ai_set_chan_and_gain.exit_crit_edge: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_ai_set_chan_and_gain.exit

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp.i240 = icmp ne i32 %and5, 0
  %conv.i = zext i1 %cmp.i240 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and5)
  %cmp1.i = icmp ugt i32 %and5, 7
  %conv2.i = zext i1 %cmp1.i to i32
  %add.i = add nuw nsw i32 %and5, %conv2.i
  %add3.i = add nuw nsw i32 %add.i, %conv.i
  br label %labpc_ai_set_chan_and_gain.exit

labpc_ai_set_chan_and_gain.exit:                  ; preds = %if.then.i, %if.end41.labpc_ai_set_chan_and_gain.exit_crit_edge
  %range.addr.0.i = phi i32 [ %add3.i, %if.then.i ], [ %and5, %if.end41.labpc_ai_set_chan_and_gain.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i274)
  %switch.i = icmp ult i32 %retval.0.i274, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and7)
  %cmp8.i = icmp eq i32 %and7, 2
  %narrow.i = and i1 %switch.i, %cmp8.i
  %spec.select.i = zext i1 %narrow.i to i32
  %chan.addr.0.i = shl i32 %cond, %spec.select.i
  %and.i241 = and i32 %chan.addr.0.i, 7
  %cmd1.i = getelementptr inbounds %struct.labpc_private, ptr %55, i32 0, i32 3
  %and12.i = shl nuw nsw i32 %range.addr.0.i, 4
  %shl13.i = and i32 %and12.i, 112
  %or.i = or i32 %shl13.i, %and.i241
  %58 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or.i, ptr %cmd1.i, align 8
  %write_byte.i242 = getelementptr inbounds %struct.labpc_private, ptr %55, i32 0, i32 13
  %59 = ptrtoint ptr %write_byte.i242 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_byte.i242, align 8
  tail call void %60(ptr noundef %dev, i32 noundef %or.i, i32 noundef 0) #6
  %61 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %board_ptr, align 4
  %is_labpc1200.i245 = getelementptr inbounds %struct.labpc_boardinfo, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %is_labpc1200.i245 to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load.i246 = load i8, ptr %is_labpc1200.i245, align 4
  %64 = and i8 %bf.load.i246, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i247 = icmp eq i8 %64, 0
  br i1 %tobool.not.i247, label %labpc_ai_set_chan_and_gain.exit.labpc_setup_cmd6_reg.exit_crit_edge, label %if.end.i251

labpc_ai_set_chan_and_gain.exit.labpc_setup_cmd6_reg.exit_crit_edge: ; preds = %labpc_ai_set_chan_and_gain.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_setup_cmd6_reg.exit

if.end.i251:                                      ; preds = %labpc_ai_set_chan_and_gain.exit
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %66)
  %cmp43 = icmp eq i32 %66, 64
  %67 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp.not.i = icmp ne i32 %and7, 0
  %cmd62.i = getelementptr inbounds %struct.labpc_private, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %cmd62.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cmd62.i, align 4
  %and.i249 = and i32 %70, -2
  %masksel.i = zext i1 %cmp.not.i to i32
  %and.sink.i = or i32 %and.i249, %masksel.i
  store i32 %and.sink.i, ptr %cmd62.i, align 4
  %range_table.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %71 = ptrtoint ptr %range_table.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %range_table.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.comedi_lrange, ptr %72, i32 0, i32 1, i32 %and5
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i, align 4
  %and9.i = and i32 %and.sink.i, -227
  %75 = lshr i32 %74, 30
  %76 = and i32 %75, 2
  %masksel53.i = select i1 %cmp43, i32 64, i32 0
  %77 = or i32 %cmp11.i, %cmp279
  %78 = or i32 %77, %masksel53.i
  %79 = or i32 %78, %and9.i
  %80 = or i32 %79, %76
  %and33.sink.i = xor i32 %80, 2
  store i32 %and33.sink.i, ptr %cmd62.i, align 4
  %write_byte.i250 = getelementptr inbounds %struct.labpc_private, ptr %68, i32 0, i32 13
  %81 = ptrtoint ptr %write_byte.i250 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write_byte.i250, align 8
  tail call void %82(ptr noundef %dev, i32 noundef %and33.sink.i, i32 noundef 14) #6
  br label %labpc_setup_cmd6_reg.exit

labpc_setup_cmd6_reg.exit:                        ; preds = %if.end.i251, %labpc_ai_set_chan_and_gain.exit.labpc_setup_cmd6_reg.exit_crit_edge
  %83 = and i32 %retval.0.i274, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %switch = icmp eq i32 %83, 2
  br i1 %switch, label %if.then50, label %labpc_setup_cmd6_reg.exit.if.end52_crit_edge

labpc_setup_cmd6_reg.exit.if.end52_crit_edge:     ; preds = %labpc_setup_cmd6_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then50:                                        ; preds = %labpc_setup_cmd6_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %cmd1 = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 3
  %84 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cmd1, align 8
  %or = or i32 %85, 128
  store i32 %or, ptr %cmd1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748) #6
  %87 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write_byte.i, align 8
  %89 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cmd1, align 8
  tail call void %88(ptr noundef %dev, i32 noundef %90, i32 noundef 0) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %labpc_setup_cmd6_reg.exit.if.end52_crit_edge
  %91 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_byte.i, align 8
  %93 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %chanlist_len.i, align 4
  tail call void %92(ptr noundef %dev, i32 noundef %94, i32 noundef 30) #6
  %95 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write_byte.i, align 8
  tail call void %96(ptr noundef %dev, i32 noundef 1, i32 noundef 31) #6
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 6
  %97 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %98)
  %cmp56 = icmp eq i32 %98, 16
  br i1 %cmp56, label %if.end52.if.then61_crit_edge, label %lor.lhs.false58

if.end52.if.then61_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then61

lor.lhs.false58:                                  ; preds = %if.end52
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 4
  %99 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %100)
  %cmp59 = icmp eq i32 %100, 16
  br i1 %cmp59, label %lor.lhs.false58.if.then61_crit_edge, label %lor.lhs.false58.if.end76_crit_edge

lor.lhs.false58.if.end76_crit_edge:               ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

lor.lhs.false58.if.then61_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then61

if.then61:                                        ; preds = %lor.lhs.false58.if.then61_crit_edge, %if.end52.if.then61_crit_edge
  %pacer62 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %101 = ptrtoint ptr %pacer62 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pacer62, align 4
  %counter64 = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 1
  %103 = ptrtoint ptr %counter64 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %counter64, align 4
  tail call void @comedi_8254_update_divisors(ptr noundef %102) #6
  %divisor1 = getelementptr inbounds %struct.comedi_8254, ptr %102, i32 0, i32 6
  %105 = ptrtoint ptr %divisor1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %divisor1, align 4
  %call65 = tail call i32 @comedi_8254_load(ptr noundef %102, i32 noundef 0, i32 noundef %106, i32 noundef 6) #6
  %call66 = tail call i32 @comedi_8254_set_mode(ptr noundef %104, i32 noundef 0, i32 noundef 4) #6
  %107 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %108)
  %cmp.not.i252 = icmp eq i32 %108, 16
  br i1 %cmp.not.i252, label %if.end.i254, label %if.then61.if.end70_crit_edge

if.then61.if.end70_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.end.i254:                                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i274)
  %cmp1.i253 = icmp eq i32 %retval.0.i274, 0
  br i1 %cmp1.i253, label %land.lhs.true.i, label %if.end.i254.if.end4.i_crit_edge

if.end.i254.if.end4.i_crit_edge:                  ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %if.end.i254
  %scan_begin_src.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 4
  %109 = ptrtoint ptr %scan_begin_src.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %scan_begin_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %110)
  %cmp2.i = icmp eq i32 %110, 16
  br i1 %cmp2.i, label %if.then3.i, label %land.lhs.true.i.if.end4.i_crit_edge

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %scan_begin_arg.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 5
  br label %labpc_ai_convert_period.exit

if.end4.i:                                        ; preds = %land.lhs.true.i.if.end4.i_crit_edge, %if.end.i254.if.end4.i_crit_edge
  %convert_arg.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 7
  br label %labpc_ai_convert_period.exit

labpc_ai_convert_period.exit:                     ; preds = %if.end4.i, %if.then3.i
  %convert_arg.sink.i = phi ptr [ %convert_arg.i, %if.end4.i ], [ %scan_begin_arg.i, %if.then3.i ]
  %111 = ptrtoint ptr %convert_arg.sink.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %convert_arg.sink.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool68.not = icmp eq i32 %112, 0
  br i1 %tobool68.not, label %labpc_ai_convert_period.exit.if.end70_crit_edge, label %if.then69

labpc_ai_convert_period.exit.if.end70_crit_edge:  ; preds = %labpc_ai_convert_period.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then69:                                        ; preds = %labpc_ai_convert_period.exit
  call void @__sanitizer_cov_trace_pc() #8
  %divisor = getelementptr inbounds %struct.comedi_8254, ptr %102, i32 0, i32 5
  %113 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %divisor, align 4
  tail call void @comedi_8254_write(ptr noundef %104, i32 noundef 0, i32 noundef %114) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %labpc_ai_convert_period.exit.if.end70_crit_edge, %if.then61.if.end70_crit_edge
  %scan_begin_src.i256 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 4
  %115 = ptrtoint ptr %scan_begin_src.i256 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %scan_begin_src.i256, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %116)
  %cmp.not.i257 = icmp eq i32 %116, 16
  br i1 %cmp.not.i257, label %if.end.i259, label %if.end70.if.end76_crit_edge

if.end70.if.end76_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.end.i259:                                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i274)
  %cmp1.i258 = icmp eq i32 %retval.0.i274, 0
  br i1 %cmp1.i258, label %land.lhs.true.i262, label %if.end.i259.labpc_ai_scan_period.exit_crit_edge

if.end.i259.labpc_ai_scan_period.exit_crit_edge:  ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_ai_scan_period.exit

land.lhs.true.i262:                               ; preds = %if.end.i259
  %117 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %118)
  %cmp2.i261 = icmp eq i32 %118, 16
  br i1 %cmp2.i261, label %land.lhs.true.i262.if.end76_crit_edge, label %land.lhs.true.i262.labpc_ai_scan_period.exit_crit_edge

land.lhs.true.i262.labpc_ai_scan_period.exit_crit_edge: ; preds = %land.lhs.true.i262
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_ai_scan_period.exit

land.lhs.true.i262.if.end76_crit_edge:            ; preds = %land.lhs.true.i262
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

labpc_ai_scan_period.exit:                        ; preds = %land.lhs.true.i262.labpc_ai_scan_period.exit_crit_edge, %if.end.i259.labpc_ai_scan_period.exit_crit_edge
  %scan_begin_arg.i263 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 5
  %119 = ptrtoint ptr %scan_begin_arg.i263 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %scan_begin_arg.i263, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool72.not = icmp eq i32 %120, 0
  br i1 %tobool72.not, label %labpc_ai_scan_period.exit.if.end76_crit_edge, label %if.then73

labpc_ai_scan_period.exit.if.end76_crit_edge:     ; preds = %labpc_ai_scan_period.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then73:                                        ; preds = %labpc_ai_scan_period.exit
  call void @__sanitizer_cov_trace_pc() #8
  %divisor2 = getelementptr inbounds %struct.comedi_8254, ptr %102, i32 0, i32 7
  %121 = ptrtoint ptr %divisor2 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %divisor2, align 4
  %call74 = tail call i32 @comedi_8254_load(ptr noundef %102, i32 noundef 1, i32 noundef %122, i32 noundef 4) #6
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %labpc_ai_scan_period.exit.if.end76_crit_edge, %land.lhs.true.i262.if.end76_crit_edge, %if.end70.if.end76_crit_edge, %lor.lhs.false58.if.end76_crit_edge
  %123 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %private, align 4
  %write_byte.i267 = getelementptr inbounds %struct.labpc_private, ptr %124, i32 0, i32 13
  %125 = ptrtoint ptr %write_byte.i267 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write_byte.i267, align 8
  tail call void %126(ptr noundef %dev, i32 noundef 1, i32 noundef 8) #6
  %127 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %private, align 4
  %read_byte.i.i = getelementptr inbounds %struct.labpc_private, ptr %128, i32 0, i32 12
  %129 = ptrtoint ptr %read_byte.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %read_byte.i.i, align 4
  %call.i.i = tail call i32 %130(ptr noundef %dev, i32 noundef 10) #6
  %131 = ptrtoint ptr %read_byte.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read_byte.i.i, align 4
  %call2.i.i = tail call i32 %132(ptr noundef %dev, i32 noundef 10) #6
  %133 = ptrtoint ptr %cmd3.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cmd3.i, align 8
  %spec.select = or i32 %134, %cmp82
  store i32 %spec.select, ptr %cmd3.i, align 8
  %135 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write_byte.i, align 8
  tail call void %136(ptr noundef %dev, i32 noundef %spec.select, i32 noundef 2) #6
  %cmd4 = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 6
  %137 = ptrtoint ptr %cmd4 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %cmd4, align 4
  %138 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %139)
  %cmp91.not = icmp eq i32 %139, 64
  %spec.store.select = select i1 %cmp91.not, i32 0, i32 16
  %140 = ptrtoint ptr %cmd4 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %spec.store.select, ptr %cmd4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i274)
  %cmp.i268 = icmp eq i32 %retval.0.i274, 0
  br i1 %cmp.i268, label %if.end76.if.end108_crit_edge, label %labpc_use_continuous_mode.exit

if.end76.if.end108_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

labpc_use_continuous_mode.exit:                   ; preds = %if.end76
  %scan_begin_src.i269 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 4
  %141 = ptrtoint ptr %scan_begin_src.i269 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %scan_begin_src.i269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %142)
  %cmp1.i270 = icmp eq i32 %142, 4
  br i1 %cmp1.i270, label %labpc_use_continuous_mode.exit.if.end108_crit_edge, label %if.then98

labpc_use_continuous_mode.exit.if.end108_crit_edge: ; preds = %labpc_use_continuous_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.then98:                                        ; preds = %labpc_use_continuous_mode.exit
  %or100 = or i32 %spec.store.select, 1
  %143 = ptrtoint ptr %cmd4 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or100, ptr %cmd4, align 4
  %144 = ptrtoint ptr %scan_begin_src.i269 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %scan_begin_src.i269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %145)
  %cmp102 = icmp eq i32 %145, 64
  br i1 %cmp102, label %if.then104, label %if.then98.if.end108_crit_edge

if.then98.if.end108_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.then104:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  %or106 = or i32 %spec.store.select, 3
  %146 = ptrtoint ptr %cmd4 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or106, ptr %cmd4, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %if.then98.if.end108_crit_edge, %labpc_use_continuous_mode.exit.if.end108_crit_edge, %if.end76.if.end108_crit_edge
  br i1 %cmp8.i, label %if.then111, label %if.end108.if.end114_crit_edge

if.end108.if.end114_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  %147 = ptrtoint ptr %cmd4 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cmd4, align 4
  %or113 = or i32 %148, 8
  store i32 %or113, ptr %cmd4, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end108.if.end114_crit_edge
  %149 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write_byte.i, align 8
  %151 = ptrtoint ptr %cmd4 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cmd4, align 4
  tail call void %150(ptr noundef %dev, i32 noundef %152, i32 noundef 15) #6
  %call121 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #6
  %153 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cmd2.i, align 4
  %or125 = and i32 %154, -16
  %and127 = or i32 %or125, 8
  store i32 %and127, ptr %cmd2.i, align 4
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 2
  %155 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %156)
  %cmp128 = icmp eq i32 %156, 64
  %storemerge.v = select i1 %cmp128, i32 10, i32 12
  %storemerge = or i32 %storemerge.v, %or125
  %157 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %storemerge, ptr %cmd2.i, align 4
  %158 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %159)
  %cmp138 = icmp eq i32 %159, 64
  br i1 %cmp138, label %if.then140, label %if.end114.if.end143_crit_edge

if.end114.if.end143_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143

if.then140:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %or142 = or i32 %storemerge, 3
  %160 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %or142, ptr %cmd2.i, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %if.end114.if.end143_crit_edge
  %161 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write_byte.i, align 8
  %163 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cmd2.i, align 4
  tail call void %162(ptr noundef %dev, i32 noundef %164, i32 noundef 1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call121) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @labpc_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr noundef %cmd) #0 align 64 {
entry:
  %convert_period.i = alloca i32, align 4
  %scan_period.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_src, align 4
  %and.i = and i32 %3, 66
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %3)
  %cmp1.not.i = icmp eq i32 %and.i, %3
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %4 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_begin_src, align 4
  %and.i175 = and i32 %5, 84
  store i32 %and.i175, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175)
  %cmp.i176 = icmp ne i32 %and.i175, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i175, i32 %5)
  %cmp1.not.i177 = icmp eq i32 %and.i175, %5
  %or.cond.i178 = and i1 %cmp.i176, %cmp1.not.i177
  %6 = select i1 %or.cond.i, i1 %or.cond.i178, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src, align 4
  %and.i180 = and i32 %8, 80
  store i32 %and.i180, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180)
  %cmp.i181 = icmp ne i32 %and.i180, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i180, i32 %8)
  %cmp1.not.i182 = icmp eq i32 %and.i180, %8
  %or.cond.i183 = and i1 %cmp.i181, %cmp1.not.i182
  %9 = select i1 %6, i1 %or.cond.i183, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %10 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_end_src, align 4
  %and.i185 = and i32 %11, 32
  store i32 %and.i185, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i185)
  %cmp.i186 = icmp ne i32 %and.i185, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i185, i32 %11)
  %cmp1.not.i187 = icmp eq i32 %and.i185, %11
  %or.cond.i188 = and i1 %cmp.i186, %cmp1.not.i187
  %12 = select i1 %9, i1 %or.cond.i188, i1 false
  %is_labpc1200 = getelementptr inbounds %struct.labpc_boardinfo, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %is_labpc1200 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %is_labpc1200, align 4
  %14 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %spec.select = select i1 %tobool.not, i32 33, i32 97
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %15 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stop_src, align 4
  %and.i190 = and i32 %spec.select, %16
  store i32 %and.i190, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i190)
  %cmp.i191 = icmp ne i32 %and.i190, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i190, i32 %16)
  %cmp1.not.i192 = icmp eq i32 %and.i190, %16
  %or.cond.i193 = and i1 %cmp.i191, %cmp1.not.i192
  %17 = select i1 %12, i1 %or.cond.i193, i1 false
  br i1 %17, label %if.end12, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %entry
  %18 = tail call i32 @llvm.ctpop.i32(i32 %3) #6, !range !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.not.i = icmp ult i32 %18, 2
  %19 = tail call i32 @llvm.ctpop.i32(i32 %5) #6, !range !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.not.i195 = icmp ult i32 %19, 2
  %20 = select i1 %cmp.not.i, i1 %cmp.not.i195, i1 false
  %21 = tail call i32 @llvm.ctpop.i32(i32 %8) #6, !range !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.not.i197 = icmp ult i32 %21, 2
  %22 = select i1 %20, i1 %cmp.not.i197, i1 false
  %23 = tail call i32 @llvm.ctpop.i32(i32 %16) #6, !range !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.not.i199 = icmp ult i32 %23, 2
  %24 = select i1 %22, i1 %cmp.not.i199, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp = icmp eq i32 %3, 64
  br i1 %cmp, label %if.end29.thread, label %if.end29

if.end29:                                         ; preds = %if.end12
  br i1 %24, label %if.end32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29.thread:                                  ; preds = %if.end12
  %or24 = select i1 %24, i32 0, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %16)
  %cmp27 = icmp eq i32 %16, 64
  %inc = zext i1 %cmp27 to i32
  %spec.select173 = or i32 %or24, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select173)
  %tobool30.not235 = icmp eq i32 %spec.select173, 0
  br i1 %tobool30.not235, label %if.end29.thread.sw.epilog_crit_edge, label %if.end29.thread.cleanup_crit_edge

if.end29.thread.cleanup_crit_edge:                ; preds = %if.end29.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29.thread.sw.epilog_crit_edge:              ; preds = %if.end29.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end32:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cond = icmp eq i32 %3, 2
  br i1 %cond, label %sw.bb, label %if.end32.sw.epilog_crit_edge

if.end32.sw.epilog_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end32
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %25 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i201 = icmp eq i32 %26, 0
  br i1 %cmp.not.i201, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %start_arg, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %sw.bb.sw.epilog_crit_edge, %if.end32.sw.epilog_crit_edge, %if.end29.thread.sw.epilog_crit_edge
  %err.1 = phi i32 [ 0, %if.end32.sw.epilog_crit_edge ], [ -22, %if.then.i ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.end29.thread.sw.epilog_crit_edge ]
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %28 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool36.not = icmp eq i32 %29, 0
  %spec.select174 = select i1 %tobool36.not, i32 -22, i32 %err.1
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %30 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp.not.i203 = icmp eq i32 %31, %29
  br i1 %cmp.not.i203, label %sw.epilog.comedi_check_trigger_arg_is.exit206_crit_edge, label %if.then.i204

sw.epilog.comedi_check_trigger_arg_is.exit206_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit206

if.then.i204:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit206

comedi_check_trigger_arg_is.exit206:              ; preds = %if.then.i204, %sw.epilog.comedi_check_trigger_arg_is.exit206_crit_edge
  %retval.0.i205 = phi i32 [ -22, %if.then.i204 ], [ 0, %sw.epilog.comedi_check_trigger_arg_is.exit206_crit_edge ]
  %or42 = or i32 %retval.0.i205, %spec.select174
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp44 = icmp eq i32 %8, 16
  br i1 %cmp44, label %if.then45, label %if.end48.thread

if.then45:                                        ; preds = %comedi_check_trigger_arg_is.exit206
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %ai_speed = getelementptr inbounds %struct.labpc_boardinfo, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %ai_speed to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ai_speed, align 4
  %35 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %34)
  %cmp.i207 = icmp ult i32 %36, %34
  br i1 %cmp.i207, label %if.then.i208, label %if.then45.if.end48_crit_edge

if.then45.if.end48_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then.i208:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %convert_arg, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then.i208, %if.then45.if.end48_crit_edge
  %retval.0.i209 = phi i32 [ -22, %if.then.i208 ], [ 0, %if.then45.if.end48_crit_edge ]
  %or47 = or i32 %retval.0.i209, %or42
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp50 = icmp eq i32 %5, 16
  br i1 %cmp50, label %if.then54.critedge, label %if.end48.if.end66_crit_edge

if.end48.if.end66_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end48.thread:                                  ; preds = %comedi_check_trigger_arg_is.exit206
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp50238 = icmp eq i32 %5, 16
  br i1 %cmp50238, label %if.end48.thread.if.end59_crit_edge, label %if.end48.thread.if.end66_crit_edge

if.end48.thread.if.end66_crit_edge:               ; preds = %if.end48.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end48.thread.if.end59_crit_edge:               ; preds = %if.end48.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then54.critedge:                               ; preds = %if.end48
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %38 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %convert_arg, align 4
  %mul = mul i32 %39, %29
  %40 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %mul)
  %cmp.i210 = icmp ult i32 %41, %mul
  br i1 %cmp.i210, label %if.then.i211, label %if.then54.critedge.comedi_check_trigger_arg_min.exit213_crit_edge

if.then54.critedge.comedi_check_trigger_arg_min.exit213_crit_edge: ; preds = %if.then54.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_min.exit213

if.then.i211:                                     ; preds = %if.then54.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit213

comedi_check_trigger_arg_min.exit213:             ; preds = %if.then.i211, %if.then54.critedge.comedi_check_trigger_arg_min.exit213_crit_edge
  %retval.0.i212 = phi i32 [ -22, %if.then.i211 ], [ 0, %if.then54.critedge.comedi_check_trigger_arg_min.exit213_crit_edge ]
  %or58 = or i32 %retval.0.i212, %or47
  br label %if.end59

if.end59:                                         ; preds = %comedi_check_trigger_arg_min.exit213, %if.end48.thread.if.end59_crit_edge
  %err.4 = phi i32 [ %or58, %comedi_check_trigger_arg_min.exit213 ], [ %or42, %if.end48.thread.if.end59_crit_edge ]
  %scan_begin_arg60 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %ai_speed61 = getelementptr inbounds %struct.labpc_boardinfo, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %ai_speed61 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ai_speed61, align 4
  %mul63 = mul i32 %44, %29
  %45 = ptrtoint ptr %scan_begin_arg60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %scan_begin_arg60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %mul63)
  %cmp.i214 = icmp ult i32 %46, %mul63
  br i1 %cmp.i214, label %if.then.i215, label %if.end59.comedi_check_trigger_arg_min.exit217_crit_edge

if.end59.comedi_check_trigger_arg_min.exit217_crit_edge: ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_min.exit217

if.then.i215:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %scan_begin_arg60 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul63, ptr %scan_begin_arg60, align 4
  br label %comedi_check_trigger_arg_min.exit217

comedi_check_trigger_arg_min.exit217:             ; preds = %if.then.i215, %if.end59.comedi_check_trigger_arg_min.exit217_crit_edge
  %retval.0.i216 = phi i32 [ -22, %if.then.i215 ], [ 0, %if.end59.comedi_check_trigger_arg_min.exit217_crit_edge ]
  %or65 = or i32 %retval.0.i216, %err.4
  br label %if.end66

if.end66:                                         ; preds = %comedi_check_trigger_arg_min.exit217, %if.end48.thread.if.end66_crit_edge, %if.end48.if.end66_crit_edge
  %cmp50240 = phi i1 [ true, %comedi_check_trigger_arg_min.exit217 ], [ false, %if.end48.if.end66_crit_edge ], [ false, %if.end48.thread.if.end66_crit_edge ]
  %err.5 = phi i32 [ %or65, %comedi_check_trigger_arg_min.exit217 ], [ %or47, %if.end48.if.end66_crit_edge ], [ %or42, %if.end48.thread.if.end66_crit_edge ]
  %48 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end66.sw.epilog75_crit_edge [
    i32 32, label %sw.bb68
    i32 1, label %sw.bb71
  ]

if.end66.sw.epilog75_crit_edge:                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog75

sw.bb68:                                          ; preds = %if.end66
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %49 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i218 = icmp eq i32 %50, 0
  br i1 %cmp.i218, label %if.then.i219, label %sw.bb68.comedi_check_trigger_arg_min.exit221_crit_edge

sw.bb68.comedi_check_trigger_arg_min.exit221_crit_edge: ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_min.exit221

if.then.i219:                                     ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %stop_arg, align 4
  br label %comedi_check_trigger_arg_min.exit221

comedi_check_trigger_arg_min.exit221:             ; preds = %if.then.i219, %sw.bb68.comedi_check_trigger_arg_min.exit221_crit_edge
  %retval.0.i220 = phi i32 [ -22, %if.then.i219 ], [ 0, %sw.bb68.comedi_check_trigger_arg_min.exit221_crit_edge ]
  %or70 = or i32 %retval.0.i220, %err.5
  br label %sw.epilog75

sw.bb71:                                          ; preds = %if.end66
  %stop_arg72 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %52 = ptrtoint ptr %stop_arg72 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stop_arg72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.not.i222 = icmp eq i32 %53, 0
  br i1 %cmp.not.i222, label %sw.bb71.comedi_check_trigger_arg_is.exit225_crit_edge, label %if.then.i223

sw.bb71.comedi_check_trigger_arg_is.exit225_crit_edge: ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit225

if.then.i223:                                     ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %stop_arg72 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %stop_arg72, align 4
  br label %comedi_check_trigger_arg_is.exit225

comedi_check_trigger_arg_is.exit225:              ; preds = %if.then.i223, %sw.bb71.comedi_check_trigger_arg_is.exit225_crit_edge
  %retval.0.i224 = phi i32 [ -22, %if.then.i223 ], [ 0, %sw.bb71.comedi_check_trigger_arg_is.exit225_crit_edge ]
  %or74 = or i32 %retval.0.i224, %err.5
  br label %sw.epilog75

sw.epilog75:                                      ; preds = %comedi_check_trigger_arg_is.exit225, %comedi_check_trigger_arg_min.exit221, %if.end66.sw.epilog75_crit_edge
  %err.6 = phi i32 [ %err.5, %if.end66.sw.epilog75_crit_edge ], [ %or74, %comedi_check_trigger_arg_is.exit225 ], [ %or70, %comedi_check_trigger_arg_min.exit221 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.6)
  %tobool76.not = icmp eq i32 %err.6, 0
  br i1 %tobool76.not, label %if.end78, label %sw.epilog75.cleanup_crit_edge

sw.epilog75.cleanup_crit_edge:                    ; preds = %sw.epilog75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end78:                                         ; preds = %sw.epilog75
  %convert_arg79 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %55 = ptrtoint ptr %convert_arg79 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %convert_arg79, align 4
  %scan_begin_arg80 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %57 = ptrtoint ptr %scan_begin_arg80 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scan_begin_arg80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i226 = icmp eq i32 %29, 1
  br i1 %cmp.i226, label %labpc_ai_scan_mode.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %if.end78
  %chanlist.i = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %59 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chanlist.i, align 4
  %tobool.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i, label %if.end.i.labpc_ai_scan_mode.exit_crit_edge, label %if.end2.i

if.end.i.labpc_ai_scan_mode.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_ai_scan_mode.exit

if.end2.i:                                        ; preds = %if.end.i
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %and.i227 = and i32 %62, 65535
  %arrayidx5.i = getelementptr i32, ptr %60, i32 1
  %63 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx5.i, align 4
  %and6.i = and i32 %64, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i227, i32 %and6.i)
  %cmp7.i = icmp ult i32 %and.i227, %and6.i
  br i1 %cmp7.i, label %if.end2.i.labpc_ai_scan_mode.exit_crit_edge, label %if.end9.i

if.end2.i.labpc_ai_scan_mode.exit_crit_edge:      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_ai_scan_mode.exit

if.end9.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i227, i32 %and6.i)
  %cmp10.i = icmp ugt i32 %and.i227, %and6.i
  %..i228 = select i1 %cmp10.i, i32 3, i32 1
  br label %labpc_ai_scan_mode.exit

labpc_ai_scan_mode.exit:                          ; preds = %if.end9.i, %if.end2.i.labpc_ai_scan_mode.exit_crit_edge, %if.end.i.labpc_ai_scan_mode.exit_crit_edge
  %retval.0.i229 = phi i32 [ 2, %if.end.i.labpc_ai_scan_mode.exit_crit_edge ], [ 2, %if.end2.i.labpc_ai_scan_mode.exit_crit_edge ], [ %..i228, %if.end9.i ]
  %pacer1.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %65 = ptrtoint ptr %pacer1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pacer1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %convert_period.i) #6
  br i1 %cmp44, label %return.sink.split.i.i, label %labpc_ai_scan_mode.exit.labpc_ai_convert_period.exit.i_crit_edge

labpc_ai_scan_mode.exit.labpc_ai_convert_period.exit.i_crit_edge: ; preds = %labpc_ai_scan_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_ai_convert_period.exit.i

labpc_ai_scan_mode.exit.thread:                   ; preds = %if.end78
  %pacer1.i249 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %67 = ptrtoint ptr %pacer1.i249 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pacer1.i249, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %convert_period.i) #6
  br i1 %cmp44, label %land.lhs.true.i.i, label %labpc_ai_scan_mode.exit.thread.labpc_ai_convert_period.exit.i_crit_edge

labpc_ai_scan_mode.exit.thread.labpc_ai_convert_period.exit.i_crit_edge: ; preds = %labpc_ai_scan_mode.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_ai_convert_period.exit.i

land.lhs.true.i.i:                                ; preds = %labpc_ai_scan_mode.exit.thread
  br i1 %cmp50240, label %if.end.i106.i, label %return.sink.split.i.i.thread291

return.sink.split.i.i.thread291:                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %convert_arg79 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %convert_arg79, align 4
  %71 = ptrtoint ptr %convert_period.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %convert_period.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scan_period.i) #6
  br label %if.else.thread.i

return.sink.split.i.i:                            ; preds = %labpc_ai_scan_mode.exit
  %72 = ptrtoint ptr %convert_arg79 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %convert_arg79, align 4
  %74 = ptrtoint ptr %convert_period.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %convert_period.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scan_period.i) #6
  br i1 %cmp50240, label %labpc_ai_scan_period.exit.i, label %return.sink.split.i.i.if.else.thread.i_crit_edge

return.sink.split.i.i.if.else.thread.i_crit_edge: ; preds = %return.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.thread.i

labpc_ai_convert_period.exit.i:                   ; preds = %labpc_ai_scan_mode.exit.thread.labpc_ai_convert_period.exit.i_crit_edge, %labpc_ai_scan_mode.exit.labpc_ai_convert_period.exit.i_crit_edge
  %75 = phi ptr [ %66, %labpc_ai_scan_mode.exit.labpc_ai_convert_period.exit.i_crit_edge ], [ %68, %labpc_ai_scan_mode.exit.thread.labpc_ai_convert_period.exit.i_crit_edge ]
  %retval.0.i229250 = phi i32 [ %retval.0.i229, %labpc_ai_scan_mode.exit.labpc_ai_convert_period.exit.i_crit_edge ], [ 0, %labpc_ai_scan_mode.exit.thread.labpc_ai_convert_period.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scan_period.i) #6
  br i1 %cmp50240, label %labpc_ai_scan_period.exit.i.thread, label %labpc_ai_convert_period.exit.i.labpc_adc_timing.exit_crit_edge

labpc_ai_convert_period.exit.i.labpc_adc_timing.exit_crit_edge: ; preds = %labpc_ai_convert_period.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_adc_timing.exit

labpc_ai_scan_period.exit.i.thread:               ; preds = %labpc_ai_convert_period.exit.i
  %76 = ptrtoint ptr %scan_period.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %58, ptr %scan_period.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool3.not.i277 = icmp eq i32 %58, 0
  br i1 %tobool3.not.i277, label %labpc_ai_scan_period.exit.i.thread.labpc_adc_timing.exit_crit_edge, label %labpc_ai_scan_period.exit.i.thread.if.then47.i_crit_edge

labpc_ai_scan_period.exit.i.thread.if.then47.i_crit_edge: ; preds = %labpc_ai_scan_period.exit.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

labpc_ai_scan_period.exit.i.thread.labpc_adc_timing.exit_crit_edge: ; preds = %labpc_ai_scan_period.exit.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_adc_timing.exit

if.end.i106.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %scan_begin_arg80 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %scan_begin_arg80, align 4
  %79 = ptrtoint ptr %convert_period.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %convert_period.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scan_period.i) #6
  br label %if.else.thread.i

if.else.thread.i:                                 ; preds = %if.end.i106.i, %return.sink.split.i.i.if.else.thread.i_crit_edge, %return.sink.split.i.i.thread291
  %retval.0.i.i260 = phi i32 [ %73, %return.sink.split.i.i.if.else.thread.i_crit_edge ], [ %78, %if.end.i106.i ], [ %70, %return.sink.split.i.i.thread291 ]
  %retval.0.i229250258 = phi i32 [ %retval.0.i229, %return.sink.split.i.i.if.else.thread.i_crit_edge ], [ 0, %if.end.i106.i ], [ 0, %return.sink.split.i.i.thread291 ]
  %80 = phi ptr [ %66, %return.sink.split.i.i.if.else.thread.i_crit_edge ], [ %68, %if.end.i106.i ], [ %68, %return.sink.split.i.i.thread291 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i260)
  %tobool.not177.i = icmp eq i32 %retval.0.i.i260, 0
  br i1 %tobool.not177.i, label %if.else.thread.i.labpc_adc_timing.exit_crit_edge, label %if.else.thread.i.if.then51.i_crit_edge

if.else.thread.i.if.then51.i_crit_edge:           ; preds = %if.else.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51.i

if.else.thread.i.labpc_adc_timing.exit_crit_edge: ; preds = %if.else.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_adc_timing.exit

labpc_ai_scan_period.exit.i:                      ; preds = %return.sink.split.i.i
  %81 = ptrtoint ptr %scan_period.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %58, ptr %scan_period.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i230 = icmp eq i32 %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool3.not.i = icmp eq i32 %58, 0
  %or.cond.i231 = select i1 %tobool.not.i230, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i231, label %if.else.i, label %if.then.i232

if.then.i232:                                     ; preds = %labpc_ai_scan_period.exit.i
  %sub.i = add i32 %58, -1
  %osc_base.i = getelementptr inbounds %struct.comedi_8254, ptr %66, i32 0, i32 4
  %82 = ptrtoint ptr %osc_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %osc_base.i, align 4
  %mul.i = shl i32 %83, 16
  %div.i = udiv i32 %sub.i, %mul.i
  %add.i = add nuw i32 %div.i, 1
  %next_div1.i = getelementptr inbounds %struct.comedi_8254, ptr %66, i32 0, i32 9
  %84 = ptrtoint ptr %next_div1.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add.i, ptr %next_div1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub.i)
  %cmp.i.i = icmp ugt i32 %mul.i, %sub.i
  br i1 %cmp.i.i, label %if.then.i232.comedi_check_trigger_arg_max.exit.sink.split.i_crit_edge, label %comedi_check_trigger_arg_min.exit.i

if.then.i232.comedi_check_trigger_arg_max.exit.sink.split.i_crit_edge: ; preds = %if.then.i232
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_max.exit.sink.split.i

comedi_check_trigger_arg_min.exit.i:              ; preds = %if.then.i232
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div.i)
  %cmp.i114.i = icmp ugt i32 %div.i, 65535
  br i1 %cmp.i114.i, label %comedi_check_trigger_arg_min.exit.i.comedi_check_trigger_arg_max.exit.sink.split.i_crit_edge, label %comedi_check_trigger_arg_min.exit.i.comedi_check_trigger_arg_max.exit.i_crit_edge

comedi_check_trigger_arg_min.exit.i.comedi_check_trigger_arg_max.exit.i_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_max.exit.i

comedi_check_trigger_arg_min.exit.i.comedi_check_trigger_arg_max.exit.sink.split.i_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_max.exit.sink.split.i

comedi_check_trigger_arg_max.exit.sink.split.i:   ; preds = %comedi_check_trigger_arg_min.exit.i.comedi_check_trigger_arg_max.exit.sink.split.i_crit_edge, %if.then.i232.comedi_check_trigger_arg_max.exit.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2, %if.then.i232.comedi_check_trigger_arg_max.exit.sink.split.i_crit_edge ], [ 65536, %comedi_check_trigger_arg_min.exit.i.comedi_check_trigger_arg_max.exit.sink.split.i_crit_edge ]
  %85 = ptrtoint ptr %next_div1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %.sink.i, ptr %next_div1.i, align 4
  br label %comedi_check_trigger_arg_max.exit.i

comedi_check_trigger_arg_max.exit.i:              ; preds = %comedi_check_trigger_arg_max.exit.sink.split.i, %comedi_check_trigger_arg_min.exit.i.comedi_check_trigger_arg_max.exit.i_crit_edge
  %86 = ptrtoint ptr %osc_base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %osc_base.i, align 4
  %88 = ptrtoint ptr %next_div1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %next_div1.i, align 4
  %mul10.i = mul i32 %89, %87
  %flags.i = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags.i, align 4
  %and.i233 = and i32 %91, 196608
  %92 = zext i32 %and.i233 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %and.i233, label %sw.bb.i [
    i32 65536, label %sw.bb29.i
    i32 131072, label %sw.bb20.i
  ]

sw.bb.i:                                          ; preds = %comedi_check_trigger_arg_max.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %div11102.i = lshr i32 %mul10.i, 1
  %add12.i = add i32 %div11102.i, %73
  %div13.i = udiv i32 %add12.i, %mul10.i
  %next_div.i = getelementptr inbounds %struct.comedi_8254, ptr %66, i32 0, i32 8
  %93 = ptrtoint ptr %next_div.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %div13.i, ptr %next_div.i, align 4
  %add18.i = add i32 %div11102.i, %58
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %comedi_check_trigger_arg_max.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add21.i = add i32 %73, -1
  %sub22.i = add i32 %add21.i, %mul10.i
  %div23.i = udiv i32 %sub22.i, %mul10.i
  %next_div24.i = getelementptr inbounds %struct.comedi_8254, ptr %66, i32 0, i32 8
  %94 = ptrtoint ptr %next_div24.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %div23.i, ptr %next_div24.i, align 4
  %sub26.i = add i32 %mul10.i, %sub.i
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %comedi_check_trigger_arg_max.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %div30.i = udiv i32 %73, %mul10.i
  %next_div31.i = getelementptr inbounds %struct.comedi_8254, ptr %66, i32 0, i32 8
  %95 = ptrtoint ptr %next_div31.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %div30.i, ptr %next_div31.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb29.i, %sw.bb20.i, %sw.bb.i
  %.sink197.i = phi i32 [ %58, %sw.bb29.i ], [ %sub26.i, %sw.bb20.i ], [ %add18.i, %sw.bb.i ]
  %div32.i = udiv i32 %.sink197.i, %mul10.i
  %next_div233.i = getelementptr inbounds %struct.comedi_8254, ptr %66, i32 0, i32 10
  %96 = ptrtoint ptr %next_div233.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %div32.i, ptr %next_div233.i, align 4
  %next_div34.i = getelementptr inbounds %struct.comedi_8254, ptr %66, i32 0, i32 8
  %97 = ptrtoint ptr %next_div34.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %next_div34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %98)
  %cmp.i116.i = icmp ult i32 %98, 2
  br i1 %cmp.i116.i, label %sw.epilog.i.comedi_check_trigger_arg_max.exit122.sink.split.i_crit_edge, label %comedi_check_trigger_arg_min.exit119.i

sw.epilog.i.comedi_check_trigger_arg_max.exit122.sink.split.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_max.exit122.sink.split.i

comedi_check_trigger_arg_min.exit119.i:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %98)
  %cmp.i120.i = icmp ugt i32 %98, 65536
  br i1 %cmp.i120.i, label %comedi_check_trigger_arg_min.exit119.i.comedi_check_trigger_arg_max.exit122.sink.split.i_crit_edge, label %comedi_check_trigger_arg_min.exit119.i.comedi_check_trigger_arg_max.exit122.i_crit_edge

comedi_check_trigger_arg_min.exit119.i.comedi_check_trigger_arg_max.exit122.i_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_max.exit122.i

comedi_check_trigger_arg_min.exit119.i.comedi_check_trigger_arg_max.exit122.sink.split.i_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_max.exit122.sink.split.i

comedi_check_trigger_arg_max.exit122.sink.split.i: ; preds = %comedi_check_trigger_arg_min.exit119.i.comedi_check_trigger_arg_max.exit122.sink.split.i_crit_edge, %sw.epilog.i.comedi_check_trigger_arg_max.exit122.sink.split.i_crit_edge
  %.sink198.i = phi i32 [ 2, %sw.epilog.i.comedi_check_trigger_arg_max.exit122.sink.split.i_crit_edge ], [ 65536, %comedi_check_trigger_arg_min.exit119.i.comedi_check_trigger_arg_max.exit122.sink.split.i_crit_edge ]
  %99 = ptrtoint ptr %next_div34.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %.sink198.i, ptr %next_div34.i, align 4
  br label %comedi_check_trigger_arg_max.exit122.i

comedi_check_trigger_arg_max.exit122.i:           ; preds = %comedi_check_trigger_arg_max.exit122.sink.split.i, %comedi_check_trigger_arg_min.exit119.i.comedi_check_trigger_arg_max.exit122.i_crit_edge
  %100 = ptrtoint ptr %next_div233.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %next_div233.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp.i123.i = icmp ult i32 %101, 2
  br i1 %cmp.i123.i, label %comedi_check_trigger_arg_max.exit122.i.comedi_check_trigger_arg_max.exit129.sink.split.i_crit_edge, label %comedi_check_trigger_arg_min.exit126.i

comedi_check_trigger_arg_max.exit122.i.comedi_check_trigger_arg_max.exit129.sink.split.i_crit_edge: ; preds = %comedi_check_trigger_arg_max.exit122.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_max.exit129.sink.split.i

comedi_check_trigger_arg_min.exit126.i:           ; preds = %comedi_check_trigger_arg_max.exit122.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %101)
  %cmp.i127.i = icmp ugt i32 %101, 65536
  br i1 %cmp.i127.i, label %comedi_check_trigger_arg_min.exit126.i.comedi_check_trigger_arg_max.exit129.sink.split.i_crit_edge, label %comedi_check_trigger_arg_min.exit126.i.comedi_check_trigger_arg_max.exit129.i_crit_edge

comedi_check_trigger_arg_min.exit126.i.comedi_check_trigger_arg_max.exit129.i_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_max.exit129.i

comedi_check_trigger_arg_min.exit126.i.comedi_check_trigger_arg_max.exit129.sink.split.i_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_max.exit129.sink.split.i

comedi_check_trigger_arg_max.exit129.sink.split.i: ; preds = %comedi_check_trigger_arg_min.exit126.i.comedi_check_trigger_arg_max.exit129.sink.split.i_crit_edge, %comedi_check_trigger_arg_max.exit122.i.comedi_check_trigger_arg_max.exit129.sink.split.i_crit_edge
  %.sink199.i = phi i32 [ 2, %comedi_check_trigger_arg_max.exit122.i.comedi_check_trigger_arg_max.exit129.sink.split.i_crit_edge ], [ 65536, %comedi_check_trigger_arg_min.exit126.i.comedi_check_trigger_arg_max.exit129.sink.split.i_crit_edge ]
  %102 = ptrtoint ptr %next_div233.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %.sink199.i, ptr %next_div233.i, align 4
  br label %comedi_check_trigger_arg_max.exit129.i

comedi_check_trigger_arg_max.exit129.i:           ; preds = %comedi_check_trigger_arg_max.exit129.sink.split.i, %comedi_check_trigger_arg_min.exit126.i.comedi_check_trigger_arg_max.exit129.i_crit_edge
  %103 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %104)
  %cmp.not.i131.i = icmp eq i32 %104, 16
  br i1 %cmp.not.i131.i, label %if.end11.sink.split.i.i, label %comedi_check_trigger_arg_max.exit129.i.labpc_set_ai_convert_period.exit.i_crit_edge

comedi_check_trigger_arg_max.exit129.i.labpc_set_ai_convert_period.exit.i_crit_edge: ; preds = %comedi_check_trigger_arg_max.exit129.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_set_ai_convert_period.exit.i

if.end11.sink.split.i.i:                          ; preds = %comedi_check_trigger_arg_max.exit129.i
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %next_div34.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %next_div34.i, align 4
  %mul43.i = mul i32 %106, %mul10.i
  %107 = ptrtoint ptr %convert_arg79 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %mul43.i, ptr %convert_arg79, align 4
  br label %labpc_set_ai_convert_period.exit.i

labpc_set_ai_convert_period.exit.i:               ; preds = %if.end11.sink.split.i.i, %comedi_check_trigger_arg_max.exit129.i.labpc_set_ai_convert_period.exit.i_crit_edge
  %108 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %109)
  %cmp.not.i142.i = icmp eq i32 %109, 16
  br i1 %cmp.not.i142.i, label %if.end4.i149.i, label %labpc_set_ai_convert_period.exit.i.labpc_adc_timing.exit_crit_edge

labpc_set_ai_convert_period.exit.i.labpc_adc_timing.exit_crit_edge: ; preds = %labpc_set_ai_convert_period.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_adc_timing.exit

if.end4.i149.i:                                   ; preds = %labpc_set_ai_convert_period.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %next_div233.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %next_div233.i, align 4
  %mul45.i = mul i32 %111, %mul10.i
  %112 = ptrtoint ptr %scan_begin_arg80 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %mul45.i, ptr %scan_begin_arg80, align 4
  br label %labpc_adc_timing.exit

if.else.i:                                        ; preds = %labpc_ai_scan_period.exit.i
  br i1 %tobool3.not.i, label %if.else49.i, label %if.else.i.if.then47.i_crit_edge

if.else.i.if.then47.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

if.then47.i:                                      ; preds = %if.else.i.if.then47.i_crit_edge, %labpc_ai_scan_period.exit.i.thread.if.then47.i_crit_edge
  %113 = phi ptr [ %75, %labpc_ai_scan_period.exit.i.thread.if.then47.i_crit_edge ], [ %66, %if.else.i.if.then47.i_crit_edge ]
  %retval.0.i229250259268279284 = phi i32 [ %retval.0.i229250, %labpc_ai_scan_period.exit.i.thread.if.then47.i_crit_edge ], [ 1, %if.else.i.if.then47.i_crit_edge ]
  %flags48.i = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %114 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %flags48.i, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %113, ptr noundef nonnull %scan_period.i, i32 noundef %115) #6
  %116 = ptrtoint ptr %scan_period.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %scan_period.i, align 4
  %118 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %119)
  %cmp.not.i151.i = icmp eq i32 %119, 16
  br i1 %cmp.not.i151.i, label %if.end.i153.i, label %if.then47.i.labpc_adc_timing.exit_crit_edge

if.then47.i.labpc_adc_timing.exit_crit_edge:      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_adc_timing.exit

if.end.i153.i:                                    ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i229250259268279284)
  %cmp1.i152.i = icmp eq i32 %retval.0.i229250259268279284, 0
  br i1 %cmp1.i152.i, label %land.lhs.true.i156.i, label %if.end.i153.i.if.end4.i158.i_crit_edge

if.end.i153.i.if.end4.i158.i_crit_edge:           ; preds = %if.end.i153.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i158.i

land.lhs.true.i156.i:                             ; preds = %if.end.i153.i
  %120 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %121)
  %cmp2.i155.i = icmp eq i32 %121, 16
  br i1 %cmp2.i155.i, label %land.lhs.true.i156.i.labpc_adc_timing.exit_crit_edge, label %land.lhs.true.i156.i.if.end4.i158.i_crit_edge

land.lhs.true.i156.i.if.end4.i158.i_crit_edge:    ; preds = %land.lhs.true.i156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i158.i

land.lhs.true.i156.i.labpc_adc_timing.exit_crit_edge: ; preds = %land.lhs.true.i156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_adc_timing.exit

if.end4.i158.i:                                   ; preds = %land.lhs.true.i156.i.if.end4.i158.i_crit_edge, %if.end.i153.i.if.end4.i158.i_crit_edge
  %122 = ptrtoint ptr %scan_begin_arg80 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %117, ptr %scan_begin_arg80, align 4
  br label %labpc_adc_timing.exit

if.else49.i:                                      ; preds = %if.else.i
  br i1 %tobool.not.i230, label %if.else49.i.labpc_adc_timing.exit_crit_edge, label %if.else49.i.if.then51.i_crit_edge

if.else49.i.if.then51.i_crit_edge:                ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51.i

if.else49.i.labpc_adc_timing.exit_crit_edge:      ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_adc_timing.exit

if.then51.i:                                      ; preds = %if.else49.i.if.then51.i_crit_edge, %if.else.thread.i.if.then51.i_crit_edge
  %retval.0.i229250257 = phi i32 [ 1, %if.else49.i.if.then51.i_crit_edge ], [ %retval.0.i229250258, %if.else.thread.i.if.then51.i_crit_edge ]
  %123 = phi ptr [ %66, %if.else49.i.if.then51.i_crit_edge ], [ %80, %if.else.thread.i.if.then51.i_crit_edge ]
  %flags52.i = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %124 = ptrtoint ptr %flags52.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags52.i, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %123, ptr noundef nonnull %convert_period.i, i32 noundef %125) #6
  %next_div253.i = getelementptr inbounds %struct.comedi_8254, ptr %123, i32 0, i32 10
  %126 = ptrtoint ptr %next_div253.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %next_div253.i, align 4
  %next_div54.i = getelementptr inbounds %struct.comedi_8254, ptr %123, i32 0, i32 8
  %128 = ptrtoint ptr %next_div54.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %next_div54.i, align 4
  %129 = ptrtoint ptr %convert_period.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %convert_period.i, align 4
  %131 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %132)
  %cmp.not.i161.i = icmp eq i32 %132, 16
  br i1 %cmp.not.i161.i, label %if.end.i163.i, label %if.then51.i.labpc_adc_timing.exit_crit_edge

if.then51.i.labpc_adc_timing.exit_crit_edge:      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_adc_timing.exit

if.end.i163.i:                                    ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i229250257)
  %cmp1.i162.i = icmp eq i32 %retval.0.i229250257, 0
  br i1 %cmp1.i162.i, label %land.lhs.true.i166.i, label %if.end.i163.i.if.end11.sink.split.i174.i_crit_edge

if.end.i163.i.if.end11.sink.split.i174.i_crit_edge: ; preds = %if.end.i163.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split.i174.i

land.lhs.true.i166.i:                             ; preds = %if.end.i163.i
  %133 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %134)
  %cmp2.i165.i = icmp eq i32 %134, 16
  br i1 %cmp2.i165.i, label %if.then3.i170.i, label %land.lhs.true.i166.i.if.end11.sink.split.i174.i_crit_edge

land.lhs.true.i166.i.if.end11.sink.split.i174.i_crit_edge: ; preds = %land.lhs.true.i166.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split.i174.i

if.then3.i170.i:                                  ; preds = %land.lhs.true.i166.i
  %135 = ptrtoint ptr %scan_begin_arg80 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %130, ptr %scan_begin_arg80, align 4
  %136 = ptrtoint ptr %convert_arg79 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %convert_arg79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %130)
  %cmp5.i169.i = icmp ugt i32 %137, %130
  br i1 %cmp5.i169.i, label %if.then3.i170.i.if.end11.sink.split.i174.i_crit_edge, label %if.then3.i170.i.labpc_adc_timing.exit_crit_edge

if.then3.i170.i.labpc_adc_timing.exit_crit_edge:  ; preds = %if.then3.i170.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_adc_timing.exit

if.then3.i170.i.if.end11.sink.split.i174.i_crit_edge: ; preds = %if.then3.i170.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split.i174.i

if.end11.sink.split.i174.i:                       ; preds = %if.then3.i170.i.if.end11.sink.split.i174.i_crit_edge, %land.lhs.true.i166.i.if.end11.sink.split.i174.i_crit_edge, %if.end.i163.i.if.end11.sink.split.i174.i_crit_edge
  %138 = ptrtoint ptr %convert_arg79 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %130, ptr %convert_arg79, align 4
  br label %labpc_adc_timing.exit

labpc_adc_timing.exit:                            ; preds = %if.end11.sink.split.i174.i, %if.then3.i170.i.labpc_adc_timing.exit_crit_edge, %if.then51.i.labpc_adc_timing.exit_crit_edge, %if.else49.i.labpc_adc_timing.exit_crit_edge, %if.end4.i158.i, %land.lhs.true.i156.i.labpc_adc_timing.exit_crit_edge, %if.then47.i.labpc_adc_timing.exit_crit_edge, %if.end4.i149.i, %labpc_set_ai_convert_period.exit.i.labpc_adc_timing.exit_crit_edge, %if.else.thread.i.labpc_adc_timing.exit_crit_edge, %labpc_ai_scan_period.exit.i.thread.labpc_adc_timing.exit_crit_edge, %labpc_ai_convert_period.exit.i.labpc_adc_timing.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scan_period.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %convert_period.i) #6
  %139 = ptrtoint ptr %convert_arg79 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %convert_arg79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %140)
  %cmp83.not = icmp eq i32 %56, %140
  br i1 %cmp83.not, label %lor.lhs.false, label %labpc_adc_timing.exit.cleanup_crit_edge

labpc_adc_timing.exit.cleanup_crit_edge:          ; preds = %labpc_adc_timing.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %labpc_adc_timing.exit
  %141 = ptrtoint ptr %scan_begin_arg80 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %scan_begin_arg80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %142)
  %cmp85.not = icmp eq i32 %58, %142
  br i1 %cmp85.not, label %if.end91, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end91:                                         ; preds = %lor.lhs.false
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %143 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %chanlist, align 4
  %tobool92.not = icmp eq ptr %144, null
  br i1 %tobool92.not, label %if.end91.if.end99.thread_crit_edge, label %land.lhs.true93

if.end91.if.end99.thread_crit_edge:               ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99.thread

land.lhs.true93:                                  ; preds = %if.end91
  %145 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp95.not = icmp eq i32 %146, 0
  br i1 %cmp95.not, label %land.lhs.true93.if.end99.thread_crit_edge, label %if.end99

land.lhs.true93.if.end99.thread_crit_edge:        ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99.thread

if.end99:                                         ; preds = %land.lhs.true93
  %call97 = call fastcc i32 @labpc_ai_check_chanlist(ptr noundef %dev, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %phi.cmp = icmp eq i32 %call97, 0
  br i1 %phi.cmp, label %if.end99.if.end99.thread_crit_edge, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end99.if.end99.thread_crit_edge:               ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99.thread

if.end99.thread:                                  ; preds = %if.end99.if.end99.thread_crit_edge, %land.lhs.true93.if.end99.thread_crit_edge, %if.end91.if.end99.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end99.thread, %if.end99.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %labpc_adc_timing.exit.cleanup_crit_edge, %sw.epilog75.cleanup_crit_edge, %if.end29.thread.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end29.cleanup_crit_edge ], [ 3, %sw.epilog75.cleanup_crit_edge ], [ 4, %labpc_adc_timing.exit.cleanup_crit_edge ], [ 4, %lor.lhs.false.cleanup_crit_edge ], [ 2, %if.end29.thread.cleanup_crit_edge ], [ 0, %if.end99.thread ], [ 5, %if.end99.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @labpc_cancel(ptr noundef %dev, ptr nocapture noundef readnone %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %cmd2 = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd2, align 4
  %and = and i32 %3, -8
  store i32 %and, ptr %cmd2, align 4
  %write_byte = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_byte, align 8
  tail call void %5(ptr noundef %dev, i32 noundef %and, i32 noundef 1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  %cmd3 = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %cmd3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cmd3, align 8
  %7 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_byte, align 8
  tail call void %8(ptr noundef %dev, i32 noundef 0, i32 noundef 2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @labpc_ao_insn_write(ptr noundef %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %4 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanspec, align 4
  %and = and i32 %5, 65535
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %and5 = and i32 %5, 1
  %add = or i32 %and5, 6
  %shl = shl nuw i32 1, %add
  %neg = xor i32 %shl, -1
  %cmd2 = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd2, align 4
  %and6 = and i32 %7, %neg
  store i32 %and6, ptr %cmd2, align 4
  %write_byte = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_byte, align 8
  tail call void %9(ptr noundef %dev, i32 noundef %and6, i32 noundef 1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  %is_labpc1200 = getelementptr inbounds %struct.labpc_boardinfo, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %is_labpc1200 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %is_labpc1200, align 4
  %11 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %13, 16
  %and10 = and i32 %shr, 255
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %14 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %15, i32 0, i32 1, i32 %and10
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i = icmp sgt i32 %17, -1
  %add14 = or i32 %and5, 2
  %shl15 = shl nuw i32 1, %add14
  br i1 %cmp.i, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %cmd6 = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %cmd6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd6, align 4
  %or = or i32 %19, %shl15
  store i32 %or, ptr %cmd6, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %neg19 = xor i32 %shl15, -1
  %cmd620 = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %cmd620 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd620, align 4
  %and21 = and i32 %21, %neg19
  store i32 %and21, ptr %cmd620, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  %22 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_byte, align 8
  %cmd623 = getelementptr inbounds %struct.labpc_private, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %cmd623 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmd623, align 4
  tail call void %23(ptr noundef %dev, i32 noundef %25, i32 noundef 14) #6
  br label %if.end24

if.end24:                                         ; preds = %if.end, %entry.if.end24_crit_edge
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %26 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp2550.not = icmp eq i32 %27, 0
  br i1 %cmp2550.not, label %if.end24.for.end_crit_edge, label %for.body.lr.ph

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end24
  %mul.i = shl nuw nsw i32 %and, 1
  %add.i = add nuw nsw i32 %mul.i, 4
  %add4.i = add nuw nsw i32 %mul.i, 5
  %readback.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.051
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private, align 4
  %write_byte.i = getelementptr inbounds %struct.labpc_private, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_byte.i, align 8
  %and.i = and i32 %29, 255
  tail call void %33(ptr noundef %dev, i32 noundef %and.i, i32 noundef %add.i) #6
  %34 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_byte.i, align 8
  %shr.i = lshr i32 %29, 8
  %and2.i = and i32 %shr.i, 255
  tail call void %35(ptr noundef %dev, i32 noundef %and2.i, i32 noundef %add4.i) #6
  %36 = ptrtoint ptr %readback.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %readback.i, align 4
  %arrayidx.i49 = getelementptr i32, ptr %37, i32 %and
  %38 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %29, ptr %arrayidx.i49, align 4
  %inc = add nuw i32 %i.051, 1
  %39 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n, align 4
  %cmp25 = icmp ult i32 %inc, %40
  br i1 %cmp25, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end24.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %if.end24.for.end_crit_edge ], [ %40, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_mm_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @labpc_calib_insn_write(ptr noundef %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %sub = add i32 %3, -1
  %arrayidx = getelementptr i32, ptr %data, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %6 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %readback, align 4
  %arrayidx2 = getelementptr i32, ptr %7, i32 %and
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp3.not = icmp eq i32 %9, %5
  br i1 %cmp3.not, label %if.then.if.end7_crit_edge, label %if.then4

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @write_caldac(ptr noundef %dev, i32 noundef %and, i32 noundef %5)
  %10 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %readback, align 4
  %arrayidx6 = getelementptr i32, ptr %11, i32 %and
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %arrayidx6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_caldac(ptr noundef %dev, i32 noundef %channel, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %cmd5 = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd5, align 8
  %and = and i32 %3, -149
  store i32 %and, ptr %cmd5, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %write_byte = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_byte, align 8
  %7 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd5, align 8
  tail call void %6(ptr noundef %dev, i32 noundef %8, i32 noundef 28) #6
  %9 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private, align 4
  %cmd5.i = getelementptr inbounds %struct.labpc_private, ptr %10, i32 0, i32 7
  %write_byte.i = getelementptr inbounds %struct.labpc_private, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd5.i, align 8
  %and.i = and i32 %12, -97
  %and1.i = shl i32 %channel, 3
  %13 = and i32 %and1.i, 64
  %14 = or i32 %13, %and.i
  store i32 %14, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #6
  %16 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_byte.i, align 8
  %18 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd5.i, align 8
  tail call void %17(ptr noundef %dev, i32 noundef %19, i32 noundef 28) #6
  %20 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd5.i, align 8
  %or7.i = or i32 %21, 32
  store i32 %or7.i, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #6
  %23 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_byte.i, align 8
  %25 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd5.i, align 8
  tail call void %24(ptr noundef %dev, i32 noundef %26, i32 noundef 28) #6
  %27 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmd5.i, align 8
  %and.i.1 = and i32 %28, -97
  %and1.i.1 = shl i32 %channel, 4
  %29 = and i32 %and1.i.1, 64
  %30 = or i32 %29, %and.i.1
  store i32 %30, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #6
  %32 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_byte.i, align 8
  %34 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cmd5.i, align 8
  tail call void %33(ptr noundef %dev, i32 noundef %35, i32 noundef 28) #6
  %36 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmd5.i, align 8
  %or7.i.1 = or i32 %37, 32
  store i32 %or7.i.1, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #6
  %39 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_byte.i, align 8
  %41 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cmd5.i, align 8
  tail call void %40(ptr noundef %dev, i32 noundef %42, i32 noundef 28) #6
  %43 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cmd5.i, align 8
  %and.i.2 = and i32 %44, -97
  %and1.i.2 = shl i32 %channel, 5
  %45 = and i32 %and1.i.2, 64
  %46 = or i32 %45, %and.i.2
  store i32 %46, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #6
  %48 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_byte.i, align 8
  %50 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cmd5.i, align 8
  tail call void %49(ptr noundef %dev, i32 noundef %51, i32 noundef 28) #6
  %52 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cmd5.i, align 8
  %or7.i.2 = or i32 %53, 32
  store i32 %or7.i.2, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #6
  %55 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_byte.i, align 8
  %57 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cmd5.i, align 8
  tail call void %56(ptr noundef %dev, i32 noundef %58, i32 noundef 28) #6
  %59 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cmd5.i, align 8
  %and.i.3 = and i32 %60, -97
  %and1.i.3 = shl i32 %channel, 6
  %61 = and i32 %and1.i.3, 64
  %62 = or i32 %61, %and.i.3
  store i32 %62, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748) #6
  %64 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_byte.i, align 8
  %66 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cmd5.i, align 8
  tail call void %65(ptr noundef %dev, i32 noundef %67, i32 noundef 28) #6
  %68 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cmd5.i, align 8
  %or7.i.3 = or i32 %69, 32
  store i32 %or7.i.3, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748) #6
  %71 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_byte.i, align 8
  %73 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cmd5.i, align 8
  tail call void %72(ptr noundef %dev, i32 noundef %74, i32 noundef 28) #6
  %75 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %private, align 4
  %cmd5.i23 = getelementptr inbounds %struct.labpc_private, ptr %76, i32 0, i32 7
  %write_byte.i24 = getelementptr inbounds %struct.labpc_private, ptr %76, i32 0, i32 13
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %entry
  %i.023.i25 = phi i32 [ 1, %entry ], [ %inc.i34, %for.body.i36.for.body.i36_crit_edge ]
  %77 = ptrtoint ptr %cmd5.i23 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cmd5.i23, align 8
  %and.i26 = and i32 %78, -97
  %sub.i27 = sub nuw nsw i32 8, %i.023.i25
  %shl.i28 = shl nuw nsw i32 1, %sub.i27
  %and1.i29 = and i32 %shl.i28, %value
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i29)
  %tobool.not.i30 = icmp eq i32 %and1.i29, 0
  %or.i31 = or i32 %and.i26, 64
  %storemerge.i32 = select i1 %tobool.not.i30, i32 %and.i26, i32 %or.i31
  %79 = ptrtoint ptr %cmd5.i23 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %storemerge.i32, ptr %cmd5.i23, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748) #6
  %81 = ptrtoint ptr %write_byte.i24 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write_byte.i24, align 8
  %83 = ptrtoint ptr %cmd5.i23 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cmd5.i23, align 8
  tail call void %82(ptr noundef %dev, i32 noundef %84, i32 noundef 28) #6
  %85 = ptrtoint ptr %cmd5.i23 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cmd5.i23, align 8
  %or7.i33 = or i32 %86, 32
  store i32 %or7.i33, ptr %cmd5.i23, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748) #6
  %88 = ptrtoint ptr %write_byte.i24 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write_byte.i24, align 8
  %90 = ptrtoint ptr %cmd5.i23 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cmd5.i23, align 8
  tail call void %89(ptr noundef %dev, i32 noundef %91, i32 noundef 28) #6
  %inc.i34 = add nuw nsw i32 %i.023.i25, 1
  %exitcond = icmp eq i32 %inc.i34, 9
  br i1 %exitcond, label %labpc_serial_out.exit37, label %for.body.i36.for.body.i36_crit_edge

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i36

labpc_serial_out.exit37:                          ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cmd5, align 8
  %or = or i32 %93, 16
  store i32 %or, ptr %cmd5, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 214748) #6
  %95 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write_byte, align 8
  %97 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cmd5, align 8
  tail call void %96(ptr noundef %dev, i32 noundef %98, i32 noundef 28) #6
  %99 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cmd5, align 8
  %and6 = and i32 %100, -17
  store i32 %and6, ptr %cmd5, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748) #6
  %102 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write_byte, align 8
  %104 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cmd5, align 8
  tail call void %103(ptr noundef %dev, i32 noundef %105, i32 noundef 28) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @labpc_eeprom_insn_write(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %2 = add nsw i32 %and, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -112, i32 %2)
  %3 = icmp ult i32 %2, -112
  br i1 %3, label %entry.cleanup10_crit_edge, label %if.end

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

if.end:                                           ; preds = %entry
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not = icmp eq i32 %5, 0
  br i1 %cmp2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %sub = add i32 %5, -1
  %arrayidx = getelementptr i32, ptr %data, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @labpc_eeprom_ready, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.then3.cleanup10_crit_edge

if.then3.cleanup10_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

if.end6:                                          ; preds = %if.then3
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  %cmd5.i = getelementptr inbounds %struct.labpc_private, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd5.i, align 8
  %and.i = and i32 %11, -129
  store i32 %and.i, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  %write_byte.i = getelementptr inbounds %struct.labpc_private, ptr %9, i32 0, i32 13
  %13 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_byte.i, align 8
  %15 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd5.i, align 8
  tail call void %14(ptr noundef %dev, i32 noundef %16, i32 noundef 28) #6
  %17 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd5.i, align 8
  %or.i = or i32 %18, 132
  store i32 %or.i, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #6
  %20 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_byte.i, align 8
  %22 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmd5.i, align 8
  tail call void %21(ptr noundef %dev, i32 noundef %23, i32 noundef 28) #6
  %24 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private.i, align 4
  %cmd5.i.i = getelementptr inbounds %struct.labpc_private, ptr %25, i32 0, i32 7
  %write_byte.i.i = getelementptr inbounds %struct.labpc_private, ptr %25, i32 0, i32 13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end6
  %i.023.i.i = phi i32 [ 1, %if.end6 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd5.i.i, align 8
  %and.i.i = and i32 %27, -97
  %sub.i.i = sub nuw nsw i32 8, %i.023.i.i
  %shl.i.i = shl nuw nsw i32 1, %sub.i.i
  %and1.i.i = and i32 %shl.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  %or.i.i = or i32 %and.i.i, 64
  %storemerge.i.i = select i1 %tobool.not.i.i, i32 %and.i.i, i32 %or.i.i
  %28 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge.i.i, ptr %cmd5.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #6
  %30 = ptrtoint ptr %write_byte.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_byte.i.i, align 8
  %32 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmd5.i.i, align 8
  tail call void %31(ptr noundef %dev, i32 noundef %33, i32 noundef 28) #6
  %34 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cmd5.i.i, align 8
  %or7.i.i = or i32 %35, 32
  store i32 %or7.i.i, ptr %cmd5.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #6
  %37 = ptrtoint ptr %write_byte.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_byte.i.i, align 8
  %39 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmd5.i.i, align 8
  tail call void %38(ptr noundef %dev, i32 noundef %40, i32 noundef 28) #6
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.i = icmp eq i32 %inc.i.i, 9
  br i1 %exitcond.i, label %labpc_serial_out.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

labpc_serial_out.exit.i:                          ; preds = %for.body.i.i
  %41 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cmd5.i, align 8
  %and6.i = and i32 %42, -129
  store i32 %and6.i, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #6
  %44 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_byte.i, align 8
  %46 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cmd5.i, align 8
  tail call void %45(ptr noundef %dev, i32 noundef %47, i32 noundef 28) #6
  %48 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cmd5.i, align 8
  %or10.i = or i32 %49, 128
  store i32 %or10.i, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #6
  %51 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_byte.i, align 8
  %53 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cmd5.i, align 8
  tail call void %52(ptr noundef %dev, i32 noundef %54, i32 noundef 28) #6
  %55 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %private.i, align 4
  %cmd5.i49.i = getelementptr inbounds %struct.labpc_private, ptr %56, i32 0, i32 7
  %write_byte.i50.i = getelementptr inbounds %struct.labpc_private, ptr %56, i32 0, i32 13
  br label %for.body.i62.i

for.body.i62.i:                                   ; preds = %for.body.i62.i.for.body.i62.i_crit_edge, %labpc_serial_out.exit.i
  %i.023.i51.i = phi i32 [ 1, %labpc_serial_out.exit.i ], [ %inc.i60.i, %for.body.i62.i.for.body.i62.i_crit_edge ]
  %57 = ptrtoint ptr %cmd5.i49.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cmd5.i49.i, align 8
  %and.i52.i = and i32 %58, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.023.i51.i)
  %tobool.not.i56.not.i = icmp eq i32 %i.023.i51.i, 7
  %or.i57.i = or i32 %and.i52.i, 64
  %storemerge.i58.i = select i1 %tobool.not.i56.not.i, i32 %or.i57.i, i32 %and.i52.i
  %59 = ptrtoint ptr %cmd5.i49.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %storemerge.i58.i, ptr %cmd5.i49.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748) #6
  %61 = ptrtoint ptr %write_byte.i50.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_byte.i50.i, align 8
  %63 = ptrtoint ptr %cmd5.i49.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cmd5.i49.i, align 8
  tail call void %62(ptr noundef %dev, i32 noundef %64, i32 noundef 28) #6
  %65 = ptrtoint ptr %cmd5.i49.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cmd5.i49.i, align 8
  %or7.i59.i = or i32 %66, 32
  store i32 %or7.i59.i, ptr %cmd5.i49.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748) #6
  %68 = ptrtoint ptr %write_byte.i50.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_byte.i50.i, align 8
  %70 = ptrtoint ptr %cmd5.i49.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cmd5.i49.i, align 8
  tail call void %69(ptr noundef %dev, i32 noundef %71, i32 noundef 28) #6
  %inc.i60.i = add nuw nsw i32 %i.023.i51.i, 1
  %exitcond96.i = icmp eq i32 %inc.i60.i, 9
  br i1 %exitcond96.i, label %labpc_serial_out.exit63.i, label %for.body.i62.i.for.body.i62.i_crit_edge

for.body.i62.i.for.body.i62.i_crit_edge:          ; preds = %for.body.i62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i62.i

labpc_serial_out.exit63.i:                        ; preds = %for.body.i62.i
  %72 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %private.i, align 4
  %cmd5.i65.i = getelementptr inbounds %struct.labpc_private, ptr %73, i32 0, i32 7
  %write_byte.i66.i = getelementptr inbounds %struct.labpc_private, ptr %73, i32 0, i32 13
  br label %for.body.i78.i

for.body.i78.i:                                   ; preds = %for.body.i78.i.for.body.i78.i_crit_edge, %labpc_serial_out.exit63.i
  %i.023.i67.i = phi i32 [ 1, %labpc_serial_out.exit63.i ], [ %inc.i76.i, %for.body.i78.i.for.body.i78.i_crit_edge ]
  %74 = ptrtoint ptr %cmd5.i65.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cmd5.i65.i, align 8
  %and.i68.i = and i32 %75, -97
  %sub.i69.i = sub nuw nsw i32 8, %i.023.i67.i
  %shl.i70.i = shl nuw nsw i32 1, %sub.i69.i
  %and1.i71.i = and i32 %shl.i70.i, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i71.i)
  %tobool.not.i72.i = icmp eq i32 %and1.i71.i, 0
  %or.i73.i = or i32 %and.i68.i, 64
  %storemerge.i74.i = select i1 %tobool.not.i72.i, i32 %and.i68.i, i32 %or.i73.i
  %76 = ptrtoint ptr %cmd5.i65.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %storemerge.i74.i, ptr %cmd5.i65.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748) #6
  %78 = ptrtoint ptr %write_byte.i66.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_byte.i66.i, align 8
  %80 = ptrtoint ptr %cmd5.i65.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cmd5.i65.i, align 8
  tail call void %79(ptr noundef %dev, i32 noundef %81, i32 noundef 28) #6
  %82 = ptrtoint ptr %cmd5.i65.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cmd5.i65.i, align 8
  %or7.i75.i = or i32 %83, 32
  store i32 %or7.i75.i, ptr %cmd5.i65.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748) #6
  %85 = ptrtoint ptr %write_byte.i66.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write_byte.i66.i, align 8
  %87 = ptrtoint ptr %cmd5.i65.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cmd5.i65.i, align 8
  tail call void %86(ptr noundef %dev, i32 noundef %88, i32 noundef 28) #6
  %inc.i76.i = add nuw nsw i32 %i.023.i67.i, 1
  %exitcond97.i = icmp eq i32 %inc.i76.i, 9
  br i1 %exitcond97.i, label %labpc_serial_out.exit79.i, label %for.body.i78.i.for.body.i78.i_crit_edge

for.body.i78.i.for.body.i78.i_crit_edge:          ; preds = %for.body.i78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i78.i

labpc_serial_out.exit79.i:                        ; preds = %for.body.i78.i
  %89 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %private.i, align 4
  %cmd5.i81.i = getelementptr inbounds %struct.labpc_private, ptr %90, i32 0, i32 7
  %write_byte.i82.i = getelementptr inbounds %struct.labpc_private, ptr %90, i32 0, i32 13
  br label %for.body.i94.i

for.body.i94.i:                                   ; preds = %for.body.i94.i.for.body.i94.i_crit_edge, %labpc_serial_out.exit79.i
  %i.023.i83.i = phi i32 [ 1, %labpc_serial_out.exit79.i ], [ %inc.i92.i, %for.body.i94.i.for.body.i94.i_crit_edge ]
  %91 = ptrtoint ptr %cmd5.i81.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cmd5.i81.i, align 8
  %and.i84.i = and i32 %92, -97
  %sub.i85.i = sub nuw nsw i32 8, %i.023.i83.i
  %shl.i86.i = shl nuw nsw i32 1, %sub.i85.i
  %and1.i87.i = and i32 %shl.i86.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i87.i)
  %tobool.not.i88.i = icmp eq i32 %and1.i87.i, 0
  %or.i89.i = or i32 %and.i84.i, 64
  %storemerge.i90.i = select i1 %tobool.not.i88.i, i32 %and.i84.i, i32 %or.i89.i
  %93 = ptrtoint ptr %cmd5.i81.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %storemerge.i90.i, ptr %cmd5.i81.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 214748) #6
  %95 = ptrtoint ptr %write_byte.i82.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write_byte.i82.i, align 8
  %97 = ptrtoint ptr %cmd5.i81.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cmd5.i81.i, align 8
  tail call void %96(ptr noundef %dev, i32 noundef %98, i32 noundef 28) #6
  %99 = ptrtoint ptr %cmd5.i81.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cmd5.i81.i, align 8
  %or7.i91.i = or i32 %100, 32
  store i32 %or7.i91.i, ptr %cmd5.i81.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748) #6
  %102 = ptrtoint ptr %write_byte.i82.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write_byte.i82.i, align 8
  %104 = ptrtoint ptr %cmd5.i81.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cmd5.i81.i, align 8
  tail call void %103(ptr noundef %dev, i32 noundef %105, i32 noundef 28) #6
  %inc.i92.i = add nuw nsw i32 %i.023.i83.i, 1
  %exitcond98.i = icmp eq i32 %inc.i92.i, 9
  br i1 %exitcond98.i, label %labpc_eeprom_write.exit, label %for.body.i94.i.for.body.i94.i_crit_edge

for.body.i94.i.for.body.i94.i_crit_edge:          ; preds = %for.body.i94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i94.i

labpc_eeprom_write.exit:                          ; preds = %for.body.i94.i
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cmd5.i, align 8
  %and14.i = and i32 %107, -129
  store i32 %and14.i, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 214748) #6
  %109 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write_byte.i, align 8
  %111 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cmd5.i, align 8
  tail call void %110(ptr noundef %dev, i32 noundef %112, i32 noundef 28) #6
  %113 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cmd5.i, align 8
  %and18.i = and i32 %114, -133
  store i32 %and18.i, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748) #6
  %116 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write_byte.i, align 8
  %118 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cmd5.i, align 8
  tail call void %117(ptr noundef %dev, i32 noundef %119, i32 noundef 28) #6
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %120 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %readback, align 4
  %arrayidx7 = getelementptr i32, ptr %121, i32 %and
  %122 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %7, ptr %arrayidx7, align 4
  br label %if.end8

if.end8:                                          ; preds = %labpc_eeprom_write.exit, %if.end.if.end8_crit_edge
  %123 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %n, align 4
  br label %cleanup10

cleanup10:                                        ; preds = %if.end8, %if.then3.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.1 = phi i32 [ %124, %if.end8 ], [ -22, %entry.cleanup10_crit_edge ], [ %call, %if.then3.cleanup10_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @labpc_common_detach(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %counter = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %counter, align 4
  tail call void @kfree(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @labpc_common_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @labpc_common_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @labpc_drain_fifo(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %2 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_subdev, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %data, align 2, !annotation !77
  %read_byte = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_byte, align 4
  %call = tail call i32 %8(ptr noundef %dev, i32 noundef 0) #6
  %stat1 = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %stat1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %stat1, align 8
  %and3 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not4.not = icmp eq i32 %and3, 0
  br i1 %tobool.not4.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 10
  %count = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end8.for.body_crit_edge ]
  %10 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %cmp4 = icmp eq i32 %11, 32
  br i1 %cmp4, label %if.then, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %for.body
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp5 = icmp eq i64 %13, 0
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i64 %13, -1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %dec, ptr %count, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %for.body.if.end8_crit_edge
  %15 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private, align 4
  %read_byte.i = getelementptr inbounds %struct.labpc_private, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %read_byte.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_byte.i, align 4
  %call.i = call i32 %18(ptr noundef %dev, i32 noundef 10) #6
  %19 = ptrtoint ptr %read_byte.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_byte.i, align 4
  %call2.i = call i32 %20(ptr noundef %dev, i32 noundef 10) #6
  %shl.i = shl i32 %call2.i, 8
  %or.i = or i32 %shl.i, %call.i
  %conv = trunc i32 %or.i to i16
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %data, align 2
  %22 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_subdev, align 4
  %call11 = call i32 @comedi_buf_write_samples(ptr noundef %23, ptr noundef nonnull %data, i32 noundef 1) #6
  %24 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_byte, align 4
  %call13 = call i32 %25(ptr noundef %dev, i32 noundef 0) #6
  %26 = ptrtoint ptr %stat1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call13, ptr %stat1, align 8
  %inc = add nuw nsw i32 %i.05, 1
  %and = and i32 %call13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %i.05)
  %cmp = icmp ult i32 %i.05, 9999
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end8.for.body_crit_edge, label %for.end

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 10000
  br i1 %phi.cmp, label %do.end, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %27 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %class_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.14) #9
  %events = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %29 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %events, align 4
  %or = or i32 %30, 16
  store i32 %or, ptr %events, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_8254_set_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @labpc_ai_eoc(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %read_byte = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_byte, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 0) #6
  %stat1 = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %stat1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %stat1, align 8
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_8254_load(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @labpc_ai_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanlist_len.i = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %0 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  %chanlist34 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %2 = ptrtoint ptr %chanlist34 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chanlist34, align 4
  br i1 %cmp.i, label %entry.for.body.preheader_crit_edge, label %if.end.i

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i.labpc_ai_scan_mode.exit_crit_edge, label %if.end2.i

if.end.i.labpc_ai_scan_mode.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_ai_scan_mode.exit

if.end2.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i = and i32 %5, 65535
  %arrayidx5.i = getelementptr i32, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5.i, align 4
  %and6.i = and i32 %7, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and6.i)
  %cmp7.i = icmp ult i32 %and.i, %and6.i
  br i1 %cmp7.i, label %if.end2.i.labpc_ai_scan_mode.exit_crit_edge, label %if.end9.i

if.end2.i.labpc_ai_scan_mode.exit_crit_edge:      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %labpc_ai_scan_mode.exit

if.end9.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and6.i)
  %cmp10.i = icmp ugt i32 %and.i, %and6.i
  %..i = select i1 %cmp10.i, i32 3, i32 1
  br label %labpc_ai_scan_mode.exit

labpc_ai_scan_mode.exit:                          ; preds = %if.end9.i, %if.end2.i.labpc_ai_scan_mode.exit_crit_edge, %if.end.i.labpc_ai_scan_mode.exit_crit_edge
  %retval.0.i24 = phi i32 [ 2, %if.end.i.labpc_ai_scan_mode.exit_crit_edge ], [ 2, %if.end2.i.labpc_ai_scan_mode.exit_crit_edge ], [ %..i, %if.end9.i ]
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %8 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chanlist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp30.not = icmp eq i32 %1, 0
  br i1 %cmp30.not, label %labpc_ai_scan_mode.exit.cleanup120_crit_edge, label %labpc_ai_scan_mode.exit.for.body.preheader_crit_edge

labpc_ai_scan_mode.exit.for.body.preheader_crit_edge: ; preds = %labpc_ai_scan_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

labpc_ai_scan_mode.exit.cleanup120_crit_edge:     ; preds = %labpc_ai_scan_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

for.body.preheader:                               ; preds = %labpc_ai_scan_mode.exit.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  %10 = phi ptr [ %9, %labpc_ai_scan_mode.exit.for.body.preheader_crit_edge ], [ %3, %entry.for.body.preheader_crit_edge ]
  %retval.0.i2437 = phi i32 [ %retval.0.i24, %labpc_ai_scan_mode.exit.for.body.preheader_crit_edge ], [ 0, %entry.for.body.preheader_crit_edge ]
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and38 = and i32 %12, 65535
  br label %for.body

for.cond:                                         ; preds = %if.end95
  %inc = add nuw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup120_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup120_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.031 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx9 = getelementptr i32, ptr %10, i32 %i.031
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9, align 4
  %and10 = and i32 %14, 65535
  %15 = zext i32 %retval.0.i2437 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %retval.0.i2437, label %for.body.sw.epilog_crit_edge [
    i32 3, label %sw.bb49
    i32 1, label %sw.bb
    i32 2, label %sw.bb26
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %and10, i32 %and38)
  %cmp19.not = icmp eq i32 %and10, %and38
  br i1 %cmp19.not, label %sw.bb.sw.epilog_crit_edge, label %do.body

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@labpc_ai_check_chanlist, %cleanup120)) #6
          to label %if.then24 [label %cleanup120], !srcloc !78

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug234, ptr noundef %17, ptr noundef nonnull @.str.20) #6
  br label %cleanup120

sw.bb26:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %and10, i32 %i.031)
  %cmp27.not = icmp eq i32 %and10, %i.031
  br i1 %cmp27.not, label %sw.bb26.sw.epilog_crit_edge, label %do.body29

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body29:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@labpc_ai_check_chanlist, %cleanup120)) #6
          to label %if.then43 [label %cleanup120], !srcloc !78

if.then43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev44 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %class_dev44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class_dev44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug235, ptr noundef %19, ptr noundef nonnull @.str.20) #6
  br label %cleanup120

sw.bb49:                                          ; preds = %for.body
  %20 = xor i32 %i.031, -1
  %sub51 = add i32 %1, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %and10, i32 %sub51)
  %cmp52.not = icmp eq i32 %and10, %sub51
  br i1 %cmp52.not, label %sw.bb49.sw.epilog_crit_edge, label %do.body54

sw.bb49.sw.epilog_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body54:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@labpc_ai_check_chanlist, %cleanup120)) #6
          to label %if.then68 [label %cleanup120], !srcloc !78

if.then68:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev69 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %21 = ptrtoint ptr %class_dev69 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %class_dev69, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug236, ptr noundef %22, ptr noundef nonnull @.str.20) #6
  br label %cleanup120

sw.epilog:                                        ; preds = %sw.bb49.sw.epilog_crit_edge, %sw.bb26.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %shr131 = xor i32 %14, %12
  %23 = and i32 %shr131, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp74.not = icmp eq i32 %23, 0
  br i1 %cmp74.not, label %if.end95, label %do.body76

do.body76:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@labpc_ai_check_chanlist, %cleanup120)) #6
          to label %if.then90 [label %cleanup120], !srcloc !78

if.then90:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev91 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %24 = ptrtoint ptr %class_dev91 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %class_dev91, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug237, ptr noundef %25, ptr noundef nonnull @.str.21) #6
  br label %cleanup120

if.end95:                                         ; preds = %sw.epilog
  %26 = and i32 %shr131, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp96.not = icmp eq i32 %26, 0
  br i1 %cmp96.not, label %for.cond, label %do.body98

do.body98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@labpc_ai_check_chanlist, %cleanup120)) #6
          to label %if.then112 [label %cleanup120], !srcloc !78

if.then112:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev113 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %27 = ptrtoint ptr %class_dev113 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %class_dev113, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug238, ptr noundef %28, ptr noundef nonnull @.str.22) #6
  br label %cleanup120

cleanup120:                                       ; preds = %if.then112, %do.body98, %if.then90, %do.body76, %if.then68, %do.body54, %if.then43, %do.body29, %if.then24, %do.body, %for.cond.cleanup120_crit_edge, %labpc_ai_scan_mode.exit.cleanup120_crit_edge
  %retval.2 = phi i32 [ -22, %if.then24 ], [ -22, %if.then43 ], [ -22, %if.then68 ], [ -22, %if.then90 ], [ -22, %if.then112 ], [ -22, %do.body ], [ -22, %do.body29 ], [ -22, %do.body54 ], [ -22, %do.body76 ], [ -22, %do.body98 ], [ 0, %labpc_ai_scan_mode.exit.cleanup120_crit_edge ], [ 0, %for.cond.cleanup120_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @labpc_eeprom_ready(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %cmd5.i = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd5.i, align 8
  %and.i = and i32 %3, -129
  store i32 %and.i, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %write_byte.i = getelementptr inbounds %struct.labpc_private, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_byte.i, align 8
  %7 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd5.i, align 8
  tail call void %6(ptr noundef %dev, i32 noundef %8, i32 noundef 28) #6
  %9 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd5.i, align 8
  %or.i = or i32 %10, 132
  store i32 %or.i, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #6
  %12 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_byte.i, align 8
  %14 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd5.i, align 8
  tail call void %13(ptr noundef %dev, i32 noundef %15, i32 noundef 28) #6
  %16 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private.i, align 4
  %cmd5.i.i = getelementptr inbounds %struct.labpc_private, ptr %17, i32 0, i32 7
  %write_byte.i.i = getelementptr inbounds %struct.labpc_private, ptr %17, i32 0, i32 13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.023.i.i = phi i32 [ 1, %entry ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %18 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd5.i.i, align 8
  %and.i.i = and i32 %19, -97
  %sub.i.i = sub nuw nsw i32 8, %i.023.i.i
  %shl.i.i = shl nuw nsw i32 1, %sub.i.i
  %and1.i.i = and i32 %shl.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  %or.i.i = or i32 %and.i.i, 64
  %storemerge.i.i = select i1 %tobool.not.i.i, i32 %and.i.i, i32 %or.i.i
  %20 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge.i.i, ptr %cmd5.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #6
  %22 = ptrtoint ptr %write_byte.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_byte.i.i, align 8
  %24 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmd5.i.i, align 8
  tail call void %23(ptr noundef %dev, i32 noundef %25, i32 noundef 28) #6
  %26 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd5.i.i, align 8
  %or7.i.i = or i32 %27, 32
  store i32 %or7.i.i, ptr %cmd5.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #6
  %29 = ptrtoint ptr %write_byte.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_byte.i.i, align 8
  %31 = ptrtoint ptr %cmd5.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmd5.i.i, align 8
  tail call void %30(ptr noundef %dev, i32 noundef %32, i32 noundef 28) #6
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.i = icmp eq i32 %inc.i.i, 9
  br i1 %exitcond.i, label %labpc_serial_out.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

labpc_serial_out.exit.i:                          ; preds = %for.body.i.i
  %33 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private.i, align 4
  %cmd5.i23.i = getelementptr inbounds %struct.labpc_private, ptr %34, i32 0, i32 7
  %write_byte.i24.i = getelementptr inbounds %struct.labpc_private, ptr %34, i32 0, i32 13
  %read_byte.i.i = getelementptr inbounds %struct.labpc_private, ptr %34, i32 0, i32 12
  %stat2.i.i = getelementptr inbounds %struct.labpc_private, ptr %34, i32 0, i32 10
  br label %for.body.i33.i

for.body.i33.i:                                   ; preds = %for.body.i33.i.for.body.i33.i_crit_edge, %labpc_serial_out.exit.i
  %i.023.i25.i = phi i32 [ 1, %labpc_serial_out.exit.i ], [ %inc.i32.i, %for.body.i33.i.for.body.i33.i_crit_edge ]
  %value.022.i.i = phi i32 [ 0, %labpc_serial_out.exit.i ], [ %value.1.i.i, %for.body.i33.i.for.body.i33.i_crit_edge ]
  %35 = ptrtoint ptr %cmd5.i23.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cmd5.i23.i, align 8
  %or.i26.i = or i32 %36, 32
  store i32 %or.i26.i, ptr %cmd5.i23.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #6
  %38 = ptrtoint ptr %write_byte.i24.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_byte.i24.i, align 8
  %40 = ptrtoint ptr %cmd5.i23.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cmd5.i23.i, align 8
  tail call void %39(ptr noundef %dev, i32 noundef %41, i32 noundef 28) #6
  %42 = ptrtoint ptr %cmd5.i23.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cmd5.i23.i, align 8
  %and.i27.i = and i32 %43, -33
  store i32 %and.i27.i, ptr %cmd5.i23.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #6
  %45 = ptrtoint ptr %write_byte.i24.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_byte.i24.i, align 8
  %47 = ptrtoint ptr %cmd5.i23.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cmd5.i23.i, align 8
  tail call void %46(ptr noundef %dev, i32 noundef %48, i32 noundef 28) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #6
  %50 = ptrtoint ptr %read_byte.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_byte.i.i, align 4
  %call.i.i = tail call i32 %51(ptr noundef %dev, i32 noundef 29) #6
  %52 = ptrtoint ptr %stat2.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call.i.i, ptr %stat2.i.i, align 4
  %and6.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool.not.i28.i = icmp eq i32 %and6.i.i, 0
  %sub.i29.i = sub nuw nsw i32 8, %i.023.i25.i
  %shl.i30.i = shl nuw nsw i32 1, %sub.i29.i
  %or7.i31.i = select i1 %tobool.not.i28.i, i32 0, i32 %shl.i30.i
  %value.1.i.i = or i32 %or7.i31.i, %value.022.i.i
  %inc.i32.i = add nuw nsw i32 %i.023.i25.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i32.i, 9
  br i1 %exitcond.not.i.i, label %labpc_eeprom_read_status.exit, label %for.body.i33.i.for.body.i33.i_crit_edge

for.body.i33.i.for.body.i33.i_crit_edge:          ; preds = %for.body.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i33.i

labpc_eeprom_read_status.exit:                    ; preds = %for.body.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cmd5.i, align 8
  %and6.i = and i32 %54, -133
  store i32 %and6.i, ptr %cmd5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748) #6
  %56 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_byte.i, align 8
  %58 = ptrtoint ptr %cmd5.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cmd5.i, align 8
  tail call void %57(ptr noundef %dev, i32 noundef %59, i32 noundef 28) #6
  %and = and i32 %value.1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !53, !55, !56, !58, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__ksymtab_labpc_common_attach, !1, !"__ksymtab_labpc_common_attach", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 1338, i32 1}
!2 = !{ptr @__ksymtab_labpc_common_detach, !3, !"__ksymtab_labpc_common_detach", i1 false, i1 false}
!3 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 1347, i32 1}
!4 = !{ptr @__initcall__kmod_ni_labpc_common__239_1353_labpc_common_init6, !5, !"__initcall__kmod_ni_labpc_common__239_1353_labpc_common_init6", i1 false, i1 false}
!5 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 1353, i32 1}
!6 = !{ptr @__exitcall_labpc_common_exit, !7, !"__exitcall_labpc_common_exit", i1 false, i1 false}
!7 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 1358, i32 1}
!8 = !{ptr @__UNIQUE_ID_author240, !9, !"__UNIQUE_ID_author240", i1 false, i1 false}
!9 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 1360, i32 1}
!10 = !{ptr @__UNIQUE_ID_description241, !11, !"__UNIQUE_ID_description241", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 1361, i32 1}
!12 = !{ptr @__UNIQUE_ID_file242, !13, !"__UNIQUE_ID_file242", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 1362, i32 1}
!14 = !{ptr @__UNIQUE_ID_license243, !13, !"__UNIQUE_ID_license243", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 823, i32 3}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @labpc_interrupt._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @labpc_interrupt._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 847, i32 3}
!25 = !{ptr @labpc_interrupt._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @labpc_interrupt._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 857, i32 3}
!29 = !{ptr @labpc_interrupt._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @labpc_interrupt._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 867, i32 3}
!33 = !{ptr @labpc_interrupt._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @labpc_interrupt._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 790, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @labpc_drain_fifo._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @labpc_drain_fifo._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @range_labpc_1200_ai, !41, !"range_labpc_1200_ai", i1 false, i1 false}
!41 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 51, i32 35}
!42 = !{ptr @range_labpc_plus_ai, !43, !"range_labpc_plus_ai", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 30, i32 35}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 459, i32 5}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug234, !45, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!49 = !{ptr @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug235, !50, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!50 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 466, i32 5}
!51 = !{ptr @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug236, !52, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 473, i32 5}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 481, i32 4}
!55 = !{ptr @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug237, !54, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 487, i32 4}
!58 = !{ptr @labpc_ai_check_chanlist.__UNIQUE_ID_ddebug238, !57, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!59 = !{ptr @range_labpc_ao, !60, !"range_labpc_ao", i1 false, i1 false}
!60 = !{!"../drivers/comedi/drivers/ni_labpc_common.c", i32 70, i32 35}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 4650401}
!71 = !{i64 2154240842}
!72 = !{i64 2154241055}
!73 = !{i64 4650006}
!74 = !{i64 2154240269}
!75 = !{i64 2154240488}
!76 = !{i32 0, i32 33}
!77 = !{!"auto-init"}
!78 = !{i64 2148987698, i64 2148987703, i64 2148987716, i64 2148987760, i64 2148987794, i64 2148987815}
