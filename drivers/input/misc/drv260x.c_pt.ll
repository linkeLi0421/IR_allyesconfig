; ModuleID = '/llk/IR_all_yes/drivers/input/misc/drv260x.c_pt.bc'
source_filename = "../drivers/input/misc/drv260x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.reg_default = type { i32, i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.drv260x_data = type { ptr, ptr, ptr, %struct.work_struct, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.86 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.86 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_drv260x__288_665_drv260x_driver_init6 = internal global ptr @drv260x_driver_init, section ".initcall6.init", align 4
@drv260x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @drv260x_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @drv260x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drv260x_pm_ops, ptr null, ptr null }, ptr @drv260x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_drv260x_driver_exit = internal global ptr @drv260x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [46 x i8] c"drv260x.description=TI DRV260x haptics driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [40 x i8] c"drv260x.file=drivers/input/misc/drv260x\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [20 x i8] c"drv260x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [43 x i8] c"drv260x.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drv260x-haptics\00", [16 x i8] zeroinitializer }, align 32
@drv260x_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,drv2604\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,drv2604l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,drv2605\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,drv2605l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@drv260x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @drv260x_suspend, ptr @drv260x_resume, ptr @drv260x_suspend, ptr @drv260x_resume, ptr @drv260x_suspend, ptr @drv260x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@drv260x_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"drv2605l\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@drv260x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 474, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't fetch 'mode' property: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"drv260x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/misc/drv260x.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@drv260x_probe._entry_ptr = internal global ptr @drv260x_probe._entry, section ".printk_index", align 4
@drv260x_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 480, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Vibrator mode is invalid: %i\0A\00", [34 x i8] zeroinitializer }, align 32
@drv260x_probe._entry_ptr.9 = internal global ptr @drv260x_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"library-sel\00", [20 x i8] zeroinitializer }, align 32
@drv260x_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 486, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Can't fetch 'library-sel' property: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@drv260x_probe._entry_ptr.13 = internal global ptr @drv260x_probe._entry.11, section ".printk_index", align 4
@drv260x_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 493, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Library value is invalid: %i\0A\00", [34 x i8] zeroinitializer }, align 32
@drv260x_probe._entry_ptr.16 = internal global ptr @drv260x_probe._entry.14, section ".printk_index", align 4
@drv260x_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 500, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"LRA Mode with ERM Library mismatch\0A\00", [60 x i8] zeroinitializer }, align 32
@drv260x_probe._entry_ptr.19 = internal global ptr @drv260x_probe._entry.17, section ".printk_index", align 4
@drv260x_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ERM Mode with LRA Library mismatch\0A\00", [60 x i8] zeroinitializer }, align 32
@drv260x_probe._entry_ptr.22 = internal global ptr @drv260x_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vib-rated-mv\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vib-overdrive-mv\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbat\00", [27 x i8] zeroinitializer }, align 32
@drv260x_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 522, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to get regulator, error: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@drv260x_probe._entry_ptr.28 = internal global ptr @drv260x_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@drv260x_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 533, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@drv260x_probe._entry_ptr.32 = internal global ptr @drv260x_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drv260x:haptics\00", [16 x i8] zeroinitializer }, align 32
@drv260x_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 545, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"input_ff_create() failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@drv260x_probe._entry_ptr.36 = internal global ptr @drv260x_probe._entry.34, section ".printk_index", align 4
@drv260x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&haptics->work)\00", [62 x i8] zeroinitializer }, align 32
@drv260x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@drv260x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 35, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drv260x_reg_defs, i32 35, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drv260x:554:(&drv260x_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@drv260x_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.3, ptr @.str.4, i32 557, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@drv260x_probe._entry_ptr.41 = internal global ptr @drv260x_probe._entry.39, section ".printk_index", align 4
@drv260x_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.3, ptr @.str.4, i32 563, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device init failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@drv260x_probe._entry_ptr.44 = internal global ptr @drv260x_probe._entry.42, section ".printk_index", align 4
@drv260x_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.3, ptr @.str.4, i32 569, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"couldn't register input device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@drv260x_probe._entry_ptr.47 = internal global ptr @drv260x_probe._entry.45, section ".printk_index", align 4
@drv260x_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 300, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enter standby mode: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"drv260x_close\00", [18 x i8] zeroinitializer }, align 32
@drv260x_close._entry_ptr = internal global ptr @drv260x_close._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@drv260x_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 261, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to write set mode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drv260x_worker\00", [17 x i8] zeroinitializer }, align 32
@drv260x_worker._entry_ptr = internal global ptr @drv260x_worker._entry, section ".printk_index", align 4
@drv260x_worker._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 267, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set magnitude: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@drv260x_worker._entry_ptr.54 = internal global ptr @drv260x_worker._entry.52, section ".printk_index", align 4
@drv260x_reg_defs = internal constant { [35 x %struct.reg_default], [72 x i8] } { [35 x %struct.reg_default] [%struct.reg_default { i32 0, i32 224 }, %struct.reg_default { i32 1, i32 64 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 1 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 5 }, %struct.reg_default { i32 18, i32 25 }, %struct.reg_default { i32 19, i32 255 }, %struct.reg_default { i32 20, i32 25 }, %struct.reg_default { i32 21, i32 255 }, %struct.reg_default { i32 22, i32 62 }, %struct.reg_default { i32 23, i32 140 }, %struct.reg_default { i32 24, i32 12 }, %struct.reg_default { i32 25, i32 108 }, %struct.reg_default { i32 26, i32 54 }, %struct.reg_default { i32 27, i32 147 }, %struct.reg_default { i32 28, i32 250 }, %struct.reg_default { i32 29, i32 160 }, %struct.reg_default { i32 30, i32 32 }, %struct.reg_default { i32 31, i32 128 }, %struct.reg_default { i32 32, i32 51 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }], [72 x i8] zeroinitializer }, align 32
@drv260x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 354, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to write DRV260X_RATED_VOLT register: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"drv260x_init\00", [19 x i8] zeroinitializer }, align 32
@drv260x_init._entry_ptr = internal global ptr @drv260x_init._entry, section ".printk_index", align 4
@drv260x_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.4, i32 363, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to write DRV260X_OD_CLAMP_VOLT register: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@drv260x_init._entry_ptr.59 = internal global ptr @drv260x_init._entry.57, section ".printk_index", align 4
@drv260x_lra_cal_regs = internal constant { [3 x %struct.reg_sequence], [60 x i8] } { [3 x %struct.reg_sequence] [%struct.reg_sequence { i32 1, i32 7, i32 0 }, %struct.reg_sequence { i32 29, i32 64, i32 0 }, %struct.reg_sequence { i32 26, i32 184, i32 0 }], [60 x i8] zeroinitializer }, align 32
@drv260x_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.4, i32 375, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to write LRA calibration registers: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@drv260x_init._entry_ptr.62 = internal global ptr @drv260x_init._entry.60, section ".printk_index", align 4
@drv260x_erm_cal_regs = internal constant { [10 x %struct.reg_sequence], [40 x i8] } { [10 x %struct.reg_sequence] [%struct.reg_sequence { i32 1, i32 7, i32 0 }, %struct.reg_sequence { i32 18, i32 25, i32 0 }, %struct.reg_sequence { i32 19, i32 100, i32 0 }, %struct.reg_sequence { i32 20, i32 25, i32 0 }, %struct.reg_sequence { i32 21, i32 255, i32 0 }, %struct.reg_sequence { i32 26, i32 38, i32 0 }, %struct.reg_sequence { i32 27, i32 128, i32 0 }, %struct.reg_sequence { i32 28, i32 37, i32 0 }, %struct.reg_sequence { i32 29, i32 96, i32 0 }, %struct.reg_sequence { i32 30, i32 32, i32 0 }], [40 x i8] zeroinitializer }, align 32
@drv260x_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.4, i32 388, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to write ERM calibration registers: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@drv260x_init._entry_ptr.65 = internal global ptr @drv260x_init._entry.63, section ".printk_index", align 4
@drv260x_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str.4, i32 398, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to write DRV260X_LIB_SEL register: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@drv260x_init._entry_ptr.68 = internal global ptr @drv260x_init._entry.66, section ".printk_index", align 4
@drv260x_lra_init_regs = internal constant { [11 x %struct.reg_sequence], [60 x i8] } { [11 x %struct.reg_sequence] [%struct.reg_sequence { i32 1, i32 5, i32 0 }, %struct.reg_sequence { i32 17, i32 5, i32 0 }, %struct.reg_sequence { i32 18, i32 25, i32 0 }, %struct.reg_sequence { i32 19, i32 100, i32 0 }, %struct.reg_sequence { i32 20, i32 25, i32 0 }, %struct.reg_sequence { i32 21, i32 255, i32 0 }, %struct.reg_sequence { i32 26, i32 135, i32 0 }, %struct.reg_sequence { i32 27, i32 128, i32 0 }, %struct.reg_sequence { i32 28, i32 32, i32 0 }, %struct.reg_sequence { i32 29, i32 66, i32 0 }, %struct.reg_sequence { i32 30, i32 32, i32 0 }], [60 x i8] zeroinitializer }, align 32
@drv260x_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.56, ptr @.str.4, i32 411, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to write LRA init registers: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@drv260x_init._entry_ptr.71 = internal global ptr @drv260x_init._entry.69, section ".printk_index", align 4
@drv260x_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str.4, i32 421, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@drv260x_init._entry_ptr.73 = internal global ptr @drv260x_init._entry.72, section ".printk_index", align 4
@drv260x_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.56, ptr @.str.4, i32 433, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to write GO register: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@drv260x_init._entry_ptr.76 = internal global ptr @drv260x_init._entry.74, section ".printk_index", align 4
@drv260x_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.56, ptr @.str.4, i32 442, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read GO register: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@drv260x_init._entry_ptr.79 = internal global ptr @drv260x_init._entry.77, section ".printk_index", align 4
@drv260x_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 589, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set standby mode\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drv260x_suspend\00", [16 x i8] zeroinitializer }, align 32
@drv260x_suspend._entry_ptr = internal global ptr @drv260x_suspend._entry, section ".printk_index", align 4
@drv260x_suspend._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.4, i32 597, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to disable regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@drv260x_suspend._entry_ptr.84 = internal global ptr @drv260x_suspend._entry.82, section ".printk_index", align 4
@drv260x_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.4, i32 618, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable regulator\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drv260x_resume\00", [17 x i8] zeroinitializer }, align 32
@drv260x_resume._entry_ptr = internal global ptr @drv260x_resume._entry, section ".printk_index", align 4
@drv260x_resume._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.4, i32 626, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to unset standby mode\0A\00", [34 x i8] zeroinitializer }, align 32
@drv260x_resume._entry_ptr.89 = internal global ptr @drv260x_resume._entry.87, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"drv260x_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 656, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 659, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"drv260x_of_match\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 647, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant [15 x i8] c"drv260x_pm_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 639, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"drv260x_id\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 641, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 472, i32 40 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 474, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 480, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 484, i32 40 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 486, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 492, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 500, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 507, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 511, i32 40 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 515, i32 40 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 519, i32 47 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 522, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 526, i32 54 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 533, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 537, i32 29 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 545, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 549, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [22 x i8] c"drv260x_regmap_config\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 450, i32 35 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 554, i32 20 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 557, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 563, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 569, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 299, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 260, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 266, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"drv260x_reg_defs\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 196, i32 33 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 352, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 361, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [21 x i8] c"drv260x_lra_cal_regs\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 305, i32 34 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 373, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant [21 x i8] c"drv260x_erm_cal_regs\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 329, i32 34 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 386, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 396, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant [22 x i8] c"drv260x_lra_init_regs\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 312, i32 34 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 409, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 419, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 431, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 440, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 589, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 597, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 618, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.346 = private constant [32 x i8] c"../drivers/input/misc/drv260x.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 626, i32 4 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_drv260x_driver_exit, ptr @__initcall__kmod_drv260x__288_665_drv260x_driver_init6, ptr @drv260x_close._entry, ptr @drv260x_close._entry_ptr, ptr @drv260x_driver_exit, ptr @drv260x_init._entry, ptr @drv260x_init._entry.57, ptr @drv260x_init._entry.60, ptr @drv260x_init._entry.63, ptr @drv260x_init._entry.66, ptr @drv260x_init._entry.69, ptr @drv260x_init._entry.72, ptr @drv260x_init._entry.74, ptr @drv260x_init._entry.77, ptr @drv260x_init._entry_ptr, ptr @drv260x_init._entry_ptr.59, ptr @drv260x_init._entry_ptr.62, ptr @drv260x_init._entry_ptr.65, ptr @drv260x_init._entry_ptr.68, ptr @drv260x_init._entry_ptr.71, ptr @drv260x_init._entry_ptr.73, ptr @drv260x_init._entry_ptr.76, ptr @drv260x_init._entry_ptr.79, ptr @drv260x_probe._entry, ptr @drv260x_probe._entry.11, ptr @drv260x_probe._entry.14, ptr @drv260x_probe._entry.17, ptr @drv260x_probe._entry.20, ptr @drv260x_probe._entry.26, ptr @drv260x_probe._entry.30, ptr @drv260x_probe._entry.34, ptr @drv260x_probe._entry.39, ptr @drv260x_probe._entry.42, ptr @drv260x_probe._entry.45, ptr @drv260x_probe._entry.7, ptr @drv260x_probe._entry_ptr, ptr @drv260x_probe._entry_ptr.13, ptr @drv260x_probe._entry_ptr.16, ptr @drv260x_probe._entry_ptr.19, ptr @drv260x_probe._entry_ptr.22, ptr @drv260x_probe._entry_ptr.28, ptr @drv260x_probe._entry_ptr.32, ptr @drv260x_probe._entry_ptr.36, ptr @drv260x_probe._entry_ptr.41, ptr @drv260x_probe._entry_ptr.44, ptr @drv260x_probe._entry_ptr.47, ptr @drv260x_probe._entry_ptr.9, ptr @drv260x_resume._entry, ptr @drv260x_resume._entry.87, ptr @drv260x_resume._entry_ptr, ptr @drv260x_resume._entry_ptr.89, ptr @drv260x_suspend._entry, ptr @drv260x_suspend._entry.82, ptr @drv260x_suspend._entry_ptr, ptr @drv260x_suspend._entry_ptr.84, ptr @drv260x_worker._entry, ptr @drv260x_worker._entry.52, ptr @drv260x_worker._entry_ptr, ptr @drv260x_worker._entry_ptr.54, ptr @drv260x_driver, ptr @.str, ptr @drv260x_of_match, ptr @drv260x_pm_ops, ptr @drv260x_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @drv260x_probe.__key, ptr @.str.37, ptr @drv260x_probe._key, ptr @drv260x_regmap_config, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @drv260x_reg_defs, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @drv260x_lra_cal_regs, ptr @.str.61, ptr @drv260x_erm_cal_regs, ptr @.str.64, ptr @.str.67, ptr @drv260x_lra_init_regs, ptr @.str.70, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_worker._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_reg_defs to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_lra_cal_regs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_erm_cal_regs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_lra_init_regs to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_suspend._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv260x_resume._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @drv260x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @drv260x_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @drv260x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @drv260x_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drv260x_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %cal_buf.i = alloca i32, align 4
  %voltage = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %voltage) #5
  %0 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %voltage, align 4, !annotation !179
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 84, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.drv260x_data, ptr %call.i, i32 0, i32 7
  %call.i228 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef %mode, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %tobool3.not = icmp eq i32 %call.i228, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call.i228) #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp8 = icmp ugt i32 %2, 2
  br i1 %cmp8, label %do.end12, label %if.end14

