; ModuleID = '/llk/IR_all_yes/drivers/bus/sunxi-rsb.c_pt.bc'
source_filename = "../drivers/bus/sunxi-rsb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sunxi_rsb_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc_sunxi_rsb_driver_register\09\09\09\09"
module asm "\09.long\09__crc_sunxi_rsb_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunxi_rsb_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22sunxi_rsb_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_sunxi_rsb_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_regmap_init_sunxi_rsb\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_regmap_init_sunxi_rsb\09\09\09\09"
module asm "\09.long\09__crc___devm_regmap_init_sunxi_rsb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_sunxi_rsb:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_sunxi_rsb\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_sunxi_rsb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sunxi_rsb_addr_map = type { i16, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.sunxi_rsb_ctx = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.sunxi_rsb_driver = type { %struct.device_driver, ptr, ptr }
%struct.sunxi_rsb_device = type { %struct.device, ptr, i32, i8, i16 }
%struct.sunxi_rsb = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.mutex, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@sunxi_rsb_bus = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_rsb_device_match, ptr @of_device_uevent_modalias, ptr @sunxi_rsb_device_probe, ptr null, ptr @sunxi_rsb_device_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_sunxi_rsb_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunxi_rsb_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_sunxi_rsb_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunxi_rsb_driver_register to i32), ptr @__kstrtab_sunxi_rsb_driver_register, ptr @__kstrtabns_sunxi_rsb_driver_register }, section "___ksymtab_gpl+sunxi_rsb_driver_register", align 4
@regmap_sunxi_rsb = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @regmap_sunxi_rsb_reg_write, ptr null, ptr null, ptr @regmap_sunxi_rsb_reg_read, ptr @regmap_sunxi_rsb_free_ctx, ptr null, i8 0, i32 3, i32 3, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab___devm_regmap_init_sunxi_rsb = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_sunxi_rsb = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_sunxi_rsb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_sunxi_rsb to i32), ptr @__kstrtab___devm_regmap_init_sunxi_rsb, ptr @__kstrtabns___devm_regmap_init_sunxi_rsb }, section "___ksymtab_gpl+__devm_regmap_init_sunxi_rsb", align 4
@__initcall__kmod_sunxi_rsb__196_860_sunxi_rsb_init6 = internal global ptr @sunxi_rsb_init, section ".initcall6.init", align 4
@sunxi_rsb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sunxi_rsb_probe, ptr @sunxi_rsb_remove, ptr @sunxi_rsb_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_rsb_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_rsb_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sunxi_rsb_exit = internal global ptr @sunxi_rsb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author197 = internal constant [46 x i8] c"sunxi_rsb.author=Chen-Yu Tsai <wens@csie.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description198 = internal constant [75 x i8] c"sunxi_rsb.description=Allwinner sunXi Reduced Serial Bus controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file199 = internal constant [37 x i8] c"sunxi_rsb.file=drivers/bus/sunxi-rsb\00", section ".modinfo", align 1
@__UNIQUE_ID_license200 = internal constant [25 x i8] c"sunxi_rsb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sunxi-rsb\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sunxi_rsb_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 386, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid access width: %zd\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sunxi_rsb_write\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/bus/sunxi-rsb.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sunxi_rsb_write._entry_ptr = internal global ptr @sunxi_rsb_write._entry, section ".printk_index", align 4
@_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sunxi_rsb\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_sunxi_rsb_run_xfer\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RSB transfer still in progress\0A\00", [32 x i8] zeroinitializer }, align 32
@_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.9, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RSB timeout\0A\00", [19 x i8] zeroinitializer }, align 32
@_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.10, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RSB busy\0A\00", [22 x i8] zeroinitializer }, align 32
@_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.11, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RSB slave nack\0A\00", [16 x i8] zeroinitializer }, align 32
@_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.12, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RSB transfer data error\0A\00", [39 x i8] zeroinitializer }, align 32
@sunxi_rsb_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.13, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sunxi_rsb_read\00", [17 x i8] zeroinitializer }, align 32
@sunxi_rsb_read._entry_ptr = internal global ptr @sunxi_rsb_read._entry, section ".printk_index", align 4
@sunxi_rsb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013failed to register sunxi sunxi_rsb bus: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sunxi_rsb_init\00", [17 x i8] zeroinitializer }, align 32
@sunxi_rsb_init._entry_ptr = internal global ptr @sunxi_rsb_init._entry, section ".printk_index", align 4
@sunxi_rsb_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-rsb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sunxi_rsb_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_rsb_suspend, ptr @sunxi_rsb_resume, ptr @sunxi_rsb_suspend, ptr @sunxi_rsb_resume, ptr @sunxi_rsb_suspend, ptr @sunxi_rsb_resume, ptr @sunxi_rsb_runtime_suspend, ptr @sunxi_rsb_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@sunxi_rsb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 742, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"clock-frequency (%u Hz) is too high (max = 20MHz)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sunxi_rsb_probe\00", [16 x i8] zeroinitializer }, align 32
@sunxi_rsb_probe._entry_ptr = internal global ptr @sunxi_rsb_probe._entry, section ".printk_index", align 4
@sunxi_rsb_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 765, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to retrieve clk: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sunxi_rsb_probe._entry_ptr.21 = internal global ptr @sunxi_rsb_probe._entry.19, section ".printk_index", align 4
@sunxi_rsb_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 772, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to retrieve reset controller: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@sunxi_rsb_probe._entry_ptr.24 = internal global ptr @sunxi_rsb_probe._entry.22, section ".printk_index", align 4
@sunxi_rsb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rsb->lock\00", [21 x i8] zeroinitializer }, align 32
@sunxi_rsb_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.3, i32 782, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"can't register interrupt handler irq %d: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@sunxi_rsb_probe._entry_ptr.28 = internal global ptr @sunxi_rsb_probe._entry.26, section ".printk_index", align 4
@sunxi_rsb_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.3, i32 793, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Initialize device mode failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sunxi_rsb_probe._entry_ptr.32 = internal global ptr @sunxi_rsb_probe._entry.29, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sunxi_rsb_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 643, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable clk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sunxi_rsb_hw_init\00", [46 x i8] zeroinitializer }, align 32
@sunxi_rsb_hw_init._entry_ptr = internal global ptr @sunxi_rsb_hw_init._entry, section ".printk_index", align 4
@sunxi_rsb_hw_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 649, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to deassert reset line: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sunxi_rsb_hw_init._entry_ptr.38 = internal global ptr @sunxi_rsb_hw_init._entry.36, section ".printk_index", align 4
@sunxi_rsb_hw_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 676, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RSB running at %lu Hz\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sunxi_rsb_hw_init._entry_ptr.42 = internal global ptr @sunxi_rsb_hw_init._entry.39, section ".printk_index", align 4
@of_rsb_register_devices.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"of_rsb_register_devices\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"setting child %pOF runtime address\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@of_rsb_register_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.3, i32 583, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%pOF: invalid 'reg' property: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@of_rsb_register_devices._entry_ptr = internal global ptr @of_rsb_register_devices._entry, section ".printk_index", align 4
@of_rsb_register_devices._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.3, i32 590, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%pOF: unknown hardware device address\0A\00", [57 x i8] zeroinitializer }, align 32
@of_rsb_register_devices._entry_ptr.49 = internal global ptr @of_rsb_register_devices._entry.47, section ".printk_index", align 4
@of_rsb_register_devices._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.3, i32 608, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%pOF: set runtime address failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@of_rsb_register_devices._entry_ptr.52 = internal global ptr @of_rsb_register_devices._entry.50, section ".printk_index", align 4
@of_rsb_register_devices.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.43, ptr @.str.3, ptr @.str.53, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adding child %pOF\0A\00", [45 x i8] zeroinitializer }, align 32
@of_rsb_register_devices._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.43, ptr @.str.3, i32 628, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to add child device %pOF: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@of_rsb_register_devices._entry_ptr.56 = internal global ptr @of_rsb_register_devices._entry.54, section ".printk_index", align 4
@sunxi_rsb_addr_maps = internal constant { [3 x %struct.sunxi_rsb_addr_map], [20 x i8] } { [3 x %struct.sunxi_rsb_addr_map] [%struct.sunxi_rsb_addr_map { i16 931, i8 45 }, %struct.sunxi_rsb_addr_map { i16 1861, i8 58 }, %struct.sunxi_rsb_addr_map { i16 3721, i8 78 }], [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%x\00", [26 x i8] zeroinitializer }, align 32
@sunxi_rsb_device_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't add %s, status %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sunxi_rsb_device_create\00", [40 x i8] zeroinitializer }, align 32
@sunxi_rsb_device_create._entry_ptr = internal global ptr @sunxi_rsb_device_create._entry, section ".printk_index", align 4
@sunxi_rsb_device_create.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"device %s registered\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 16, i64 931, i64 1861, i64 3721]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 16, i64 931, i64 1861, i64 3721]
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"sunxi_rsb_bus\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 179, i32 24 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"regmap_sunxi_rsb\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 444, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"sunxi_rsb_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 837, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 180, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 386, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 273, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 286, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 298, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 304, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 309, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 337, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 854, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [25 x i8] c"sunxi_rsb_of_match_table\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 831, i32 34 }
@___asan_gen_.134 = private unnamed_addr constant [21 x i8] c"sunxi_rsb_dev_pm_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 825, i32 32 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 738, i32 27 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 740, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 765, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 772, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 777, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 781, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 793, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 87, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 643, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 649, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 676, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 577, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 580, i32 37 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 582, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 589, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 607, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 615, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 627, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant [20 x i8] c"sunxi_rsb_addr_maps\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 547, i32 40 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 219, i32 27 }
@___asan_gen_.254 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 223, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.264 = private constant [27 x i8] c"../drivers/bus/sunxi-rsb.c\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 228, i32 2 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author197, ptr @__UNIQUE_ID_description198, ptr @__UNIQUE_ID_file199, ptr @__UNIQUE_ID_license200, ptr @__exitcall_sunxi_rsb_exit, ptr @__initcall__kmod_sunxi_rsb__196_860_sunxi_rsb_init6, ptr @__ksymtab___devm_regmap_init_sunxi_rsb, ptr @__ksymtab_sunxi_rsb_driver_register, ptr @of_rsb_register_devices._entry, ptr @of_rsb_register_devices._entry.47, ptr @of_rsb_register_devices._entry.50, ptr @of_rsb_register_devices._entry.54, ptr @of_rsb_register_devices._entry_ptr, ptr @of_rsb_register_devices._entry_ptr.49, ptr @of_rsb_register_devices._entry_ptr.52, ptr @of_rsb_register_devices._entry_ptr.56, ptr @sunxi_rsb_device_create._entry, ptr @sunxi_rsb_device_create._entry_ptr, ptr @sunxi_rsb_exit, ptr @sunxi_rsb_hw_init._entry, ptr @sunxi_rsb_hw_init._entry.36, ptr @sunxi_rsb_hw_init._entry.39, ptr @sunxi_rsb_hw_init._entry_ptr, ptr @sunxi_rsb_hw_init._entry_ptr.38, ptr @sunxi_rsb_hw_init._entry_ptr.42, ptr @sunxi_rsb_init._entry, ptr @sunxi_rsb_init._entry_ptr, ptr @sunxi_rsb_probe._entry, ptr @sunxi_rsb_probe._entry.19, ptr @sunxi_rsb_probe._entry.22, ptr @sunxi_rsb_probe._entry.26, ptr @sunxi_rsb_probe._entry.29, ptr @sunxi_rsb_probe._entry_ptr, ptr @sunxi_rsb_probe._entry_ptr.21, ptr @sunxi_rsb_probe._entry_ptr.24, ptr @sunxi_rsb_probe._entry_ptr.28, ptr @sunxi_rsb_probe._entry_ptr.32, ptr @sunxi_rsb_read._entry, ptr @sunxi_rsb_read._entry_ptr, ptr @sunxi_rsb_write._entry, ptr @sunxi_rsb_write._entry_ptr, ptr @sunxi_rsb_bus, ptr @regmap_sunxi_rsb, ptr @sunxi_rsb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @sunxi_rsb_of_match_table, ptr @sunxi_rsb_dev_pm_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @sunxi_rsb_probe.__key, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @init_completion.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @sunxi_rsb_addr_maps, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_bus to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_sunxi_rsb to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_hw_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_hw_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_rsb_register_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_rsb_register_devices._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_rsb_register_devices._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_rsb_register_devices._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_addr_maps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_rsb_device_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sunxi_rsb_driver_register(ptr noundef %rdrv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.device_driver, ptr %rdrv, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @sunxi_rsb_bus, ptr %bus, align 4
  %call = tail call i32 @driver_register(ptr noundef %rdrv) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_sunxi_rsb(ptr noundef %rdev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %val_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %0 = ptrtoint ptr %val_bits.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val_bits.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 8, label %entry.sw.epilog.i_crit_edge
    i32 16, label %entry.sw.epilog.i_crit_edge11
    i32 32, label %entry.sw.epilog.i_crit_edge12
  ]

