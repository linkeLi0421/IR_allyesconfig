; ModuleID = '/llk/IR_all_yes/drivers/input/misc/drv2667.c_pt.bc'
source_filename = "../drivers/input/misc/drv2667.c"
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
%struct.drv2667_data = type { ptr, ptr, ptr, %struct.work_struct, ptr, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.86 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.86 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_drv2667__288_486_drv2667_driver_init6 = internal global ptr @drv2667_driver_init, section ".initcall6.init", align 4
@drv2667_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @drv2667_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @drv2667_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drv2667_pm_ops, ptr null, ptr null }, ptr @drv2667_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_drv2667_driver_exit = internal global ptr @drv2667_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [46 x i8] c"drv2667.description=TI DRV2667 haptics driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [40 x i8] c"drv2667.file=drivers/input/misc/drv2667\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [20 x i8] c"drv2667.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [43 x i8] c"drv2667.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drv2667-haptics\00", [16 x i8] zeroinitializer }, align 32
@drv2667_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,drv2667\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@drv2667_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @drv2667_suspend, ptr @drv2667_resume, ptr @drv2667_suspend, ptr @drv2667_resume, ptr @drv2667_suspend, ptr @drv2667_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@drv2667_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"drv2667\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbat\00", [27 x i8] zeroinitializer }, align 32
@drv2667_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to get regulator, error: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"drv2667_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/misc/drv2667.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@drv2667_probe._entry_ptr = internal global ptr @drv2667_probe._entry, section ".printk_index", align 4
@drv2667_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 356, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@drv2667_probe._entry_ptr.9 = internal global ptr @drv2667_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drv2667:haptics\00", [16 x i8] zeroinitializer }, align 32
@drv2667_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 370, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"input_ff_create() failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@drv2667_probe._entry_ptr.13 = internal global ptr @drv2667_probe._entry.11, section ".printk_index", align 4
@drv2667_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&haptics->work)\00", [62 x i8] zeroinitializer }, align 32
@drv2667_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@drv2667_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drv2667_reg_defs, i32 13, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drv2667:379:(&drv2667_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@drv2667_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 383, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@drv2667_probe._entry_ptr.18 = internal global ptr @drv2667_probe._entry.16, section ".printk_index", align 4
@drv2667_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 389, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device init failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@drv2667_probe._entry_ptr.21 = internal global ptr @drv2667_probe._entry.19, section ".printk_index", align 4
@drv2667_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 396, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"couldn't register input device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@drv2667_probe._entry_ptr.24 = internal global ptr @drv2667_probe._entry.22, section ".printk_index", align 4
@drv2667_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 256, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enter standby mode: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"drv2667_close\00", [18 x i8] zeroinitializer }, align 32
@drv2667_close._entry_ptr = internal global ptr @drv2667_close._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@drv2667_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 192, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set the page: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drv2667_worker\00", [17 x i8] zeroinitializer }, align 32
@drv2667_worker._entry_ptr = internal global ptr @drv2667_worker._entry, section ".printk_index", align 4
@drv2667_worker._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set the amplitude: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@drv2667_worker._entry_ptr.31 = internal global ptr @drv2667_worker._entry.29, section ".printk_index", align 4
@drv2667_worker._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 208, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@drv2667_worker._entry_ptr.33 = internal global ptr @drv2667_worker._entry.32, section ".printk_index", align 4
@drv2667_worker._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.4, i32 216, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set the GO bit: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@drv2667_worker._entry_ptr.36 = internal global ptr @drv2667_worker._entry.34, section ".printk_index", align 4
@drv2667_worker._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.28, ptr @.str.4, i32 223, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to unset the GO bit: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@drv2667_worker._entry_ptr.39 = internal global ptr @drv2667_worker._entry.37, section ".printk_index", align 4
@drv2667_reg_defs = internal constant { [13 x %struct.reg_default], [56 x i8] } { [13 x %struct.reg_default] [%struct.reg_default { i32 0, i32 2 }, %struct.reg_default { i32 1, i32 40 }, %struct.reg_default { i32 2, i32 64 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 255, i32 0 }], [56 x i8] zeroinitializer }, align 32
@drv2667_init_regs = internal constant { [4 x %struct.reg_sequence], [48 x i8] } { [4 x %struct.reg_sequence] [%struct.reg_sequence { i32 2, i32 0, i32 0 }, %struct.reg_sequence { i32 1, i32 0, i32 0 }, %struct.reg_sequence { i32 3, i32 1, i32 0 }, %struct.reg_sequence { i32 4, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@drv2667_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 292, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to write init registers: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"drv2667_init\00", [19 x i8] zeroinitializer }, align 32
@drv2667_init._entry_ptr = internal global ptr @drv2667_init._entry, section ".printk_index", align 4
@drv2667_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.4, i32 299, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to set page: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@drv2667_init._entry_ptr.44 = internal global ptr @drv2667_init._entry.42, section ".printk_index", align 4
@drv2667_page1_init = internal constant { [9 x %struct.reg_sequence], [52 x i8] } { [9 x %struct.reg_sequence] [%struct.reg_sequence { i32 0, i32 5, i32 0 }, %struct.reg_sequence { i32 1, i32 128, i32 0 }, %struct.reg_sequence { i32 2, i32 6, i32 0 }, %struct.reg_sequence { i32 3, i32 0, i32 0 }, %struct.reg_sequence { i32 4, i32 9, i32 0 }, %struct.reg_sequence { i32 5, i32 0, i32 0 }, %struct.reg_sequence { i32 8, i32 5, i32 0 }, %struct.reg_sequence { i32 9, i32 0, i32 0 }, %struct.reg_sequence { i32 6, i32 96, i32 0 }], [52 x i8] zeroinitializer }, align 32
@drv2667_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.4, i32 313, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to write page registers: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@drv2667_init._entry_ptr.47 = internal global ptr @drv2667_init._entry.45, section ".printk_index", align 4
@drv2667_set_waveform_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ERROR: Frequency calculated to %i\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drv2667_set_waveform_freq\00", [38 x i8] zeroinitializer }, align 32
@drv2667_set_waveform_freq._entry_ptr = internal global ptr @drv2667_set_waveform_freq._entry, section ".printk_index", align 4
@drv2667_set_waveform_freq._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 148, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read the page number: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@drv2667_set_waveform_freq._entry_ptr.52 = internal global ptr @drv2667_set_waveform_freq._entry.50, section ".printk_index", align 4
@drv2667_set_waveform_freq._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.49, ptr @.str.4, i32 158, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@drv2667_set_waveform_freq._entry_ptr.54 = internal global ptr @drv2667_set_waveform_freq._entry.53, section ".printk_index", align 4
@drv2667_set_waveform_freq._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.49, ptr @.str.4, i32 166, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set the frequency: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@drv2667_set_waveform_freq._entry_ptr.57 = internal global ptr @drv2667_set_waveform_freq._entry.55, section ".printk_index", align 4
@drv2667_set_waveform_freq._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.49, ptr @.str.4, i32 174, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@drv2667_set_waveform_freq._entry_ptr.59 = internal global ptr @drv2667_set_waveform_freq._entry.58, section ".printk_index", align 4
@drv2667_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 414, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set standby mode\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drv2667_suspend\00", [16 x i8] zeroinitializer }, align 32
@drv2667_suspend._entry_ptr = internal global ptr @drv2667_suspend._entry, section ".printk_index", align 4
@drv2667_suspend._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.4, i32 421, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to disable regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@drv2667_suspend._entry_ptr.64 = internal global ptr @drv2667_suspend._entry.62, section ".printk_index", align 4
@drv2667_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 442, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable regulator\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drv2667_resume\00", [17 x i8] zeroinitializer }, align 32
@drv2667_resume._entry_ptr = internal global ptr @drv2667_resume._entry, section ".printk_index", align 4
@drv2667_resume._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.4, i32 449, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to unset standby mode\0A\00", [34 x i8] zeroinitializer }, align 32
@drv2667_resume._entry_ptr.69 = internal global ptr @drv2667_resume._entry.67, section ".printk_index", align 4
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"drv2667_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 477, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 480, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"drv2667_of_match\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 470, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"drv2667_pm_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 461, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"drv2667_id\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 463, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 346, i32 56 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 349, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 356, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 360, i32 29 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 369, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 374, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [22 x i8] c"drv2667_regmap_config\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 326, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 379, i32 20 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 382, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 389, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 395, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 255, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 191, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 199, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 207, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 215, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 222, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"drv2667_reg_defs\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 113, i32 33 }
@___asan_gen_.196 = private unnamed_addr constant [18 x i8] c"drv2667_init_regs\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 259, i32 34 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 290, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 298, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"drv2667_page1_init\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 266, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 311, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 140, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 147, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 157, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 165, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 173, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 414, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 421, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 442, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private constant [32 x i8] c"../drivers/input/misc/drv2667.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 449, i32 4 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_drv2667_driver_exit, ptr @__initcall__kmod_drv2667__288_486_drv2667_driver_init6, ptr @drv2667_close._entry, ptr @drv2667_close._entry_ptr, ptr @drv2667_driver_exit, ptr @drv2667_init._entry, ptr @drv2667_init._entry.42, ptr @drv2667_init._entry.45, ptr @drv2667_init._entry_ptr, ptr @drv2667_init._entry_ptr.44, ptr @drv2667_init._entry_ptr.47, ptr @drv2667_probe._entry, ptr @drv2667_probe._entry.11, ptr @drv2667_probe._entry.16, ptr @drv2667_probe._entry.19, ptr @drv2667_probe._entry.22, ptr @drv2667_probe._entry.7, ptr @drv2667_probe._entry_ptr, ptr @drv2667_probe._entry_ptr.13, ptr @drv2667_probe._entry_ptr.18, ptr @drv2667_probe._entry_ptr.21, ptr @drv2667_probe._entry_ptr.24, ptr @drv2667_probe._entry_ptr.9, ptr @drv2667_resume._entry, ptr @drv2667_resume._entry.67, ptr @drv2667_resume._entry_ptr, ptr @drv2667_resume._entry_ptr.69, ptr @drv2667_set_waveform_freq._entry, ptr @drv2667_set_waveform_freq._entry.50, ptr @drv2667_set_waveform_freq._entry.53, ptr @drv2667_set_waveform_freq._entry.55, ptr @drv2667_set_waveform_freq._entry.58, ptr @drv2667_set_waveform_freq._entry_ptr, ptr @drv2667_set_waveform_freq._entry_ptr.52, ptr @drv2667_set_waveform_freq._entry_ptr.54, ptr @drv2667_set_waveform_freq._entry_ptr.57, ptr @drv2667_set_waveform_freq._entry_ptr.59, ptr @drv2667_suspend._entry, ptr @drv2667_suspend._entry.62, ptr @drv2667_suspend._entry_ptr, ptr @drv2667_suspend._entry_ptr.64, ptr @drv2667_worker._entry, ptr @drv2667_worker._entry.29, ptr @drv2667_worker._entry.32, ptr @drv2667_worker._entry.34, ptr @drv2667_worker._entry.37, ptr @drv2667_worker._entry_ptr, ptr @drv2667_worker._entry_ptr.31, ptr @drv2667_worker._entry_ptr.33, ptr @drv2667_worker._entry_ptr.36, ptr @drv2667_worker._entry_ptr.39, ptr @drv2667_driver, ptr @.str, ptr @drv2667_of_match, ptr @drv2667_pm_ops, ptr @drv2667_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @drv2667_probe.__key, ptr @.str.14, ptr @drv2667_probe._key, ptr @drv2667_regmap_config, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.35, ptr @.str.38, ptr @drv2667_reg_defs, ptr @drv2667_init_regs, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @drv2667_page1_init, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.56, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_worker._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_worker._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_worker._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_worker._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_reg_defs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_init_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_page1_init to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_set_waveform_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_set_waveform_freq._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_set_waveform_freq._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_set_waveform_freq._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_set_waveform_freq._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_suspend._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv2667_resume._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @drv2667_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @drv2667_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @drv2667_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @drv2667_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drv2667_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %read_buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %regulator = getelementptr inbounds %struct.drv2667_data, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %1) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %call.i, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %3 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.10, ptr %call11, align 8
  %parent = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %parent24 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 40, i32 1
  %8 = ptrtoint ptr %parent24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %parent24, align 8
  %9 = load ptr, ptr %call.i, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 32
  %10 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @drv2667_close, ptr %close, align 4
  %11 = load ptr, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 40, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %13 = load ptr, ptr %call.i, align 4
  tail call void @input_set_capability(ptr noundef %13, i32 noundef 21, i32 noundef 80) #5
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %call29 = tail call i32 @input_ff_create_memless(ptr noundef %15, ptr noundef null, ptr noundef nonnull @drv2667_haptics_play) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body37, label %do.end34

do.end34:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call29) #8
  br label %cleanup

