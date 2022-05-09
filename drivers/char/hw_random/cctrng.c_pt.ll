; ModuleID = '/llk/IR_all_yes/drivers/char/hw_random/cctrng.c_pt.bc'
source_filename = "../drivers/char/hw_random/cctrng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cctrng_drvdata = type { ptr, ptr, ptr, %struct.hwrng, i32, [4 x i32], [32 x i32], %struct.circ_buf, %struct.work_struct, %struct.work_struct, %struct.atomic_t, %struct.spinlock }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.circ_buf = type { ptr, i32, i32 }

@__initcall__kmod_cctrng__227_709_cctrng_mod_init6 = internal global ptr @cctrng_mod_init, section ".initcall6.init", align 4
@cctrng_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cctrng_probe, ptr @cctrng_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @arm_cctrng_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cctrng_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cctrng_mod_exit = internal global ptr @cctrng_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [46 x i8] c"cctrng.description=ARM CryptoCell TRNG Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [18 x i8] c"cctrng.author=ARM\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [42 x i8] c"cctrng.file=drivers/char/hw_random/cctrng\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [22 x i8] c"cctrng.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cctrng\00", [25 x i8] zeroinitializer }, align 32
@arm_cctrng_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cryptocell-713-trng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cryptocell-703-trng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@cctrng_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cctrng_suspend, ptr @cctrng_resume, ptr @cctrng_suspend, ptr @cctrng_resume, ptr @cctrng_suspend, ptr @cctrng_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cctrng_suspend, ptr @cctrng_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@cctrng_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 514, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to ioremap registers\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cctrng_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/char/hw_random/cctrng.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cctrng_probe._entry_ptr = internal global ptr @cctrng_probe._entry, section ".printk_index", align 4
@cctrng_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 526, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to get legal sampling ratio for rosc\0A\00", [51 x i8] zeroinitializer }, align 32
@cctrng_probe._entry_ptr.8 = internal global ptr @cctrng_probe._entry.6, section ".printk_index", align 4
@cctrng_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cc_trng_clk_init failed\0A\00", [39 x i8] zeroinitializer }, align 32
@cctrng_probe._entry_ptr.11 = internal global ptr @cctrng_probe._entry.9, section ".printk_index", align 4
@cctrng_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&drvdata->compwork)\00", [58 x i8] zeroinitializer }, align 32
@cctrng_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&drvdata->startwork)\00", [57 x i8] zeroinitializer }, align 32
@cctrng_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&drvdata->read_lock\00", [44 x i8] zeroinitializer }, align 32
@cctrng_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 543, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not register to interrupt %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cctrng_probe._entry_ptr.19 = internal global ptr @cctrng_probe._entry.17, section ".printk_index", align 4
@cctrng_probe.__UNIQUE_ID_ddebug220 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.20, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Registered to IRQ: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cctrng_probe.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.21, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRR=0x%08X\0A\00", [20 x i8] zeroinitializer }, align 32
@cctrng_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 561, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cc_trng_pm_init failed\0A\00", [40 x i8] zeroinitializer }, align 32
@cctrng_probe._entry_ptr.24 = internal global ptr @cctrng_probe._entry.22, section ".printk_index", align 4
@cctrng_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 568, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cc_trng_pm_get returned %x\0A\00", [36 x i8] zeroinitializer }, align 32
@cctrng_probe._entry_ptr.27 = internal global ptr @cctrng_probe._entry.25, section ".printk_index", align 4
@cctrng_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 578, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not register hwrng device.\0A\00", [62 x i8] zeroinitializer }, align 32
@cctrng_probe._entry_ptr.30 = internal global ptr @cctrng_probe._entry.28, section ".printk_index", align 4
@cctrng_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 589, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ARM cctrng device initialized\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cctrng_probe._entry_ptr.34 = internal global ptr @cctrng_probe._entry.31, section ".printk_index", align 4
@cctrng_read._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cctrng_read.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cctrng_read\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unable to hold lock\0A\00", [43 x i8] zeroinitializer }, align 32
@cctrng_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.36, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@cctrng_read._entry_ptr = internal global ptr @cctrng_read._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm,rosc-ratio\00", [17 x i8] zeroinitializer }, align 32
@cc_trng_parse_sampling_ratio.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cc_trng_parse_sampling_ratio\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rosc %d sampling ratio %u\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error getting clock\0A\00", [43 x i8] zeroinitializer }, align 32
@cc_trng_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 474, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cc_trng_clk_init\00", [47 x i8] zeroinitializer }, align 32
@cc_trng_clk_init._entry_ptr = internal global ptr @cc_trng_clk_init._entry, section ".printk_index", align 4
@cc_trng_compwork_handler.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cc_trng_compwork_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Got RNG_ISR=0x%08X (EHR_VALID=%u)\0A\00", [61 x i8] zeroinitializer }, align 32
@cc_trng_compwork_handler.__UNIQUE_ID_ddebug216 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.46, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cctrng autocorr/timeout error.\0A\00", [32 x i8] zeroinitializer }, align 32
@cc_trng_compwork_handler.__UNIQUE_ID_ddebug217 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.47, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Got 0 value in EHR. active_rosc %u\0A\00", [60 x i8] zeroinitializer }, align 32
@cc_trng_compwork_handler.__UNIQUE_ID_ddebug218 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.48, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"compwork handler done\0A\00", [41 x i8] zeroinitializer }, align 32
@cc_trng_pm_put_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pm_runtime_put_autosuspend returned %x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cc_trng_pm_put_suspend\00", [41 x i8] zeroinitializer }, align 32
@cc_trng_pm_put_suspend._entry_ptr = internal global ptr @cc_trng_pm_put_suspend._entry, section ".printk_index", align 4
@cc_trng_change_rosc.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cc_trng_change_rosc\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cctrng change rosc (was %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@cc_isr.__UNIQUE_ID_ddebug219 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cc_isr\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Got IRR=0x%08X\0A\00", [16 x i8] zeroinitializer }, align 32
@cc_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cc_isr.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.55, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"IRR includes unknown cause bits (0x%08X)\0A\00", [54 x i8] zeroinitializer }, align 32
@cc_trng_hw_trigger.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cc_trng_hw_trigger\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cctrng hw trigger.\0A\00", [44 x i8] zeroinitializer }, align 32
@cctrng_remove.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cctrng_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Releasing cctrng resources...\0A\00", [33 x i8] zeroinitializer }, align 32
@cctrng_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.3, i32 613, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ARM cctrng device terminated\0A\00", [34 x i8] zeroinitializer }, align 32
@cctrng_remove._entry_ptr = internal global ptr @cctrng_remove._entry, section ".printk_index", align 4
@cctrng_suspend.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cctrng_suspend\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set HOST_POWER_DOWN_EN\0A\00", [40 x i8] zeroinitializer }, align 32
@cctrng_resume.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cctrng_resume\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unset HOST_POWER_DOWN_EN\0A\00", [38 x i8] zeroinitializer }, align 32
@cctrng_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 661, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed getting clock back on. We're toast.\0A\00", [52 x i8] zeroinitializer }, align 32
@cctrng_resume._entry_ptr = internal global ptr @cctrng_resume._entry, section ".printk_index", align 4
@cctrng_resume._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.63, ptr @.str.3, i32 667, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cryptocell reset not completed\00", [33 x i8] zeroinitializer }, align 32
@cctrng_resume._entry_ptr.68 = internal global ptr @cctrng_resume._entry.66, section ".printk_index", align 4
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"cctrng_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 691, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 693, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"arm_cctrng_dt_match\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 684, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"cctrng_pm\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 682, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 514, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 526, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 532, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 536, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 537, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 538, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 543, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 546, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 550, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 561, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 568, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 578, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 589, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 224, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 256, i32 6 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 143, i32 38 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 153, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 468, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 474, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 332, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 348, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 367, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 388, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 104, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 167, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 414, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 440, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 280, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 607, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 613, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 622, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 657, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 661, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.286 = private constant [35 x i8] c"../drivers/char/hw_random/cctrng.c\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 667, i32 3 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_cctrng_mod_exit, ptr @__initcall__kmod_cctrng__227_709_cctrng_mod_init6, ptr @cc_trng_clk_init._entry, ptr @cc_trng_clk_init._entry_ptr, ptr @cc_trng_pm_put_suspend._entry, ptr @cc_trng_pm_put_suspend._entry_ptr, ptr @cctrng_mod_exit, ptr @cctrng_probe._entry, ptr @cctrng_probe._entry.17, ptr @cctrng_probe._entry.22, ptr @cctrng_probe._entry.25, ptr @cctrng_probe._entry.28, ptr @cctrng_probe._entry.31, ptr @cctrng_probe._entry.6, ptr @cctrng_probe._entry.9, ptr @cctrng_probe._entry_ptr, ptr @cctrng_probe._entry_ptr.11, ptr @cctrng_probe._entry_ptr.19, ptr @cctrng_probe._entry_ptr.24, ptr @cctrng_probe._entry_ptr.27, ptr @cctrng_probe._entry_ptr.30, ptr @cctrng_probe._entry_ptr.34, ptr @cctrng_probe._entry_ptr.8, ptr @cctrng_read._entry, ptr @cctrng_read._entry_ptr, ptr @cctrng_remove._entry, ptr @cctrng_remove._entry_ptr, ptr @cctrng_resume._entry, ptr @cctrng_resume._entry.66, ptr @cctrng_resume._entry_ptr, ptr @cctrng_resume._entry_ptr.68, ptr @cctrng_driver, ptr @.str, ptr @arm_cctrng_dt_match, ptr @cctrng_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @cctrng_probe.__key, ptr @.str.12, ptr @cctrng_probe.__key.13, ptr @.str.14, ptr @cctrng_probe.__key.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @cctrng_read._rs, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @cc_isr._rs, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cctrng_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_read._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_trng_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_trng_pm_put_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cctrng_resume._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cctrng_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cctrng_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cctrng_mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @cctrng_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cctrng_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 408, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i200 = phi ptr [ %3, %if.end.i ], [ %1, %if.end.dev_name.exit_crit_edge ]
  %call3 = tail call noalias ptr @devm_kstrdup(ptr noundef %dev1, ptr noundef %retval.0.i200, i32 noundef 3264) #6
  %rng = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %rng to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %rng, align 4
  %tobool6.not = icmp eq ptr %call3, null
  br i1 %tobool6.not, label %dev_name.exit.cleanup_crit_edge, label %if.end8

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %dev_name.exit
  %read = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 3, i32 5
  %5 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cctrng_read, ptr %read, align 4
  %6 = ptrtoint ptr %call.i to i32
  %priv = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 3, i32 6
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %priv, align 4
  %quality = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %quality to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1024, ptr %quality, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pdev, ptr %call.i, align 4
  %data_buf = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 6
  %circ = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %circ to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data_buf, ptr %circ, align 4
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cc_base = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %cc_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call13, ptr %cc_base, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %13 = ptrtoint ptr %cc_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cc_base, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %call20 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.end19.cleanup_crit_edge, label %if.end22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node.i, align 8
  %smpl_ratio.i = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 5
  %call.i.i201 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.38, ptr noundef %smpl_ratio.i, i32 noundef 4, i32 noundef 0) #6
  %20 = tail call i32 @llvm.smin.i32(i32 %call.i.i201, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i201)
  %tobool.not.i202 = icmp sgt i32 %call.i.i201, -1
  br i1 %tobool.not.i202, label %if.end22.do.body.i_crit_edge, label %if.end22.cc_trng_parse_sampling_ratio.exit_crit_edge

