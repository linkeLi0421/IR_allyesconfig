; ModuleID = '/llk/IR_all_yes/drivers/power/reset/atc260x-poweroff.c_pt.bc'
source_filename = "../drivers/power/reset/atc260x-poweroff.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.atc260x = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr }
%struct.atc260x_pwrc = type { ptr, ptr, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_atc260x_poweroff__170_258_atc260x_pwrc_driver_init6 = internal global ptr @atc260x_pwrc_driver_init, section ".initcall6.init", align 4
@atc260x_pwrc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atc260x_pwrc_probe, ptr @atc260x_pwrc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atc260x_pwrc_driver_exit = internal global ptr @atc260x_pwrc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [71 x i8] c"atc260x_poweroff.description=Poweroff & reset driver for ATC260x PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [74 x i8] c"atc260x_poweroff.author=Cristian Ciocaltea <cristian.ciocaltea@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [59 x i8] c"atc260x_poweroff.file=drivers/power/reset/atc260x-poweroff\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [29 x i8] c"atc260x_poweroff.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atc260x-pwrc\00", [19 x i8] zeroinitializer }, align 32
@atc260x_pwrc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Poweroff not supported for ATC260x PMIC type: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atc260x_pwrc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/reset/atc260x-poweroff.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atc260x_pwrc_probe._entry_ptr = internal global ptr @atc260x_pwrc_probe._entry, section ".printk_index", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@atc260x_pwrc_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@atc260x_pwrc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 225, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Poweroff callback already assigned\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@atc260x_pwrc_probe._entry_ptr.9 = internal global ptr @atc260x_pwrc_probe._entry.6, section ".printk_index", align 4
@atc260x_pwrc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to register restart handler: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@atc260x_pwrc_probe._entry_ptr.12 = internal global ptr @atc260x_pwrc_probe._entry.10, section ".printk_index", align 4
@atc2603c_do_poweroff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 34, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enabling S4-Deep Sleep Mode\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atc2603c_do_poweroff\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atc2603c_do_poweroff._entry_ptr = internal global ptr @atc2603c_do_poweroff._entry, section ".printk_index", align 4
@atc2603c_do_poweroff._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.3, i32 45, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to write SYS_CTL0: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@atc2603c_do_poweroff._entry_ptr.18 = internal global ptr @atc2603c_do_poweroff._entry.16, section ".printk_index", align 4
@atc2603c_do_poweroff._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.3, i32 53, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to write SYS_CTL3: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@atc2603c_do_poweroff._entry_ptr.21 = internal global ptr @atc2603c_do_poweroff._entry.19, section ".printk_index", align 4
@atc2603c_do_poweroff._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.3, i32 67, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to write SYS_CTL%d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@atc2603c_do_poweroff._entry_ptr.24 = internal global ptr @atc2603c_do_poweroff._entry.22, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@atc2603c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.25, ptr @.str.3, i32 140, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atc2603c_init\00", [18 x i8] zeroinitializer }, align 32
@atc2603c_init._entry_ptr = internal global ptr @atc2603c_init._entry, section ".printk_index", align 4
@atc2603c_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.25, ptr @.str.3, i32 148, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@atc2603c_init._entry_ptr.27 = internal global ptr @atc2603c_init._entry.26, section ".printk_index", align 4
@atc2609a_do_poweroff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.28, ptr @.str.3, i32 85, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atc2609a_do_poweroff\00", [43 x i8] zeroinitializer }, align 32
@atc2609a_do_poweroff._entry_ptr = internal global ptr @atc2609a_do_poweroff._entry, section ".printk_index", align 4
@atc2609a_do_poweroff._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.28, ptr @.str.3, i32 96, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@atc2609a_do_poweroff._entry_ptr.30 = internal global ptr @atc2609a_do_poweroff._entry.29, section ".printk_index", align 4
@atc2609a_do_poweroff._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.28, ptr @.str.3, i32 104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@atc2609a_do_poweroff._entry_ptr.32 = internal global ptr @atc2609a_do_poweroff._entry.31, section ".printk_index", align 4
@atc2609a_do_poweroff._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.28, ptr @.str.3, i32 118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@atc2609a_do_poweroff._entry_ptr.34 = internal global ptr @atc2609a_do_poweroff._entry.33, section ".printk_index", align 4
@atc2609a_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.35, ptr @.str.3, i32 163, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atc2609a_init\00", [18 x i8] zeroinitializer }, align 32
@atc2609a_init._entry_ptr = internal global ptr @atc2609a_init._entry, section ".printk_index", align 4
@atc260x_pwrc_pm_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to power off system\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"atc260x_pwrc_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 250, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 254, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 210, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"atc260x_pwrc_data\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 24, i32 29 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 225, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 230, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 34, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 45, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 53, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 66, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 140, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 148, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 85, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 96, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 104, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 117, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 163, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [42 x i8] c"../drivers/power/reset/atc260x-poweroff.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 172, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_atc260x_pwrc_driver_exit, ptr @__initcall__kmod_atc260x_poweroff__170_258_atc260x_pwrc_driver_init6, ptr @atc2603c_do_poweroff._entry, ptr @atc2603c_do_poweroff._entry.16, ptr @atc2603c_do_poweroff._entry.19, ptr @atc2603c_do_poweroff._entry.22, ptr @atc2603c_do_poweroff._entry_ptr, ptr @atc2603c_do_poweroff._entry_ptr.18, ptr @atc2603c_do_poweroff._entry_ptr.21, ptr @atc2603c_do_poweroff._entry_ptr.24, ptr @atc2603c_init._entry, ptr @atc2603c_init._entry.26, ptr @atc2603c_init._entry_ptr, ptr @atc2603c_init._entry_ptr.27, ptr @atc2609a_do_poweroff._entry, ptr @atc2609a_do_poweroff._entry.29, ptr @atc2609a_do_poweroff._entry.31, ptr @atc2609a_do_poweroff._entry.33, ptr @atc2609a_do_poweroff._entry_ptr, ptr @atc2609a_do_poweroff._entry_ptr.30, ptr @atc2609a_do_poweroff._entry_ptr.32, ptr @atc2609a_do_poweroff._entry_ptr.34, ptr @atc2609a_init._entry, ptr @atc2609a_init._entry_ptr, ptr @atc260x_pwrc_driver_exit, ptr @atc260x_pwrc_probe._entry, ptr @atc260x_pwrc_probe._entry.10, ptr @atc260x_pwrc_probe._entry.6, ptr @atc260x_pwrc_probe._entry_ptr, ptr @atc260x_pwrc_probe._entry_ptr.12, ptr @atc260x_pwrc_probe._entry_ptr.9, ptr @atc260x_pwrc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @atc260x_pwrc_data, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_pwrc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_pwrc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_pwrc_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_pwrc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_pwrc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_do_poweroff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_do_poweroff._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_do_poweroff._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_do_poweroff._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_do_poweroff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_do_poweroff._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_do_poweroff._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_do_poweroff._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atc260x_pwrc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atc260x_pwrc_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atc260x_pwrc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @atc260x_pwrc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc260x_pwrc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %regmap = getelementptr inbounds %struct.atc260x, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %regmap5 = getelementptr inbounds %struct.atc260x_pwrc, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regmap5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %regmap5, align 4
  %restart_nb = getelementptr inbounds %struct.atc260x_pwrc, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %restart_nb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @atc260x_pwrc_restart_handler, ptr %restart_nb, align 4
  %priority = getelementptr inbounds %struct.atc260x_pwrc, ptr %call.i, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 192, ptr %priority, align 4
  %ic_type = getelementptr inbounds %struct.atc260x, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %ic_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ic_type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  %do_poweroff = getelementptr inbounds %struct.atc260x_pwrc, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %do_poweroff to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @atc2603c_do_poweroff, ptr %do_poweroff, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 3, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %do.end.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.20, i32 noundef %call.i.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb.if.end.i_crit_edge
  %16 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap5, align 4
  %call.i17.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef 64480, i32 noundef 8320, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool3.not.i = icmp eq i32 %call.i17.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end15_crit_edge, label %do.end7.i

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.17, i32 noundef %call.i17.i) #7
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %do_poweroff9 = getelementptr inbounds %struct.atc260x_pwrc, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %do_poweroff9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @atc2609a_do_poweroff, ptr %do_poweroff9, align 4
  %call.i.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef 64480, i32 noundef 8320, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %tobool.not.i59 = icmp eq i32 %call.i.i58, 0
  br i1 %tobool.not.i59, label %sw.bb8.if.end15_crit_edge, label %do.end.i60