do.body37:                                        ; preds = %if.end19
  %work = getelementptr inbounds %struct.drv2667_data, ptr %call.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %16 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.drv2667_data, ptr %call.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @drv2667_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry41 = getelementptr inbounds %struct.drv2667_data, ptr %call.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %entry41 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry41, ptr %entry41, align 4
  %prev.i = getelementptr inbounds %struct.drv2667_data, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry41, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.drv2667_data, ptr %call.i, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @drv2667_worker, ptr %func, align 4
  %client45 = getelementptr inbounds %struct.drv2667_data, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %client45 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %client, ptr %client45, align 4
  %driver_data.i.i123 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %21 = ptrtoint ptr %driver_data.i.i123 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i123, align 4
  %call46 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @drv2667_regmap_config, ptr noundef nonnull @drv2667_probe._key, ptr noundef nonnull @.str.15) #5
  %regmap = getelementptr inbounds %struct.drv2667_data, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call46, ptr %regmap, align 4
  %cmp.i124 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then49, label %if.end56

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %call46 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %23) #8
  br label %cleanup

if.end56:                                         ; preds = %do.body37
  %frequency.i = getelementptr inbounds %struct.drv2667_data, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %frequency.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 195, ptr %frequency.i, align 4
  %page.i = getelementptr inbounds %struct.drv2667_data, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %page.i, align 4
  %call.i125 = tail call i32 @regmap_register_patch(ptr noundef %call46, ptr noundef nonnull @drv2667_init_regs, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool.not.i = icmp eq i32 %call.i125, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %client45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client45, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40, i32 noundef %call.i125) #8
  br label %do.end62