if.end22.cc_trng_parse_sampling_ratio.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_trng_parse_sampling_ratio.exit

if.end22.do.body.i_crit_edge:                     ; preds = %if.end22
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %if.end22.do.body.i_crit_edge
  %ret.032.i = phi i32 [ %spec.select.i, %do.end.i.do.body.i_crit_edge ], [ -22, %if.end22.do.body.i_crit_edge ]
  %i.030.i = phi i32 [ %inc.i, %do.end.i.do.body.i_crit_edge ], [ 0, %if.end22.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_trng_parse_sampling_ratio.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cctrng_probe, %if.then8.i)) #6
          to label %do.end.i [label %if.then8.i], !srcloc !160

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 5, i32 %i.030.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_trng_parse_sampling_ratio.__UNIQUE_ID_ddebug188, ptr noundef %dev1.i, ptr noundef nonnull @.str.40, i32 noundef %i.030.i, i32 noundef %22) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %do.body.i
  %arrayidx12.i = getelementptr %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 5, i32 %i.030.i
  %23 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp13.not.i = icmp eq i32 %24, 0
  %spec.select.i = select i1 %cmp13.not.i, i32 %ret.032.i, i32 0
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %do.end.i.cc_trng_parse_sampling_ratio.exit_crit_edge, label %do.end.i.do.body.i_crit_edge

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end.i.cc_trng_parse_sampling_ratio.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_trng_parse_sampling_ratio.exit

cc_trng_parse_sampling_ratio.exit:                ; preds = %do.end.i.cc_trng_parse_sampling_ratio.exit_crit_edge, %if.end22.cc_trng_parse_sampling_ratio.exit_crit_edge
  %retval.0.i203 = phi i32 [ %20, %if.end22.cc_trng_parse_sampling_ratio.exit_crit_edge ], [ %spec.select.i, %do.end.i.cc_trng_parse_sampling_ratio.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i203)
  %tobool24.not = icmp eq i32 %retval.0.i203, 0
  br i1 %tobool24.not, label %if.end29, label %do.end28

do.end28:                                         ; preds = %cc_trng_parse_sampling_ratio.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end29:                                         ; preds = %cc_trng_parse_sampling_ratio.exit
  %call30 = tail call fastcc i32 @cc_trng_clk_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body37, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

do.body37:                                        ; preds = %if.end29
  %compwork = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %compwork, i32 noundef 0) #6
  %25 = ptrtoint ptr %compwork to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %compwork, align 4
  %lockdep_map = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @cctrng_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry41 = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %entry41 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry41, ptr %entry41, align 4
  %prev.i = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 8, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry41, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 8, i32 2
  %28 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @cc_trng_compwork_handler, ptr %func, align 4
  %startwork = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %startwork, i32 noundef 0) #6
  %29 = ptrtoint ptr %startwork to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %startwork, align 4
  %lockdep_map51 = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map51, ptr noundef nonnull @.str.14, ptr noundef nonnull @cctrng_probe.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry53 = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %entry53 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry53, ptr %entry53, align 4
  %prev.i204 = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i204 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry53, ptr %prev.i204, align 4
  %func55 = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 9, i32 2
  %32 = ptrtoint ptr %func55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @cc_trng_startwork_handler, ptr %func55, align 4
  %read_lock = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %read_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @cctrng_probe.__key.15, i16 noundef signext 3) #6
  %call.i205 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call20, ptr noundef nonnull @cc_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool63.not = icmp eq i32 %call.i205, 0
  br i1 %tobool63.not, label %do.body69, label %do.end67

do.end67:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %call20) #9
  br label %post_clk_err

do.body69:                                        ; preds = %do.body37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cctrng_probe.__UNIQUE_ID_ddebug220, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cctrng_probe, %if.then74)) #6
          to label %do.end77 [label %if.then74], !srcloc !160