do.end12:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %2) #8
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %library = getelementptr inbounds %struct.drv260x_data, ptr %call.i, i32 0, i32 8
  %call.i229 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef %library, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %tobool16.not = icmp eq i32 %call.i229, 0
  br i1 %tobool16.not, label %if.end21, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call.i229) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %3 = ptrtoint ptr %library to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %library, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp26 = icmp ugt i32 %4, 7
  br i1 %cmp26, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %4) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %.fr = freeze i32 %6
  %7 = zext i32 %.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.fr, label %if.end32.if.end57_crit_edge [
    i32 0, label %switch.early.test
    i32 2, label %land.lhs.true47
  ]

if.end32.if.end57_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

switch.early.test:                                ; preds = %if.end32
  %8 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %4, label %do.end43 [
    i32 6, label %switch.early.test.if.end57_crit_edge
    i32 0, label %switch.early.test.if.end57_crit_edge248
  ]

switch.early.test.if.end57_crit_edge248:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

switch.early.test.if.end57_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

do.end43:                                         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  br label %cleanup

land.lhs.true47:                                  ; preds = %if.end32
  %9 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %4, label %land.lhs.true47.if.end57_crit_edge [
    i32 0, label %land.lhs.true47.do.end56_crit_edge
    i32 6, label %land.lhs.true47.do.end56_crit_edge249
  ]

