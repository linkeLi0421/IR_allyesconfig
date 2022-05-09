; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/inv_icm42600/inv_icm42600_core.c_pt.bc'
source_filename = "../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+inv_icm42600_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_inv_icm42600_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_inv_icm42600_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inv_icm42600_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22inv_icm42600_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_inv_icm42600_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inv_icm42600_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_inv_icm42600_core_probe\09\09\09\09"
module asm "\09.long\09__crc_inv_icm42600_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inv_icm42600_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22inv_icm42600_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_inv_icm42600_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inv_icm42600_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_inv_icm42600_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_inv_icm42600_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inv_icm42600_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22inv_icm42600_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_inv_icm42600_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inv_icm42600_hw = type { i8, ptr, ptr }
%struct.inv_icm42600_conf = type { %struct.inv_icm42600_sensor_conf, %struct.inv_icm42600_sensor_conf, i8 }
%struct.inv_icm42600_sensor_conf = type { i32, i32, i32, i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.inv_icm42600_state = type { %struct.mutex, i32, ptr, ptr, ptr, ptr, %struct.iio_mount_matrix, %struct.inv_icm42600_conf, %struct.inv_icm42600_suspended, ptr, ptr, [52 x i8], [2 x i8], [126 x i8], %struct.inv_icm42600_fifo, %struct.anon.87, [112 x i8] }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.inv_icm42600_suspended = type { i32, i32, i8 }
%struct.inv_icm42600_fifo = type { i32, i32, i32, %struct.anon.85, i32, %struct.anon.86, [92 x i8], [2080 x i8], [96 x i8] }
%struct.anon.85 = type { i32, i32 }
%struct.anon.86 = type { i32, i32, i32 }
%struct.anon.87 = type { i64, i64 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@inv_icm42600_regmap_ranges = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr @.str.15, i32 0, i32 20479, i32 118, i32 7, i32 0, i32 0, i32 4096 }], [32 x i8] zeroinitializer }, align 32
@inv_icm42600_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 20479, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @inv_icm42600_regmap_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_inv_icm42600_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_inv_icm42600_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_inv_icm42600_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inv_icm42600_regmap_config to i32), ptr @__kstrtab_inv_icm42600_regmap_config, ptr @__kstrtabns_inv_icm42600_regmap_config }, section "___ksymtab_gpl+inv_icm42600_regmap_config", align 4
@inv_icm42600_odr_to_period.odr_periods = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 0, i32 0, i32 125000, i32 250000, i32 500000, i32 1000000, i32 5000000, i32 10000000, i32 20000000, i32 40000000, i32 80000000, i32 160000000, i32 320000000, i32 640000000, i32 2000000], [32 x i8] zeroinitializer }, align 32
@inv_icm42600_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 569, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid chip = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"inv_icm42600_core_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/iio/imu/inv_icm42600/inv_icm42600_core.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@inv_icm42600_core_probe._entry_ptr = internal global ptr @inv_icm42600_core_probe._entry, section ".printk_index", align 4
@inv_icm42600_core_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 576, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not find IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@inv_icm42600_core_probe._entry_ptr.7 = internal global ptr @inv_icm42600_core_probe._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drive-open-drain\00", [47 x i8] zeroinitializer }, align 32
@inv_icm42600_core_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@inv_icm42600_core_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 597, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to retrieve mounting matrix %d\0A\00", [57 x i8] zeroinitializer }, align 32
@inv_icm42600_core_probe._entry_ptr.12 = internal global ptr @inv_icm42600_core_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_inv_icm42600_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_inv_icm42600_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_inv_icm42600_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inv_icm42600_core_probe to i32), ptr @__kstrtab_inv_icm42600_core_probe, ptr @__kstrtabns_inv_icm42600_core_probe }, section "___ksymtab_gpl+inv_icm42600_core_probe", align 4
@inv_icm42600_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @inv_icm42600_suspend, ptr @inv_icm42600_resume, ptr @inv_icm42600_suspend, ptr @inv_icm42600_resume, ptr @inv_icm42600_suspend, ptr @inv_icm42600_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @inv_icm42600_runtime_suspend, ptr @inv_icm42600_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_inv_icm42600_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_inv_icm42600_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_inv_icm42600_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inv_icm42600_pm_ops to i32), ptr @__kstrtab_inv_icm42600_pm_ops, ptr @__kstrtabns_inv_icm42600_pm_ops }, section "___ksymtab_gpl+inv_icm42600_pm_ops", align 4
@__UNIQUE_ID_author389 = internal constant [37 x i8] c"inv_icm42600.author=InvenSense, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description390 = internal constant [60 x i8] c"inv_icm42600.description=InvenSense ICM-426xx device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file391 = internal constant [60 x i8] c"inv_icm42600.file=drivers/iio/imu/inv_icm42600/inv-icm42600\00", section ".modinfo", align 1
@__UNIQUE_ID_license392 = internal constant [25 x i8] c"inv_icm42600.license=GPL\00", section ".modinfo", align 1
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"user banks\00", [21 x i8] zeroinitializer }, align 32
@inv_icm42600_disable_vdd_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 536, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to disable vdd error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"inv_icm42600_disable_vdd_reg\00", [35 x i8] zeroinitializer }, align 32
@inv_icm42600_disable_vdd_reg._entry_ptr = internal global ptr @inv_icm42600_disable_vdd_reg._entry, section ".printk_index", align 4
@inv_icm42600_disable_vddio_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 547, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to disable vddio error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"inv_icm42600_disable_vddio_reg\00", [33 x i8] zeroinitializer }, align 32
@inv_icm42600_disable_vddio_reg._entry_ptr = internal global ptr @inv_icm42600_disable_vddio_reg._entry, section ".printk_index", align 4
@inv_icm42600_hw = internal constant { [4 x %struct.inv_icm42600_hw], [48 x i8] } { [4 x %struct.inv_icm42600_hw] [%struct.inv_icm42600_hw { i8 64, ptr @.str.25, ptr @inv_icm42600_default_conf }, %struct.inv_icm42600_hw { i8 65, ptr @.str.26, ptr @inv_icm42600_default_conf }, %struct.inv_icm42600_hw { i8 66, ptr @.str.27, ptr @inv_icm42600_default_conf }, %struct.inv_icm42600_hw { i8 70, ptr @.str.28, ptr @inv_icm42600_default_conf }], [48 x i8] zeroinitializer }, align 32
@inv_icm42600_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 381, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"invalid whoami %#02x expected %#02x (%s)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"inv_icm42600_setup\00", [45 x i8] zeroinitializer }, align 32
@inv_icm42600_setup._entry_ptr = internal global ptr @inv_icm42600_setup._entry, section ".printk_index", align 4
@inv_icm42600_setup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 397, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reset error, reset done bit not set\0A\00", [59 x i8] zeroinitializer }, align 32
@inv_icm42600_setup._entry_ptr.24 = internal global ptr @inv_icm42600_setup._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"icm42600\00", [23 x i8] zeroinitializer }, align 32
@inv_icm42600_default_conf = internal constant { %struct.inv_icm42600_conf, [60 x i8] } { %struct.inv_icm42600_conf { %struct.inv_icm42600_sensor_conf { i32 0, i32 0, i32 9, i32 0 }, %struct.inv_icm42600_sensor_conf { i32 0, i32 0, i32 9, i32 0 }, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"icm42602\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"icm42605\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"icm42622\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inv_icm42600\00", [19 x i8] zeroinitializer }, align 32
@inv_icm42600_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 441, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FIFO full data lost!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"inv_icm42600_irq_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@inv_icm42600_irq_handler._entry_ptr = internal global ptr @inv_icm42600_irq_handler._entry, section ".printk_index", align 4
@inv_icm42600_irq_handler._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.2, i32 447, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FIFO read error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@inv_icm42600_irq_handler._entry_ptr.35 = internal global ptr @inv_icm42600_irq_handler._entry.33, section ".printk_index", align 4
@inv_icm42600_irq_handler._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.31, ptr @.str.2, i32 452, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FIFO parsing error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@inv_icm42600_irq_handler._entry_ptr.38 = internal global ptr @inv_icm42600_irq_handler._entry.36, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"inv_icm42600_regmap_ranges\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 24, i32 38 }
@___asan_gen_.42 = private unnamed_addr constant [27 x i8] c"inv_icm42600_regmap_config\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 37, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"odr_periods\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 103, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 569, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 576, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 584, i32 46 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 591, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 597, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 601, i32 43 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 605, i32 45 }
@___asan_gen_.93 = private unnamed_addr constant [20 x i8] c"inv_icm42600_pm_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 777, i32 25 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 26, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 536, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 547, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"inv_icm42600_hw\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 69, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 380, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 397, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 72, i32 11 }
@___asan_gen_.138 = private unnamed_addr constant [26 x i8] c"inv_icm42600_default_conf\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 53, i32 39 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 77, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 82, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 87, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 511, i32 7 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 441, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 447, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [52 x i8] c"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 452, i32 4 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author389, ptr @__UNIQUE_ID_description390, ptr @__UNIQUE_ID_file391, ptr @__UNIQUE_ID_license392, ptr @__ksymtab_inv_icm42600_core_probe, ptr @__ksymtab_inv_icm42600_pm_ops, ptr @__ksymtab_inv_icm42600_regmap_config, ptr @inv_icm42600_core_probe._entry, ptr @inv_icm42600_core_probe._entry.10, ptr @inv_icm42600_core_probe._entry.5, ptr @inv_icm42600_core_probe._entry_ptr, ptr @inv_icm42600_core_probe._entry_ptr.12, ptr @inv_icm42600_core_probe._entry_ptr.7, ptr @inv_icm42600_disable_vdd_reg._entry, ptr @inv_icm42600_disable_vdd_reg._entry_ptr, ptr @inv_icm42600_disable_vddio_reg._entry, ptr @inv_icm42600_disable_vddio_reg._entry_ptr, ptr @inv_icm42600_irq_handler._entry, ptr @inv_icm42600_irq_handler._entry.33, ptr @inv_icm42600_irq_handler._entry.36, ptr @inv_icm42600_irq_handler._entry_ptr, ptr @inv_icm42600_irq_handler._entry_ptr.35, ptr @inv_icm42600_irq_handler._entry_ptr.38, ptr @inv_icm42600_setup._entry, ptr @inv_icm42600_setup._entry.22, ptr @inv_icm42600_setup._entry_ptr, ptr @inv_icm42600_setup._entry_ptr.24, ptr @inv_icm42600_regmap_ranges, ptr @inv_icm42600_regmap_config, ptr @inv_icm42600_odr_to_period.odr_periods, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @inv_icm42600_core_probe.__key, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @inv_icm42600_pm_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @inv_icm42600_hw, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @inv_icm42600_default_conf, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_regmap_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_odr_to_period.odr_periods to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_core_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_core_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_core_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_disable_vdd_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_disable_vddio_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_hw to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_setup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_default_conf to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_irq_handler._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_irq_handler._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @inv_icm42600_get_mount_matrix(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %orientation = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 6
  ret ptr %orientation
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @inv_icm42600_odr_to_period(i32 noundef %odr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [16 x i32], ptr @inv_icm42600_odr_to_period.odr_periods, i32 0, i32 %odr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_icm42600_set_accel_conf(ptr nocapture noundef %st, ptr nocapture noundef %conf, ptr noundef %sleep_ms) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conf1 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %accel, align 4
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %conf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fs = getelementptr inbounds %struct.inv_icm42600_sensor_conf, ptr %conf, i32 0, i32 1
  %5 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fs6 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1, i32 1
  %7 = ptrtoint ptr %fs6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fs6, align 4
  %9 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fs, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %odr = getelementptr inbounds %struct.inv_icm42600_sensor_conf, ptr %conf, i32 0, i32 2
  %10 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %odr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9 = icmp slt i32 %11, 0
  br i1 %cmp9, label %if.then10, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %odr11 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1, i32 2
  %12 = ptrtoint ptr %odr11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %odr11, align 4
  %14 = ptrtoint ptr %odr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %odr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %filter = getelementptr inbounds %struct.inv_icm42600_sensor_conf, ptr %conf, i32 0, i32 3
  %15 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp14 = icmp slt i32 %16, 0
  br i1 %cmp14, label %if.then15, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %filter16 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1, i32 3
  %17 = ptrtoint ptr %filter16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %filter16, align 4
  %19 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %filter, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %20 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fs, align 4
  %fs20 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1, i32 1
  %22 = ptrtoint ptr %fs20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fs20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp21.not = icmp eq i32 %21, %23
  br i1 %cmp21.not, label %lor.lhs.false, label %if.end18.do.end66_crit_edge

if.end18.do.end66_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

lor.lhs.false:                                    ; preds = %if.end18
  %24 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %odr, align 4
  %odr23 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1, i32 2
  %26 = ptrtoint ptr %odr23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %odr23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp24.not = icmp eq i32 %25, %27
  br i1 %cmp24.not, label %lor.lhs.false.if.end78_crit_edge, label %lor.lhs.false.do.end66_crit_edge

lor.lhs.false.do.end66_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

lor.lhs.false.if.end78_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end66:                                         ; preds = %lor.lhs.false.do.end66_crit_edge, %if.end18.do.end66_crit_edge
  %28 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %odr, align 4
  %shl = shl i32 %21, 5
  %and43 = and i32 %shl, 224
  %and70 = and i32 %29, 15
  %or = or i32 %and70, %and43
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 3
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 80, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool71.not = icmp eq i32 %call, 0
  br i1 %tobool71.not, label %if.end73, label %do.end66.cleanup_crit_edge

do.end66.cleanup_crit_edge:                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end73:                                         ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fs, align 4
  %34 = ptrtoint ptr %fs20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fs20, align 4
  %35 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %odr, align 4
  %odr77 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1, i32 2
  %37 = ptrtoint ptr %odr77 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %odr77, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.end73, %lor.lhs.false.if.end78_crit_edge
  %38 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %filter, align 4
  %filter80 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1, i32 3
  %40 = ptrtoint ptr %filter80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %filter80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp81.not = icmp eq i32 %39, %41
  br i1 %cmp81.not, label %if.end78.if.end150_crit_edge, label %do.end135

if.end78.if.end150_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150

do.end135:                                        ; preds = %if.end78
  %filter118 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 0, i32 3
  %42 = ptrtoint ptr %filter118 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %filter118, align 4
  %shl108 = shl i32 %39, 4
  %and109 = and i32 %shl108, 240
  %and141 = and i32 %43, 15
  %or142 = or i32 %and141, %and109
  %map143 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 3
  %44 = ptrtoint ptr %map143 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map143, align 4
  %call144 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 82, i32 noundef %or142) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %do.end135.cleanup_crit_edge

do.end135.cleanup_crit_edge:                      ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end147:                                        ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %filter, align 4
  %48 = ptrtoint ptr %filter80 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %filter80, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.end147, %if.end78.if.end150_crit_edge
  %49 = ptrtoint ptr %conf1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %conf1, align 4
  %51 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %conf, align 4
  %temp_en = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 2
  %53 = ptrtoint ptr %temp_en to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %temp_en, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool156 = icmp ne i8 %54, 0
  %call157 = tail call fastcc i32 @inv_icm42600_set_pwr_mgmt0(ptr noundef %st, i32 noundef %50, i32 noundef %52, i1 noundef zeroext %tobool156, ptr noundef %sleep_ms)
  br label %cleanup

cleanup:                                          ; preds = %if.end150, %do.end135.cleanup_crit_edge, %do.end66.cleanup_crit_edge
  %retval.0 = phi i32 [ %call157, %if.end150 ], [ %call, %do.end66.cleanup_crit_edge ], [ %call144, %do.end135.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inv_icm42600_set_pwr_mgmt0(ptr nocapture noundef %st, i32 noundef %gyro, i32 noundef %accel, i1 noundef zeroext %temp, ptr noundef writeonly %sleep_ms) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %temp to i8
  %conf = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf, align 4
  %accel3 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %accel3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %accel3, align 4
  %temp_en = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %temp_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %temp_en, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %gyro)
  %cmp = icmp eq i32 %1, %gyro
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %accel)
  %cmp7 = icmp eq i32 %3, %accel
  %or.cond = select i1 %cmp, i1 %cmp7, i1 false
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %frombool)
  %cmp12 = icmp eq i8 %5, %frombool
  %or.cond162 = select i1 %or.cond, i1 %cmp12, i1 false
  br i1 %or.cond162, label %entry.cleanup_crit_edge, label %do.end50

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end50:                                         ; preds = %entry
  %shl = shl i32 %gyro, 2
  %and29 = and i32 %shl, 12
  %and53 = and i32 %accel, 3
  %or = or i32 %and29, %and53
  %or56 = or i32 %or, 32
  %spec.select = select i1 %temp, i32 %or, i32 %or56
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 3
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 78, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool58.not = icmp eq i32 %call, 0
  br i1 %tobool58.not, label %if.end60, label %do.end50.cleanup_crit_edge

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %do.end50
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %gyro, ptr %conf, align 4
  %9 = ptrtoint ptr %accel3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %accel, ptr %accel3, align 4
  %10 = ptrtoint ptr %temp_en to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %temp_en, align 4
  %11 = select i1 %temp, i1 %tobool.not, i1 false
  %sleepval.0 = select i1 %11, i32 14, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp84 = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %accel)
  %12 = icmp ne i32 %accel, 0
  %13 = and i1 %12, %cmp84
  br i1 %13, label %if.then86, label %if.end60.if.end91_crit_edge