if.then74:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cctrng_probe.__UNIQUE_ID_ddebug220, ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call20) #6
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %do.body69
  %33 = ptrtoint ptr %cc_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 2560
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cctrng_probe.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cctrng_probe, %if.then91)) #6
          to label %do.end94 [label %if.then91], !srcloc !160

if.then91:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #8
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cctrng_probe.__UNIQUE_ID_ddebug221, ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %36) #6
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %do.end77
  %37 = ptrtoint ptr %cc_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cc_base, align 4
  %add.ptr.i207 = getelementptr i8, ptr %38, i32 2568
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 %35) #6, !srcloc !164
  %39 = ptrtoint ptr %cc_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cc_base, align 4
  %add.ptr.i209 = getelementptr i8, ptr %40, i32 2564
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %42 = and i32 %41, -262145
  %43 = ptrtoint ptr %cc_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cc_base, align 4
  %add.ptr.i211 = getelementptr i8, ptr %44, i32 2564
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211, i32 %42) #6, !srcloc !164
  %call96 = tail call fastcc i32 @cc_trng_pm_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end102, label %do.end101

do.end101:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #9
  br label %post_clk_err

if.end102:                                        ; preds = %do.end94
  %call.i.i212 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i212)
  %45 = icmp ult i32 %call.i.i212, 2
  br i1 %45, label %if.end109, label %do.end108

do.end108:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call.i.i212) #9
  br label %post_pm_err

if.end109:                                        ; preds = %if.end102
  %pending_hw = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_hw, i32 noundef 4) #6
  %46 = ptrtoint ptr %pending_hw to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 1, ptr %pending_hw, align 4
  %call111 = tail call i32 @devm_hwrng_register(ptr noundef %dev1, ptr noundef %rng) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end117, label %do.end116

do.end116:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #9
  br label %post_pm_err

if.end117:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  %active_rosc = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 4
  %47 = ptrtoint ptr %active_rosc to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %active_rosc, align 4
  tail call fastcc void @cc_trng_hw_trigger(ptr noundef nonnull %call.i)
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %dev1.i215 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  tail call void @pm_runtime_enable(ptr noundef %dev1.i215) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.32) #9
  br label %cleanup

post_pm_err:                                      ; preds = %do.end116, %do.end108
  %rc.0 = phi i32 [ %call.i.i212, %do.end108 ], [ %call111, %do.end116 ]
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %dev1.i216 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev1.i216, i1 noundef zeroext true) #6
  br label %post_clk_err

post_clk_err:                                     ; preds = %post_pm_err, %do.end101, %do.end67
  %rc.1 = phi i32 [ %call.i205, %do.end67 ], [ %call96, %do.end101 ], [ %rc.0, %post_pm_err ]
  %clk.i = getelementptr inbounds %struct.cctrng_drvdata, ptr %call.i, i32 0, i32 2
  %52 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %53) #6
  tail call void @clk_unprepare(ptr noundef %53) #6
  br label %cleanup

cleanup:                                          ; preds = %post_clk_err, %if.end117, %do.end35, %do.end28, %if.end19.cleanup_crit_edge, %do.end, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %do.end ], [ %retval.0.i203, %do.end28 ], [ %call30, %do.end35 ], [ %rc.1, %post_clk_err ], [ 0, %if.end117 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cctrng_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cctrng_remove.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cctrng_remove, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !160

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cctrng_remove.__UNIQUE_ID_ddebug222, ptr noundef %dev1, ptr noundef nonnull @.str.59) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev1.i, i1 noundef zeroext true) #6
  %clk.i = getelementptr inbounds %struct.cctrng_drvdata, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.60) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cctrng_read(ptr nocapture noundef readonly %rng, ptr nocapture noundef writeonly %data, i32 noundef %max, i1 noundef zeroext %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %circ = getelementptr inbounds %struct.cctrng_drvdata, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %circ to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %circ, align 4
  %read_lock = getelementptr inbounds %struct.cctrng_drvdata, ptr %2, i32 0, i32 11
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %read_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cctrng_read.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cctrng_read, %land.lhs.true)) #6
          to label %cleanup70 [label %land.lhs.true], !srcloc !160

land.lhs.true:                                    ; preds = %do.body
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @cctrng_read._rs, ptr noundef nonnull @.str.36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.cleanup70_crit_edge, label %if.then10

land.lhs.true.cleanup70_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup70

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cctrng_read.descriptor, ptr noundef %dev1, ptr noundef nonnull @.str.37) #6
  br label %cleanup70

if.end11:                                         ; preds = %entry
  %tail = getelementptr inbounds %struct.cctrng_drvdata, ptr %2, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tail, align 4
  %sub = sub i32 32, %8
  %head = getelementptr inbounds %struct.cctrng_drvdata, ptr %2, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %head, align 4
  %add = add i32 %10, %sub
  %and = and i32 %add, 31
  %11 = tail call i32 @llvm.smin.i32(i32 %and, i32 %sub)
  %shl = shl i32 %11, 2
  %12 = tail call i32 @llvm.umin.i32(i32 %shl, i32 %max)
  %arrayidx = getelementptr i32, ptr %6, i32 %8
  %13 = call ptr @memcpy(ptr %data, ptr %arrayidx, i32 %12)
  %add.i = add nuw i32 %12, 3
  %14 = lshr i32 %add.i, 2
  %15 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tail, align 4
  %add1.i = add i32 %14, %16
  %and.i = and i32 %add1.i, 31
  store i32 %and.i, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %max)
  %cmp26.not.not = icmp ult i32 %shl, %max
  br i1 %cmp26.not.not, label %if.then27, label %if.end11.if.end47_crit_edge

if.end11.if.end47_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then27:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %sub25 = sub i32 %max, %12
  %17 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %head, align 4
  %sub32 = sub i32 %18, %add1.i
  %and33 = shl i32 %sub32, 2
  %shl34 = and i32 %and33, 124
  %19 = tail call i32 @llvm.umin.i32(i32 %shl34, i32 %sub25)
  %arrayidx43 = getelementptr i32, ptr %6, i32 %and.i
  %20 = call ptr @memcpy(ptr %data, ptr %arrayidx43, i32 %19)
  %add44 = add i32 %19, %12
  %add.i118 = add nuw nsw i32 %19, 3
  %21 = lshr i32 %add.i118, 2
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail, align 4
  %add1.i119 = add i32 %21, %23
  %and.i120 = and i32 %add1.i119, 31
  store i32 %and.i120, ptr %tail, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then27, %if.end11.if.end47_crit_edge
  %copied.0 = phi i32 [ %add44, %if.then27 ], [ %12, %if.end11.if.end47_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %read_lock) #6
  %24 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tail, align 4
  %26 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %head, align 4
  %add.neg.i = xor i32 %27, -1
  %sub.i = add i32 %25, %add.neg.i
  %and.i121 = and i32 %sub.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i121)
  %cmp50 = icmp ugt i32 %and.i121, 5
  br i1 %cmp50, label %if.then51, label %if.end47.cleanup70_crit_edge

if.end47.cleanup70_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup70

if.then51:                                        ; preds = %if.end47
  %pending_hw = getelementptr inbounds %struct.cctrng_drvdata, ptr %2, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_hw, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr %pending_hw, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.then51
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %pending_hw, ptr %pending_hw, i32 0, i32 1, ptr elementtype(i32) %pending_hw) #6, !srcloc !166
  %asmresult.i.i.i = extractvalue { i32, i32 } %28, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %28, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %cmp53 = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %cmp53, label %if.then54, label %atomic_cmpxchg.exit.cleanup70_crit_edge

atomic_cmpxchg.exit.cleanup70_crit_edge:          ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup70