land.lhs.true47.do.end56_crit_edge249:            ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end56

land.lhs.true47.do.end56_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end56

land.lhs.true47.if.end57_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

do.end56:                                         ; preds = %land.lhs.true47.do.end56_crit_edge, %land.lhs.true47.do.end56_crit_edge249
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end57:                                         ; preds = %land.lhs.true47.if.end57_crit_edge, %switch.early.test.if.end57_crit_edge, %switch.early.test.if.end57_crit_edge248, %if.end32.if.end57_crit_edge
  %call.i230 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.23, ptr noundef nonnull %voltage, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %tobool59.not = icmp eq i32 %call.i230, 0
  br i1 %tobool59.not, label %cond.false, label %if.end57.cond.end_crit_edge

if.end57.cond.end_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %voltage, align 4
  %mul.i = mul i32 %11, 255
  %div.i = udiv i32 %mul.i, 5600
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end57.cond.end_crit_edge
  %cond = phi i32 [ %div.i, %cond.false ], [ 144, %if.end57.cond.end_crit_edge ]
  %rated_voltage = getelementptr inbounds %struct.drv260x_data, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %rated_voltage to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %rated_voltage, align 4
  %call.i231 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef nonnull %voltage, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %tobool62.not = icmp eq i32 %call.i231, 0
  br i1 %tobool62.not, label %cond.false64, label %cond.end.cond.end66_crit_edge