sw.bb8.if.end15_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

do.end.i60:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.17, i32 noundef %call.i.i58) #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %11) #7
  br label %cleanup

if.end15:                                         ; preds = %sw.bb8.if.end15_crit_edge, %if.end.i.if.end15_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %24 = load ptr, ptr @pm_power_off, align 4
  %tobool16.not = icmp eq ptr %24, null
  br i1 %tobool16.not, label %if.then17, label %do.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %call.i, ptr @atc260x_pwrc_data, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @atc260x_pwrc_pm_handler, ptr @pm_power_off, align 4
  br label %if.end22

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.7) #7
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %if.then17
  %call24 = tail call i32 @register_restart_handler(ptr noundef %restart_nb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %do.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.11, i32 noundef %call24) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end22.cleanup_crit_edge, %do.end, %do.end.i60, %do.end7.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call24, %do.end29 ], [ 0, %if.end22.cleanup_crit_edge ], [ %call.i17.i, %do.end7.i ], [ %call.i.i58, %do.end.i60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc260x_pwrc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load ptr, ptr @atc260x_pwrc_data, align 4
  %cmp = icmp eq ptr %2, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr null, ptr @pm_power_off, align 4
  store ptr null, ptr @atc260x_pwrc_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %restart_nb = getelementptr inbounds %struct.atc260x_pwrc, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @unregister_restart_handler(ptr noundef %restart_nb) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc260x_pwrc_restart_handler(ptr noundef %nb, i32 noundef %mode, ptr nocapture noundef readnone %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -8
  %do_poweroff = getelementptr i8, ptr %nb, i32 12
  %0 = ptrtoint ptr %do_poweroff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %do_poweroff, align 4
  %call = tail call i32 %1(ptr noundef %add.ptr, i1 noundef zeroext true) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc2603c_do_poweroff(ptr nocapture noundef readonly %pwrc, i1 noundef zeroext %restart) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %restart, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @power_supply_is_system_supplied() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %pwrc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrc, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.13) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cond = phi i32 [ 12288, %if.then ], [ 12288, %land.lhs.true.if.end_crit_edge ], [ 8256, %entry.if.end_crit_edge ]
  %tobool12.not = phi i32 [ 0, %if.then ], [ 16384, %land.lhs.true.if.end_crit_edge ], [ 16384, %entry.if.end_crit_edge ]
  %regmap = getelementptr inbounds %struct.atc260x_pwrc, ptr %pwrc, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 64480, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %do.end8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %pwrc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwrc, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.17, i32 noundef %call.i) #7
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 3, i32 noundef 49152, i32 noundef %tobool12.not, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool15.not = icmp eq i32 %call.i63, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %pwrc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwrc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.20, i32 noundef %call.i63) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %cond23 = select i1 %restart, i32 1024, i32 1
  %cond25 = select i1 %restart, i32 1024, i32 0
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %not.restart = xor i1 %restart, true
  %cond28 = zext i1 %not.restart to i32
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %cond28, i32 noundef %cond23, i32 noundef %cond25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool30.not = icmp eq i32 %call.i64, 0
  br i1 %tobool30.not, label %if.end21.while.body_crit_edge, label %do.end34

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  br label %while.body

