; ModuleID = '/llk/IR_all_yes/drivers/regulator/bd9571mwv-regulator.c_pt.bc'
source_filename = "../drivers/regulator/bd9571mwv-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.bd9571mwv_reg = type { ptr, i8, i8, i8, i8, i8 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_bd9571mwv_regulator__288_362_bd9571mwv_regulator_driver_init6 = internal global ptr @bd9571mwv_regulator_driver_init, section ".initcall6.init", align 4
@bd9571mwv_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bd9571mwv_regulator_probe, ptr @bd9571mwv_regulator_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd9571mwv_pm, ptr null, ptr null }, ptr @bd9571mwv_regulator_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bd9571mwv_regulator_driver_exit = internal global ptr @bd9571mwv_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [71 x i8] c"bd9571mwv_regulator.author=Marek Vasut <marek.vasut+renesas@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [59 x i8] c"bd9571mwv_regulator.description=BD9571MWV Regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [63 x i8] c"bd9571mwv_regulator.file=drivers/regulator/bd9571mwv-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [35 x i8] c"bd9571mwv_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd9571mwv-regulator\00", [44 x i8] zeroinitializer }, align 32
@bd9571mwv_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bd9571mwv_suspend, ptr @bd9571mwv_resume, ptr @bd9571mwv_suspend, ptr @bd9571mwv_resume, ptr @bd9571mwv_suspend, ptr @bd9571mwv_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bd9571mwv_regulator_id_table = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"bd9571mwv-regulator\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"bd9574mwf-regulator\00", i32 2 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@regulators = internal constant { [5 x %struct.regulator_desc], [316 x i8] } { [5 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.16, i8 0, ptr @.str.17, ptr null, i32 0, i8 0, i32 111, i32 0, ptr @avs_ops, i32 0, i32 0, ptr null, i32 600000, i32 10000, i32 60, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.19, i8 0, ptr @.str.17, ptr null, i32 1, i8 0, i32 16, i32 0, ptr @vid_ops, i32 0, i32 0, ptr null, i32 1625000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.21, i8 0, ptr @.str.17, ptr null, i32 2, i8 0, i32 16, i32 0, ptr @vid_ops, i32 0, i32 0, ptr null, i32 2150000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.23, i8 0, ptr @.str.17, ptr null, i32 3, i8 0, i32 11, i32 0, ptr @vid_ops, i32 0, i32 0, ptr null, i32 2800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 68, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.25, i8 0, ptr @.str.17, ptr null, i32 4, i8 0, i32 111, i32 0, ptr @reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 10000, i32 60, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 85, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [316 x i8] zeroinitializer }, align 32
@bd9571mwv_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bd9571mwv_regulator_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/regulator/bd9571mwv-regulator.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bd9571mwv_regulator_probe._entry_ptr = internal global ptr @bd9571mwv_regulator_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rohm,ddr-backup-power\00", [42 x i8] zeroinitializer }, align 32
@bd9571mwv_regulator_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid %s mode %u\0A\00", [44 x i8] zeroinitializer }, align 32
@bd9571mwv_regulator_probe._entry_ptr.9 = internal global ptr @bd9571mwv_regulator_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rohm,rstbmode-level\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rohm,rstbmode-pulse\00", [44 x i8] zeroinitializer }, align 32
@bd9571mwv_regulator_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"only one rohm,rstbmode-* may be specified\00", [54 x i8] zeroinitializer }, align 32
@bd9571mwv_regulator_probe._entry_ptr.14 = internal global ptr @bd9571mwv_regulator_probe._entry.12, section ".printk_index", align 4
@dev_attr_backup_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @backup_mode_show, ptr @backup_mode_store }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VD09\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vd09\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@avs_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @bd9571mwv_avs_set_voltage_sel_regmap, ptr null, ptr @bd9571mwv_avs_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VD18\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vd18\00", [27 x i8] zeroinitializer }, align 32
@vid_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr null, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VD25\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vd25\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VD33\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vd33\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVFS\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvfs\00", [27 x i8] zeroinitializer }, align 32
@reg_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @bd9571mwv_reg_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"backup_mode\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@bd9571mwv_bkup_mode_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to read backup mode (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bd9571mwv_bkup_mode_read\00", [39 x i8] zeroinitializer }, align 32
@bd9571mwv_bkup_mode_read._entry_ptr = internal global ptr @bd9571mwv_bkup_mode_read._entry, section ".printk_index", align 4
@bd9571mwv_bkup_mode_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 165, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to configure backup mode 0x%x (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bd9571mwv_bkup_mode_write\00", [38 x i8] zeroinitializer }, align 32
@bd9571mwv_bkup_mode_write._entry_ptr = internal global ptr @bd9571mwv_bkup_mode_write._entry, section ".printk_index", align 4
@___asan_gen_.34 = private unnamed_addr constant [27 x i8] c"bd9571mwv_regulator_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 353, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 355, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"bd9571mwv_pm\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 259, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant [29 x i8] c"bd9571mwv_regulator_id_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 346, i32 40 }
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 126, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 303, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 310, i32 44 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 312, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 319, i32 13 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 321, i32 13 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 323, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [21 x i8] c"dev_attr_backup_mode\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 127, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [8 x i8] c"avs_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 104, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 129, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [8 x i8] c"vid_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 120, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 131, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 133, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 135, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [8 x i8] c"reg_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 112, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 217, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 177, i32 25 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 177, i32 60 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 177, i32 67 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 148, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [43 x i8] c"../drivers/regulator/bd9571mwv-regulator.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 163, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_bd9571mwv_regulator_driver_exit, ptr @__initcall__kmod_bd9571mwv_regulator__288_362_bd9571mwv_regulator_driver_init6, ptr @bd9571mwv_bkup_mode_read._entry, ptr @bd9571mwv_bkup_mode_read._entry_ptr, ptr @bd9571mwv_bkup_mode_write._entry, ptr @bd9571mwv_bkup_mode_write._entry_ptr, ptr @bd9571mwv_regulator_driver_exit, ptr @bd9571mwv_regulator_probe._entry, ptr @bd9571mwv_regulator_probe._entry.12, ptr @bd9571mwv_regulator_probe._entry.7, ptr @bd9571mwv_regulator_probe._entry_ptr, ptr @bd9571mwv_regulator_probe._entry_ptr.14, ptr @bd9571mwv_regulator_probe._entry_ptr.9, ptr @bd9571mwv_regulator_driver, ptr @.str, ptr @bd9571mwv_pm, ptr @bd9571mwv_regulator_id_table, ptr @regulators, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @dev_attr_backup_mode, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @avs_ops, ptr @.str.18, ptr @.str.19, ptr @vid_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @reg_ops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9571mwv_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9571mwv_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9571mwv_regulator_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators to i32), i32 1220, i32 1536, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9571mwv_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9571mwv_regulator_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9571mwv_regulator_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_backup_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avs_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9571mwv_bkup_mode_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9571mwv_bkup_mode_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9571mwv_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bd9571mwv_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bd9571mwv_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @bd9571mwv_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9571mwv_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %0 = getelementptr inbounds i8, ptr %config, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup67_crit_edge, label %if.end

entry.cleanup67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call2 = tail call ptr @dev_get_regmap(ptr noundef %7, ptr noundef null) #6
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %config, align 4
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %of_node8 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %15 = ptrtoint ptr %of_node8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %of_node8, align 8
  %driver_data9 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %16 = ptrtoint ptr %driver_data9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data9, align 4
  %regmap11 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %17 = ptrtoint ptr %regmap11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call2, ptr %regmap11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp12.not = icmp eq i32 %5, 2
  br i1 %cmp12.not, label %if.end.if.end15.4_crit_edge, label %if.end15

if.end.if.end15.4_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.4

if.end15:                                         ; preds = %if.end
  %call18 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef nonnull @regulators, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end15.do.end_crit_edge, label %if.end15.1

if.end15.do.end_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end15.4.do.end_crit_edge, %if.end15.3.do.end_crit_edge, %if.end15.2.do.end_crit_edge, %if.end15.1.do.end_crit_edge, %if.end15.do.end_crit_edge
  %arrayidx17.lcssa = phi ptr [ @regulators, %if.end15.do.end_crit_edge ], [ getelementptr inbounds ([5 x %struct.regulator_desc], ptr @regulators, i32 0, i32 1), %if.end15.1.do.end_crit_edge ], [ getelementptr inbounds ([5 x %struct.regulator_desc], ptr @regulators, i32 0, i32 2), %if.end15.2.do.end_crit_edge ], [ getelementptr inbounds ([5 x %struct.regulator_desc], ptr @regulators, i32 0, i32 3), %if.end15.3.do.end_crit_edge ], [ getelementptr inbounds ([5 x %struct.regulator_desc], ptr @regulators, i32 0, i32 4), %if.end15.4.do.end_crit_edge ]
  %call18.lcssa = phi ptr [ %call18, %if.end15.do.end_crit_edge ], [ %call18.1, %if.end15.1.do.end_crit_edge ], [ %call18.2, %if.end15.2.do.end_crit_edge ], [ %call18.3, %if.end15.3.do.end_crit_edge ], [ %call18.4, %if.end15.4.do.end_crit_edge ]
  %18 = ptrtoint ptr %arrayidx17.lcssa to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx17.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %19) #9
  %20 = ptrtoint ptr %call18.lcssa to i32
  br label %cleanup67