cond.end.cond.end66_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end66

cond.false64:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %voltage, align 4
  %mul.i232 = mul i32 %14, 255
  %div.i233 = udiv i32 %mul.i232, 5600
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false64, %cond.end.cond.end66_crit_edge
  %cond67 = phi i32 [ %div.i233, %cond.false64 ], [ 144, %cond.end.cond.end66_crit_edge ]
  %overdrive_voltage = getelementptr inbounds %struct.drv260x_data, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %overdrive_voltage to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond67, ptr %overdrive_voltage, align 4
  %call68 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.25) #5
  %regulator = getelementptr inbounds %struct.drv260x_data, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call68, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then71, label %if.end77

if.then71:                                        ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call68 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %17) #8
  br label %cleanup

if.end77:                                         ; preds = %cond.end66
  %call78 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef 7) #5
  %enable_gpio = getelementptr inbounds %struct.drv260x_data, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call78, ptr %enable_gpio, align 4
  %cmp.i234 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i234, label %if.then81, label %if.end84

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call78 to i32
  br label %cleanup

if.end84:                                         ; preds = %if.end77
  %call85 = call ptr @devm_input_allocate_device(ptr noundef %dev1) #5
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call85, ptr %call.i, align 4
  %tobool87.not = icmp eq ptr %call85, null
  br i1 %tobool87.not, label %do.end91, label %if.end92

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end92:                                         ; preds = %if.end84
  %21 = ptrtoint ptr %call85 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.33, ptr %call85, align 8
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 32
  %24 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @drv260x_close, ptr %close, align 4
  %25 = load ptr, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %25, i32 0, i32 40, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %27 = load ptr, ptr %call.i, align 4
  call void @input_set_capability(ptr noundef %27, i32 noundef 21, i32 noundef 80) #5
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %call98 = call i32 @input_ff_create_memless(ptr noundef %29, ptr noundef null, ptr noundef nonnull @drv260x_haptics_play) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %do.body105, label %do.end103