if.end60.if.end91_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then86:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #7
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.end60.if.end91_crit_edge
  %sleepval.1 = phi i32 [ 20, %if.then86 ], [ %sleepval.0, %if.end60.if.end91_crit_edge ]
  br i1 %cmp, label %if.end91.if.end111_crit_edge, label %if.then94

if.end91.if.end111_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp95 = icmp eq i32 %1, 0
  br i1 %cmp95, label %if.end111.thread, label %if.else

if.else:                                          ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gyro)
  %cmp102 = icmp eq i32 %gyro, 0
  %spec.select168 = select i1 %cmp102, i32 150, i32 %sleepval.1
  br label %if.end111

if.end111:                                        ; preds = %if.else, %if.end91.if.end111_crit_edge
  %sleepval.2 = phi i32 [ %sleepval.1, %if.end91.if.end111_crit_edge ], [ %spec.select168, %if.else ]
  %tobool112.not = icmp eq ptr %sleep_ms, null
  br i1 %tobool112.not, label %if.else114, label %if.end111.if.then113_crit_edge

if.end111.if.then113_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then113

if.end111.thread:                                 ; preds = %if.then94
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #7
  %tobool112.not170 = icmp eq ptr %sleep_ms, null
  br i1 %tobool112.not170, label %if.end111.thread.if.then116_crit_edge, label %if.end111.thread.if.then113_crit_edge