if.end.i:                                         ; preds = %if.end56
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %30 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %page.i, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 255, i32 noundef %31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end11.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %client45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client45, align 4
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.43, i32 noundef %call3.i) #8
  br label %do.end62

if.end11.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_buf.i.i) #5
  %34 = ptrtoint ptr %read_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %read_buf.i.i, align 4, !annotation !150
  %35 = ptrtoint ptr %frequency.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %frequency.i, align 4
  %mul.i.i = mul i32 %36, 1000
  %div.i.i = udiv i32 %mul.i.i, 78125
  call void @__sanitizer_cov_trace_const_cmp4(i32 78125, i32 %mul.i.i)
  %37 = icmp ult i32 %mul.i.i, 78125
  br i1 %37, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %client45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %client45, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.48, i32 noundef 0) #8
  br label %drv2667_set_waveform_freq.exit.thread.i

if.end.i.i:                                       ; preds = %if.end11.i
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %41, i32 noundef 255, ptr noundef nonnull %read_buf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end7.i.i, label %do.end4.i.i

do.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %client45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client45, align 4
  %dev6.i.i = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i.i, ptr noundef nonnull @.str.51, i32 noundef %call.i.i) #8
  br label %drv2667_set_waveform_freq.exit.thread.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %44 = ptrtoint ptr %read_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %read_buf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp8.i.i = icmp eq i32 %45, 0
  br i1 %cmp8.i.i, label %if.end7.i.i.if.then10.i.i_crit_edge, label %lor.lhs.false.i.i