do.end103:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %call98) #8
  br label %cleanup

do.body105:                                       ; preds = %if.end92
  %work = getelementptr inbounds %struct.drv260x_data, ptr %call.i, i32 0, i32 3
  call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %30 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.drv260x_data, ptr %call.i, i32 0, i32 3, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.37, ptr noundef nonnull @drv260x_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry109 = getelementptr inbounds %struct.drv260x_data, ptr %call.i, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %entry109 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry109, ptr %entry109, align 4
  %prev.i = getelementptr inbounds %struct.drv260x_data, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry109, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.drv260x_data, ptr %call.i, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @drv260x_worker, ptr %func, align 4
  %client113 = getelementptr inbounds %struct.drv260x_data, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %client113 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %client, ptr %client113, align 4
  %driver_data.i.i235 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %35 = ptrtoint ptr %driver_data.i.i235 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i.i235, align 4
  %call114 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @drv260x_regmap_config, ptr noundef nonnull @drv260x_probe._key, ptr noundef nonnull @.str.38) #5
  %regmap = getelementptr inbounds %struct.drv260x_data, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call114, ptr %regmap, align 4
  %cmp.i236 = icmp ugt ptr %call114, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236, label %if.then117, label %if.end123

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %call114 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %37) #8
  br label %cleanup

if.end123:                                        ; preds = %do.body105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cal_buf.i) #5
  %38 = ptrtoint ptr %cal_buf.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %cal_buf.i, align 4, !annotation !179
  %39 = ptrtoint ptr %rated_voltage to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rated_voltage, align 4
  %call.i237 = call i32 @regmap_write(ptr noundef %call114, i32 noundef 22, i32 noundef %40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool.not.i = icmp eq i32 %call.i237, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %client113 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client113, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55, i32 noundef %call.i237) #8
  br label %do.end129

if.end.i:                                         ; preds = %if.end123
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %45 = ptrtoint ptr %overdrive_voltage to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %overdrive_voltage, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %44, i32 noundef 23, i32 noundef %46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end10.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %client113 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %client113, align 4
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.58, i32 noundef %call2.i) #8
  br label %do.end129

if.end10.i:                                       ; preds = %if.end.i
  %49 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mode, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %50, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb21.i
  ]

sw.bb.i:                                          ; preds = %if.end10.i
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call12.i = call i32 @regmap_register_patch(ptr noundef %53, ptr noundef nonnull @drv260x_lra_cal_regs, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %do.end17.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

do.end17.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %client113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %client113, align 4
  %dev19.i = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19.i, ptr noundef nonnull @.str.61, i32 noundef %call12.i) #8
  br label %do.end129

sw.bb21.i:                                        ; preds = %if.end10.i
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call23.i = call i32 @regmap_register_patch(ptr noundef %57, ptr noundef nonnull @drv260x_erm_cal_regs, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end31.i, label %do.end28.i

do.end28.i:                                       ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %client113 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %client113, align 4
  %dev30.i = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30.i, ptr noundef nonnull @.str.64, i32 noundef %call23.i) #8
  br label %do.end129

if.end31.i:                                       ; preds = %sw.bb21.i
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %62 = ptrtoint ptr %library to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %library, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 3, i32 noundef 7, i32 noundef %63, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool34.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool34.not.i, label %if.end31.i.sw.epilog.i_crit_edge, label %do.end38.i

if.end31.i.sw.epilog.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

