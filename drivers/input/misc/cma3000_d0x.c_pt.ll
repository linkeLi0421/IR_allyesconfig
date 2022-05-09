; ModuleID = '/llk/IR_all_yes/drivers/input/misc/cma3000_d0x.c_pt.bc'
source_filename = "../drivers/input/misc/cma3000_d0x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cma3000_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_cma3000_suspend\09\09\09\09"
module asm "\09.long\09__crc_cma3000_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cma3000_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22cma3000_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_cma3000_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cma3000_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_cma3000_resume\09\09\09\09"
module asm "\09.long\09__crc_cma3000_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cma3000_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22cma3000_resume\22\09\09\09\09\09"
module asm "__kstrtabns_cma3000_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cma3000_init\22, \22a\22\09"
module asm "\09.weak\09__crc_cma3000_init\09\09\09\09"
module asm "\09.long\09__crc_cma3000_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cma3000_init:\09\09\09\09\09"
module asm "\09.asciz \09\22cma3000_init\22\09\09\09\09\09"
module asm "__kstrtabns_cma3000_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cma3000_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_cma3000_exit\09\09\09\09"
module asm "\09.long\09__crc_cma3000_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cma3000_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22cma3000_exit\22\09\09\09\09\09"
module asm "__kstrtabns_cma3000_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cma3000_accl_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i8, %struct.mutex, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cma3000_bus_ops = type { i16, i8, ptr, ptr }
%struct.cma3000_platform_data = type { i32, i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__kstrtab_cma3000_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_cma3000_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_cma3000_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cma3000_suspend to i32), ptr @__kstrtab_cma3000_suspend, ptr @__kstrtabns_cma3000_suspend }, section "___ksymtab+cma3000_suspend", align 4
@__kstrtab_cma3000_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_cma3000_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_cma3000_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cma3000_resume to i32), ptr @__kstrtab_cma3000_resume, ptr @__kstrtabns_cma3000_resume }, section "___ksymtab+cma3000_resume", align 4
@cma3000_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 283, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"platform data not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cma3000_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/input/misc/cma3000_d0x.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cma3000_init._entry_ptr = internal global ptr @cma3000_init._entry, section ".printk_index", align 4
@cma3000_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@cma3000_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 313, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid mode specified, assuming Motion Detect\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cma3000_init._entry_ptr.9 = internal global ptr @cma3000_init._entry.6, section ".printk_index", align 4
@cma3000_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 319, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid G range specified, assuming 8G\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cma3000_init._entry_ptr.13 = internal global ptr @cma3000_init._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cma3000-accelerometer\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Revid\00", [26 x i8] zeroinitializer }, align 32
@cma3000_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016CMA3000 Accelerometer: Revision %x\0A\00", [58 x i8] zeroinitializer }, align 32
@cma3000_init._entry_ptr.18 = internal global ptr @cma3000_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cma3000_d0x\00", [20 x i8] zeroinitializer }, align 32
@cma3000_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 356, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"request_threaded_irq failed\0A\00", [35 x i8] zeroinitializer }, align 32
@cma3000_init._entry_ptr.22 = internal global ptr @cma3000_init._entry.20, section ".printk_index", align 4
@cma3000_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 362, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@cma3000_init._entry_ptr.25 = internal global ptr @cma3000_init._entry.23, section ".printk_index", align 4
@__kstrtab_cma3000_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_cma3000_init = external dso_local constant [0 x i8], align 1
@__ksymtab_cma3000_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cma3000_init to i32), ptr @__kstrtab_cma3000_init, ptr @__kstrtabns_cma3000_init }, section "___ksymtab+cma3000_init", align 4
@__kstrtab_cma3000_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_cma3000_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_cma3000_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cma3000_exit to i32), ptr @__kstrtab_cma3000_exit, ptr @__kstrtabns_cma3000_exit }, section "___ksymtab+cma3000_exit", align 4
@__UNIQUE_ID_description227 = internal constant [57 x i8] c"cma3000_d0x.description=CMA3000-D0x Accelerometer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file228 = internal constant [48 x i8] c"cma3000_d0x.file=drivers/input/misc/cma3000_d0x\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [24 x i8] c"cma3000_d0x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [47 x i8] c"cma3000_d0x.author=Hemanth V <hemanthv@ti.com>\00", section ".modinfo", align 1
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mode setting\00", [19 x i8] zeroinitializer }, align 32
@cma3000_poweron._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.27, ptr @.str.2, i32 185, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cma3000_poweron\00", [16 x i8] zeroinitializer }, align 32
@cma3000_poweron._entry_ptr = internal global ptr @cma3000_poweron._entry, section ".printk_index", align 4
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Motion Detect Threshold\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Time register\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Free fall threshold\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Reset\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Status\00", [25 x i8] zeroinitializer }, align 32
@cma3000_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Reset failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cma3000_reset\00", [18 x i8] zeroinitializer }, align 32
@cma3000_reset._entry_ptr = internal global ptr @cma3000_reset._entry, section ".printk_index", align 4
@cma3000_reset._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 166, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Parity Error\0A\00", [18 x i8] zeroinitializer }, align 32
@cma3000_reset._entry_ptr.37 = internal global ptr @cma3000_reset._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"interrupt status\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"X\00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Y\00", [30 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Z\00", [30 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@mode_to_mg = internal constant { [8 x [2 x i32]], [32 x i8] } { [8 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 71, i32 18], [2 x i32] [i32 71, i32 18], [2 x i32] [i32 71, i32 71], [2 x i32] [i32 71, i32 71], [2 x i32] [i32 71, i32 18], [2 x i32] [i32 71, i32 18], [2 x i32] zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2000, i64 8000]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 2000, i64 8000]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 283, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 307, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 312, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 318, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 323, i32 20 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 344, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 350, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 354, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 356, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 362, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 210, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 184, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 191, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 193, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 195, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 152, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 159, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 161, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 166, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 110, i32 16 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 122, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 123, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 124, i32 10 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 126, i32 9 }
@___asan_gen_.167 = private unnamed_addr constant [11 x i8] c"mode_to_mg\00", align 1
@___asan_gen_.168 = private constant [36 x i8] c"../drivers/input/misc/cma3000_d0x.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 84, i32 12 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__ksymtab_cma3000_exit, ptr @__ksymtab_cma3000_init, ptr @__ksymtab_cma3000_resume, ptr @__ksymtab_cma3000_suspend, ptr @cma3000_init._entry, ptr @cma3000_init._entry.10, ptr @cma3000_init._entry.16, ptr @cma3000_init._entry.20, ptr @cma3000_init._entry.23, ptr @cma3000_init._entry.6, ptr @cma3000_init._entry_ptr, ptr @cma3000_init._entry_ptr.13, ptr @cma3000_init._entry_ptr.18, ptr @cma3000_init._entry_ptr.22, ptr @cma3000_init._entry_ptr.25, ptr @cma3000_init._entry_ptr.9, ptr @cma3000_poweron._entry, ptr @cma3000_poweron._entry_ptr, ptr @cma3000_reset._entry, ptr @cma3000_reset._entry.35, ptr @cma3000_reset._entry_ptr, ptr @cma3000_reset._entry_ptr.37, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cma3000_init.__key, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @mode_to_mg], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma3000_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma3000_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma3000_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma3000_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma3000_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma3000_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma3000_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma3000_poweron._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma3000_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma3000_reset._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_to_mg to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cma3000_suspend(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %suspended = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %suspended, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %opened = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 9
  %2 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opened, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %write.i = getelementptr inbounds %struct.cma3000_bus_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 4
  %dev.i = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 %7(ptr noundef %9, i8 noundef zeroext 2, i8 noundef zeroext 7, ptr noundef nonnull @.str.26) #4
  tail call void @msleep(i32 noundef 30) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %suspended, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cma3000_resume(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %suspended = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %suspended, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %opened = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 9
  %2 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opened, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @cma3000_poweron(ptr noundef %data)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %suspended, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cma3000_poweron(ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  %g_range = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %g_range to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %g_range, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 2000, label %if.then
    i32 8000, label %if.then6
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mode = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mode, align 4
  %shl = shl i8 %6, 1
  %or = or i8 %shl, -128
  br label %if.end18

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mode7 = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 7
  %7 = ptrtoint ptr %mode7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode7, align 4
  %shl9 = shl i8 %8, 1
  br label %if.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.11) #7
  %mode13 = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 7
  %11 = ptrtoint ptr %mode13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mode13, align 4
  %shl15 = shl i8 %12, 1
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.then6, %if.then
  %ctrl.0 = phi i8 [ %or, %if.then ], [ %shl9, %if.then6 ], [ %shl15, %do.end ]
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %ctrl_mod = getelementptr inbounds %struct.cma3000_bus_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ctrl_mod to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctrl_mod, align 2
  %or211 = or i8 %16, %ctrl.0
  %write = getelementptr inbounds %struct.cma3000_bus_ops, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write, align 4
  %dev24 = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 2
  %19 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev24, align 4
  %mdthr = getelementptr inbounds %struct.cma3000_platform_data, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %mdthr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mdthr, align 1
  %call = tail call i32 %18(ptr noundef %20, i8 noundef zeroext 9, i8 noundef zeroext %22, ptr noundef nonnull @.str.28) #4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %write26 = getelementptr inbounds %struct.cma3000_bus_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %write26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write26, align 4
  %27 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev24, align 4
  %mdfftmr = getelementptr inbounds %struct.cma3000_platform_data, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %mdfftmr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mdfftmr, align 2
  %call28 = tail call i32 %26(ptr noundef %28, i8 noundef zeroext 10, i8 noundef zeroext %30, ptr noundef nonnull @.str.29) #4
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %write30 = getelementptr inbounds %struct.cma3000_bus_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %write30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write30, align 4
  %35 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev24, align 4
  %ffthr = getelementptr inbounds %struct.cma3000_platform_data, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %ffthr to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ffthr, align 1
  %call32 = tail call i32 %34(ptr noundef %36, i8 noundef zeroext 11, i8 noundef zeroext %38, ptr noundef nonnull @.str.30) #4
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %write34 = getelementptr inbounds %struct.cma3000_bus_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %write34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write34, align 4
  %43 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev24, align 4
  %call36 = tail call i32 %42(ptr noundef %44, i8 noundef zeroext 2, i8 noundef zeroext %or211, ptr noundef nonnull @.str.26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end18.cleanup_crit_edge, label %if.end40

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end40:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 30) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end18.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cma3000_init(ptr noundef %dev, i32 noundef %irq, ptr noundef %bops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #7
  br label %err_out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp = icmp eq i32 %irq, 0
  br i1 %cmp, label %if.end.err_out_crit_edge, label %if.end2

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out

if.end2:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 128) #8
  %call4 = tail call ptr @input_allocate_device() #4
  %tobool5.not = icmp eq ptr %call7.i.i, null
  %tobool6.not = icmp eq ptr %call4, null
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.end2.err_free_mem_crit_edge, label %if.end8

if.end2.err_free_mem_crit_edge:                   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_mem

if.end8:                                          ; preds = %if.end2
  %dev9 = getelementptr inbounds %struct.cma3000_accl_data, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev9, align 8
  %input_dev10 = getelementptr inbounds %struct.cma3000_accl_data, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %input_dev10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %input_dev10, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bops, ptr %call7.i.i, align 8
  %pdata11 = getelementptr inbounds %struct.cma3000_accl_data, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %pdata11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %pdata11, align 4
  %irq12 = getelementptr inbounds %struct.cma3000_accl_data, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %irq12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %irq, ptr %irq12, align 4
  %mutex = getelementptr inbounds %struct.cma3000_accl_data, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @cma3000_init.__key) #4
  %mode = getelementptr inbounds %struct.cma3000_platform_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode, align 4
  %mode16 = getelementptr inbounds %struct.cma3000_accl_data, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %mode16 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %mode16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp18 = icmp ugt i8 %9, 7
  br i1 %cmp18, label %if.then20, label %if.end8.if.end25_crit_edge