if.then54:                                        ; preds = %atomic_cmpxchg.exit
  %29 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tail, align 4
  %31 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %head, align 4
  %add.neg.i124 = xor i32 %32, -1
  %sub.i125 = add i32 %30, %add.neg.i124
  %and.i126 = and i32 %sub.i125, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i126)
  %cmp56 = icmp ugt i32 %and.i126, 5
  br i1 %cmp56, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.then54
  %call.i.i127 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i127)
  %33 = icmp ult i32 %call.i.i127, 2
  br i1 %33, label %if.end64, label %do.end63

do.end63:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call.i.i127) #9
  br label %cleanup70

if.end64:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  %startwork = getelementptr inbounds %struct.cctrng_drvdata, ptr %2, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i128 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %startwork) #6
  br label %cleanup70

if.else:                                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_hw, i32 noundef 4) #6
  %35 = ptrtoint ptr %pending_hw to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %pending_hw, align 4
  br label %cleanup70

cleanup70:                                        ; preds = %if.else, %if.end64, %do.end63, %atomic_cmpxchg.exit.cleanup70_crit_edge, %if.end47.cleanup70_crit_edge, %if.then10, %land.lhs.true.cleanup70_crit_edge, %do.body
  %retval.1 = phi i32 [ 0, %if.then10 ], [ 0, %land.lhs.true.cleanup70_crit_edge ], [ %call.i.i127, %do.end63 ], [ %copied.0, %if.end64 ], [ %copied.0, %atomic_cmpxchg.exit.cleanup70_crit_edge ], [ %copied.0, %if.else ], [ %copied.0, %if.end47.cleanup70_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_trng_clk_init(ptr nocapture noundef %drvdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %2, ptr noundef nonnull @.str.41) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk5 = getelementptr inbounds %struct.cctrng_drvdata, ptr %drvdata, i32 0, i32 2
  %3 = ptrtoint ptr %clk5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %clk5, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc_trng_compwork_handler(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -272
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %cc_base.i = getelementptr i8, ptr %w, i32 -268
  %2 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !164
  %4 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i190 = getelementptr i8, ptr %5, i32 300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 0) #6, !srcloc !164
  %6 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i192 = getelementptr i8, ptr %7, i32 260
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i192) #6, !srcloc !161
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %and = and i32 %9, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_trng_compwork_handler.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_trng_compwork_handler, %if.then)) #6
          to label %do.end21 [label %if.then], !srcloc !160

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_trng_compwork_handler.__UNIQUE_ID_ddebug200, ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef %9, i32 noundef %and) #6
  br label %do.end21

do.end21:                                         ; preds = %if.then, %entry
  %10 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i194 = getelementptr i8, ptr %11, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194, i32 %8) #6, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp ne i32 %and, 0
  %12 = and i32 %9, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  %or.cond = or i1 %tobool22.not, %13
  br i1 %or.cond, label %for.cond.preheader, label %do.body63

for.cond.preheader:                               ; preds = %do.end21
  %circ = getelementptr i8, ptr %w, i32 -12
  %head = getelementptr i8, ptr %w, i32 -8
  %14 = ptrtoint ptr %circ to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %circ, align 4
  %16 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i196 = getelementptr i8, ptr %17, i32 276
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #6, !srcloc !161
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %20 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %head, align 4
  %arrayidx = getelementptr i32, ptr %15, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %arrayidx, align 4
  %23 = load i32, ptr %head, align 4
  %arrayidx86 = getelementptr i32, ptr %15, i32 %23
  %24 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp87 = icmp eq i32 %25, 0
  br i1 %cmp87, label %for.cond.preheader.do.body89_crit_edge, label %for.inc

for.cond.preheader.do.body89_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body89

do.body63:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_trng_compwork_handler.__UNIQUE_ID_ddebug216, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_trng_compwork_handler, %if.then75)) #6
          to label %next_rosc [label %if.then75], !srcloc !160

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_trng_compwork_handler.__UNIQUE_ID_ddebug216, ptr noundef %dev1, ptr noundef nonnull @.str.46) #6
  br label %next_rosc

do.body89:                                        ; preds = %for.inc.4.do.body89_crit_edge, %for.inc.3.do.body89_crit_edge, %for.inc.2.do.body89_crit_edge, %for.inc.1.do.body89_crit_edge, %for.inc.do.body89_crit_edge, %for.cond.preheader.do.body89_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_trng_compwork_handler.__UNIQUE_ID_ddebug217, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_trng_compwork_handler, %if.then101)) #6
          to label %next_rosc [label %if.then101], !srcloc !160

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #8
  %active_rosc = getelementptr i8, ptr %w, i32 -160
  %26 = ptrtoint ptr %active_rosc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %active_rosc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_trng_compwork_handler.__UNIQUE_ID_ddebug217, ptr noundef %dev1, ptr noundef nonnull @.str.47, i32 noundef %27) #6
  br label %next_rosc

for.inc:                                          ; preds = %for.cond.preheader
  %add1.i = add i32 %23, 1
  %and.i = and i32 %add1.i, 31
  %28 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i, ptr %head, align 4
  %29 = ptrtoint ptr %circ to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %circ, align 4
  %31 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i196.1 = getelementptr i8, ptr %32, i32 280
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196.1) #6, !srcloc !161
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %35 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %head, align 4
  %arrayidx.1 = getelementptr i32, ptr %30, i32 %36
  %37 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %arrayidx.1, align 4
  %38 = load i32, ptr %head, align 4
  %arrayidx86.1 = getelementptr i32, ptr %30, i32 %38
  %39 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx86.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp87.1 = icmp eq i32 %40, 0
  br i1 %cmp87.1, label %for.inc.do.body89_crit_edge, label %for.inc.1

for.inc.do.body89_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body89

for.inc.1:                                        ; preds = %for.inc
  %add1.i.1 = add i32 %38, 1
  %and.i.1 = and i32 %add1.i.1, 31
  %41 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and.i.1, ptr %head, align 4
  %42 = ptrtoint ptr %circ to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %circ, align 4
  %44 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i196.2 = getelementptr i8, ptr %45, i32 284
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196.2) #6, !srcloc !161
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %48 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %head, align 4
  %arrayidx.2 = getelementptr i32, ptr %43, i32 %49
  %50 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %arrayidx.2, align 4
  %51 = load i32, ptr %head, align 4
  %arrayidx86.2 = getelementptr i32, ptr %43, i32 %51
  %52 = ptrtoint ptr %arrayidx86.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx86.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp87.2 = icmp eq i32 %53, 0
  br i1 %cmp87.2, label %for.inc.1.do.body89_crit_edge, label %for.inc.2

for.inc.1.do.body89_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body89

for.inc.2:                                        ; preds = %for.inc.1
  %add1.i.2 = add i32 %51, 1
  %and.i.2 = and i32 %add1.i.2, 31
  %54 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and.i.2, ptr %head, align 4
  %55 = ptrtoint ptr %circ to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %circ, align 4
  %57 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i196.3 = getelementptr i8, ptr %58, i32 288
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196.3) #6, !srcloc !161
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %61 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %head, align 4
  %arrayidx.3 = getelementptr i32, ptr %56, i32 %62
  %63 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %arrayidx.3, align 4
  %64 = load i32, ptr %head, align 4
  %arrayidx86.3 = getelementptr i32, ptr %56, i32 %64
  %65 = ptrtoint ptr %arrayidx86.3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx86.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp87.3 = icmp eq i32 %66, 0
  br i1 %cmp87.3, label %for.inc.2.do.body89_crit_edge, label %for.inc.3

for.inc.2.do.body89_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body89