do.end38.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %client113 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %client113, align 4
  %dev40.i = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40.i, ptr noundef nonnull @.str.67, i32 noundef %call.i.i) #8
  br label %do.end129

sw.default.i:                                     ; preds = %if.end10.i
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call43.i = call i32 @regmap_register_patch(ptr noundef %67, ptr noundef nonnull @drv260x_lra_init_regs, i32 noundef 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end51.i, label %do.end48.i

do.end48.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %client113 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %client113, align 4
  %dev50.i = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50.i, ptr noundef nonnull @.str.70, i32 noundef %call43.i) #8
  br label %do.end129

if.end51.i:                                       ; preds = %sw.default.i
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %72 = ptrtoint ptr %library to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %library, align 4
  %call.i135.i = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 3, i32 noundef 7, i32 noundef %73, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135.i)
  %tobool55.not.i = icmp eq i32 %call.i135.i, 0
  br i1 %tobool55.not.i, label %if.end51.i.if.end130_crit_edge, label %do.end59.i

if.end51.i.if.end130_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130

do.end59.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %client113 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %client113, align 4
  %dev61.i = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61.i, ptr noundef nonnull @.str.67, i32 noundef %call.i135.i) #8
  br label %do.end129

sw.epilog.i:                                      ; preds = %if.end31.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call64.i = call i32 @regmap_write(ptr noundef %77, i32 noundef 12, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %sw.epilog.i.do.body73.i_crit_edge, label %do.end69.i

sw.epilog.i.do.body73.i_crit_edge:                ; preds = %sw.epilog.i
  br label %do.body73.i

do.end69.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %client113 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %client113, align 4
  %dev71.i = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71.i, ptr noundef nonnull @.str.75, i32 noundef %call64.i) #8
  br label %do.end129

do.body73.i:                                      ; preds = %do.cond84.i.do.body73.i_crit_edge, %sw.epilog.i.do.body73.i_crit_edge
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 4
  %call75.i = call i32 @regmap_read(ptr noundef %81, i32 noundef 12, ptr noundef nonnull %cal_buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %do.cond84.i, label %do.end80.i

do.end80.i:                                       ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %client113 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %client113, align 4
  %dev82.i = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev82.i, ptr noundef nonnull @.str.78, i32 noundef %call75.i) #8
  br label %do.end129

do.cond84.i:                                      ; preds = %do.body73.i
  %84 = ptrtoint ptr %cal_buf.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cal_buf.i, align 4
  %cmp.i238 = icmp eq i32 %85, 1
  br i1 %cmp.i238, label %do.cond84.i.do.body73.i_crit_edge, label %do.cond84.i.if.end130_crit_edge

do.cond84.i.if.end130_crit_edge:                  ; preds = %do.cond84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130

do.cond84.i.do.body73.i_crit_edge:                ; preds = %do.cond84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body73.i

do.end129:                                        ; preds = %do.end80.i, %do.end69.i, %do.end59.i, %do.end48.i, %do.end38.i, %do.end28.i, %do.end17.i, %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call12.i, %do.end17.i ], [ %call75.i, %do.end80.i ], [ %call64.i, %do.end69.i ], [ %call.i.i, %do.end38.i ], [ %call23.i, %do.end28.i ], [ %call.i135.i, %do.end59.i ], [ %call43.i, %do.end48.i ], [ %call2.i, %do.end7.i ], [ %call.i237, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cal_buf.i) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end130:                                        ; preds = %do.cond84.i.if.end130_crit_edge, %if.end51.i.if.end130_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cal_buf.i) #5
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  %call132 = call i32 @input_register_device(ptr noundef %87) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end130.cleanup_crit_edge, label %do.end137

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end137:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef %call132) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end137, %if.end130.cleanup_crit_edge, %do.end129, %if.then117, %do.end103, %do.end91, %if.then81, %if.then71, %do.end56, %do.end43, %do.end30, %do.end20, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i228, %do.end ], [ -22, %do.end12 ], [ %call.i229, %do.end20 ], [ -22, %do.end30 ], [ -22, %do.end43 ], [ -22, %do.end56 ], [ %17, %if.then71 ], [ %19, %if.then81 ], [ %call98, %do.end103 ], [ %37, %if.then117 ], [ %retval.0.i.ph, %do.end129 ], [ %call132, %do.end137 ], [ -12, %do.end91 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end130.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %voltage) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drv260x_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.drv260x_data, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #5
  %regmap = getelementptr inbounds %struct.drv260x_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %client = getelementptr inbounds %struct.drv260x_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %call2) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %enable_gpio = getelementptr inbounds %struct.drv260x_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drv260x_haptics_play(ptr nocapture noundef readonly %input, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.drv260x_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %mode, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not = icmp eq i16 %4, 0
  br i1 %cmp.not, label %if.else, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %weak_magnitude, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.else, %entry.if.end16_crit_edge
  %conv6.sink.in = phi i16 [ %6, %if.else ], [ %4, %entry.if.end16_crit_edge ]
  %conv6.sink = zext i16 %conv6.sink.in to i32
  %magnitude13 = getelementptr inbounds %struct.drv260x_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %magnitude13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv6.sink, ptr %magnitude13, align 4
  %work = getelementptr inbounds %struct.drv260x_data, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drv260x_worker(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_gpio = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 53687000) #5
  %regmap = getelementptr i8, ptr %work, i32 -4
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 1, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %client = getelementptr i8, ptr %work, i32 -8
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %call) #8
  br label %if.end10