entry.sw.epilog.i_crit_edge12:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge11:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog.i:                                      ; preds = %entry.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge11, %entry.sw.epilog.i_crit_edge12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 8) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.cleanup_crit_edge, label %regmap_sunxi_rsb_init_ctx.exit

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

regmap_sunxi_rsb_init_ctx.exit:                   ; preds = %sw.epilog.i
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rdev, ptr %call7.i.i.i, align 8
  %5 = ptrtoint ptr %val_bits.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val_bits.i, align 4
  %div.i = sdiv i32 %6, 8
  %size.i = getelementptr inbounds %struct.sunxi_rsb_ctx, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div.i, ptr %size.i, align 4
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %regmap_sunxi_rsb_init_ctx.exit.cleanup_crit_edge, label %if.end

regmap_sunxi_rsb_init_ctx.exit.cleanup_crit_edge: ; preds = %regmap_sunxi_rsb_init_ctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %regmap_sunxi_rsb_init_ctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call ptr @__devm_regmap_init(ptr noundef %rdev, ptr noundef nonnull @regmap_sunxi_rsb, ptr noundef nonnull %call7.i.i.i, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %regmap_sunxi_rsb_init_ctx.exit.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ %call7.i.i.i, %regmap_sunxi_rsb_init_ctx.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %sw.epilog.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @sunxi_rsb_bus) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_rsb_driver, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_rsb_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_rsb_driver) #8
  tail call void @bus_unregister(ptr noundef nonnull @sunxi_rsb_bus) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_device_match(ptr noundef %dev, ptr nocapture noundef readonly %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_match_table.i = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 6
  %0 = ptrtoint ptr %of_match_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_match_table.i, align 4
  %call.i = tail call ptr @of_match_device(ptr noundef %1, ptr noundef %dev) #8
  %cmp.i = icmp ne ptr %call.i, null
  %conv.i = zext i1 %cmp.i to i32
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_uevent_modalias(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_device_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %probe = getelementptr inbounds %struct.sunxi_rsb_driver, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %probe, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup24_crit_edge, label %if.end

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup24

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.sunxi_rsb_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then3:                                         ; preds = %if.end
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.then3.if.end11_crit_edge, label %if.end9

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end9:                                          ; preds = %if.then3
  %call8 = tail call i32 @of_irq_get(ptr noundef nonnull %7, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call8)
  %cmp = icmp eq i32 %call8, -517
  br i1 %cmp, label %if.end9.cleanup24_crit_edge, label %if.end9.if.end11_crit_edge

if.end9.if.end11_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end9.cleanup24_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup24

if.end11:                                         ; preds = %if.end9.if.end11_crit_edge, %if.then3.if.end11_crit_edge
  %irq4.040 = phi i32 [ %call8, %if.end9.if.end11_crit_edge ], [ -2, %if.then3.if.end11_crit_edge ]
  %8 = tail call i32 @llvm.smax.i32(i32 %irq4.040, i32 0)
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %irq, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end11, %if.end.if.end16_crit_edge
  %of_node17 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %10 = ptrtoint ptr %of_node17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node17, align 8
  %call18 = tail call i32 @of_clk_set_defaults(ptr noundef %11, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16.cleanup24_crit_edge, label %if.end21

if.end16.cleanup24_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup24

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %probe, align 4
  %call23 = tail call i32 %13(ptr noundef %dev) #8
  br label %cleanup24

cleanup24:                                        ; preds = %if.end21, %if.end16.cleanup24_crit_edge, %if.end9.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.1 = phi i32 [ %call23, %if.end21 ], [ -19, %entry.cleanup24_crit_edge ], [ %call18, %if.end16.cleanup24_crit_edge ], [ -517, %if.end9.cleanup24_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_rsb_device_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %remove = getelementptr inbounds %struct.sunxi_rsb_driver, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  tail call void %3(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_sunxi_rsb_reg_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %rsb = getelementptr inbounds %struct.sunxi_rsb_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rsb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsb, align 8
  %rtaddr = getelementptr inbounds %struct.sunxi_rsb_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rtaddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rtaddr, align 8
  %size = getelementptr inbounds %struct.sunxi_rsb_ctx, ptr %context, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %7, label %do.end.i [
    i32 1, label %entry.sw.epilog.i_crit_edge
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb2.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %7) #12
  br label %sunxi_rsb_write.exit

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i, %entry.sw.epilog.i_crit_edge
  %cmd.0.i = phi i32 [ 1660944384, %sw.bb2.i ], [ 1493172224, %sw.bb1.i ], [ 1308622848, %entry.sw.epilog.i_crit_edge ]
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end6.i

if.then.i.i:                                      ; preds = %sw.epilog.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !152
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.sunxi_rsb_write.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.sunxi_rsb_write.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_rsb_write.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !153
  br label %sunxi_rsb_write.exit

if.end6.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i = getelementptr inbounds %struct.sunxi_rsb, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %conv.i = shl i32 %reg, 24
  %regs.i = getelementptr inbounds %struct.sunxi_rsb, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv.i) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %conv13.i = zext i8 %5 to i32
  %16 = shl nuw nsw i32 %conv13.i, 8
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %18, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %16) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %val) #8
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %19) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %23, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %cmd.0.i) #8, !srcloc !155
  %call26.i = tail call fastcc i32 @_sunxi_rsb_run_xfer(ptr noundef %3) #8
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %call.i46.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i46.i, ptr %last_busy.i.i, align 8
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %call.i47.i = tail call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #8
  br label %sunxi_rsb_write.exit