if.end15.1:                                       ; preds = %if.end15
  %call18.1 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([5 x %struct.regulator_desc], ptr @regulators, i32 0, i32 1), ptr noundef nonnull %config) #6
  %cmp.i.1 = icmp ugt ptr %call18.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end15.1.do.end_crit_edge, label %if.end15.2

if.end15.1.do.end_crit_edge:                      ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end15.2:                                       ; preds = %if.end15.1
  %call18.2 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([5 x %struct.regulator_desc], ptr @regulators, i32 0, i32 2), ptr noundef nonnull %config) #6
  %cmp.i.2 = icmp ugt ptr %call18.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.end15.2.do.end_crit_edge, label %if.end15.3

if.end15.2.do.end_crit_edge:                      ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end15.3:                                       ; preds = %if.end15.2
  %call18.3 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([5 x %struct.regulator_desc], ptr @regulators, i32 0, i32 3), ptr noundef nonnull %config) #6
  %cmp.i.3 = icmp ugt ptr %call18.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %if.end15.3.do.end_crit_edge, label %if.end15.3.if.end15.4_crit_edge

if.end15.3.if.end15.4_crit_edge:                  ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.4

if.end15.3.do.end_crit_edge:                      ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end15.4:                                       ; preds = %if.end15.3.if.end15.4_crit_edge, %if.end.if.end15.4_crit_edge
  %call18.4 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([5 x %struct.regulator_desc], ptr @regulators, i32 0, i32 4), ptr noundef nonnull %config) #6
  %cmp.i.4 = icmp ugt ptr %call18.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %if.end15.4.do.end_crit_edge, label %for.inc.4