for.inc.3:                                        ; preds = %for.inc.2
  %add1.i.3 = add i32 %64, 1
  %and.i.3 = and i32 %add1.i.3, 31
  %67 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and.i.3, ptr %head, align 4
  %68 = ptrtoint ptr %circ to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %circ, align 4
  %70 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i196.4 = getelementptr i8, ptr %71, i32 292
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196.4) #6, !srcloc !161
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %74 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %head, align 4
  %arrayidx.4 = getelementptr i32, ptr %69, i32 %75
  %76 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %73, ptr %arrayidx.4, align 4
  %77 = load i32, ptr %head, align 4
  %arrayidx86.4 = getelementptr i32, ptr %69, i32 %77
  %78 = ptrtoint ptr %arrayidx86.4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx86.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp87.4 = icmp eq i32 %79, 0
  br i1 %cmp87.4, label %for.inc.3.do.body89_crit_edge, label %for.inc.4

for.inc.3.do.body89_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body89

for.inc.4:                                        ; preds = %for.inc.3
  %add1.i.4 = add i32 %77, 1
  %and.i.4 = and i32 %add1.i.4, 31
  %80 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and.i.4, ptr %head, align 4
  %81 = ptrtoint ptr %circ to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %circ, align 4
  %83 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i196.5 = getelementptr i8, ptr %84, i32 296
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196.5) #6, !srcloc !161
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %87 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %head, align 4
  %arrayidx.5 = getelementptr i32, ptr %82, i32 %88
  %89 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %86, ptr %arrayidx.5, align 4
  %90 = load i32, ptr %head, align 4
  %arrayidx86.5 = getelementptr i32, ptr %82, i32 %90
  %91 = ptrtoint ptr %arrayidx86.5 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx86.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp87.5 = icmp eq i32 %92, 0
  br i1 %cmp87.5, label %for.inc.4.do.body89_crit_edge, label %for.inc.5

for.inc.4.do.body89_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body89

for.inc.5:                                        ; preds = %for.inc.4
  %add1.i.5 = add i32 %90, 1
  %and.i.5 = and i32 %add1.i.5, 31
  %93 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and.i.5, ptr %head, align 4
  %pending_hw = getelementptr i8, ptr %w, i32 88
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_hw, i32 noundef 4) #6
  %94 = ptrtoint ptr %pending_hw to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 0, ptr %pending_hw, align 4
  %tail.i = getelementptr i8, ptr %w, i32 -4
  %95 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tail.i, align 4
  %97 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %head, align 4
  %add.neg.i = xor i32 %98, -1
  %sub.i = add i32 %96, %add.neg.i
  %and.i197 = and i32 %sub.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i197)
  %cmp109 = icmp ugt i32 %and.i197, 5
  br i1 %cmp109, label %if.then110, label %for.inc.5.if.end116_crit_edge

for.inc.5.if.end116_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.then110:                                       ; preds = %for.inc.5
  %call.i.i184 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_hw, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr %pending_hw, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.then110
  %99 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %pending_hw, ptr %pending_hw, i32 0, i32 1, ptr elementtype(i32) %pending_hw) #6, !srcloc !166
  %asmresult.i.i.i = extractvalue { i32, i32 } %99, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %99, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %cmp113 = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %cmp113, label %if.then114, label %atomic_cmpxchg.exit.if.end116_crit_edge

atomic_cmpxchg.exit.if.end116_crit_edge:          ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.then114:                                       ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %active_rosc.i = getelementptr i8, ptr %w, i32 -160
  %100 = ptrtoint ptr %active_rosc.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %active_rosc.i, align 4
  %arrayidx.i = getelementptr %struct.cctrng_drvdata, ptr %add.ptr, i32 0, i32 5, i32 %101
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i, align 4
  %mul1.i = mul i32 %103, 1536
  %104 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %105, i32 472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %106 = tail call i32 @llvm.bswap.i32(i32 %mul1.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %106) #6, !srcloc !164
  %107 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %108, i32 300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 16777216) #6, !srcloc !164
  %109 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %110, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 -520093697) #6, !srcloc !164
  br label %cleanup140

if.end116:                                        ; preds = %atomic_cmpxchg.exit.if.end116_crit_edge, %for.inc.5.if.end116_crit_edge
  %call.i.i198 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 22
  %111 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store volatile i64 %call.i.i198, ptr %last_busy.i.i, align 8
  %call.i4.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool.not.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool.not.i, label %if.end116.cc_trng_pm_put_suspend.exit_crit_edge, label %do.end.i

if.end116.cc_trng_pm_put_suspend.exit_crit_edge:  ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_trng_pm_put_suspend.exit

do.end.i:                                         ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49, i32 noundef %call.i4.i) #9
  br label %cc_trng_pm_put_suspend.exit

cc_trng_pm_put_suspend.exit:                      ; preds = %do.end.i, %if.end116.cc_trng_pm_put_suspend.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_trng_compwork_handler.__UNIQUE_ID_ddebug218, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_trng_compwork_handler, %if.then129)) #6
          to label %cleanup140 [label %if.then129], !srcloc !160

if.then129:                                       ; preds = %cc_trng_pm_put_suspend.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_trng_compwork_handler.__UNIQUE_ID_ddebug218, ptr noundef %dev1, ptr noundef nonnull @.str.48) #6
  br label %cleanup140

next_rosc:                                        ; preds = %if.then101, %do.body89, %if.then75, %do.body63
  %tail.i199 = getelementptr i8, ptr %w, i32 -4
  %112 = ptrtoint ptr %tail.i199 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tail.i199, align 4
  %head.i200 = getelementptr i8, ptr %w, i32 -8
  %114 = ptrtoint ptr %head.i200 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %head.i200, align 4
  %add.neg.i201 = xor i32 %115, -1
  %sub.i202 = add i32 %113, %add.neg.i201
  %and.i203 = and i32 %sub.i202, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i203)
  %cmp134 = icmp ugt i32 %and.i203, 5
  br i1 %cmp134, label %land.lhs.true, label %next_rosc.if.else_crit_edge

next_rosc.if.else_crit_edge:                      ; preds = %next_rosc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %next_rosc
  %116 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_trng_change_rosc.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_trng_compwork_handler, %if.then.i)) #6
          to label %do.end.i205 [label %if.then.i], !srcloc !160

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %117, i32 0, i32 3
  %active_rosc.i204 = getelementptr i8, ptr %w, i32 -160
  %118 = ptrtoint ptr %active_rosc.i204 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %active_rosc.i204, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_trng_change_rosc.__UNIQUE_ID_ddebug189, ptr noundef %dev1.i, ptr noundef nonnull @.str.52, i32 noundef %119) #6
  br label %do.end.i205

do.end.i205:                                      ; preds = %if.then.i, %land.lhs.true
  %active_rosc4.i = getelementptr i8, ptr %w, i32 -160
  %120 = ptrtoint ptr %active_rosc4.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %active_rosc4.i, align 4
  %storemerge.i = add i32 %121, 1
  store i32 %storemerge.i, ptr %active_rosc4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %storemerge.i)
  %cmp.i = icmp ult i32 %storemerge.i, 4
  br i1 %cmp.i, label %while.body.i, label %do.end.i205.if.else_crit_edge

do.end.i205.if.else_crit_edge:                    ; preds = %do.end.i205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

while.body.i:                                     ; preds = %do.end.i205
  %arrayidx.i206 = getelementptr %struct.cctrng_drvdata, ptr %add.ptr, i32 0, i32 5, i32 %storemerge.i
  %122 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp7.not.i = icmp eq i32 %123, 0
  br i1 %cmp7.not.i, label %while.cond.i.1, label %while.body.i.if.then137_crit_edge

while.body.i.if.then137_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then137

while.cond.i.1:                                   ; preds = %while.body.i
  %storemerge.i.1 = add i32 %121, 2
  %124 = ptrtoint ptr %active_rosc4.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %storemerge.i.1, ptr %active_rosc4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %storemerge.i.1)
  %cmp.i.1 = icmp ult i32 %storemerge.i.1, 4
  br i1 %cmp.i.1, label %while.body.i.1, label %while.cond.i.1.if.else_crit_edge