sunxi_rsb_write.exit:                             ; preds = %if.end6.i, %do.end11.i.i.i.i.i.i, %if.then.i.i.sunxi_rsb_write.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %call26.i, %if.end6.i ], [ %call.i.i, %if.then.i.i.sunxi_rsb_write.exit_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_sunxi_rsb_reg_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp = icmp ugt i32 %reg, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %rsb = getelementptr inbounds %struct.sunxi_rsb_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rsb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsb, align 8
  %rtaddr = getelementptr inbounds %struct.sunxi_rsb_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rtaddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rtaddr, align 8
  %size = getelementptr inbounds %struct.sunxi_rsb_ctx, ptr %context, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %tobool.not.i = icmp eq ptr %val, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %7, label %do.end.i [
    i32 1, label %if.end.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb2.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %7) #12
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i, %if.end.i.sw.epilog.i_crit_edge
  %cmd.0.i = phi i32 [ -1509949440, %sw.bb2.i ], [ -1677721600, %sw.bb1.i ], [ -1962934272, %if.end.i.sw.epilog.i_crit_edge ]
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end6.i

if.then.i.i:                                      ; preds = %sw.epilog.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !152
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !153
  br label %cleanup

if.end6.i:                                        ; preds = %sw.epilog.i
  %lock.i = getelementptr inbounds %struct.sunxi_rsb, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @arm_heavy_mb() #8
  %conv.i = shl nuw i32 %reg, 24
  %regs.i = getelementptr inbounds %struct.sunxi_rsb, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv.i) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %conv13.i = zext i8 %5 to i32
  %16 = shl nuw nsw i32 %conv13.i, 8
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %18, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %16) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %20, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %cmd.0.i) #8, !srcloc !155
  %call21.i = tail call fastcc i32 @_sunxi_rsb_run_xfer(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end6.i.unlock.i_crit_edge

if.end6.i.unlock.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.i

if.end24.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %22, i32 28
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #8, !srcloc !162
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  %mul.neg.i = mul nsw i32 %7, -8
  %sub29.i = add nsw i32 %mul.neg.i, 32
  %shr.i = lshr i32 -1, %sub29.i
  %and31.i = and i32 %24, %shr.i
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and31.i, ptr %val, align 4
  br label %unlock.i

unlock.i:                                         ; preds = %if.end24.i, %if.end6.i.unlock.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %call.i53.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i53.i, ptr %last_busy.i.i, align 8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %call.i54.i = tail call i32 @__pm_runtime_suspend(ptr noundef %30, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock.i, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge, %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ %call21.i, %unlock.i ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_sunxi_rsb_free_ctx(ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %context) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_sunxi_rsb_run_xfer(ptr noundef %rsb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sunxi_rsb, ptr %rsb, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_sunxi_rsb_run_xfer, %if.then7)) #8
          to label %return [label %if.then7], !srcloc !165

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %rsb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug189, ptr noundef %4, ptr noundef nonnull @.str.8) #8
  br label %return