if.end111.thread.if.then113_crit_edge:            ; preds = %if.end111.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then113

if.end111.thread.if.then116_crit_edge:            ; preds = %if.end111.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

if.then113:                                       ; preds = %if.end111.thread.if.then113_crit_edge, %if.end111.if.then113_crit_edge
  %sleepval.2171 = phi i32 [ 60, %if.end111.thread.if.then113_crit_edge ], [ %sleepval.2, %if.end111.if.then113_crit_edge ]
  %14 = ptrtoint ptr %sleep_ms to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sleepval.2171, ptr %sleep_ms, align 4
  br label %cleanup

if.else114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sleepval.2)
  %tobool115.not = icmp eq i32 %sleepval.2, 0
  br i1 %tobool115.not, label %if.else114.cleanup_crit_edge, label %if.else114.if.then116_crit_edge

if.else114.if.then116_crit_edge:                  ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

if.else114.cleanup_crit_edge:                     ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then116:                                       ; preds = %if.else114.if.then116_crit_edge, %if.end111.thread.if.then116_crit_edge
  %sleepval.2172175 = phi i32 [ %sleepval.2, %if.else114.if.then116_crit_edge ], [ 60, %if.end111.thread.if.then116_crit_edge ]
  tail call void @msleep(i32 noundef %sleepval.2172175) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then116, %if.else114.cleanup_crit_edge, %if.then113, %do.end50.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %do.end50.cleanup_crit_edge ], [ 0, %if.else114.cleanup_crit_edge ], [ 0, %if.then116 ], [ 0, %if.then113 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_icm42600_set_gyro_conf(ptr nocapture noundef %st, ptr nocapture noundef %conf, ptr noundef %sleep_ms) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conf1 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7
  %2 = ptrtoint ptr %conf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf1, align 4
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %conf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fs = getelementptr inbounds %struct.inv_icm42600_sensor_conf, ptr %conf, i32 0, i32 1
  %5 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fs6 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 0, i32 1
  %7 = ptrtoint ptr %fs6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fs6, align 4
  %9 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fs, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %odr = getelementptr inbounds %struct.inv_icm42600_sensor_conf, ptr %conf, i32 0, i32 2
  %10 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %odr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9 = icmp slt i32 %11, 0
  br i1 %cmp9, label %if.then10, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %odr11 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 0, i32 2
  %12 = ptrtoint ptr %odr11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %odr11, align 4
  %14 = ptrtoint ptr %odr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %odr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %filter = getelementptr inbounds %struct.inv_icm42600_sensor_conf, ptr %conf, i32 0, i32 3
  %15 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp14 = icmp slt i32 %16, 0
  br i1 %cmp14, label %if.then15, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %filter16 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 0, i32 3
  %17 = ptrtoint ptr %filter16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %filter16, align 4
  %19 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %filter, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %20 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fs, align 4
  %fs20 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 0, i32 1
  %22 = ptrtoint ptr %fs20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fs20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp21.not = icmp eq i32 %21, %23
  br i1 %cmp21.not, label %lor.lhs.false, label %if.end18.do.end66_crit_edge

if.end18.do.end66_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

lor.lhs.false:                                    ; preds = %if.end18
  %24 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %odr, align 4
  %odr23 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 0, i32 2
  %26 = ptrtoint ptr %odr23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %odr23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp24.not = icmp eq i32 %25, %27
  br i1 %cmp24.not, label %lor.lhs.false.if.end78_crit_edge, label %lor.lhs.false.do.end66_crit_edge

lor.lhs.false.do.end66_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

lor.lhs.false.if.end78_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end66:                                         ; preds = %lor.lhs.false.do.end66_crit_edge, %if.end18.do.end66_crit_edge
  %28 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %odr, align 4
  %shl = shl i32 %21, 5
  %and43 = and i32 %shl, 224
  %and70 = and i32 %29, 15
  %or = or i32 %and70, %and43
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 3
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 79, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool71.not = icmp eq i32 %call, 0
  br i1 %tobool71.not, label %if.end73, label %do.end66.cleanup_crit_edge

do.end66.cleanup_crit_edge:                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end73:                                         ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fs, align 4
  %34 = ptrtoint ptr %fs20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fs20, align 4
  %35 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %odr, align 4
  %odr77 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 0, i32 2
  %37 = ptrtoint ptr %odr77 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %odr77, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.end73, %lor.lhs.false.if.end78_crit_edge
  %38 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %filter, align 4
  %filter80 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 0, i32 3
  %40 = ptrtoint ptr %filter80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %filter80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp81.not = icmp eq i32 %39, %41
  br i1 %cmp81.not, label %if.end78.if.end150_crit_edge, label %do.body89

if.end78.if.end150_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150

do.body89:                                        ; preds = %if.end78
  %filter91 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1, i32 3
  %42 = ptrtoint ptr %filter91 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %filter91, align 4
  %shl113 = shl i32 %43, 4
  %and114 = and i32 %shl113, 240
  %and141 = and i32 %39, 15
  %or142 = or i32 %and114, %and141
  %map143 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 3
  %44 = ptrtoint ptr %map143 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map143, align 4
  %call144 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 82, i32 noundef %or142) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %do.body89.cleanup_crit_edge