while.cond.i.1.if.else_crit_edge:                 ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

while.body.i.1:                                   ; preds = %while.cond.i.1
  %arrayidx.i206.1 = getelementptr %struct.cctrng_drvdata, ptr %add.ptr, i32 0, i32 5, i32 %storemerge.i.1
  %125 = ptrtoint ptr %arrayidx.i206.1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i206.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp7.not.i.1 = icmp eq i32 %126, 0
  br i1 %cmp7.not.i.1, label %while.cond.i.2, label %while.body.i.1.if.then137_crit_edge

while.body.i.1.if.then137_crit_edge:              ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then137

while.cond.i.2:                                   ; preds = %while.body.i.1
  %storemerge.i.2 = add i32 %121, 3
  %127 = ptrtoint ptr %active_rosc4.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %storemerge.i.2, ptr %active_rosc4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %storemerge.i.2)
  %cmp.i.2 = icmp ult i32 %storemerge.i.2, 4
  br i1 %cmp.i.2, label %while.body.i.2, label %while.cond.i.2.if.else_crit_edge

while.cond.i.2.if.else_crit_edge:                 ; preds = %while.cond.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

while.body.i.2:                                   ; preds = %while.cond.i.2
  %arrayidx.i206.2 = getelementptr %struct.cctrng_drvdata, ptr %add.ptr, i32 0, i32 5, i32 %storemerge.i.2
  %128 = ptrtoint ptr %arrayidx.i206.2 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i206.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp7.not.i.2 = icmp eq i32 %129, 0
  br i1 %cmp7.not.i.2, label %while.cond.i.3, label %while.body.i.2.if.then137_crit_edge

while.body.i.2.if.then137_crit_edge:              ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then137

while.cond.i.3:                                   ; preds = %while.body.i.2
  %storemerge.i.3 = add i32 %121, 4
  %130 = ptrtoint ptr %active_rosc4.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %storemerge.i.3, ptr %active_rosc4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %121)
  %cmp.i.3 = icmp ugt i32 %121, -5
  br i1 %cmp.i.3, label %while.body.i.3, label %while.cond.i.3.if.else_crit_edge

while.cond.i.3.if.else_crit_edge:                 ; preds = %while.cond.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

while.body.i.3:                                   ; preds = %while.cond.i.3
  %arrayidx.i206.3 = getelementptr %struct.cctrng_drvdata, ptr %add.ptr, i32 0, i32 5, i32 %storemerge.i.3
  %131 = ptrtoint ptr %arrayidx.i206.3 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.i206.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp7.not.i.3 = icmp eq i32 %132, 0
  br i1 %cmp7.not.i.3, label %while.cond.i.4, label %while.body.i.3.if.then137_crit_edge

while.body.i.3.if.then137_crit_edge:              ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then137

while.cond.i.4:                                   ; preds = %while.body.i.3
  %storemerge.i.4 = add i32 %121, 5
  %133 = ptrtoint ptr %active_rosc4.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %storemerge.i.4, ptr %active_rosc4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %storemerge.i.4)
  %cmp.i.4 = icmp ult i32 %storemerge.i.4, 4
  br i1 %cmp.i.4, label %while.cond.i.4.if.then137_crit_edge, label %while.cond.i.4.if.else_crit_edge

while.cond.i.4.if.else_crit_edge:                 ; preds = %while.cond.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

while.cond.i.4.if.then137_crit_edge:              ; preds = %while.cond.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then137

if.then137:                                       ; preds = %while.cond.i.4.if.then137_crit_edge, %while.body.i.3.if.then137_crit_edge, %while.body.i.2.if.then137_crit_edge, %while.body.i.1.if.then137_crit_edge, %while.body.i.if.then137_crit_edge
  tail call fastcc void @cc_trng_hw_trigger(ptr noundef %add.ptr)
  br label %cleanup140

if.else:                                          ; preds = %while.cond.i.4.if.else_crit_edge, %while.cond.i.3.if.else_crit_edge, %while.cond.i.2.if.else_crit_edge, %while.cond.i.1.if.else_crit_edge, %do.end.i205.if.else_crit_edge, %next_rosc.if.else_crit_edge
  %pending_hw138 = getelementptr i8, ptr %w, i32 88
  %call.i.i188 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_hw138, i32 noundef 4) #6
  %134 = ptrtoint ptr %pending_hw138 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 0, ptr %pending_hw138, align 4
  %call.i.i208 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i209 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 22
  %135 = ptrtoint ptr %last_busy.i.i209 to i32
  call void @__asan_store8_noabort(i32 %135)
  store volatile i64 %call.i.i208, ptr %last_busy.i.i209, align 8
  %call.i4.i210 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i210)
  %tobool.not.i211 = icmp eq i32 %call.i4.i210, 0
  br i1 %tobool.not.i211, label %if.else.cleanup140_crit_edge, label %do.end.i212

if.else.cleanup140_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup140

do.end.i212:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49, i32 noundef %call.i4.i210) #9
  br label %cleanup140

cleanup140:                                       ; preds = %do.end.i212, %if.else.cleanup140_crit_edge, %if.then137, %if.then129, %cc_trng_pm_put_suspend.exit, %if.then114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc_trng_startwork_handler(ptr nocapture noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -316
  %active_rosc = getelementptr i8, ptr %w, i32 -204
  %0 = ptrtoint ptr %active_rosc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %active_rosc, align 4
  tail call fastcc void @cc_trng_hw_trigger(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %cc_base.i = getelementptr inbounds %struct.cctrng_drvdata, ptr %dev_id, i32 0, i32 1
  %5 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 2560
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !161
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_isr.__UNIQUE_ID_ddebug219, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_isr, %if.then6)) #6
          to label %do.end [label %if.then6], !srcloc !160

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_isr.__UNIQUE_ID_ddebug219, ptr noundef %dev1, ptr noundef nonnull @.str.54, i32 noundef %8) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %9 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %10, i32 2568
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %7) #6, !srcloc !164
  %and = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end9.do.body17_crit_edge, label %if.end14

if.end9.do.body17_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17

if.end14:                                         ; preds = %if.end9
  %11 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %12, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 -1) #6, !srcloc !164
  %13 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %14, i32 2568
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 262144) #6, !srcloc !164
  %and12 = and i32 %8, -1025
  %compwork = getelementptr inbounds %struct.cctrng_drvdata, ptr %dev_id, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %compwork) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool15.not = icmp eq i32 %and12, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end14.do.body17_crit_edge

if.end14.do.body17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body17:                                        ; preds = %if.end14.do.body17_crit_edge, %if.end9.do.body17_crit_edge
  %irr.063 = phi i32 [ %and12, %if.end14.do.body17_crit_edge ], [ %8, %if.end9.do.body17_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_isr.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_isr, %land.lhs.true)) #6
          to label %cleanup [label %land.lhs.true], !srcloc !160

land.lhs.true:                                    ; preds = %do.body17
  %call29 = tail call i32 @___ratelimit(ptr noundef nonnull @cc_isr._rs, ptr noundef nonnull @.str.53) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true.cleanup_crit_edge, label %if.then31

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_isr.descriptor, ptr noundef %dev1, ptr noundef nonnull @.str.55, i32 noundef %irr.063) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %land.lhs.true.cleanup_crit_edge, %do.body17, %if.end14.cleanup_crit_edge, %do.end.cleanup_crit_edge, %pm_runtime_suspended.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_suspended.exit.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.then31 ], [ 1, %if.end14.cleanup_crit_edge ], [ 1, %do.body17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_trng_pm_init(ptr nocapture noundef readonly %drvdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 3000) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #6
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_trng_hw_trigger(ptr nocapture noundef readonly %drvdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_trng_hw_trigger.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_trng_hw_trigger, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !160

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_trng_hw_trigger.__UNIQUE_ID_ddebug194, ptr noundef %dev1, ptr noundef nonnull @.str.57) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cc_base.i = getelementptr inbounds %struct.cctrng_drvdata, ptr %drvdata, i32 0, i32 1
  %2 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 452
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !164
  %4 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %5, i32 320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 16777216) #6, !srcloc !164
  %active_rosc = getelementptr inbounds %struct.cctrng_drvdata, ptr %drvdata, i32 0, i32 4
  br label %do.body4