if.end8:                                          ; preds = %entry
  %complete = getelementptr inbounds %struct.sunxi_rsb, ptr %rsb, i32 0, i32 4
  %5 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %complete, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 117440512) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 -2113929216) #8, !srcloc !155
  %call19 = tail call i32 @wait_for_completion_io_timeout(ptr noundef %complete, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body22, label %if.end53

do.body22:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_sunxi_rsb_run_xfer, %if.then34)) #8
          to label %do.body38 [label %if.then34], !srcloc !165

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %rsb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rsb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug190, ptr noundef %11, ptr noundef nonnull @.str.9) #8
  br label %do.body38

do.body38:                                        ; preds = %if.then34, %do.body22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 1073741824) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr47 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr52 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %16) #8, !srcloc !155
  br label %return

if.end53:                                         ; preds = %if.end8
  %status = getelementptr inbounds %struct.sunxi_rsb, ptr %rsb, i32 0, i32 6
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  %and54 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end73, label %do.body57

do.body57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_sunxi_rsb_run_xfer, %if.then69)) #8
          to label %return [label %if.then69], !srcloc !165

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %rsb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rsb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug191, ptr noundef %22, ptr noundef nonnull @.str.10) #8
  br label %return

if.end73:                                         ; preds = %if.end53
  %and75 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end73.return_crit_edge, label %if.then77

if.end73.return_crit_edge:                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then77:                                        ; preds = %if.end73
  %and79 = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end98, label %do.body82

do.body82:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_sunxi_rsb_run_xfer, %if.then94)) #8
          to label %return [label %if.then94], !srcloc !165

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %rsb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rsb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug192, ptr noundef %24, ptr noundef nonnull @.str.11) #8
  br label %return

if.end98:                                         ; preds = %if.then77
  %and100 = and i32 %20, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end98.return_crit_edge, label %do.body103

if.end98.return_crit_edge:                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body103:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_sunxi_rsb_run_xfer, %if.then115)) #8
          to label %return [label %if.then115], !srcloc !165

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %rsb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rsb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug193, ptr noundef %26, ptr noundef nonnull @.str.12) #8
  br label %return

return:                                           ; preds = %if.then115, %do.body103, %if.end98.return_crit_edge, %if.then94, %do.body82, %if.end73.return_crit_edge, %if.then69, %do.body57, %do.body38, %if.then7, %do.body
  %retval.0 = phi i32 [ -110, %do.body38 ], [ -16, %if.then7 ], [ -16, %if.then69 ], [ -22, %if.then94 ], [ -5, %if.then115 ], [ 0, %if.end98.return_crit_edge ], [ 0, %if.end73.return_crit_edge ], [ -16, %do.body ], [ -16, %do.body57 ], [ -22, %do.body82 ], [ -5, %do.body103 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_io_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %clk_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_freq) #8
  %2 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3000000, ptr %clk_freq, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %clk_freq, i32 noundef 1, i32 noundef 0) #8
  %3 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %4)
  %cmp = icmp ugt i32 %4, 20000000
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %4) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 172, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %call.i, align 4
  %6 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_freq, align 4
  %clk_freq6 = getelementptr inbounds %struct.sunxi_rsb, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %clk_freq6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %clk_freq6, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call7 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call8 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call7) #8
  %regs = getelementptr inbounds %struct.sunxi_rsb, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %call15 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.sunxi_rsb, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call19, ptr %clk, align 4
  %cmp.i118 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %13) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call.i.i119 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %rstc = getelementptr inbounds %struct.sunxi_rsb, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i119, ptr %rstc, align 4
  %cmp.i120 = icmp ugt ptr %call.i.i119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then32, label %if.end38

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call.i.i119 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %15) #12
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %complete = getelementptr inbounds %struct.sunxi_rsb, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.sunxi_rsb, ptr %call.i, i32 0, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #8
  %lock = getelementptr inbounds %struct.sunxi_rsb, ptr %call.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @sunxi_rsb_probe.__key) #8
  %call.i121 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call15, ptr noundef nonnull @sunxi_rsb_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool43.not = icmp eq i32 %call.i121, 0
  br i1 %tobool43.not, label %if.end48, label %do.end47

do.end47:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %call15, i32 noundef %call.i121) #12
  br label %cleanup

if.end48:                                         ; preds = %if.end38
  %call49 = call fastcc i32 @sunxi_rsb_hw_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 4095104) #8, !srcloc !155
  %call.i122 = call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i122, 250000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 520) #8
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr1263.i = getelementptr i8, ptr %20, i32 40
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1263.i) #8, !srcloc !162
  %22 = call i32 @llvm.bswap.i32(i32 %21) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool.not64.i = icmp sgt i32 %22, -1
  br i1 %tobool.not64.i, label %if.end52.sunxi_rsb_init_device_mode.exit_crit_edge, label %if.end52.land.lhs.true.i_crit_edge