do.body89.cleanup_crit_edge:                      ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end147:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %filter, align 4
  %48 = ptrtoint ptr %filter80 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %filter80, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.end147, %if.end78.if.end150_crit_edge
  %49 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %conf, align 4
  %accel153 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %accel153 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %accel153, align 4
  %temp_en = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 2
  %53 = ptrtoint ptr %temp_en to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %temp_en, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool156 = icmp ne i8 %54, 0
  %call157 = tail call fastcc i32 @inv_icm42600_set_pwr_mgmt0(ptr noundef %st, i32 noundef %50, i32 noundef %52, i1 noundef zeroext %tobool156, ptr noundef %sleep_ms)
  br label %cleanup

cleanup:                                          ; preds = %if.end150, %do.body89.cleanup_crit_edge, %do.end66.cleanup_crit_edge
  %retval.0 = phi i32 [ %call157, %if.end150 ], [ %call, %do.end66.cleanup_crit_edge ], [ %call144, %do.body89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_icm42600_set_temp_conf(ptr nocapture noundef %st, i1 noundef zeroext %enable, ptr noundef %sleep_ms) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conf = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf, align 4
  %accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %accel, align 4
  %call = tail call fastcc i32 @inv_icm42600_set_pwr_mgmt0(ptr noundef %st, i32 noundef %1, i32 noundef %3, i1 noundef zeroext %enable, ptr noundef %sleep_ms)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_icm42600_debugfs_reg(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef %readval) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %readval, null
  %map2 = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef %reg, ptr noundef nonnull %readval) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %reg, i32 noundef %writeval) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call3, %if.else ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_icm42600_core_probe(ptr noundef %regmap, i32 noundef %chip, i32 noundef %irq, ptr nocapture noundef readonly %bus_setup) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @regmap_get_device(ptr noundef %regmap) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chip)
  %0 = icmp ugt i32 %chip, 3
  br i1 %0, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str, i32 noundef %chip) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @irq_get_irq_data(i32 noundef %irq) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.6, i32 noundef %irq) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call2, i32 0, i32 3
  %1 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %common.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and.i = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not = icmp eq i32 %and.i, 0
  %spec.store.select = select i1 %tobool9.not, i32 2, i32 %and.i
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %call, ptr noundef nonnull @.str.8) #7
  %call.i174 = tail call noalias ptr @devm_kmalloc(ptr noundef %call, i32 noundef 2816, i32 noundef 3520) #7
  %tobool14.not = icmp eq ptr %call.i174, null
  br i1 %tobool14.not, label %if.end7.cleanup_crit_edge, label %if.end16

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i174, ptr %driver_data.i, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i174, ptr noundef nonnull @.str.9, ptr noundef nonnull @inv_icm42600_core_probe.__key) #7
  %chip20 = getelementptr inbounds %struct.inv_icm42600_state, ptr %call.i174, i32 0, i32 1
  %6 = ptrtoint ptr %chip20 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %chip, ptr %chip20, align 4
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %call.i174, i32 0, i32 3
  %7 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %regmap, ptr %map, align 4
  %orientation = getelementptr inbounds %struct.inv_icm42600_state, ptr %call.i174, i32 0, i32 6
  %call21 = tail call i32 @iio_read_mount_matrix(ptr noundef %call, ptr noundef %orientation) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end27, label %do.end26