if.end7.i.i.if.then10.i.i_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i.i

lor.lhs.false.i.i:                                ; preds = %if.end7.i.i
  %46 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %page.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %45)
  %cmp9.not.i.i = icmp eq i32 %47, %45
  br i1 %cmp9.not.i.i, label %lor.lhs.false.i.i.if.end22.i.i_crit_edge, label %lor.lhs.false.i.i.if.then10.i.i_crit_edge

lor.lhs.false.i.i.if.then10.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i.i

lor.lhs.false.i.i.if.end22.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i.i

if.then10.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then10.i.i_crit_edge, %if.end7.i.i.if.then10.i.i_crit_edge
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %50 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %page.i, align 4
  %call13.i.i = call i32 @regmap_write(ptr noundef %49, i32 noundef 255, i32 noundef %51) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.then10.i.i.if.end22.i.i_crit_edge, label %do.end18.i.i

if.then10.i.i.if.end22.i.i_crit_edge:             ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i.i

do.end18.i.i:                                     ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %client45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %client45, align 4
  %dev20.i.i = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i.i, ptr noundef nonnull @.str.27, i32 noundef %call13.i.i) #8
  br label %drv2667_set_waveform_freq.exit.thread.i

if.end22.i.i:                                     ; preds = %if.then10.i.i.if.end22.i.i_crit_edge, %lor.lhs.false.i.i.if.end22.i.i_crit_edge
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call24.i.i = call i32 @regmap_write(ptr noundef %55, i32 noundef 7, i32 noundef %div.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end22.i.i.if.end32.i.i_crit_edge, label %do.end29.i.i

if.end22.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i.i

do.end29.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %client45 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client45, align 4
  %dev31.i.i = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31.i.i, ptr noundef nonnull @.str.56, i32 noundef %call24.i.i) #8
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %do.end29.i.i, %if.end22.i.i.if.end32.i.i_crit_edge
  %58 = ptrtoint ptr %read_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %read_buf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp33.i.i = icmp eq i32 %59, 0
  br i1 %cmp33.i.i, label %if.end32.i.i.if.then37.i.i_crit_edge, label %lor.lhs.false34.i.i