if.end52.land.lhs.true.i_crit_edge:               ; preds = %if.end52
  br label %land.lhs.true.i

if.end52.sunxi_rsb_init_device_mode.exit_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_rsb_init_device_mode.exit

land.lhs.true.i:                                  ; preds = %if.then31.i.land.lhs.true.i_crit_edge, %if.end52.land.lhs.true.i_crit_edge
  %call18.i = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call18.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call18.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then21.i, label %if.then31.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr25.i = getelementptr i8, ptr %24, i32 40
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #8, !srcloc !162
  %26 = call i32 @llvm.bswap.i32(i32 %25) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  br label %sunxi_rsb_init_device_mode.exit

if.then31.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr12.i = getelementptr i8, ptr %28, i32 40
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #8, !srcloc !162
  %30 = call i32 @llvm.bswap.i32(i32 %29) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %tobool.not.i = icmp sgt i32 %30, -1
  br i1 %tobool.not.i, label %if.then31.i.sunxi_rsb_init_device_mode.exit_crit_edge, label %if.then31.i.land.lhs.true.i_crit_edge

if.then31.i.land.lhs.true.i_crit_edge:            ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then31.i.sunxi_rsb_init_device_mode.exit_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_rsb_init_device_mode.exit

sunxi_rsb_init_device_mode.exit:                  ; preds = %if.then31.i.sunxi_rsb_init_device_mode.exit_crit_edge, %if.then21.i, %if.end52.sunxi_rsb_init_device_mode.exit_crit_edge
  %reg.0.i = phi i32 [ %26, %if.then21.i ], [ %22, %if.end52.sunxi_rsb_init_device_mode.exit_crit_edge ], [ %30, %if.then31.i.sunxi_rsb_init_device_mode.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg.0.i)
  %tobool35.not.inv.i = icmp slt i32 %reg.0.i, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %add.ptr46.i = getelementptr i8, ptr %32, i32 12
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #8, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr51.i = getelementptr i8, ptr %35, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 %33) #8, !srcloc !155
  br i1 %tobool35.not.inv.i, label %do.end58, label %sunxi_rsb_init_device_mode.exit.if.end59_crit_edge

sunxi_rsb_init_device_mode.exit.if.end59_crit_edge: ; preds = %sunxi_rsb_init_device_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end58:                                         ; preds = %sunxi_rsb_init_device_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef -110) #12
  br label %if.end59

if.end59:                                         ; preds = %do.end58, %sunxi_rsb_init_device_mode.exit.if.end59_crit_edge
  %ignore_children.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %36 = ptrtoint ptr %ignore_children.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i = load i16, ptr %ignore_children.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %ignore_children.i, align 4
  %call.i123 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #8
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  call fastcc void @of_rsb_register_devices(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end48.cleanup_crit_edge, %do.end47, %if.then32, %if.then22, %if.end14.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %11, %if.then11 ], [ %13, %if.then22 ], [ %15, %if.then32 ], [ %call.i121, %do.end47 ], [ 0, %if.end59 ], [ -12, %if.end.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call49, %if.end48.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_freq) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @device_for_each_child(ptr noundef %3, ptr noundef null, ptr noundef nonnull @sunxi_rsb_remove_devices) #8
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev2, i1 noundef zeroext true) #8
  %rstc.i = getelementptr inbounds %struct.sunxi_rsb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstc.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %5) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 18
  %8 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 2
  br i1 %cmp.i.i, label %entry.sunxi_rsb_hw_exit.exit_crit_edge, label %if.then.i

entry.sunxi_rsb_hw_exit.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_rsb_hw_exit.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %clk.i = getelementptr inbounds %struct.sunxi_rsb, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %sunxi_rsb_hw_exit.exit

sunxi_rsb_hw_exit.exit:                           ; preds = %if.then.i, %entry.sunxi_rsb_hw_exit.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_rsb_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %rstc.i = getelementptr inbounds %struct.sunxi_rsb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %3) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 18
  %6 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 2
  br i1 %cmp.i.i, label %entry.sunxi_rsb_hw_exit.exit_crit_edge, label %if.then.i

entry.sunxi_rsb_hw_exit.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_rsb_hw_exit.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %clk.i = getelementptr inbounds %struct.sunxi_rsb, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %sunxi_rsb_hw_exit.exit

sunxi_rsb_hw_exit.exit:                           ; preds = %if.then.i, %entry.sunxi_rsb_hw_exit.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sunxi_rsb, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !162
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  %status2 = getelementptr inbounds %struct.sunxi_rsb, ptr %dev_id, i32 0, i32 6
  %4 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  tail call void @arm_heavy_mb() #8
  %and = shl i32 %3, 24
  %5 = and i32 %and, 117440512
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #8, !srcloc !155
  %complete = getelementptr inbounds %struct.sunxi_rsb, ptr %dev_id, i32 0, i32 4
  tail call void @complete(ptr noundef %complete) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_rsb_hw_init(ptr nocapture noundef readonly %rsb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsb, align 4
  %clk = getelementptr inbounds %struct.sunxi_rsb, ptr %rsb, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %rstc = getelementptr inbounds %struct.sunxi_rsb, ptr %rsb, i32 0, i32 3
  %4 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstc, align 4
  %call2 = tail call i32 @reset_control_deassert(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %call2) #12
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %cleanup

do.body9:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.sunxi_rsb, ptr %rsb, i32 0, i32 1
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 16777216) #8, !srcloc !155
  %call12 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call12, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 656) #8
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool29.not116 = icmp eq i32 %13, 0
  br i1 %tobool29.not116, label %do.body9.for.end_crit_edge, label %do.body9.land.lhs.true_crit_edge

do.body9.land.lhs.true_crit_edge:                 ; preds = %do.body9
  br label %land.lhs.true

do.body9.for.end_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %if.then46.land.lhs.true_crit_edge, %do.body9.land.lhs.true_crit_edge
  %call33 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call33, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call33, %add.i
  br i1 %cmp3.i, label %if.then36, label %if.then46

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  br label %for.end

if.then46:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %20 = and i32 %19, 16777216
  %tobool29.not = icmp eq i32 %20, 0
  br i1 %tobool29.not, label %if.then46.for.end_crit_edge, label %if.then46.land.lhs.true_crit_edge