do.end26:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.11, i32 noundef %call21) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %call28 = tail call ptr @devm_regulator_get(ptr noundef %call, ptr noundef nonnull @.str.13) #7
  %vdd_supply = getelementptr inbounds %struct.inv_icm42600_state, ptr %call.i174, i32 0, i32 4
  %8 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call28, ptr %vdd_supply, align 8
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %call35 = tail call ptr @devm_regulator_get(ptr noundef %call, ptr noundef nonnull @.str.14) #7
  %vddio_supply = getelementptr inbounds %struct.inv_icm42600_state, ptr %call.i174, i32 0, i32 5
  %10 = ptrtoint ptr %vddio_supply to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call35, ptr %vddio_supply, align 4
  %cmp.i175 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %12 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdd_supply, align 8
  %call43 = tail call i32 @regulator_enable(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  tail call void @msleep(i32 noundef 100) #7
  %call.i176 = tail call i32 @devm_add_action(ptr noundef %call, ptr noundef nonnull @inv_icm42600_disable_vdd_reg, ptr noundef nonnull %call.i174) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool.not.i = icmp eq i32 %call.i176, 0
  br i1 %tobool.not.i, label %if.end50, label %if.then.i

if.then.i:                                        ; preds = %if.end46
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 4
  %call.i189 = tail call ptr @regmap_get_device(ptr noundef %15) #7
  %16 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdd_supply, align 8
  %call1.i = tail call i32 @regulator_disable(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i190 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i190, label %if.then.i.cleanup_crit_edge, label %do.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i189, ptr noundef nonnull @.str.16, i32 noundef %call1.i) #10
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %call51 = tail call fastcc i32 @inv_icm42600_enable_regulator_vddio(ptr noundef nonnull %call.i174)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %call.i177 = tail call i32 @devm_add_action(ptr noundef %call, ptr noundef nonnull @inv_icm42600_disable_vddio_reg, ptr noundef nonnull %call.i174) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool.not.i178 = icmp eq i32 %call.i177, 0
  br i1 %tobool.not.i178, label %if.end58, label %devm_add_action_or_reset.exit180

devm_add_action_or_reset.exit180:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @inv_icm42600_disable_vddio_reg(ptr noundef nonnull %call.i174) #7, !callees !105
  br label %cleanup

if.end58:                                         ; preds = %if.end54
  %call59 = tail call fastcc i32 @inv_icm42600_setup(ptr noundef nonnull %call.i174, ptr noundef %bus_setup)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %call63 = tail call i32 @inv_icm42600_timestamp_setup(ptr noundef nonnull %call.i174) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  %call67 = tail call i32 @inv_icm42600_buffer_init(ptr noundef nonnull %call.i174) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  %call71 = tail call ptr @inv_icm42600_gyro_init(ptr noundef nonnull %call.i174) #7
  %indio_gyro = getelementptr inbounds %struct.inv_icm42600_state, ptr %call.i174, i32 0, i32 9
  %18 = ptrtoint ptr %indio_gyro to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call71, ptr %indio_gyro, align 4
  %cmp.i181 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call71 to i32
  br label %cleanup

if.end77:                                         ; preds = %if.end70
  %call78 = tail call ptr @inv_icm42600_accel_init(ptr noundef nonnull %call.i174) #7
  %indio_accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %call.i174, i32 0, i32 10
  %20 = ptrtoint ptr %indio_accel to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call78, ptr %indio_accel, align 8
  %cmp.i182 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %if.then81, label %if.end84

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call78 to i32
  br label %cleanup

if.end84:                                         ; preds = %if.end77
  %call86 = tail call fastcc i32 @inv_icm42600_irq_init(ptr noundef nonnull %call.i174, i32 noundef %irq, i32 noundef %spec.store.select, i1 noundef zeroext %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end89:                                         ; preds = %if.end84
  %call.i183 = tail call i32 @__pm_runtime_set_status(ptr noundef %call, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool91.not = icmp eq i32 %call.i183, 0
  br i1 %tobool91.not, label %if.end93, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93:                                         ; preds = %if.end89
  %usage_count.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !106
  tail call void @pm_runtime_enable(ptr noundef %call) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %call, i32 noundef 2000) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %call, i1 noundef zeroext true) #7
  %call.i184 = tail call i32 @__pm_runtime_idle(ptr noundef %call, i32 noundef 5) #7
  %call.i185 = tail call i32 @devm_add_action(ptr noundef %call, ptr noundef nonnull @inv_icm42600_disable_pm, ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool.not.i186 = icmp eq i32 %call.i185, 0
  br i1 %tobool.not.i186, label %if.end93.cleanup_crit_edge, label %if.then.i187

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i187:                                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @inv_icm42600_disable_pm(ptr noundef %call) #7, !callees !105
  br label %cleanup

cleanup:                                          ; preds = %if.then.i187, %if.end93.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.then81, %if.then74, %if.end66.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %devm_add_action_or_reset.exit180, %if.end50.cleanup_crit_edge, %do.end.i, %if.then.i.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then38, %if.then31, %do.end26, %if.end7.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call21, %do.end26 ], [ %9, %if.then31 ], [ %11, %if.then38 ], [ %19, %if.then74 ], [ %21, %if.then81 ], [ -22, %do.end6 ], [ -12, %if.end7.cleanup_crit_edge ], [ %call43, %if.end41.cleanup_crit_edge ], [ %call51, %if.end50.cleanup_crit_edge ], [ %call.i177, %devm_add_action_or_reset.exit180 ], [ %call59, %if.end58.cleanup_crit_edge ], [ %call63, %if.end62.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ], [ %call86, %if.end84.cleanup_crit_edge ], [ %call.i183, %if.end89.cleanup_crit_edge ], [ 0, %if.end93.cleanup_crit_edge ], [ %call.i185, %if.then.i187 ], [ %call.i176, %do.end.i ], [ %call.i176, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inv_icm42600_disable_vdd_reg(ptr nocapture noundef readonly %_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %_data, i32 0, i32 3
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #7
  %vdd_supply = getelementptr inbounds %struct.inv_icm42600_state, ptr %_data, i32 0, i32 4
  %2 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd_supply, align 8
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.16, i32 noundef %call1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inv_icm42600_enable_regulator_vddio(ptr nocapture noundef readonly %st) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vddio_supply = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 5
  %0 = ptrtoint ptr %vddio_supply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vddio_supply, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inv_icm42600_disable_vddio_reg(ptr nocapture noundef readonly %_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %_data, i32 0, i32 3
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #7
  %vddio_supply = getelementptr inbounds %struct.inv_icm42600_state, ptr %_data, i32 0, i32 5
  %2 = ptrtoint ptr %vddio_supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vddio_supply, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.18, i32 noundef %call1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inv_icm42600_setup(ptr noundef %st, ptr nocapture noundef readonly %bus_setup) unnamed_addr #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 4
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 3
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !107
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef 117, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [4 x %struct.inv_icm42600_hw], ptr @inv_icm42600_hw, i32 0, i32 %1
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp.not = icmp eq i32 %8, %conv
  %name8 = getelementptr [4 x %struct.inv_icm42600_hw], ptr @inv_icm42600_hw, i32 0, i32 %1, i32 1
  %11 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name8, align 4
  br i1 %cmp.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.20, i32 noundef %8, i32 noundef %conv, ptr noundef %12) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %name9 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 2
  %13 = ptrtoint ptr %name9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %name9, align 32
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 4
  %call11 = call i32 @regmap_write(ptr noundef %15, i32 noundef 17, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @msleep(i32 noundef 1) #7
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 4
  %call16 = call i32 @regmap_read(ptr noundef %17, i32 noundef 45, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %and = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %call26 = call i32 %bus_setup(ptr noundef %st) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 76, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %conf = getelementptr [4 x %struct.inv_icm42600_hw], ptr @inv_icm42600_hw, i32 0, i32 %1, i32 2
  %22 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %conf, align 4
  %call35 = call fastcc i32 @inv_icm42600_set_conf(ptr noundef %st, ptr noundef %23)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end24, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call35, %if.end34 ], [ -19, %do.end24 ], [ %call2, %entry.cleanup_crit_edge ], [ %call11, %if.end7.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call.i, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_timestamp_setup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_buffer_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inv_icm42600_gyro_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inv_icm42600_accel_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inv_icm42600_irq_init(ptr noundef %st, i32 noundef %irq, i32 noundef %irq_type, i1 noundef zeroext %open_drain) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 3
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %irq_type)
  %switch.selectcmp.case1 = icmp eq i32 %irq_type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %irq_type)
  %switch.selectcmp.case2 = icmp eq i32 %irq_type, 4
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %2 = zext i1 %switch.selectcmp to i32
  %3 = zext i32 %irq_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %irq_type, label %entry.sw.epilog3_crit_edge [
    i32 8, label %entry.sw.bb1_crit_edge
    i32 4, label %entry.sw.bb1_crit_edge28
  ]

entry.sw.bb1_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.epilog3_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge28
  %or = or i32 %2, 4
  br label %sw.epilog3

sw.epilog3:                                       ; preds = %sw.bb1, %entry.sw.epilog3_crit_edge
  %val.1 = phi i32 [ %2, %entry.sw.epilog3_crit_edge ], [ %or, %sw.bb1 ]
  %or4 = or i32 %val.1, 2
  %spec.select = select i1 %open_drain, i32 %val.1, i32 %or4
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 20, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %sw.epilog3.cleanup_crit_edge

sw.epilog3.cleanup_crit_edge:                     ; preds = %sw.epilog3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog3
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 100, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 @devm_request_threaded_irq(ptr noundef %call, i32 noundef %irq, ptr noundef nonnull @inv_icm42600_irq_timestamp, ptr noundef nonnull @inv_icm42600_irq_handler, i32 noundef %irq_type, ptr noundef nonnull @.str.29, ptr noundef %st) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %sw.epilog3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ %call6, %sw.epilog3.cleanup_crit_edge ], [ %call.i, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inv_icm42600_disable_pm(ptr noundef %_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %_data, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %_data, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %conf = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf, align 4
  %suspended = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %suspended, align 8
  %accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %accel, align 4
  %accel5 = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %accel5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %accel5, align 4
  %temp_en = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %temp_en to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %temp_en, align 4, !range !104
  %temp = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %temp, align 8
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %11 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %13 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.out_unlock_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pm_runtime_suspended.exit.out_unlock_crit_edge:   ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %fifo = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fifo, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %if.end.if.end27_crit_edge, label %if.then10

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then10:                                        ; preds = %if.end
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 4
  %call23 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 22, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then10.if.end27_crit_edge, label %if.then10.out_unlock_crit_edge

if.then10.out_unlock_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.then10.if.end27_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27:                                         ; preds = %if.then10.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %18 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %conf, align 4
  %20 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %accel, align 4
  %22 = ptrtoint ptr %temp_en to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %temp_en, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i49 = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp7.i = icmp eq i32 %21, 0
  %or.cond.i = select i1 %cmp.i49, i1 %cmp7.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp12.i = icmp eq i8 %23, 0
  %or.cond162.i = select i1 %or.cond.i, i1 %cmp12.i, i1 false
  br i1 %or.cond162.i, label %if.end27.if.end31_crit_edge, label %do.body17.i

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.body17.i:                                      ; preds = %if.end27
  %map.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 78, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool58.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %do.body17.i.out_unlock_crit_edge

do.body17.i.out_unlock_crit_edge:                 ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end60.i:                                       ; preds = %do.body17.i
  %26 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %conf, align 4
  %27 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %accel, align 4
  %28 = ptrtoint ptr %temp_en to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %temp_en, align 4
  br i1 %cmp.i49, label %if.end60.i.if.end31_crit_edge, label %if.then116.i

if.end60.i.if.end31_crit_edge:                    ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then116.i:                                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 150) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then116.i, %if.end60.i.if.end31_crit_edge, %if.end27.if.end31_crit_edge
  %vddio_supply = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %vddio_supply to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vddio_supply, align 4
  %call32 = tail call i32 @regulator_disable(ptr noundef %30) #7
  br label %out_unlock

out_unlock:                                       ; preds = %if.end31, %do.body17.i.out_unlock_crit_edge, %if.then10.out_unlock_crit_edge, %pm_runtime_suspended.exit.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call23, %if.then10.out_unlock_crit_edge ], [ 0, %if.end31 ], [ 0, %pm_runtime_suspended.exit.out_unlock_crit_edge ], [ %call.i, %do.body17.i.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %vddio_supply.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vddio_supply.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vddio_supply.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i40 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %suspended = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %suspended, align 8
  %accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %accel, align 4
  %temp = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %temp, align 8, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5 = icmp ne i8 %9, 0
  %call6 = tail call fastcc i32 @inv_icm42600_set_pwr_mgmt0(ptr noundef %1, i32 noundef %5, i32 noundef %7, i1 noundef zeroext %tobool5, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end9:                                          ; preds = %if.end
  %fifo = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifo, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.end9.out_unlock_crit_edge, label %if.then11

if.end9.out_unlock_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 22, i32 noundef 64) #7
  br label %out_unlock

out_unlock:                                       ; preds = %if.then11, %if.end9.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end.out_unlock_crit_edge ], [ %call24, %if.then11 ], [ 0, %if.end9.out_unlock_crit_edge ], [ %call.i, %entry.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_runtime_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %conf.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf.i, align 4
  %accel3.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %accel3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %accel3.i, align 4
  %temp_en.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %temp_en.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %temp_en.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.i = icmp eq i32 %5, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp7.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp12.i = icmp eq i8 %7, 0
  %or.cond162.i = select i1 %or.cond.i, i1 %cmp12.i, i1 false
  br i1 %or.cond162.i, label %entry.if.end_crit_edge, label %do.body17.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body17.i:                                      ; preds = %entry
  %map.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 78, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool58.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %do.body17.i.error_unlock_crit_edge

do.body17.i.error_unlock_crit_edge:               ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_unlock

if.end60.i:                                       ; preds = %do.body17.i
  %10 = ptrtoint ptr %conf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %conf.i, align 4
  %11 = ptrtoint ptr %accel3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %accel3.i, align 4
  %12 = ptrtoint ptr %temp_en.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %temp_en.i, align 4
  br i1 %cmp.i, label %if.end60.i.if.end_crit_edge, label %if.then116.i

if.end60.i.if.end_crit_edge:                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then116.i:                                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 150) #7
  br label %if.end

if.end:                                           ; preds = %if.then116.i, %if.end60.i.if.end_crit_edge, %entry.if.end_crit_edge
  %vddio_supply = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %vddio_supply to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vddio_supply, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %14) #7
  br label %error_unlock

error_unlock:                                     ; preds = %if.end, %do.body17.i.error_unlock_crit_edge
  %retval.0.i12 = phi i32 [ 0, %if.end ], [ %call.i, %do.body17.i.error_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  ret i32 %retval.0.i12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_runtime_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %vddio_supply.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vddio_supply.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vddio_supply.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.inv_icm42600_enable_regulator_vddio.exit_crit_edge

entry.inv_icm42600_enable_regulator_vddio.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %inv_icm42600_enable_regulator_vddio.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #7
  br label %inv_icm42600_enable_regulator_vddio.exit

inv_icm42600_enable_regulator_vddio.exit:         ; preds = %if.end.i, %entry.inv_icm42600_enable_regulator_vddio.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inv_icm42600_set_conf(ptr nocapture noundef %st, ptr nocapture noundef readonly %conf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf, align 4
  %accel = getelementptr inbounds %struct.inv_icm42600_conf, ptr %conf, i32 0, i32 1
  %2 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %accel, align 4
  %shl = shl i32 %1, 2
  %and17 = and i32 %shl, 12
  %and46 = and i32 %3, 3
  %or = or i32 %and46, %and17
  %temp_en = getelementptr inbounds %struct.inv_icm42600_conf, ptr %conf, i32 0, i32 2
  %4 = ptrtoint ptr %temp_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %temp_en, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool47.not = icmp eq i8 %5, 0
  %or49 = or i32 %or, 32
  %spec.select = select i1 %tobool47.not, i32 %or49, i32 %or
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 3
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 78, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool51.not = icmp eq i32 %call, 0
  br i1 %tobool51.not, label %do.body60, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body60:                                        ; preds = %entry
  %fs = getelementptr inbounds %struct.inv_icm42600_sensor_conf, ptr %conf, i32 0, i32 1
  %8 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fs, align 4
  %odr = getelementptr inbounds %struct.inv_icm42600_sensor_conf, ptr %conf, i32 0, i32 2
  %10 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %odr, align 4
  %shl81 = shl i32 %9, 5
  %and82 = and i32 %shl81, 224
  %and111 = and i32 %11, 15
  %or112 = or i32 %and111, %and82
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 4
  %call114 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 79, i32 noundef %or112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %do.body124, label %do.body60.cleanup_crit_edge

do.body60.cleanup_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body124:                                       ; preds = %do.body60
  %fs126 = getelementptr inbounds %struct.inv_icm42600_conf, ptr %conf, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %fs126 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fs126, align 4
  %odr156 = getelementptr inbounds %struct.inv_icm42600_conf, ptr %conf, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %odr156 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %odr156, align 4
  %shl146 = shl i32 %15, 5
  %and147 = and i32 %shl146, 224
  %and177 = and i32 %17, 15
  %or178 = or i32 %and177, %and147
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 4
  %call180 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 80, i32 noundef %or178) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %do.body190, label %do.body124.cleanup_crit_edge

do.body124.cleanup_crit_edge:                     ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body190:                                       ; preds = %do.body124
  %filter = getelementptr inbounds %struct.inv_icm42600_conf, ptr %conf, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %filter, align 4
  %filter221 = getelementptr inbounds %struct.inv_icm42600_sensor_conf, ptr %conf, i32 0, i32 3
  %22 = ptrtoint ptr %filter221 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %filter221, align 4
  %shl211 = shl i32 %21, 4
  %and212 = and i32 %shl211, 240
  %and242 = and i32 %23, 15
  %or243 = or i32 %and242, %and212
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 4
  %call245 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 82, i32 noundef %or243) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %if.end248, label %do.body190.cleanup_crit_edge

do.body190.cleanup_crit_edge:                     ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end248:                                        ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #9
  %conf249 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7
  %26 = call ptr @memcpy(ptr %conf249, ptr %conf, i32 36)
  br label %cleanup

cleanup:                                          ; preds = %if.end248, %do.body190.cleanup_crit_edge, %do.body124.cleanup_crit_edge, %do.body60.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end248 ], [ %call, %entry.cleanup_crit_edge ], [ %call114, %do.body60.cleanup_crit_edge ], [ %call180, %do.body124.cleanup_crit_edge ], [ %call245, %do.body190.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_irq_timestamp(i32 noundef %irq, ptr nocapture noundef %_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %indio_gyro = getelementptr inbounds %struct.inv_icm42600_state, ptr %_data, i32 0, i32 9
  %0 = ptrtoint ptr %indio_gyro to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indio_gyro, align 4
  %call = tail call i64 @iio_get_time_ns(ptr noundef %1) #7
  %timestamp = getelementptr inbounds %struct.inv_icm42600_state, ptr %_data, i32 0, i32 15
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call, ptr %timestamp, align 128
  %indio_accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %_data, i32 0, i32 10
  %3 = ptrtoint ptr %indio_accel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %indio_accel, align 8
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %4) #7
  %accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %_data, i32 0, i32 15, i32 1
  %5 = ptrtoint ptr %accel to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call1, ptr %accel, align 8
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_irq_handler(i32 noundef %irq, ptr noundef %_data) #3 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %_data, i32 0, i32 3
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !107
  tail call void @mutex_lock_nested(ptr noundef %_data, i32 noundef 0) #7
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef 45, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %call, ptr noundef nonnull @.str.30) #10
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %and6 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.out_unlock_crit_edge, label %if.then8