if.end32.i.i.if.then37.i.i_crit_edge:             ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37.i.i

lor.lhs.false34.i.i:                              ; preds = %if.end32.i.i
  %60 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %page.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %59)
  %cmp36.not.i.i = icmp eq i32 %61, %59
  br i1 %cmp36.not.i.i, label %drv2667_set_waveform_freq.exit.i, label %lor.lhs.false34.i.i.if.then37.i.i_crit_edge

lor.lhs.false34.i.i.if.then37.i.i_crit_edge:      ; preds = %lor.lhs.false34.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37.i.i

if.then37.i.i:                                    ; preds = %lor.lhs.false34.i.i.if.then37.i.i_crit_edge, %if.end32.i.i.if.then37.i.i_crit_edge
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %call39.i.i = call i32 @regmap_write(ptr noundef %63, i32 noundef 255, i32 noundef %59) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %tobool40.not.i.i = icmp eq i32 %call39.i.i, 0
  br i1 %tobool40.not.i.i, label %drv2667_set_waveform_freq.exit.thread54.i, label %do.end44.i.i

drv2667_set_waveform_freq.exit.thread54.i:        ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i.i) #5
  br label %if.end15.i

do.end44.i.i:                                     ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %client45 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %client45, align 4
  %dev46.i.i = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46.i.i, ptr noundef nonnull @.str.27, i32 noundef %call39.i.i) #8
  br label %drv2667_set_waveform_freq.exit.thread.i

drv2667_set_waveform_freq.exit.thread.i:          ; preds = %do.end44.i.i, %do.end18.i.i, %do.end4.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -5, %do.end44.i.i ], [ -5, %do.end18.i.i ], [ -5, %do.end4.i.i ], [ -22, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i.i) #5
  br label %error_page.i

drv2667_set_waveform_freq.exit.i:                 ; preds = %lor.lhs.false34.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i.i) #5
  br i1 %tobool25.not.i.i, label %drv2667_set_waveform_freq.exit.i.if.end15.i_crit_edge, label %drv2667_set_waveform_freq.exit.i.error_page.i_crit_edge

drv2667_set_waveform_freq.exit.i.error_page.i_crit_edge: ; preds = %drv2667_set_waveform_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_page.i