if.else:                                          ; preds = %entry
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %magnitude = getelementptr i8, ptr %work, i32 52
  %9 = ptrtoint ptr %magnitude to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %magnitude, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 2, i32 noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else.if.end10_crit_edge, label %do.end7

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %client8 = getelementptr i8, ptr %work, i32 -8
  %11 = ptrtoint ptr %client8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client8, align 4
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.53, i32 noundef %call2) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.else.if.end10_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drv260x_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #5
  br i1 %call2, label %if.then, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.drv260x_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 1, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #8
  br label %out

if.end:                                           ; preds = %if.then
  %enable_gpio = getelementptr inbounds %struct.drv260x_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #5
  %regulator = getelementptr inbounds %struct.drv260x_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regulator, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.out_crit_edge, label %do.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 1, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %out

out:                                              ; preds = %do.end10, %if.end.out_crit_edge, %do.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call5, %do.end10 ], [ 0, %if.end.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %mutex16 = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex16) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drv260x_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #5
  br i1 %call2, label %if.then, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then:                                          ; preds = %entry
  %regulator = getelementptr inbounds %struct.drv260x_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regulator, align 4
  %call3 = tail call i32 @regulator_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85) #8
  br label %out

if.end:                                           ; preds = %if.then
  %regmap = getelementptr inbounds %struct.drv260x_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 1, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88) #8
  %10 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regulator, align 4
  %call12 = tail call i32 @regulator_disable(ptr noundef %11) #5
  br label %out

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %enable_gpio = getelementptr inbounds %struct.drv260x_data, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 1) #5
  br label %out