do.body4:                                         ; preds = %do.body4.do.body4_crit_edge, %do.end
  %6 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %7, i32 452
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 16777216) #6, !srcloc !164
  %8 = ptrtoint ptr %active_rosc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active_rosc, align 4
  %arrayidx = getelementptr %struct.cctrng_drvdata, ptr %drvdata, i32 0, i32 5, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %13, i32 304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %14) #6, !srcloc !164
  %15 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %16, i32 304
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #6, !srcloc !161
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %19 = ptrtoint ptr %active_rosc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active_rosc, align 4
  %arrayidx9 = getelementptr %struct.cctrng_drvdata, ptr %drvdata, i32 0, i32 5, i32 %20
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx9, align 4
  %cmp.not = icmp eq i32 %18, %22
  br i1 %cmp.not, label %do.end10, label %do.body4.do.body4_crit_edge

do.body4.do.body4_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

do.end10:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %24, i32 300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 0) #6, !srcloc !164
  %25 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %26, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 -1) #6, !srcloc !164
  %27 = ptrtoint ptr %active_rosc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %active_rosc, align 4
  %29 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %30, i32 268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %31) #6, !srcloc !164
  %32 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %33, i32 312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 0) #6, !srcloc !164
  %34 = ptrtoint ptr %active_rosc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %active_rosc, align 4
  %arrayidx.i = getelementptr %struct.cctrng_drvdata, ptr %drvdata, i32 0, i32 5, i32 %35
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %mul1.i = mul i32 %37, 1536
  %38 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %mul1.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %40) #6, !srcloc !164
  %41 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %42, i32 300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 16777216) #6, !srcloc !164
  %43 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %44, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 -520093697) #6, !srcloc !164
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cctrng_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cctrng_suspend.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cctrng_suspend, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !160

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cctrng_suspend.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.62) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cc_base.i = getelementptr inbounds %struct.cctrng_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cc_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !164
  %clk = getelementptr inbounds %struct.cctrng_drvdata, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cctrng_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cctrng_resume.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cctrng_resume, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !160

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cctrng_resume.__UNIQUE_ID_ddebug224, ptr noundef %dev, ptr noundef nonnull @.str.64) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %clk = getelementptr inbounds %struct.cctrng_drvdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.do.end9_crit_edge

do.end.do.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

if.end.i:                                         ; preds = %do.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end10, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i, %do.end.do.end9_crit_edge
  %retval.0.i27.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %do.end.do.end9_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  %cc_base.i.i = getelementptr inbounds %struct.cctrng_drvdata, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cc_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 3856
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i28 = icmp eq i32 %7, 0
  br i1 %tobool.not.i28, label %if.end.i29, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end.i29:                                       ; preds = %if.end10
  tail call void @schedule() #6
  %8 = ptrtoint ptr %cc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cc_base.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %9, i32 3856
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1.i = icmp eq i32 %11, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %if.end.i29.if.end16_crit_edge

if.end.i29.if.end16_crit_edge:                    ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end.1.i:                                       ; preds = %if.end.i29
  tail call void @schedule() #6
  %12 = ptrtoint ptr %cc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cc_base.i.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %13, i32 3856
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.2.i = icmp eq i32 %15, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %if.end.1.i.if.end16_crit_edge

if.end.1.i.if.end16_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end.2.i:                                       ; preds = %if.end.1.i
  tail call void @schedule() #6
  %16 = ptrtoint ptr %cc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cc_base.i.i, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %17, i32 3856
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.3.i = icmp eq i32 %19, 0
  br i1 %tobool.not.3.i, label %if.end.3.i, label %if.end.2.i.if.end16_crit_edge

if.end.2.i.if.end16_crit_edge:                    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end.3.i:                                       ; preds = %if.end.2.i
  tail call void @schedule() #6
  %20 = ptrtoint ptr %cc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cc_base.i.i, align 4
  %add.ptr.i.4.i = getelementptr i8, ptr %21, i32 3856
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.4.i = icmp eq i32 %23, 0
  br i1 %tobool.not.4.i, label %if.end.4.i, label %if.end.3.i.if.end16_crit_edge

if.end.3.i.if.end16_crit_edge:                    ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end.4.i:                                       ; preds = %if.end.3.i
  tail call void @schedule() #6
  %24 = ptrtoint ptr %cc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cc_base.i.i, align 4
  %add.ptr.i.5.i = getelementptr i8, ptr %25, i32 3856
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5.i) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.5.i = icmp eq i32 %27, 0
  br i1 %tobool.not.5.i, label %if.end.5.i, label %if.end.4.i.if.end16_crit_edge

if.end.4.i.if.end16_crit_edge:                    ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end.5.i:                                       ; preds = %if.end.4.i
  tail call void @schedule() #6
  %28 = ptrtoint ptr %cc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cc_base.i.i, align 4
  %add.ptr.i.6.i = getelementptr i8, ptr %29, i32 3856
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6.i) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.6.i = icmp eq i32 %31, 0
  br i1 %tobool.not.6.i, label %if.end.6.i, label %if.end.5.i.if.end16_crit_edge

if.end.5.i.if.end16_crit_edge:                    ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end.6.i:                                       ; preds = %if.end.5.i
  tail call void @schedule() #6
  %32 = ptrtoint ptr %cc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cc_base.i.i, align 4
  %add.ptr.i.7.i = getelementptr i8, ptr %33, i32 3856
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7.i) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.7.i = icmp eq i32 %35, 0
  br i1 %tobool.not.7.i, label %if.end.7.i, label %if.end.6.i.if.end16_crit_edge

if.end.6.i.if.end16_crit_edge:                    ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end.7.i:                                       ; preds = %if.end.6.i
  tail call void @schedule() #6
  %36 = ptrtoint ptr %cc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cc_base.i.i, align 4
  %add.ptr.i.8.i = getelementptr i8, ptr %37, i32 3856
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8.i) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %39 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.8.i = icmp eq i32 %39, 0
  br i1 %tobool.not.8.i, label %if.end.8.i, label %if.end.7.i.if.end16_crit_edge

if.end.7.i.if.end16_crit_edge:                    ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end.8.i:                                       ; preds = %if.end.7.i
  tail call void @schedule() #6
  %40 = ptrtoint ptr %cc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cc_base.i.i, align 4
  %add.ptr.i.9.i = getelementptr i8, ptr %41, i32 3856
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9.i) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %43 = and i32 %42, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.9.i = icmp eq i32 %43, 0
  br i1 %tobool.not.9.i, label %do.end15, label %if.end.8.i.if.end16_crit_edge

if.end.8.i.if.end16_crit_edge:                    ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end15:                                         ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @schedule() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.67) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end.8.i.if.end16_crit_edge, %if.end.7.i.if.end16_crit_edge, %if.end.6.i.if.end16_crit_edge, %if.end.5.i.if.end16_crit_edge, %if.end.4.i.if.end16_crit_edge, %if.end.3.i.if.end16_crit_edge, %if.end.2.i.if.end16_crit_edge, %if.end.1.i.if.end16_crit_edge, %if.end.i29.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %44 = ptrtoint ptr %cc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cc_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 2564
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %47 = and i32 %46, -262145
  %48 = ptrtoint ptr %cc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cc_base.i.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %49, i32 2564
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %47) #6, !srcloc !164
  %50 = ptrtoint ptr %cc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cc_base.i.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %51, i32 2680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 0) #6, !srcloc !164
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end15, %do.end9
  %retval.0 = phi i32 [ %retval.0.i27.ph, %do.end9 ], [ 0, %if.end16 ], [ -16, %do.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !73, !75, !76, !78, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__initcall__kmod_cctrng__227_709_cctrng_mod_init6, !1, !"__initcall__kmod_cctrng__227_709_cctrng_mod_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/hw_random/cctrng.c", i32 709, i32 1}