drv2667_set_waveform_freq.exit.i.if.end15.i_crit_edge: ; preds = %drv2667_set_waveform_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

if.end15.i:                                       ; preds = %drv2667_set_waveform_freq.exit.i.if.end15.i_crit_edge, %drv2667_set_waveform_freq.exit.thread54.i
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call17.i = call i32 @regmap_register_patch(ptr noundef %67, ptr noundef nonnull @drv2667_page1_init, i32 noundef 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %drv2667_init.exit, label %do.end22.i

do.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %client45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %client45, align 4
  %dev24.i = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24.i, ptr noundef nonnull @.str.46, i32 noundef %call17.i) #8
  br label %do.end62

error_page.i:                                     ; preds = %drv2667_set_waveform_freq.exit.i.error_page.i_crit_edge, %drv2667_set_waveform_freq.exit.thread.i
  %retval.0.i53.i = phi i32 [ %retval.0.i.ph.i, %drv2667_set_waveform_freq.exit.thread.i ], [ %call24.i.i, %drv2667_set_waveform_freq.exit.i.error_page.i_crit_edge ]
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %call29.i = call i32 @regmap_write(ptr noundef %71, i32 noundef 255, i32 noundef 0) #5
  br label %do.end62

drv2667_init.exit:                                ; preds = %if.end15.i
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call27.i = call i32 @regmap_write(ptr noundef %73, i32 noundef 255, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool58.not = icmp eq i32 %call27.i, 0
  br i1 %tobool58.not, label %if.end64, label %drv2667_init.exit.do.end62_crit_edge

drv2667_init.exit.do.end62_crit_edge:             ; preds = %drv2667_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end62

do.end62:                                         ; preds = %drv2667_init.exit.do.end62_crit_edge, %error_page.i, %do.end22.i, %do.end8.i, %do.end.i
  %retval.0.i128 = phi i32 [ %call27.i, %drv2667_init.exit.do.end62_crit_edge ], [ %retval.0.i53.i, %error_page.i ], [ %call3.i, %do.end8.i ], [ %call17.i, %do.end22.i ], [ %call.i125, %do.end.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i128) #8
  br label %cleanup

if.end64:                                         ; preds = %drv2667_init.exit
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 4
  %call66 = call i32 @input_register_device(ptr noundef %75) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end64.cleanup_crit_edge, label %do.end71

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call66) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %if.end64.cleanup_crit_edge, %do.end62, %if.then49, %do.end34, %do.end17, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %call29, %do.end34 ], [ %23, %if.then49 ], [ %retval.0.i128, %do.end62 ], [ %call66, %do.end71 ], [ -12, %do.end17 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drv2667_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.drv2667_data, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #5
  %regmap = getelementptr inbounds %struct.drv2667_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 2, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %client = getelementptr inbounds %struct.drv2667_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drv2667_haptics_play(ptr nocapture noundef readonly %input, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not = icmp eq i16 %3, 0
  br i1 %cmp.not, label %if.else, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %weak_magnitude, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.else, %entry.if.end16_crit_edge
  %conv6.sink.in = phi i16 [ %5, %if.else ], [ %3, %entry.if.end16_crit_edge ]
  %conv6.sink = zext i16 %conv6.sink.in to i32
  %magnitude13 = getelementptr inbounds %struct.drv2667_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %magnitude13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv6.sink, ptr %magnitude13, align 4
  %work = getelementptr inbounds %struct.drv2667_data, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drv2667_worker(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %magnitude = getelementptr i8, ptr %work, i32 52
  %0 = ptrtoint ptr %magnitude to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %magnitude, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %regmap34 = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %regmap34 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap34, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %page = getelementptr i8, ptr %work, i32 48
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 255, i32 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %client = getelementptr i8, ptr %work, i32 -8
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %8 = ptrtoint ptr %regmap34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap34, align 4
  %10 = ptrtoint ptr %magnitude to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %magnitude, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 6, i32 noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %client11 = getelementptr i8, ptr %work, i32 -8
  %12 = ptrtoint ptr %client11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client11, align 4
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.30, i32 noundef %call5) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %14 = ptrtoint ptr %regmap34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap34, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 255, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %client21 = getelementptr i8, ptr %work, i32 -8
  %16 = ptrtoint ptr %client21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client21, align 4
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.27, i32 noundef %call15) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %18 = ptrtoint ptr %regmap34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap34, align 4
  %call25 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 2, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %do.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %client31 = getelementptr i8, ptr %work, i32 -8
  %20 = ptrtoint ptr %client31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client31, align 4
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.35, i32 noundef %call25) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 2, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.else.cleanup_crit_edge, label %do.end40

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %client41 = getelementptr i8, ptr %work, i32 -8
  %22 = ptrtoint ptr %client41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client41, align 4
  %dev42 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.38, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.else.cleanup_crit_edge, %do.end30, %if.end23.cleanup_crit_edge, %do.end20, %do.end10, %do.end
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
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drv2667_suspend(ptr noundef %dev) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.drv2667_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 2, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60) #8
  %regulator = getelementptr inbounds %struct.drv2667_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulator, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %9) #5
  br label %out