if.then46.land.lhs.true_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then46.for.end_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.then46.for.end_crit_edge, %if.then36, %do.body9.for.end_crit_edge
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %call52 = tail call i32 @clk_get_rate(ptr noundef %22) #8
  %clk_freq = getelementptr inbounds %struct.sunxi_rsb, ptr %rsb, i32 0, i32 7
  %23 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_freq, align 4
  %div = udiv i32 %call52, %24
  %div53110 = lshr i32 %div, 1
  %25 = tail call i32 @llvm.umin.i32(i32 %div53110, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div)
  %tobool54.not.inv = icmp ugt i32 %div, 1
  %clk_div.0 = select i1 %tobool54.not.inv, i32 %25, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %clk_div.0)
  %tobool61.not.inv = icmp ugt i32 %clk_div.0, 1
  %div67 = udiv i32 %call52, %clk_div.0
  %div68111 = lshr i32 %div67, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %div68111) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %26 = shl nuw nsw i32 %clk_div.0, 7
  %.op.op = and i32 %26, 1792
  %shl = select i1 %tobool61.not.inv, i32 %.op.op, i32 256
  %sub = add nuw nsw i32 %clk_div.0, 255
  %and73 = and i32 %sub, 255
  %or = or i32 %shl, %and73
  %27 = tail call i32 @llvm.bswap.i32(i32 %or)
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr75 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %27) #8, !srcloc !155
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end7, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call2, %do.end7 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @of_rsb_register_devices(ptr noundef %rsb) unnamed_addr #0 align 64 {
entry:
  %hwaddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsb, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwaddr) #8
  %4 = ptrtoint ptr %hwaddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %hwaddr, align 4, !annotation !182
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup82_crit_edge, label %if.end

entry.cleanup82_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_get_next_available_child(ptr noundef nonnull %3, ptr noundef null) #8
  %cmp.not19 = icmp eq ptr %call, null
  br i1 %cmp.not19, label %if.end.for.end_crit_edge, label %do.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.lr.ph:                                    ; preds = %if.end
  %regs = getelementptr inbounds %struct.sunxi_rsb, ptr %rsb, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %child.020 = phi ptr [ %call, %do.body.lr.ph ], [ %call39, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_rsb_register_devices.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_rsb_register_devices, %if.then6)) #8
          to label %do.end [label %if.then6], !srcloc !165

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @of_rsb_register_devices.__UNIQUE_ID_ddebug194, ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef nonnull %child.020) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.020, ptr noundef nonnull @.str.45, ptr noundef nonnull %hwaddr, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool9.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool9.not, label %if.end14, label %do.end13

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull %child.020, i32 noundef %call.i.i) #12
  br label %for.inc

if.end14:                                         ; preds = %do.end
  %5 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwaddr, align 4
  %conv = trunc i32 %6 to i16
  %7 = zext i16 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %conv, label %do.end20 [
    i16 931, label %if.end14.do.body22_crit_edge
    i16 1861, label %if.then.fold.split.i
    i16 3721, label %if.then.fold.split12.i
  ]

if.end14.do.body22_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

if.then.fold.split.i:                             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

if.then.fold.split12.i:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef nonnull %child.020) #12
  br label %for.inc

do.body22:                                        ; preds = %if.then.fold.split12.i, %if.then.fold.split.i, %if.end14.do.body22_crit_edge
  %i.010.lcssa.i = phi i32 [ 0, %if.end14.do.body22_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split12.i ]
  %rtaddr.i = getelementptr [3 x %struct.sunxi_rsb_addr_map], ptr @sunxi_rsb_addr_maps, i32 0, i32 %i.010.lcssa.i, i32 1
  %8 = ptrtoint ptr %rtaddr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rtaddr.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -402653184) #8, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  call void @arm_heavy_mb() #8
  %conv28 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv28, 16
  %12 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwaddr, align 4
  %and29 = and i32 %13, 65535
  %or = or i32 %and29, %shl
  %14 = call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr31 = getelementptr i8, ptr %16, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %14) #8, !srcloc !155
  %call32 = call fastcc i32 @_sunxi_rsb_run_xfer(ptr noundef %rsb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body22.for.inc_crit_edge, label %do.end37

do.body22.for.inc_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end37:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.51, ptr noundef nonnull %child.020, i32 noundef %call32) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end37, %do.body22.for.inc_crit_edge, %do.end20, %do.end13
  %call39 = call ptr @of_get_next_available_child(ptr noundef nonnull %3, ptr noundef nonnull %child.020) #8
  %cmp.not = icmp eq ptr %call39, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %call40 = call ptr @of_get_next_available_child(ptr noundef nonnull %3, ptr noundef null) #8
  %cmp42.not22 = icmp eq ptr %call40, null
  br i1 %cmp42.not22, label %for.end.cleanup82_crit_edge, label %for.end.for.body44_crit_edge

for.end.for.body44_crit_edge:                     ; preds = %for.end
  br label %for.body44

for.end.cleanup82_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

for.body44:                                       ; preds = %cleanup.for.body44_crit_edge, %for.end.for.body44_crit_edge
  %child.123 = phi ptr [ %call80, %cleanup.for.body44_crit_edge ], [ %call40, %for.end.for.body44_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_rsb_register_devices.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_rsb_register_devices, %if.then57)) #8
          to label %do.end60 [label %if.then57], !srcloc !165

if.then57:                                        ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @of_rsb_register_devices.__UNIQUE_ID_ddebug195, ptr noundef %1, ptr noundef nonnull @.str.53, ptr noundef nonnull %child.123) #8
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %for.body44
  %call.i.i5 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.123, ptr noundef nonnull @.str.45, ptr noundef nonnull %hwaddr, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i5)
  %tobool62.not = icmp sgt i32 %call.i.i5, -1
  br i1 %tobool62.not, label %if.end64, label %do.end60.cleanup_crit_edge

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end64:                                         ; preds = %do.end60
  %17 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwaddr, align 4
  %conv65 = trunc i32 %18 to i16
  %19 = zext i16 %conv65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %conv65, label %if.end64.cleanup_crit_edge [
    i16 931, label %if.end64.if.end69_crit_edge
    i16 1861, label %if.then.fold.split.i6
    i16 3721, label %if.then.fold.split12.i7
  ]

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.fold.split.i6:                            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then.fold.split12.i7:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end69:                                         ; preds = %if.then.fold.split12.i7, %if.then.fold.split.i6, %if.end64.if.end69_crit_edge
  %i.010.lcssa.i8 = phi i32 [ 0, %if.end64.if.end69_crit_edge ], [ 1, %if.then.fold.split.i6 ], [ 2, %if.then.fold.split12.i7 ]
  %rtaddr.i9 = getelementptr [3 x %struct.sunxi_rsb_addr_map], ptr @sunxi_rsb_addr_maps, i32 0, i32 %i.010.lcssa.i8, i32 1
  %20 = ptrtoint ptr %rtaddr.i9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rtaddr.i9, align 2
  %call71 = call fastcc ptr @sunxi_rsb_device_create(ptr noundef %rsb, ptr noundef nonnull %child.123, i16 noundef zeroext %conv65, i8 noundef zeroext %21)
  %cmp.i = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end76, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call71 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef nonnull %child.123, i32 noundef %22) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %if.end69.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %do.end60.cleanup_crit_edge
  %call80 = call ptr @of_get_next_available_child(ptr noundef nonnull %3, ptr noundef nonnull %child.123) #8
  %cmp42.not = icmp eq ptr %call80, null
  br i1 %cmp42.not, label %cleanup.cleanup82_crit_edge, label %cleanup.for.body44_crit_edge