!2 = !{ptr @__exitcall_cctrng_mod_exit, !3, !"__exitcall_cctrng_mod_exit", i1 false, i1 false}
!3 = !{!"../drivers/char/hw_random/cctrng.c", i32 715, i32 1}
!4 = !{ptr @__UNIQUE_ID_description228, !5, !"__UNIQUE_ID_description228", i1 false, i1 false}
!5 = !{!"../drivers/char/hw_random/cctrng.c", i32 718, i32 1}
!6 = !{ptr @__UNIQUE_ID_author229, !7, !"__UNIQUE_ID_author229", i1 false, i1 false}
!7 = !{!"../drivers/char/hw_random/cctrng.c", i32 719, i32 1}
!8 = !{ptr @__UNIQUE_ID_file230, !9, !"__UNIQUE_ID_file230", i1 false, i1 false}
!9 = !{!"../drivers/char/hw_random/cctrng.c", i32 720, i32 1}
!10 = !{ptr @__UNIQUE_ID_license231, !9, !"__UNIQUE_ID_license231", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/char/hw_random/cctrng.c", i32 693, i32 11}
!13 = !{ptr @cctrng_driver, !14, !"cctrng_driver", i1 false, i1 false}
!14 = !{!"../drivers/char/hw_random/cctrng.c", i32 691, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/char/hw_random/cctrng.c", i32 514, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cctrng_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @cctrng_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/char/hw_random/cctrng.c", i32 526, i32 3}
!25 = !{ptr @cctrng_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @cctrng_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/char/hw_random/cctrng.c", i32 532, i32 3}
!29 = !{ptr @cctrng_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @cctrng_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @cctrng_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/char/hw_random/cctrng.c", i32 536, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @cctrng_probe.__key.13, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/char/hw_random/cctrng.c", i32 537, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cctrng_probe.__key.15, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/char/hw_random/cctrng.c", i32 538, i32 2}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/hw_random/cctrng.c", i32 543, i32 3}
!42 = !{ptr @cctrng_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cctrng_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/char/hw_random/cctrng.c", i32 546, i32 2}
!46 = !{ptr @cctrng_probe.__UNIQUE_ID_ddebug220, !45, !"__UNIQUE_ID_ddebug220", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/char/hw_random/cctrng.c", i32 550, i32 2}
!49 = !{ptr @cctrng_probe.__UNIQUE_ID_ddebug221, !48, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/char/hw_random/cctrng.c", i32 561, i32 3}
!52 = !{ptr @cctrng_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @cctrng_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/char/hw_random/cctrng.c", i32 568, i32 3}
!56 = !{ptr @cctrng_probe._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cctrng_probe._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/char/hw_random/cctrng.c", i32 578, i32 3}
!60 = !{ptr @cctrng_probe._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @cctrng_probe._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/char/hw_random/cctrng.c", i32 589, i32 2}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cctrng_probe._entry.31, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @cctrng_probe._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/char/hw_random/cctrng.c", i32 224, i32 3}
!69 = !{ptr @cctrng_read._rs, !68, !"_rs", i1 false, i1 false}
!70 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @cctrng_read.descriptor, !68, !"descriptor", i1 false, i1 false}
!73 = !{ptr @cctrng_read._entry, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/char/hw_random/cctrng.c", i32 256, i32 6}
!75 = !{ptr @cctrng_read._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/char/hw_random/cctrng.c", i32 143, i32 38}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/char/hw_random/cctrng.c", i32 153, i32 3}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @cc_trng_parse_sampling_ratio.__UNIQUE_ID_ddebug188, !79, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/char/hw_random/cctrng.c", i32 468, i32 10}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/char/hw_random/cctrng.c", i32 474, i32 3}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @cc_trng_clk_init._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @cc_trng_clk_init._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/char/hw_random/cctrng.c", i32 332, i32 2}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @cc_trng_compwork_handler.__UNIQUE_ID_ddebug200, !90, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/char/hw_random/cctrng.c", i32 348, i32 4}
!95 = !{ptr @cc_trng_compwork_handler.__UNIQUE_ID_ddebug216, !94, !"__UNIQUE_ID_ddebug216", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/char/hw_random/cctrng.c", i32 367, i32 4}
!98 = !{ptr @cc_trng_compwork_handler.__UNIQUE_ID_ddebug217, !97, !"__UNIQUE_ID_ddebug217", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/char/hw_random/cctrng.c", i32 388, i32 2}
!101 = !{ptr @cc_trng_compwork_handler.__UNIQUE_ID_ddebug218, !100, !"__UNIQUE_ID_ddebug218", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/char/hw_random/cctrng.c", i32 104, i32 3}
!104 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @cc_trng_pm_put_suspend._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @cc_trng_pm_put_suspend._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/char/hw_random/cctrng.c", i32 167, i32 2}
!109 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @cc_trng_change_rosc.__UNIQUE_ID_ddebug189, !108, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/char/hw_random/cctrng.c", i32 414, i32 2}
!113 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @cc_isr.__UNIQUE_ID_ddebug219, !112, !"__UNIQUE_ID_ddebug219", i1 false, i1 false}
!115 = !{ptr @cc_isr._rs, !116, !"_rs", i1 false, i1 false}
!116 = !{!"../drivers/char/hw_random/cctrng.c", i32 440, i32 3}
!117 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @cc_isr.descriptor, !116, !"descriptor", i1 false, i1 false}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/char/hw_random/cctrng.c", i32 280, i32 2}
!121 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @cc_trng_hw_trigger.__UNIQUE_ID_ddebug194, !120, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/char/hw_random/cctrng.c", i32 607, i32 2}
!125 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @cctrng_remove.__UNIQUE_ID_ddebug222, !124, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/char/hw_random/cctrng.c", i32 613, i32 2}
!129 = !{ptr @cctrng_remove._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @cctrng_remove._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @arm_cctrng_dt_match, !132, !"arm_cctrng_dt_match", i1 false, i1 false}
!132 = !{!"../drivers/char/hw_random/cctrng.c", i32 684, i32 34}
!133 = !{ptr @cctrng_pm, !134, !"cctrng_pm", i1 false, i1 false}
!134 = !{!"../drivers/char/hw_random/cctrng.c", i32 682, i32 8}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/char/hw_random/cctrng.c", i32 622, i32 2}
!137 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @cctrng_suspend.__UNIQUE_ID_ddebug223, !136, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/char/hw_random/cctrng.c", i32 657, i32 2}
!141 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @cctrng_resume.__UNIQUE_ID_ddebug224, !140, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/char/hw_random/cctrng.c", i32 661, i32 3}
!145 = !{ptr @cctrng_resume._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @cctrng_resume._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/char/hw_random/cctrng.c", i32 667, i32 3}
!149 = !{ptr @cctrng_resume._entry.66, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @cctrng_resume._entry_ptr.68, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{i64 2148708319, i64 2148708324, i64 2148708337, i64 2148708381, i64 2148708415, i64 2148708436}
!161 = !{i64 4086657}
!162 = !{i64 2151627006}
!163 = !{i64 2151628361}
!164 = !{i64 4086239}
!165 = !{i64 2148328327}
!166 = !{i64 710240, i64 710264, i64 710285, i64 710302, i64 710319}
!167 = !{i64 2148328553}