do.end34:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %pwrc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwrc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %cond28, i32 noundef %call.i64) #7
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end21.while.body_crit_edge
  %__ms.065 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 200, %if.end21.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.065, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #4
  %tobool39.not = icmp eq i32 %dec, 0
  br i1 %tobool39.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %do.end34, %do.end19
  %retval.0 = phi i32 [ %call.i63, %do.end19 ], [ %call.i64, %do.end34 ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc2609a_do_poweroff(ptr nocapture noundef readonly %pwrc, i1 noundef zeroext %restart) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %restart, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @power_supply_is_system_supplied() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %pwrc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrc, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.13) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cond = phi i32 [ 12288, %if.then ], [ 12288, %land.lhs.true.if.end_crit_edge ], [ 8256, %entry.if.end_crit_edge ]
  %tobool12.not = phi i32 [ 0, %if.then ], [ 16384, %land.lhs.true.if.end_crit_edge ], [ 16384, %entry.if.end_crit_edge ]
  %regmap = getelementptr inbounds %struct.atc260x_pwrc, ptr %pwrc, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 64480, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %do.end8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %pwrc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwrc, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.17, i32 noundef %call.i) #7
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 3, i32 noundef 49152, i32 noundef %tobool12.not, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool15.not = icmp eq i32 %call.i63, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %pwrc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwrc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.20, i32 noundef %call.i63) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %cond23 = select i1 %restart, i32 1024, i32 1
  %cond25 = select i1 %restart, i32 1024, i32 0
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %not.restart = xor i1 %restart, true
  %cond28 = zext i1 %not.restart to i32
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %cond28, i32 noundef %cond23, i32 noundef %cond25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool30.not = icmp eq i32 %call.i64, 0
  br i1 %tobool30.not, label %if.end21.while.body_crit_edge, label %do.end34

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  br label %while.body