cleanup.for.body44_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44

cleanup.cleanup82_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

cleanup82:                                        ; preds = %cleanup.cleanup82_crit_edge, %for.end.cleanup82_crit_edge, %entry.cleanup82_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwaddr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sunxi_rsb_device_create(ptr noundef %rsb, ptr noundef %node, i16 noundef zeroext %hwaddr, i8 noundef zeroext %rtaddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 944) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rsb2 = getelementptr inbounds %struct.sunxi_rsb_device, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %rsb2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rsb, ptr %rsb2, align 8
  %hwaddr3 = getelementptr inbounds %struct.sunxi_rsb_device, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %hwaddr3 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %hwaddr, ptr %hwaddr3, align 2
  %rtaddr4 = getelementptr inbounds %struct.sunxi_rsb_device, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %rtaddr4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %rtaddr, ptr %rtaddr4, align 8
  %bus = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sunxi_rsb_bus, ptr %bus, align 8
  %5 = ptrtoint ptr %rsb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rsb, align 4
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %node, ptr %of_node, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %9 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sunxi_rsb_dev_release, ptr %release, align 4
  %conv = zext i16 %hwaddr to i32
  %call10 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str, i32 noundef %conv) #8
  %call12 = tail call i32 @device_register(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end, label %do.body19

do.end:                                           ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i52 = phi ptr [ %13, %if.end.i ], [ %11, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.58, ptr noundef %retval.0.i52, i32 noundef %call12) #12
  br label %err_device_add

do.body19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_rsb_device_create.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_rsb_device_create, %if.then24)) #8
          to label %err_device_add [label %if.then24], !srcloc !165

if.then24:                                        ; preds = %do.body19
  %init_name.i53 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i53 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i53, align 8
  %tobool.not.i54 = icmp eq ptr %15, null
  br i1 %tobool.not.i54, label %if.end.i55, label %if.then24.dev_name.exit57_crit_edge

if.then24.dev_name.exit57_crit_edge:              ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit57

if.end.i55:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  br label %dev_name.exit57

dev_name.exit57:                                  ; preds = %if.end.i55, %if.then24.dev_name.exit57_crit_edge
  %retval.0.i56 = phi ptr [ %17, %if.end.i55 ], [ %15, %if.then24.dev_name.exit57_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunxi_rsb_device_create.__UNIQUE_ID_ddebug188, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.60, ptr noundef %retval.0.i56) #8
  br label %err_device_add