if.end8.if.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %mode16 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %mode16, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end8.if.end25_crit_edge
  %g_range = getelementptr inbounds %struct.cma3000_platform_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %g_range to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %g_range, align 4
  %g_range26 = getelementptr inbounds %struct.cma3000_accl_data, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %g_range26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %g_range26, align 8
  %15 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %13, label %do.end36 [
    i32 2000, label %if.end25.if.end38_crit_edge
    i32 8000, label %if.end25.if.end38_crit_edge148
  ]

if.end25.if.end38_crit_edge148:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.end25.if.end38_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

do.end36:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  %16 = ptrtoint ptr %g_range26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8000, ptr %g_range26, align 8
  br label %if.end38

if.end38:                                         ; preds = %do.end36, %if.end25.if.end38_crit_edge, %if.end25.if.end38_crit_edge148
  %17 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.14, ptr %call4, align 8
  %18 = ptrtoint ptr %bops to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %bops, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3
  %20 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %id, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 31
  %21 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cma3000_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 32
  %22 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @cma3000_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 5
  %23 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %evbit, align 4
  %or.i = or i32 %24, 8
  store i32 %or.i, ptr %evbit, align 4
  %25 = ptrtoint ptr %g_range26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %g_range26, align 8
  %sub = sub i32 0, %26
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call4, i32 noundef 0, i32 noundef %sub, i32 noundef %26, i32 noundef %28, i32 noundef 0) #4
  %29 = ptrtoint ptr %g_range26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %g_range26, align 8
  %sub43 = sub i32 0, %30
  %fuzz_y = getelementptr inbounds %struct.cma3000_platform_data, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %fuzz_y to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fuzz_y, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call4, i32 noundef 1, i32 noundef %sub43, i32 noundef %30, i32 noundef %32, i32 noundef 0) #4
  %33 = ptrtoint ptr %g_range26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %g_range26, align 8
  %sub46 = sub i32 0, %34
  %fuzz_z = getelementptr inbounds %struct.cma3000_platform_data, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %fuzz_z to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fuzz_z, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call4, i32 noundef 2, i32 noundef %sub46, i32 noundef %34, i32 noundef %36, i32 noundef 0) #4
  tail call void @input_set_abs_params(ptr noundef nonnull %call4, i32 noundef 40, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 40, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i, align 8
  %write.i = getelementptr inbounds %struct.cma3000_bus_ops, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i, align 4
  %42 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev9, align 8
  %call.i = tail call i32 %41(ptr noundef %43, i8 noundef zeroext 4, i8 noundef zeroext 2, ptr noundef nonnull @.str.31) #4
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i, align 8
  %write2.i = getelementptr inbounds %struct.cma3000_bus_ops, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %write2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write2.i, align 4
  %48 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev9, align 8
  %call4.i = tail call i32 %47(ptr noundef %49, i8 noundef zeroext 4, i8 noundef zeroext 10, ptr noundef nonnull @.str.31) #4
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7.i.i, align 8
  %write6.i = getelementptr inbounds %struct.cma3000_bus_ops, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %write6.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write6.i, align 4
  %54 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev9, align 8
  %call8.i = tail call i32 %53(ptr noundef %55, i8 noundef zeroext 4, i8 noundef zeroext 4, ptr noundef nonnull @.str.31) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #4
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call7.i.i, align 8
  %read.i = getelementptr inbounds %struct.cma3000_bus_ops, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read.i, align 4
  %70 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev9, align 8
  %call11.i = tail call i32 %69(ptr noundef %71, i8 noundef zeroext 3, ptr noundef nonnull @.str.32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp.i = icmp slt i32 %call11.i, 0
  br i1 %cmp.i, label %if.end38.cma3000_reset.exit_crit_edge, label %if.end.i

if.end38.cma3000_reset.exit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cma3000_reset.exit

if.end.i:                                         ; preds = %if.end38
  %and.i = and i32 %call11.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.end51, label %if.end.i.cma3000_reset.exit_crit_edge

if.end.i.cma3000_reset.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cma3000_reset.exit

cma3000_reset.exit:                               ; preds = %if.end.i.cma3000_reset.exit_crit_edge, %if.end38.cma3000_reset.exit_crit_edge
  %.str.36.sink.i = phi ptr [ @.str.33, %if.end38.cma3000_reset.exit_crit_edge ], [ @.str.36, %if.end.i.cma3000_reset.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call11.i, %if.end38.cma3000_reset.exit_crit_edge ], [ -5, %if.end.i.cma3000_reset.exit_crit_edge ]
  %72 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull %.str.36.sink.i) #7
  br label %err_free_mem

if.end51:                                         ; preds = %if.end.i
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call7.i.i, align 8
  %read = getelementptr inbounds %struct.cma3000_bus_ops, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read, align 4
  %78 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev9, align 8
  %call54 = tail call i32 %77(ptr noundef %79, i8 noundef zeroext 1, ptr noundef nonnull @.str.15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end51.err_free_mem_crit_edge, label %do.end61

if.end51.err_free_mem_crit_edge:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_mem

do.end61:                                         ; preds = %if.end51
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call54) #7
  %irqflags = getelementptr inbounds %struct.cma3000_platform_data, ptr %1, i32 0, i32 8
  %80 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %irqflags, align 4
  %or = or i32 %81, 8192
  %call63 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef null, ptr noundef nonnull @cma3000_thread_irq, i32 noundef %or, ptr noundef nonnull @.str.19, ptr noundef nonnull %call7.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end69, label %do.end68

do.end68:                                         ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #7
  br label %err_free_mem

if.end69:                                         ; preds = %do.end61
  %82 = ptrtoint ptr %input_dev10 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %input_dev10, align 4
  %call71 = tail call i32 @input_register_device(ptr noundef %83) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end69.cleanup_crit_edge, label %do.end76

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #7
  %call78 = tail call ptr @free_irq(i32 noundef %irq, ptr noundef nonnull %call7.i.i) #4
  br label %err_free_mem

err_free_mem:                                     ; preds = %do.end76, %do.end68, %if.end51.err_free_mem_crit_edge, %cma3000_reset.exit, %if.end2.err_free_mem_crit_edge
  %error.0 = phi i32 [ %retval.0.ph.i, %cma3000_reset.exit ], [ %call63, %do.end68 ], [ %call71, %do.end76 ], [ -12, %if.end2.err_free_mem_crit_edge ], [ %call54, %if.end51.err_free_mem_crit_edge ]
  tail call void @input_free_device(ptr noundef %call4) #4
  tail call void @kfree(ptr noundef %call7.i.i) #4
  br label %err_out

err_out:                                          ; preds = %err_free_mem, %if.end.err_out_crit_edge, %do.end
  %error.1 = phi i32 [ %error.0, %err_free_mem ], [ -22, %do.end ], [ -22, %if.end.err_out_crit_edge ]
  %84 = inttoptr i32 %error.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end69.cleanup_crit_edge
  %retval.0 = phi ptr [ %84, %err_out ], [ %call7.i.i, %if.end69.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma3000_open(ptr nocapture noundef readonly %input_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.cma3000_accl_data, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %suspended = getelementptr inbounds %struct.cma3000_accl_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @cma3000_poweron(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %opened = getelementptr inbounds %struct.cma3000_accl_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %opened, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cma3000_close(ptr nocapture noundef readonly %input_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.cma3000_accl_data, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %suspended = getelementptr inbounds %struct.cma3000_accl_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %write.i = getelementptr inbounds %struct.cma3000_bus_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 4
  %dev.i = getelementptr inbounds %struct.cma3000_accl_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 %7(ptr noundef %9, i8 noundef zeroext 2, i8 noundef zeroext 7, ptr noundef nonnull @.str.26) #4
  tail call void @msleep(i32 noundef 30) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %opened = getelementptr inbounds %struct.cma3000_accl_data, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %opened, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma3000_thread_irq(i32 noundef %irq, ptr nocapture noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %read = getelementptr inbounds %struct.cma3000_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %dev = getelementptr inbounds %struct.cma3000_accl_data, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call = tail call i32 %3(ptr noundef %5, i8 noundef zeroext 5, ptr noundef nonnull @.str.38) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %input_dev3 = getelementptr inbounds %struct.cma3000_accl_data, ptr %dev_id, i32 0, i32 3
  %6 = ptrtoint ptr %input_dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_dev3, align 4
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @input_event(ptr noundef %7, i32 noundef 3, i32 noundef 40, i32 noundef 1) #4
  %8 = ptrtoint ptr %input_dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_dev3, align 4
  tail call void @input_event(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @input_event(ptr noundef %7, i32 noundef 3, i32 noundef 40, i32 noundef 0) #4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id, align 4
  %read6 = getelementptr inbounds %struct.cma3000_bus_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read6, align 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call8 = tail call i32 %13(ptr noundef %15, i8 noundef zeroext 6, ptr noundef nonnull @.str.39) #4
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 4
  %read10 = getelementptr inbounds %struct.cma3000_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read10, align 4
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call12 = tail call i32 %19(ptr noundef %21, i8 noundef zeroext 7, ptr noundef nonnull @.str.40) #4
  %22 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_id, align 4
  %read14 = getelementptr inbounds %struct.cma3000_bus_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read14, align 4
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call16 = tail call i32 %25(ptr noundef %27, i8 noundef zeroext 8, ptr noundef nonnull @.str.41) #4
  %28 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_id, align 4
  %read18 = getelementptr inbounds %struct.cma3000_bus_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %read18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read18, align 4
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %call20 = tail call i32 %31(ptr noundef %33, i8 noundef zeroext 2, ptr noundef nonnull @.str.42) #4
  %34 = lshr i32 %call20, 1
  %conv23 = and i32 %34, 7
  %35 = lshr i32 %call20, 7
  %idxprom28 = and i32 %35, 1
  %arrayidx29 = getelementptr [8 x [2 x i32]], ptr @mode_to_mg, i32 0, i32 %conv23, i32 %idxprom28
  %36 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx29, align 4
  %bit_to_mg = getelementptr inbounds %struct.cma3000_accl_data, ptr %dev_id, i32 0, i32 4
  %38 = ptrtoint ptr %bit_to_mg to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %bit_to_mg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp31 = icmp eq i32 %37, 0
  br i1 %cmp31, label %if.end4.cleanup_crit_edge, label %if.end34

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end34:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %sext.i = shl i32 %call8, 24
  %conv1.i = ashr exact i32 %sext.i, 24
  %mul.i = mul i32 %37, %conv1.i
  %sext15.i = shl i32 %call12, 24
  %conv3.i = ashr exact i32 %sext15.i, 24
  %mul5.i = mul i32 %37, %conv3.i
  %sext16.i = shl i32 %call16, 24
  %conv7.i = ashr exact i32 %sext16.i, 24
  %mul9.i = mul i32 %37, %conv7.i
  %input_dev35 = getelementptr inbounds %struct.cma3000_accl_data, ptr %dev_id, i32 0, i32 3
  %39 = ptrtoint ptr %input_dev35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input_dev35, align 4
  tail call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 0, i32 noundef %mul.i) #4
  %41 = ptrtoint ptr %input_dev35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %input_dev35, align 4
  tail call void @input_event(ptr noundef %42, i32 noundef 3, i32 noundef 1, i32 noundef %mul5.i) #4
  %43 = ptrtoint ptr %input_dev35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input_dev35, align 4
  tail call void @input_event(ptr noundef %44, i32 noundef 3, i32 noundef 2, i32 noundef %mul9.i) #4
  %45 = ptrtoint ptr %input_dev35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input_dev35, align 4
  tail call void @input_event(ptr noundef %46, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end34 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cma3000_exit(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %data) #4
  %input_dev = getelementptr inbounds %struct.cma3000_accl_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  tail call void @input_unregister_device(ptr noundef %3) #4
  tail call void @kfree(ptr noundef %data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !52, !54, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__ksymtab_cma3000_suspend, !1, !"__ksymtab_cma3000_suspend", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 257, i32 1}
!2 = !{ptr @__ksymtab_cma3000_resume, !3, !"__ksymtab_cma3000_resume", i1 false, i1 false}
!3 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 271, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 283, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @cma3000_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @cma3000_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @cma3000_init.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 307, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 312, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cma3000_init._entry.6, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @cma3000_init._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 318, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cma3000_init._entry.10, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @cma3000_init._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 323, i32 20}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 344, i32 8}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 350, i32 2}
!31 = !{ptr @cma3000_init._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cma3000_init._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 354, i32 10}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 356, i32 3}
!37 = !{ptr @cma3000_init._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cma3000_init._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 362, i32 3}
!41 = !{ptr @cma3000_init._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cma3000_init._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @__ksymtab_cma3000_init, !44, !"__ksymtab_cma3000_init", i1 false, i1 false}
!44 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 376, i32 1}
!45 = !{ptr @__ksymtab_cma3000_exit, !46, !"__ksymtab_cma3000_exit", i1 false, i1 false}
!46 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 384, i32 1}
!47 = !{ptr @__UNIQUE_ID_description227, !48, !"__UNIQUE_ID_description227", i1 false, i1 false}
!48 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 386, i32 1}
!49 = !{ptr @__UNIQUE_ID_file228, !50, !"__UNIQUE_ID_file228", i1 false, i1 false}
!50 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 387, i32 1}
!51 = !{ptr @__UNIQUE_ID_license229, !50, !"__UNIQUE_ID_license229", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_author230, !53, !"__UNIQUE_ID_author230", i1 false, i1 false}
!53 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 388, i32 1}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 210, i32 8}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 184, i32 3}
!58 = !{ptr @cma3000_poweron._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cma3000_poweron._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 191, i32 2}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 193, i32 2}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 195, i32 2}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 152, i32 2}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 159, i32 8}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 161, i32 3}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cma3000_reset._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @cma3000_reset._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 166, i32 3}
!77 = !{ptr @cma3000_reset._entry.35, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cma3000_reset._entry_ptr.37, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 110, i32 16}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 122, i32 10}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 123, i32 10}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 124, i32 10}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 126, i32 9}
!89 = !{ptr @mode_to_mg, !90, !"mode_to_mg", i1 false, i1 false}
!90 = !{!"../drivers/input/misc/cma3000_d0x.c", i32 84, i32 12}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i8 0, i8 2}