do.end34:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %pwrc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwrc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %cond28, i32 noundef %call.i64) #7
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end21.while.body_crit_edge
  %__ms.065 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 200, %if.end21.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.065, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #4
  %tobool39.not = icmp eq i32 %dec, 0
  br i1 %tobool39.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %do.end34, %do.end19
  %retval.0 = phi i32 [ %call.i63, %do.end19 ], [ %call.i64, %do.end34 ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atc260x_pwrc_pm_handler() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @atc260x_pwrc_data, align 4
  %do_poweroff = getelementptr inbounds %struct.atc260x_pwrc, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %do_poweroff to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %do_poweroff, align 4
  %call = tail call i32 %2(ptr noundef %0, i1 noundef zeroext false) #4
  %.b35 = load i1, ptr @atc260x_pwrc_pm_handler.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !87

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @atc260x_pwrc_pm_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 172, i32 noundef 9, ptr noundef nonnull @.str.36) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_is_system_supplied() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !73, !75, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_atc260x_poweroff__170_258_atc260x_pwrc_driver_init6, !1, !"__initcall__kmod_atc260x_poweroff__170_258_atc260x_pwrc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 258, i32 1}
!2 = !{ptr @__exitcall_atc260x_pwrc_driver_exit, !1, !"__exitcall_atc260x_pwrc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 260, i32 1}
!5 = !{ptr @__UNIQUE_ID_author172, !6, !"__UNIQUE_ID_author172", i1 false, i1 false}
!6 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 261, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 262, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 254, i32 11}
!12 = !{ptr @atc260x_pwrc_driver, !13, !"atc260x_pwrc_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 250, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 210, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @atc260x_pwrc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @atc260x_pwrc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 225, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @atc260x_pwrc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @atc260x_pwrc_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 230, i32 3}
!29 = !{ptr @atc260x_pwrc_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @atc260x_pwrc_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 34, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @atc2603c_do_poweroff._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @atc2603c_do_poweroff._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 45, i32 3}
!39 = !{ptr @atc2603c_do_poweroff._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @atc2603c_do_poweroff._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 53, i32 3}
!43 = !{ptr @atc2603c_do_poweroff._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @atc2603c_do_poweroff._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 66, i32 3}
!47 = !{ptr @atc2603c_do_poweroff._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @atc2603c_do_poweroff._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 140, i32 3}
!51 = !{ptr @atc2603c_init._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @atc2603c_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @atc2603c_init._entry.26, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 148, i32 3}
!55 = !{ptr @atc2603c_init._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 85, i32 3}
!58 = !{ptr @atc2609a_do_poweroff._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @atc2609a_do_poweroff._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @atc2609a_do_poweroff._entry.29, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 96, i32 3}
!62 = !{ptr @atc2609a_do_poweroff._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @atc2609a_do_poweroff._entry.31, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 104, i32 3}
!65 = !{ptr @atc2609a_do_poweroff._entry_ptr.32, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @atc2609a_do_poweroff._entry.33, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 117, i32 3}
!68 = !{ptr @atc2609a_do_poweroff._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 163, i32 3}
!71 = !{ptr @atc2609a_init._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @atc2609a_init._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @atc260x_pwrc_data, !74, !"atc260x_pwrc_data", i1 false, i1 false}
!74 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 24, i32 29}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/power/reset/atc260x-poweroff.c", i32 172, i32 2}
!77 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"branch_weights", i32 2000, i32 1}