if.end:                                           ; preds = %if.then
  %regulator6 = getelementptr inbounds %struct.drv2667_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %regulator6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regulator6, align 4
  %call7 = tail call i32 @regulator_disable(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.out_crit_edge, label %do.end12

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 2, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %out

out:                                              ; preds = %do.end12, %if.end.out_crit_edge, %do.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call7, %do.end12 ], [ 0, %if.end.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %mutex18 = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex18) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drv2667_resume(ptr noundef %dev) #2 align 64 {
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
  %regulator = getelementptr inbounds %struct.drv2667_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regulator, align 4
  %call3 = tail call i32 @regulator_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65) #8
  br label %out

if.end:                                           ; preds = %if.then
  %regmap = getelementptr inbounds %struct.drv2667_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 2, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end.out_crit_edge, label %do.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68) #8
  %10 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regulator, align 4
  %call12 = tail call i32 @regulator_disable(ptr noundef %11) #5
  br label %out

out:                                              ; preds = %do.end10, %if.end.out_crit_edge, %do.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call3, %do.end ], [ %call.i, %do.end10 ], [ 0, %if.end.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %mutex16 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 37
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

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !110, !111, !112, !114, !115, !117, !119, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @__initcall__kmod_drv2667__288_486_drv2667_driver_init6, !1, !"__initcall__kmod_drv2667__288_486_drv2667_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/drv2667.c", i32 486, i32 1}
!2 = !{ptr @__exitcall_drv2667_driver_exit, !1, !"__exitcall_drv2667_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/drv2667.c", i32 488, i32 1}
!5 = !{ptr @__UNIQUE_ID_file290, !6, !"__UNIQUE_ID_file290", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/drv2667.c", i32 489, i32 1}
!7 = !{ptr @__UNIQUE_ID_license291, !6, !"__UNIQUE_ID_license291", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author292, !9, !"__UNIQUE_ID_author292", i1 false, i1 false}
!9 = !{!"../drivers/input/misc/drv2667.c", i32 490, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/drv2667.c", i32 480, i32 11}
!12 = !{ptr @drv2667_driver, !13, !"drv2667_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/drv2667.c", i32 477, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/drv2667.c", i32 346, i32 56}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/drv2667.c", i32 349, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @drv2667_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @drv2667_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/misc/drv2667.c", i32 356, i32 3}
!26 = !{ptr @drv2667_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @drv2667_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/drv2667.c", i32 360, i32 29}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/misc/drv2667.c", i32 369, i32 3}
!32 = !{ptr @drv2667_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @drv2667_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @drv2667_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/input/misc/drv2667.c", i32 374, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @drv2667_probe._key, !38, !"_key", i1 false, i1 false}
!38 = !{!"../drivers/input/misc/drv2667.c", i32 379, i32 20}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/misc/drv2667.c", i32 382, i32 3}
!42 = !{ptr @drv2667_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @drv2667_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/misc/drv2667.c", i32 389, i32 3}
!46 = !{ptr @drv2667_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @drv2667_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/misc/drv2667.c", i32 395, i32 3}
!50 = !{ptr @drv2667_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @drv2667_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/misc/drv2667.c", i32 255, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @drv2667_close._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @drv2667_close._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/misc/drv2667.c", i32 191, i32 4}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @drv2667_worker._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @drv2667_worker._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/misc/drv2667.c", i32 199, i32 4}
!64 = !{ptr @drv2667_worker._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @drv2667_worker._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @drv2667_worker._entry.32, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/input/misc/drv2667.c", i32 207, i32 4}
!68 = !{ptr @drv2667_worker._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/misc/drv2667.c", i32 215, i32 4}
!71 = !{ptr @drv2667_worker._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @drv2667_worker._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/misc/drv2667.c", i32 222, i32 4}
!75 = !{ptr @drv2667_worker._entry.37, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @drv2667_worker._entry_ptr.39, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @drv2667_regmap_config, !78, !"drv2667_regmap_config", i1 false, i1 false}
!78 = !{!"../drivers/input/misc/drv2667.c", i32 326, i32 35}
!79 = !{ptr @drv2667_reg_defs, !80, !"drv2667_reg_defs", i1 false, i1 false}
!80 = !{!"../drivers/input/misc/drv2667.c", i32 113, i32 33}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/misc/drv2667.c", i32 290, i32 3}
!83 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @drv2667_init._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @drv2667_init._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/misc/drv2667.c", i32 298, i32 3}
!88 = !{ptr @drv2667_init._entry.42, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @drv2667_init._entry_ptr.44, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/misc/drv2667.c", i32 311, i32 3}
!92 = !{ptr @drv2667_init._entry.45, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @drv2667_init._entry_ptr.47, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @drv2667_init_regs, !95, !"drv2667_init_regs", i1 false, i1 false}
!95 = !{!"../drivers/input/misc/drv2667.c", i32 259, i32 34}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/misc/drv2667.c", i32 140, i32 3}
!98 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @drv2667_set_waveform_freq._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @drv2667_set_waveform_freq._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/misc/drv2667.c", i32 147, i32 3}
!103 = !{ptr @drv2667_set_waveform_freq._entry.50, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @drv2667_set_waveform_freq._entry_ptr.52, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @drv2667_set_waveform_freq._entry.53, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/input/misc/drv2667.c", i32 157, i32 4}
!107 = !{ptr @drv2667_set_waveform_freq._entry_ptr.54, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/misc/drv2667.c", i32 165, i32 3}
!110 = !{ptr @drv2667_set_waveform_freq._entry.55, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @drv2667_set_waveform_freq._entry_ptr.57, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @drv2667_set_waveform_freq._entry.58, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/input/misc/drv2667.c", i32 173, i32 4}
!114 = !{ptr @drv2667_set_waveform_freq._entry_ptr.59, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @drv2667_page1_init, !116, !"drv2667_page1_init", i1 false, i1 false}
!116 = !{!"../drivers/input/misc/drv2667.c", i32 266, i32 34}
!117 = !{ptr @drv2667_of_match, !118, !"drv2667_of_match", i1 false, i1 false}
!118 = !{!"../drivers/input/misc/drv2667.c", i32 470, i32 34}
!119 = !{ptr @drv2667_pm_ops, !120, !"drv2667_pm_ops", i1 false, i1 false}
!120 = !{!"../drivers/input/misc/drv2667.c", i32 461, i32 8}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/misc/drv2667.c", i32 414, i32 4}
!123 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @drv2667_suspend._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @drv2667_suspend._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/input/misc/drv2667.c", i32 421, i32 4}
!128 = !{ptr @drv2667_suspend._entry.62, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @drv2667_suspend._entry_ptr.64, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/input/misc/drv2667.c", i32 442, i32 4}
!132 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @drv2667_resume._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @drv2667_resume._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/input/misc/drv2667.c", i32 449, i32 4}
!137 = !{ptr @drv2667_resume._entry.67, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @drv2667_resume._entry_ptr.69, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @drv2667_id, !140, !"drv2667_id", i1 false, i1 false}
!140 = !{!"../drivers/input/misc/drv2667.c", i32 463, i32 35}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{!"auto-init"}