if.end5.out_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.then8:                                         ; preds = %if.end5
  %call9 = call i32 @inv_icm42600_buffer_fifo_read(ptr noundef %_data, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end15, label %do.end14

do.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.34, i32 noundef %call9) #10
  br label %out_unlock

if.end15:                                         ; preds = %if.then8
  %call16 = call i32 @inv_icm42600_buffer_fifo_parse(ptr noundef %_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.out_unlock_crit_edge, label %do.end21

if.end15.out_unlock_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.37, i32 noundef %call16) #10
  br label %out_unlock

out_unlock:                                       ; preds = %do.end21, %if.end15.out_unlock_crit_edge, %do.end14, %if.end5.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  call void @mutex_unlock(ptr noundef %_data) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_buffer_fifo_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_buffer_fifo_parse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !87, !89, !90, !91, !93, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @inv_icm42600_regmap_config, !1, !"inv_icm42600_regmap_config", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 37, i32 28}
!2 = !{ptr @__ksymtab_inv_icm42600_regmap_config, !3, !"__ksymtab_inv_icm42600_regmap_config", i1 false, i1 false}
!3 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 44, i32 1}
!4 = !{ptr @inv_icm42600_odr_to_period.odr_periods, !5, !"odr_periods", i1 false, i1 false}
!5 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 103, i32 18}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 569, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @inv_icm42600_core_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @inv_icm42600_core_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 576, i32 3}
!16 = !{ptr @inv_icm42600_core_probe._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @inv_icm42600_core_probe._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 584, i32 46}
!20 = !{ptr @inv_icm42600_core_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 591, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 597, i32 3}
!25 = !{ptr @inv_icm42600_core_probe._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @inv_icm42600_core_probe._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 601, i32 43}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 605, i32 45}
!31 = !{ptr @__ksymtab_inv_icm42600_core_probe, !32, !"__ksymtab_inv_icm42600_core_probe", i1 false, i1 false}
!32 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 663, i32 1}
!33 = !{ptr @inv_icm42600_pm_ops, !34, !"inv_icm42600_pm_ops", i1 false, i1 false}
!34 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 777, i32 25}
!35 = !{ptr @__ksymtab_inv_icm42600_pm_ops, !36, !"__ksymtab_inv_icm42600_pm_ops", i1 false, i1 false}
!36 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 782, i32 1}
!37 = !{ptr @__UNIQUE_ID_author389, !38, !"__UNIQUE_ID_author389", i1 false, i1 false}
!38 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 784, i32 1}
!39 = !{ptr @__UNIQUE_ID_description390, !40, !"__UNIQUE_ID_description390", i1 false, i1 false}
!40 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 785, i32 1}
!41 = !{ptr @__UNIQUE_ID_file391, !42, !"__UNIQUE_ID_file391", i1 false, i1 false}
!42 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 786, i32 1}
!43 = !{ptr @__UNIQUE_ID_license392, !42, !"__UNIQUE_ID_license392", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 26, i32 11}
!46 = !{ptr @inv_icm42600_regmap_ranges, !47, !"inv_icm42600_regmap_ranges", i1 false, i1 false}
!47 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 24, i32 38}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 536, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @inv_icm42600_disable_vdd_reg._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @inv_icm42600_disable_vdd_reg._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 547, i32 3}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @inv_icm42600_disable_vddio_reg._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @inv_icm42600_disable_vddio_reg._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 380, i32 3}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @inv_icm42600_setup._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @inv_icm42600_setup._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 397, i32 3}
!65 = !{ptr @inv_icm42600_setup._entry.22, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @inv_icm42600_setup._entry_ptr.24, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 72, i32 11}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 77, i32 11}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 82, i32 11}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 87, i32 11}
!75 = !{ptr @inv_icm42600_hw, !76, !"inv_icm42600_hw", i1 false, i1 false}
!76 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 69, i32 37}
!77 = !{ptr @inv_icm42600_default_conf, !78, !"inv_icm42600_default_conf", i1 false, i1 false}
!78 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 53, i32 39}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 511, i32 7}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 441, i32 3}
!83 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @inv_icm42600_irq_handler._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @inv_icm42600_irq_handler._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 447, i32 4}
!89 = !{ptr @inv_icm42600_irq_handler._entry.33, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @inv_icm42600_irq_handler._entry_ptr.35, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_core.c", i32 452, i32 4}
!93 = !{ptr @inv_icm42600_irq_handler._entry.36, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @inv_icm42600_irq_handler._entry_ptr.38, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i8 0, i8 2}
!105 = !{ptr @inv_icm42600_disable_pm, ptr @inv_icm42600_disable_vdd_reg, ptr @inv_icm42600_disable_vddio_reg}
!106 = !{i64 2148228126, i64 2148228152, i64 2148228181, i64 2148228215, i64 2148228246, i64 2148228269}
!107 = !{!"auto-init"}