out:                                              ; preds = %if.end13, %do.end10, %do.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call3, %do.end ], [ %call.i, %do.end10 ], [ 0, %if.end13 ], [ 0, %entry.out_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %mutex16 = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex16) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138, !139, !140, !142, !144, !146, !148, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__initcall__kmod_drv260x__288_665_drv260x_driver_init6, !1, !"__initcall__kmod_drv260x__288_665_drv260x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/drv260x.c", i32 665, i32 1}
!2 = !{ptr @__exitcall_drv260x_driver_exit, !1, !"__exitcall_drv260x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/drv260x.c", i32 667, i32 1}
!5 = !{ptr @__UNIQUE_ID_file290, !6, !"__UNIQUE_ID_file290", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/drv260x.c", i32 668, i32 1}
!7 = !{ptr @__UNIQUE_ID_license291, !6, !"__UNIQUE_ID_license291", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author292, !9, !"__UNIQUE_ID_author292", i1 false, i1 false}
!9 = !{!"../drivers/input/misc/drv260x.c", i32 669, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/drv260x.c", i32 659, i32 11}
!12 = !{ptr @drv260x_driver, !13, !"drv260x_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/drv260x.c", i32 656, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/drv260x.c", i32 472, i32 40}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/drv260x.c", i32 474, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @drv260x_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @drv260x_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/misc/drv260x.c", i32 480, i32 3}
!26 = !{ptr @drv260x_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @drv260x_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/drv260x.c", i32 484, i32 40}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/misc/drv260x.c", i32 486, i32 3}
!32 = !{ptr @drv260x_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @drv260x_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/misc/drv260x.c", i32 492, i32 3}
!36 = !{ptr @drv260x_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @drv260x_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/misc/drv260x.c", i32 500, i32 3}
!40 = !{ptr @drv260x_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @drv260x_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/misc/drv260x.c", i32 507, i32 3}
!44 = !{ptr @drv260x_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @drv260x_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/misc/drv260x.c", i32 511, i32 40}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/misc/drv260x.c", i32 515, i32 40}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/misc/drv260x.c", i32 519, i32 47}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/misc/drv260x.c", i32 522, i32 3}
!54 = !{ptr @drv260x_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @drv260x_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/misc/drv260x.c", i32 526, i32 54}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/misc/drv260x.c", i32 533, i32 3}
!60 = !{ptr @drv260x_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @drv260x_probe._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/misc/drv260x.c", i32 537, i32 29}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/misc/drv260x.c", i32 545, i32 3}
!66 = !{ptr @drv260x_probe._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @drv260x_probe._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @drv260x_probe.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/input/misc/drv260x.c", i32 549, i32 2}
!70 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @drv260x_probe._key, !72, !"_key", i1 false, i1 false}
!72 = !{!"../drivers/input/misc/drv260x.c", i32 554, i32 20}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/misc/drv260x.c", i32 557, i32 3}
!76 = !{ptr @drv260x_probe._entry.39, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @drv260x_probe._entry_ptr.41, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/misc/drv260x.c", i32 563, i32 3}
!80 = !{ptr @drv260x_probe._entry.42, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @drv260x_probe._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/misc/drv260x.c", i32 569, i32 3}
!84 = !{ptr @drv260x_probe._entry.45, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @drv260x_probe._entry_ptr.47, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/misc/drv260x.c", i32 299, i32 3}
!88 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @drv260x_close._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @drv260x_close._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/misc/drv260x.c", i32 260, i32 3}
!93 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @drv260x_worker._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @drv260x_worker._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/misc/drv260x.c", i32 266, i32 4}
!98 = !{ptr @drv260x_worker._entry.52, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @drv260x_worker._entry_ptr.54, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @drv260x_regmap_config, !101, !"drv260x_regmap_config", i1 false, i1 false}
!101 = !{!"../drivers/input/misc/drv260x.c", i32 450, i32 35}
!102 = !{ptr @drv260x_reg_defs, !103, !"drv260x_reg_defs", i1 false, i1 false}
!103 = !{!"../drivers/input/misc/drv260x.c", i32 196, i32 33}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/misc/drv260x.c", i32 352, i32 3}
!106 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @drv260x_init._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @drv260x_init._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/misc/drv260x.c", i32 361, i32 3}
!111 = !{ptr @drv260x_init._entry.57, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @drv260x_init._entry_ptr.59, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/misc/drv260x.c", i32 373, i32 4}
!115 = !{ptr @drv260x_init._entry.60, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @drv260x_init._entry_ptr.62, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/misc/drv260x.c", i32 386, i32 4}
!119 = !{ptr @drv260x_init._entry.63, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @drv260x_init._entry_ptr.65, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.67, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/misc/drv260x.c", i32 396, i32 4}
!123 = !{ptr @drv260x_init._entry.66, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @drv260x_init._entry_ptr.68, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/misc/drv260x.c", i32 409, i32 4}
!127 = !{ptr @drv260x_init._entry.69, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @drv260x_init._entry_ptr.71, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @drv260x_init._entry.72, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/input/misc/drv260x.c", i32 419, i32 4}
!131 = !{ptr @drv260x_init._entry_ptr.73, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.75, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/misc/drv260x.c", i32 431, i32 3}
!134 = !{ptr @drv260x_init._entry.74, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @drv260x_init._entry_ptr.76, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.78, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/input/misc/drv260x.c", i32 440, i32 4}
!138 = !{ptr @drv260x_init._entry.77, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @drv260x_init._entry_ptr.79, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @drv260x_lra_cal_regs, !141, !"drv260x_lra_cal_regs", i1 false, i1 false}
!141 = !{!"../drivers/input/misc/drv260x.c", i32 305, i32 34}
!142 = !{ptr @drv260x_erm_cal_regs, !143, !"drv260x_erm_cal_regs", i1 false, i1 false}
!143 = !{!"../drivers/input/misc/drv260x.c", i32 329, i32 34}
!144 = !{ptr @drv260x_lra_init_regs, !145, !"drv260x_lra_init_regs", i1 false, i1 false}
!145 = !{!"../drivers/input/misc/drv260x.c", i32 312, i32 34}
!146 = !{ptr @drv260x_of_match, !147, !"drv260x_of_match", i1 false, i1 false}
!147 = !{!"../drivers/input/misc/drv260x.c", i32 647, i32 34}
!148 = !{ptr @drv260x_pm_ops, !149, !"drv260x_pm_ops", i1 false, i1 false}
!149 = !{!"../drivers/input/misc/drv260x.c", i32 639, i32 8}
!150 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/input/misc/drv260x.c", i32 589, i32 4}
!152 = !{ptr @.str.81, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @drv260x_suspend._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @drv260x_suspend._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/input/misc/drv260x.c", i32 597, i32 4}
!157 = !{ptr @drv260x_suspend._entry.82, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @drv260x_suspend._entry_ptr.84, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.85, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/input/misc/drv260x.c", i32 618, i32 4}
!161 = !{ptr @.str.86, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @drv260x_resume._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @drv260x_resume._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.88, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/input/misc/drv260x.c", i32 626, i32 4}
!166 = !{ptr @drv260x_resume._entry.87, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @drv260x_resume._entry_ptr.89, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @drv260x_id, !169, !"drv260x_id", i1 false, i1 false}
!169 = !{!"../drivers/input/misc/drv260x.c", i32 641, i32 35}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{!"auto-init"}