err_device_add:                                   ; preds = %dev_name.exit57, %do.body19, %dev_name.exit
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #8
  %18 = inttoptr i32 %call12 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_device_add, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %18, %err_device_add ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_rsb_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_remove_devices(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %1, @sunxi_rsb_bus
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @device_unregister(ptr noundef %dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rstc.i = getelementptr inbounds %struct.sunxi_rsb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %3) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 18
  %6 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 2
  br i1 %cmp.i.i, label %entry.sunxi_rsb_hw_exit.exit_crit_edge, label %if.then.i

entry.sunxi_rsb_hw_exit.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_rsb_hw_exit.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %clk.i = getelementptr inbounds %struct.sunxi_rsb, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %sunxi_rsb_hw_exit.exit

sunxi_rsb_hw_exit.exit:                           ; preds = %if.then.i, %entry.sunxi_rsb_hw_exit.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @sunxi_rsb_hw_init(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.sunxi_rsb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.sunxi_rsb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !126, !128, !130, !132, !133, !134, !135, !137, !138, !140}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__ksymtab_sunxi_rsb_driver_register, !1, !"__ksymtab_sunxi_rsb_driver_register", i1 false, i1 false}
!1 = !{!"../drivers/bus/sunxi-rsb.c", i32 267, i32 1}
!2 = !{ptr @__ksymtab___devm_regmap_init_sunxi_rsb, !3, !"__ksymtab___devm_regmap_init_sunxi_rsb", i1 false, i1 false}
!3 = !{!"../drivers/bus/sunxi-rsb.c", i32 489, i32 1}
!4 = !{ptr @__initcall__kmod_sunxi_rsb__196_860_sunxi_rsb_init6, !5, !"__initcall__kmod_sunxi_rsb__196_860_sunxi_rsb_init6", i1 false, i1 false}
!5 = !{!"../drivers/bus/sunxi-rsb.c", i32 860, i32 1}
!6 = !{ptr @__exitcall_sunxi_rsb_exit, !7, !"__exitcall_sunxi_rsb_exit", i1 false, i1 false}
!7 = !{!"../drivers/bus/sunxi-rsb.c", i32 867, i32 1}
!8 = !{ptr @__UNIQUE_ID_author197, !9, !"__UNIQUE_ID_author197", i1 false, i1 false}
!9 = !{!"../drivers/bus/sunxi-rsb.c", i32 869, i32 1}
!10 = !{ptr @__UNIQUE_ID_description198, !11, !"__UNIQUE_ID_description198", i1 false, i1 false}
!11 = !{!"../drivers/bus/sunxi-rsb.c", i32 870, i32 1}
!12 = !{ptr @__UNIQUE_ID_file199, !13, !"__UNIQUE_ID_file199", i1 false, i1 false}
!13 = !{!"../drivers/bus/sunxi-rsb.c", i32 871, i32 1}
!14 = !{ptr @__UNIQUE_ID_license200, !13, !"__UNIQUE_ID_license200", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/bus/sunxi-rsb.c", i32 180, i32 11}
!17 = !{ptr @sunxi_rsb_bus, !18, !"sunxi_rsb_bus", i1 false, i1 false}
!18 = !{!"../drivers/bus/sunxi-rsb.c", i32 179, i32 24}
!19 = !{ptr @regmap_sunxi_rsb, !20, !"regmap_sunxi_rsb", i1 false, i1 false}
!20 = !{!"../drivers/bus/sunxi-rsb.c", i32 444, i32 26}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/bus/sunxi-rsb.c", i32 386, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sunxi_rsb_write._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @sunxi_rsb_write._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bus/sunxi-rsb.c", i32 273, i32 3}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug189, !30, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bus/sunxi-rsb.c", i32 286, i32 3}
!36 = !{ptr @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug190, !35, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/bus/sunxi-rsb.c", i32 298, i32 3}
!39 = !{ptr @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug191, !38, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/bus/sunxi-rsb.c", i32 304, i32 4}
!42 = !{ptr @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug192, !41, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bus/sunxi-rsb.c", i32 309, i32 4}
!45 = !{ptr @_sunxi_rsb_run_xfer.__UNIQUE_ID_ddebug193, !44, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bus/sunxi-rsb.c", i32 337, i32 3}
!48 = !{ptr @sunxi_rsb_read._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sunxi_rsb_read._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bus/sunxi-rsb.c", i32 854, i32 3}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sunxi_rsb_init._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @sunxi_rsb_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @sunxi_rsb_driver, !56, !"sunxi_rsb_driver", i1 false, i1 false}
!56 = !{!"../drivers/bus/sunxi-rsb.c", i32 837, i32 31}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/bus/sunxi-rsb.c", i32 738, i32 27}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/bus/sunxi-rsb.c", i32 740, i32 3}
!61 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sunxi_rsb_probe._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @sunxi_rsb_probe._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bus/sunxi-rsb.c", i32 765, i32 3}
!66 = !{ptr @sunxi_rsb_probe._entry.19, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @sunxi_rsb_probe._entry_ptr.21, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/bus/sunxi-rsb.c", i32 772, i32 3}
!70 = !{ptr @sunxi_rsb_probe._entry.22, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @sunxi_rsb_probe._entry_ptr.24, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @sunxi_rsb_probe.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/bus/sunxi-rsb.c", i32 777, i32 2}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/bus/sunxi-rsb.c", i32 781, i32 3}
!77 = !{ptr @sunxi_rsb_probe._entry.26, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @sunxi_rsb_probe._entry_ptr.28, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/bus/sunxi-rsb.c", i32 793, i32 3}
!81 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sunxi_rsb_probe._entry.29, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @sunxi_rsb_probe._entry_ptr.32, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @init_completion.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../include/linux/completion.h", i32 87, i32 2}
!86 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/bus/sunxi-rsb.c", i32 643, i32 3}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @sunxi_rsb_hw_init._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @sunxi_rsb_hw_init._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/bus/sunxi-rsb.c", i32 649, i32 3}
!94 = !{ptr @sunxi_rsb_hw_init._entry.36, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @sunxi_rsb_hw_init._entry_ptr.38, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/bus/sunxi-rsb.c", i32 676, i32 2}
!98 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @sunxi_rsb_hw_init._entry.39, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @sunxi_rsb_hw_init._entry_ptr.42, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/bus/sunxi-rsb.c", i32 577, i32 3}
!103 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @of_rsb_register_devices.__UNIQUE_ID_ddebug194, !102, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/bus/sunxi-rsb.c", i32 580, i32 37}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/bus/sunxi-rsb.c", i32 582, i32 4}
!109 = !{ptr @of_rsb_register_devices._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @of_rsb_register_devices._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/bus/sunxi-rsb.c", i32 589, i32 4}
!113 = !{ptr @of_rsb_register_devices._entry.47, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @of_rsb_register_devices._entry_ptr.49, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/bus/sunxi-rsb.c", i32 607, i32 4}
!117 = !{ptr @of_rsb_register_devices._entry.50, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @of_rsb_register_devices._entry_ptr.52, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/bus/sunxi-rsb.c", i32 615, i32 3}
!121 = !{ptr @of_rsb_register_devices.__UNIQUE_ID_ddebug195, !120, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/bus/sunxi-rsb.c", i32 627, i32 4}
!124 = !{ptr @of_rsb_register_devices._entry.54, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @of_rsb_register_devices._entry_ptr.56, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @sunxi_rsb_addr_maps, !127, !"sunxi_rsb_addr_maps", i1 false, i1 false}
!127 = !{!"../drivers/bus/sunxi-rsb.c", i32 547, i32 40}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/bus/sunxi-rsb.c", i32 219, i32 27}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/bus/sunxi-rsb.c", i32 223, i32 3}
!132 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @sunxi_rsb_device_create._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @sunxi_rsb_device_create._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/bus/sunxi-rsb.c", i32 228, i32 2}
!137 = !{ptr @sunxi_rsb_device_create.__UNIQUE_ID_ddebug188, !136, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!138 = !{ptr @sunxi_rsb_of_match_table, !139, !"sunxi_rsb_of_match_table", i1 false, i1 false}
!139 = !{!"../drivers/bus/sunxi-rsb.c", i32 831, i32 34}
!140 = !{ptr @sunxi_rsb_dev_pm_ops, !141, !"sunxi_rsb_dev_pm_ops", i1 false, i1 false}
!141 = !{!"../drivers/bus/sunxi-rsb.c", i32 825, i32 32}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{i64 2148258904}
!152 = !{i64 743727, i64 743752, i64 743774, i64 743790, i64 743802, i64 743822, i64 743846, i64 743862, i64 743874}
!153 = !{i64 2148259092}
!154 = !{i64 2153392081}
!155 = !{i64 4910189}
!156 = !{i64 2153392528}
!157 = !{i64 2153392993}
!158 = !{i64 2153393388}
!159 = !{i64 2153387869}
!160 = !{i64 2153388316}
!161 = !{i64 2153388780}
!162 = !{i64 4910607}
!163 = !{i64 2153389441}
!164 = !{i64 2153369791}
!165 = !{i64 2148741300, i64 2148741305, i64 2148741318, i64 2148741362, i64 2148741396, i64 2148741417}
!166 = !{i64 2153372738}
!167 = !{i64 2153373597}
!168 = !{i64 2153376399}
!169 = !{i64 2153377584}
!170 = !{i64 2153378471}
!171 = !{i64 2153397044}
!172 = !{i64 2153399148}
!173 = !{i64 2153399630}
!174 = !{i64 2153400662}
!175 = !{i64 2153401549}
!176 = !{i64 2153396004}
!177 = !{i64 2153396469}
!178 = !{i64 2153418483}
!179 = !{i64 2153420463}
!180 = !{i64 2153420941}
!181 = !{i64 2153422919}
!182 = !{!"auto-init"}
!183 = !{i64 2153408195}
!184 = !{i64 2153408688}