if.end15.4.do.end_crit_edge:                      ; preds = %if.end15.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.4:                                        ; preds = %if.end15.4
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %val, align 4
  %22 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config, align 4
  %of_node26 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %of_node26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node26, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.6, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %27)
  %tobool28.not = icmp ult i32 %27, 16
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %27) #9
  br label %cleanup67

if.end34:                                         ; preds = %for.inc.4
  %conv = trunc i32 %27 to i8
  %bkup_mode_cnt_keepon = getelementptr inbounds %struct.bd9571mwv_reg, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %bkup_mode_cnt_keepon to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %bkup_mode_cnt_keepon, align 4
  %29 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config, align 4
  %of_node36 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %of_node36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node36, align 8
  %call.i101 = call ptr @of_find_property(ptr noundef %32, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i101, null
  %rstbmode_level = getelementptr inbounds %struct.bd9571mwv_reg, ptr %call.i, i32 0, i32 4
  %frombool = zext i1 %tobool.i to i8
  %33 = ptrtoint ptr %rstbmode_level to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %rstbmode_level, align 1
  %34 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %config, align 4
  %of_node39 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %of_node39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node39, align 8
  %call.i102 = call ptr @of_find_property(ptr noundef %37, ptr noundef nonnull @.str.11, ptr noundef null) #6
  %tobool.i103 = icmp ne ptr %call.i102, null
  %rstbmode_pulse = getelementptr inbounds %struct.bd9571mwv_reg, ptr %call.i, i32 0, i32 5
  %frombool41 = zext i1 %tobool.i103 to i8
  %38 = ptrtoint ptr %rstbmode_pulse to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool41, ptr %rstbmode_pulse, align 4
  %39 = ptrtoint ptr %rstbmode_level to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rstbmode_level, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool43.not = icmp eq i8 %40, 0
  %call40.not = xor i1 %tobool.i103, true
  %brmerge = select i1 %tobool43.not, i1 true, i1 %call40.not
  br i1 %brmerge, label %if.end54, label %do.end52

do.end52:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup67

if.end54:                                         ; preds = %if.end34
  %41 = ptrtoint ptr %bkup_mode_cnt_keepon to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bkup_mode_cnt_keepon, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool56.not = icmp eq i8 %42, 0
  br i1 %tobool56.not, label %if.end54.if.end66_crit_edge, label %if.then57

if.end54.if.end66_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then57:                                        ; preds = %if.end54
  %bkup_mode_enabled = getelementptr inbounds %struct.bd9571mwv_reg, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %bkup_mode_enabled to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool41, ptr %bkup_mode_enabled, align 2
  %call62 = call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_backup_mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then57.if.end66_crit_edge, label %if.then57.cleanup67_crit_edge

if.then57.cleanup67_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

if.then57.if.end66_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end66:                                         ; preds = %if.then57.if.end66_crit_edge, %if.end54.if.end66_crit_edge
  br label %cleanup67

cleanup67:                                        ; preds = %if.end66, %if.then57.cleanup67_crit_edge, %do.end52, %do.end32, %do.end, %entry.cleanup67_crit_edge
  %retval.1 = phi i32 [ %20, %do.end ], [ -22, %do.end32 ], [ -22, %do.end52 ], [ 0, %if.end66 ], [ %call62, %if.then57.cleanup67_crit_edge ], [ -12, %entry.cleanup67_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9571mwv_regulator_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_backup_mode) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9571mwv_avs_set_voltage_sel_regmap(ptr nocapture noundef readonly %rdev, i32 noundef %sel) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !93
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 49, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %bd9571mwv_avs_get_moni_state.exit.thread, label %bd9571mwv_avs_get_moni_state.exit

bd9571mwv_avs_get_moni_state.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %and.i = and i32 %4, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end

bd9571mwv_avs_get_moni_state.exit:                ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %bd9571mwv_avs_get_moni_state.exit.cleanup_crit_edge, label %bd9571mwv_avs_get_moni_state.exit.if.end_crit_edge

bd9571mwv_avs_get_moni_state.exit.if.end_crit_edge: ; preds = %bd9571mwv_avs_get_moni_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

bd9571mwv_avs_get_moni_state.exit.cleanup_crit_edge: ; preds = %bd9571mwv_avs_get_moni_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %bd9571mwv_avs_get_moni_state.exit.if.end_crit_edge, %bd9571mwv_avs_get_moni_state.exit.thread
  %retval.0.i9 = phi i32 [ %and.i, %bd9571mwv_avs_get_moni_state.exit.thread ], [ %call.i, %bd9571mwv_avs_get_moni_state.exit.if.end_crit_edge ]
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %add = add nuw i32 %retval.0.i9, 50
  %7 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev, align 8
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %8, i32 0, i32 28
  %9 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vsel_mask, align 4
  %call.i6 = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add, i32 noundef %10, i32 noundef %sel, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %bd9571mwv_avs_get_moni_state.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i6, %if.end ], [ %call.i, %bd9571mwv_avs_get_moni_state.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9571mwv_avs_get_voltage_sel_regmap(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val.i, align 4, !annotation !93
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 49, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %bd9571mwv_avs_get_moni_state.exit.thread, label %bd9571mwv_avs_get_moni_state.exit

bd9571mwv_avs_get_moni_state.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i, align 4
  %and.i = and i32 %5, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end

bd9571mwv_avs_get_moni_state.exit:                ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %bd9571mwv_avs_get_moni_state.exit.cleanup_crit_edge, label %bd9571mwv_avs_get_moni_state.exit.if.end_crit_edge

bd9571mwv_avs_get_moni_state.exit.if.end_crit_edge: ; preds = %bd9571mwv_avs_get_moni_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

bd9571mwv_avs_get_moni_state.exit.cleanup_crit_edge: ; preds = %bd9571mwv_avs_get_moni_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %bd9571mwv_avs_get_moni_state.exit.if.end_crit_edge, %bd9571mwv_avs_get_moni_state.exit.thread
  %retval.0.i17 = phi i32 [ %and.i, %bd9571mwv_avs_get_moni_state.exit.thread ], [ %call.i, %bd9571mwv_avs_get_moni_state.exit.if.end_crit_edge ]
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %add = add nuw i32 %retval.0.i17, 50
  %call1 = call i32 @regmap_read(ptr noundef %7, i32 noundef %add, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 28
  %10 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vsel_mask, align 4
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %and = and i32 %13, %11
  %14 = call i32 @llvm.cttz.i32(i32 %11, i1 true), !range !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %iszero = icmp eq i32 %11, 0
  %sub = select i1 %iszero, i32 -1, i32 %14
  %shr = lshr i32 %and, %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %bd9571mwv_avs_get_moni_state.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end4 ], [ %call.i, %bd9571mwv_avs_get_moni_state.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9571mwv_reg_set_voltage_sel_regmap(ptr nocapture noundef readonly %rdev, i32 noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsel_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 84, i32 noundef %5, i32 noundef %sel, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @backup_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bkup_mode_enabled = getelementptr inbounds %struct.bd9571mwv_reg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bkup_mode_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bkup_mode_enabled, align 2, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.29, ptr @.str.28
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @backup_mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #6
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mode, align 4, !annotation !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bkup_mode_enabled = getelementptr inbounds %struct.bd9571mwv_reg, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @kstrtobool(ptr noundef %buf, ptr noundef %bkup_mode_enabled) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rstbmode_level = getelementptr inbounds %struct.bd9571mwv_reg, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %rstbmode_level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rstbmode_level, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 32, ptr noundef nonnull %mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end11, label %bd9571mwv_bkup_mode_read.exit

bd9571mwv_bkup_mode_read.exit:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call2.i = call ptr @regmap_get_device(ptr noundef %8) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call2.i, ptr noundef nonnull @.str.30, i32 noundef %call.i) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  %and = and i32 %10, -16
  store i32 %and, ptr %mode, align 4
  %11 = ptrtoint ptr %bkup_mode_enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bkup_mode_enabled, align 2, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp eq i8 %12, 0
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %bkup_mode_cnt_keepon = getelementptr inbounds %struct.bd9571mwv_reg, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %bkup_mode_cnt_keepon to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bkup_mode_cnt_keepon, align 4
  %conv = zext i8 %14 to i32
  %or = or i32 %and, %conv
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %mode, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i34 = call i32 @regmap_write(ptr noundef %19, i32 noundef 32, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %if.end15.cleanup_crit_edge, label %do.end.i37

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i37:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call2.i36 = call ptr @regmap_get_device(ptr noundef %21) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call2.i36, ptr noundef nonnull @.str.32, i32 noundef %17, i32 noundef %call.i34) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i37, %if.end15.cleanup_crit_edge, %bd9571mwv_bkup_mode_read.exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %count, %if.end4.cleanup_crit_edge ], [ %call.i, %bd9571mwv_bkup_mode_read.exit ], [ %count, %if.end15.cleanup_crit_edge ], [ %call.i34, %do.end.i37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9571mwv_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #6
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mode, align 4, !annotation !93
  %bkup_mode_enabled = getelementptr inbounds %struct.bd9571mwv_reg, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %bkup_mode_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bkup_mode_enabled, align 2, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 32, ptr noundef nonnull %mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4, label %bd9571mwv_bkup_mode_read.exit

bd9571mwv_bkup_mode_read.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call2.i = call ptr @regmap_get_device(ptr noundef %8) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call2.i, ptr noundef nonnull @.str.30, i32 noundef %call.i) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  %conv = trunc i32 %10 to i8
  %bkup_mode_cnt_saved = getelementptr inbounds %struct.bd9571mwv_reg, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %bkup_mode_cnt_saved to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %bkup_mode_cnt_saved, align 1
  %rstbmode_pulse = getelementptr inbounds %struct.bd9571mwv_reg, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %rstbmode_pulse to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rstbmode_pulse, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %and = and i32 %10, -16
  %bkup_mode_cnt_keepon = getelementptr inbounds %struct.bd9571mwv_reg, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %bkup_mode_cnt_keepon to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bkup_mode_cnt_keepon, align 4
  %conv8 = zext i8 %15 to i32
  %or = or i32 %and, %conv8
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %mode, align 4
  %conv10 = and i32 %10, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv10)
  %cmp.not = icmp eq i32 %or, %conv10
  br i1 %cmp.not, label %if.end7.cleanup_crit_edge, label %if.then12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.end7
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i24 = call i32 @regmap_write(ptr noundef %18, i32 noundef 32, i32 noundef %or) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %if.then12.cleanup_crit_edge, label %do.end.i27

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i27:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call2.i26 = call ptr @regmap_get_device(ptr noundef %20) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call2.i26, ptr noundef nonnull @.str.32, i32 noundef %or, i32 noundef %call.i24) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i27, %if.then12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %bd9571mwv_bkup_mode_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %bd9571mwv_bkup_mode_read.exit ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.then12.cleanup_crit_edge ], [ %call.i24, %do.end.i27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9571mwv_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bkup_mode_enabled = getelementptr inbounds %struct.bd9571mwv_reg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bkup_mode_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bkup_mode_enabled, align 2, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bkup_mode_cnt_saved = getelementptr inbounds %struct.bd9571mwv_reg, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bkup_mode_cnt_saved to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bkup_mode_cnt_saved, align 1
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 32, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %do.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call2.i = tail call ptr @regmap_get_device(ptr noundef %9) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call2.i, ptr noundef nonnull @.str.32, i32 noundef %conv, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !56, !58, !60, !62, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_bd9571mwv_regulator__288_362_bd9571mwv_regulator_driver_init6, !1, !"__initcall__kmod_bd9571mwv_regulator__288_362_bd9571mwv_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 362, i32 1}
!2 = !{ptr @__exitcall_bd9571mwv_regulator_driver_exit, !1, !"__exitcall_bd9571mwv_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 364, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 365, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 366, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 355, i32 11}
!12 = !{ptr @bd9571mwv_regulator_driver, !13, !"bd9571mwv_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 353, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 303, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bd9571mwv_regulator_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bd9571mwv_regulator_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 310, i32 44}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 312, i32 3}
!26 = !{ptr @bd9571mwv_regulator_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @bd9571mwv_regulator_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 319, i32 13}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 321, i32 13}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 323, i32 3}
!34 = !{ptr @bd9571mwv_regulator_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bd9571mwv_regulator_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 127, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 129, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 131, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 133, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 135, i32 2}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @regulators, !53, !"regulators", i1 false, i1 false}
!53 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 126, i32 36}
!54 = !{ptr @avs_ops, !55, !"avs_ops", i1 false, i1 false}
!55 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 104, i32 35}
!56 = !{ptr @vid_ops, !57, !"vid_ops", i1 false, i1 false}
!57 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 120, i32 35}
!58 = !{ptr @reg_ops, !59, !"reg_ops", i1 false, i1 false}
!59 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 112, i32 35}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 217, i32 8}
!62 = !{ptr @dev_attr_backup_mode, !61, !"dev_attr_backup_mode", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 177, i32 25}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 177, i32 60}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 177, i32 67}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 148, i32 3}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @bd9571mwv_bkup_mode_read._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @bd9571mwv_bkup_mode_read._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 163, i32 3}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @bd9571mwv_bkup_mode_write._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @bd9571mwv_bkup_mode_write._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @bd9571mwv_pm, !80, !"bd9571mwv_pm", i1 false, i1 false}
!80 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 259, i32 32}
!81 = !{ptr @bd9571mwv_regulator_id_table, !82, !"bd9571mwv_regulator_id_table", i1 false, i1 false}
!82 = !{!"../drivers/regulator/bd9571mwv-regulator.c", i32 346, i32 40}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i8 0, i8 2}
!93 = !{!"auto-init"}
!94 = !{i32 0, i32 33}
