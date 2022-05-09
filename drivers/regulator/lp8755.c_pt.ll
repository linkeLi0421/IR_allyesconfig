; ModuleID = '/llk/IR_all_yes/drivers/regulator/lp8755.c_pt.bc'
source_filename = "../drivers/regulator/lp8755.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lp8755_mphase = type { i32, [6 x i32] }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lp8755_chip = type { ptr, ptr, ptr, i32, i32, i32, [6 x ptr] }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.lp8755_platform_data = type { i32, [6 x ptr] }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_lp8755__288_457_lp8755_init4 = internal global ptr @lp8755_init, section ".initcall4.init", align 4
@lp8755_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lp8755_probe, ptr @lp8755_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp8755_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lp8755_exit = internal global ptr @lp8755_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [51 x i8] c"lp8755.description=Texas Instruments lp8755 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [49 x i8] c"lp8755.author=Daniel Jeong <daniel.jeong@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"lp8755.file=drivers/regulator/lp8755\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"lp8755.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lp8755-regulator\00", [47 x i8] zeroinitializer }, align 32
@lp8755_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp8755-regulator\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lp8755_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i2c functionality check fail.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp8755_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/regulator/lp8755.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp8755_probe._entry_ptr = internal global ptr @lp8755_probe._entry, section ".printk_index", align 4
@lp8755_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lp8755_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lp8755:378:(&lp8755_regmap)->lock\00", [62 x i8] zeroinitializer }, align 32
@lp8755_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 381, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fail to allocate regmap %d\0A\00", [36 x i8] zeroinitializer }, align 32
@lp8755_probe._entry_ptr.9 = internal global ptr @lp8755_probe._entry.7, section ".printk_index", align 4
@lp8755_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fail to initialize chip\0A\00", [39 x i8] zeroinitializer }, align 32
@lp8755_probe._entry_ptr.12 = internal global ptr @lp8755_probe._entry.10, section ".printk_index", align 4
@lp8755_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fail to initialize regulators\0A\00", [33 x i8] zeroinitializer }, align 32
@lp8755_probe._entry_ptr.15 = internal global ptr @lp8755_probe._entry.13, section ".printk_index", align 4
@lp8755_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fail to irq config\0A\00", [44 x i8] zeroinitializer }, align 32
@lp8755_probe._entry_ptr.18 = internal global ptr @lp8755_probe._entry.16, section ".printk_index", align 4
@mphase_buck = internal constant { [9 x %struct.lp8755_mphase], [36 x i8] } { [9 x %struct.lp8755_mphase] [%struct.lp8755_mphase { i32 3, [6 x i32] [i32 0, i32 3, i32 5, i32 0, i32 0, i32 0] }, %struct.lp8755_mphase { i32 6, [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5] }, %struct.lp8755_mphase { i32 5, [6 x i32] [i32 0, i32 2, i32 3, i32 4, i32 5, i32 0] }, %struct.lp8755_mphase { i32 4, [6 x i32] [i32 0, i32 3, i32 4, i32 5, i32 0, i32 0] }, %struct.lp8755_mphase { i32 3, [6 x i32] [i32 0, i32 4, i32 5, i32 0, i32 0, i32 0] }, %struct.lp8755_mphase { i32 2, [6 x i32] [i32 0, i32 5, i32 0, i32 0, i32 0, i32 0] }, %struct.lp8755_mphase { i32 1, [6 x i32] zeroinitializer }, %struct.lp8755_mphase { i32 2, [6 x i32] [i32 0, i32 3, i32 0, i32 0, i32 0, i32 0] }, %struct.lp8755_mphase { i32 4, [6 x i32] [i32 0, i32 2, i32 3, i32 5, i32 0, i32 0] }], [36 x i8] zeroinitializer }, align 32
@lp8755_init_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c access error %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lp8755_init_data\00", [47 x i8] zeroinitializer }, align 32
@lp8755_init_data._entry_ptr = internal global ptr @lp8755_init_data._entry, section ".printk_index", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp8755_buck0\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp8755_buck1\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp8755_buck2\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp8755_buck3\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp8755_buck4\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp8755_buck5\00", [19 x i8] zeroinitializer }, align 32
@lp8755_reg_default = internal global { [6 x { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }], [328 x i8] } { [6 x { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }] [{ ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.21, i32 500000, i32 1675000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 1, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.22, i32 500000, i32 1675000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 1, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.23, i32 500000, i32 1675000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 1, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.24, i32 500000, i32 1675000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 1, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.25, i32 500000, i32 1675000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 1, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.26, i32 500000, i32 1675000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 1, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }], [328 x i8] zeroinitializer }, align 32
@lp8755_regulators = internal constant { [6 x %struct.regulator_desc], [360 x i8] } { [6 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 119, i32 0, ptr @lp8755_buck_ops, i32 0, i32 0, ptr null, i32 500000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, ptr @lp8755_buck_ramp_table, i32 8, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 119, i32 0, ptr @lp8755_buck_ops, i32 0, i32 0, ptr null, i32 500000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 7, ptr @lp8755_buck_ramp_table, i32 8, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 119, i32 0, ptr @lp8755_buck_ops, i32 0, i32 0, ptr null, i32 500000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 4, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 7, ptr @lp8755_buck_ramp_table, i32 8, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 119, i32 0, ptr @lp8755_buck_ops, i32 0, i32 0, ptr null, i32 500000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 1, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 7, ptr @lp8755_buck_ramp_table, i32 8, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 119, i32 0, ptr @lp8755_buck_ops, i32 0, i32 0, ptr null, i32 500000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 5, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 11, i32 7, ptr @lp8755_buck_ramp_table, i32 8, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 119, i32 0, ptr @lp8755_buck_ops, i32 0, i32 0, ptr null, i32 500000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 2, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 7, ptr @lp8755_buck_ramp_table, i32 8, i32 0, i32 0, i32 0, ptr null }], [360 x i8] zeroinitializer }, align 32
@lp8755_regulator_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"regulator init failed: buck %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lp8755_regulator_init\00", [42 x i8] zeroinitializer }, align 32
@lp8755_regulator_init._entry_ptr = internal global ptr @lp8755_regulator_init._entry, section ".printk_index", align 4
@lp8755_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @lp8755_buck_set_mode, ptr @lp8755_buck_get_mode, ptr null, ptr @lp8755_buck_enable_time, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@lp8755_buck_ramp_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 30000, i32 15000, i32 7500, i32 3800, i32 1900, i32 940, i32 470, i32 230], [32 x i8] zeroinitializer }, align 32
@lp8755_buck_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Not supported buck mode %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lp8755_buck_set_mode\00", [43 x i8] zeroinitializer }, align 32
@lp8755_buck_set_mode._entry_ptr = internal global ptr @lp8755_buck_set_mode._entry, section ".printk_index", align 4
@lp8755_buck_set_mode._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.31, ptr @.str.3, i32 105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lp8755_buck_set_mode._entry_ptr.33 = internal global ptr @lp8755_buck_set_mode._entry.32, section ".printk_index", align 4
@lp8755_buck_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.34, ptr @.str.3, i32 135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lp8755_buck_get_mode\00", [43 x i8] zeroinitializer }, align 32
@lp8755_buck_get_mode._entry_ptr = internal global ptr @lp8755_buck_get_mode._entry, section ".printk_index", align 4
@lp8755_buck_enable_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.35, ptr @.str.3, i32 60, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lp8755_buck_enable_time\00", [40 x i8] zeroinitializer }, align 32
@lp8755_buck_enable_time._entry_ptr = internal global ptr @lp8755_buck_enable_time._entry, section ".printk_index", align 4
@lp8755_int_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 337, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"not use interrupt : %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lp8755_int_config\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lp8755_int_config._entry_ptr = internal global ptr @lp8755_int_config._entry, section ".printk_index", align 4
@lp8755_int_config._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.37, ptr @.str.3, i32 343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lp8755_int_config._entry_ptr.40 = internal global ptr @lp8755_int_config._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lp8755-irq\00", [21 x i8] zeroinitializer }, align 32
@lp8755_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.42, ptr @.str.3, i32 327, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lp8755_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@lp8755_irq_handler._entry_ptr = internal global ptr @lp8755_irq_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"lp8755_i2c_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 443, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 445, i32 14 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"lp8755_id\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 436, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 368, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"lp8755_regmap\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 354, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 378, i32 18 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 381, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 397, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 404, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 411, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"mphase_buck\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 177, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 211, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 169, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 170, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 171, i32 19 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 172, i32 19 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 173, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 174, i32 19 }
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"lp8755_reg_default\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 168, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"lp8755_regulators\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 235, i32 36 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 264, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"lp8755_buck_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 143, i32 35 }
@___asan_gen_.151 = private unnamed_addr constant [23 x i8] c"lp8755_buck_ramp_table\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 139, i32 27 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 95, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 105, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 135, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 60, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 337, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 343, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 351, i32 7 }
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [30 x i8] c"../drivers/regulator/lp8755.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 327, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lp8755_exit, ptr @__initcall__kmod_lp8755__288_457_lp8755_init4, ptr @lp8755_buck_enable_time._entry, ptr @lp8755_buck_enable_time._entry_ptr, ptr @lp8755_buck_get_mode._entry, ptr @lp8755_buck_get_mode._entry_ptr, ptr @lp8755_buck_set_mode._entry, ptr @lp8755_buck_set_mode._entry.32, ptr @lp8755_buck_set_mode._entry_ptr, ptr @lp8755_buck_set_mode._entry_ptr.33, ptr @lp8755_exit, ptr @lp8755_init_data._entry, ptr @lp8755_init_data._entry_ptr, ptr @lp8755_int_config._entry, ptr @lp8755_int_config._entry.39, ptr @lp8755_int_config._entry_ptr, ptr @lp8755_int_config._entry_ptr.40, ptr @lp8755_irq_handler._entry, ptr @lp8755_irq_handler._entry_ptr, ptr @lp8755_probe._entry, ptr @lp8755_probe._entry.10, ptr @lp8755_probe._entry.13, ptr @lp8755_probe._entry.16, ptr @lp8755_probe._entry.7, ptr @lp8755_probe._entry_ptr, ptr @lp8755_probe._entry_ptr.12, ptr @lp8755_probe._entry_ptr.15, ptr @lp8755_probe._entry_ptr.18, ptr @lp8755_probe._entry_ptr.9, ptr @lp8755_regulator_init._entry, ptr @lp8755_regulator_init._entry_ptr, ptr @lp8755_i2c_driver, ptr @.str, ptr @lp8755_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lp8755_probe._key, ptr @lp8755_regmap, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @mphase_buck, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @lp8755_reg_default, ptr @lp8755_regulators, ptr @.str.28, ptr @.str.29, ptr @lp8755_buck_ops, ptr @lp8755_buck_ramp_table, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mphase_buck to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_init_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_reg_default to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_regulators to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_regulator_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_buck_ramp_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_buck_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_buck_set_mode._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_buck_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_buck_enable_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_int_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_int_config._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8755_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8755_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp8755_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp8755_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @lp8755_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8755_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %regval.i114 = alloca i32, align 4
  %rconfig.i = alloca %struct.regulator_config, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 4
  %call10 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lp8755_regmap, ptr noundef nonnull @lp8755_probe._key, ptr noundef nonnull @.str.6) #5
  %regmap = getelementptr inbounds %struct.lp8755_chip, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %10) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %pdata22 = getelementptr inbounds %struct.lp8755_chip, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %pdata22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %pdata22, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %mphase23 = getelementptr inbounds %struct.lp8755_chip, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %mphase23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %mphase23, align 4
  br label %if.end39

if.else:                                          ; preds = %if.end20
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %call.i100 = tail call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef 28, i32 noundef 3520) #5
  %pdata26 = getelementptr inbounds %struct.lp8755_chip, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %pdata26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i100, ptr %pdata26, align 4
  %tobool28.not = icmp eq ptr %call.i100, null
  br i1 %tobool28.not, label %if.else.cleanup_crit_edge, label %if.end30

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #5
  %19 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %regval.i, align 4, !annotation !118
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i101 = call i32 @regmap_read(ptr noundef %21, i32 noundef 61, ptr noundef nonnull %regval.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp.i102 = icmp slt i32 %call.i101, 0
  br i1 %cmp.i102, label %do.end36, label %if.end.i

if.end.i:                                         ; preds = %if.end30
  %22 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regval.i, align 4
  %and.i103 = and i32 %23, 15
  %mphase.i = getelementptr inbounds %struct.lp8755_chip, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %mphase.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and.i103, ptr %mphase.i, align 4
  %arrayidx24.i = getelementptr [9 x %struct.lp8755_mphase], ptr @mphase_buck, i32 0, i32 %and.i103
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp325.i = icmp sgt i32 %26, 0
  br i1 %cmp325.i, label %if.end.i.for.body.i_crit_edge, label %lp8755_init_data.exit.thread121

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

lp8755_init_data.exit.thread121:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #5
  br label %if.end39

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %icnt.026.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx7.i = getelementptr [9 x %struct.lp8755_mphase], ptr @mphase_buck, i32 0, i32 %and.i103, i32 1, i32 %icnt.026.i
  %27 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr [6 x %struct.regulator_init_data], ptr @lp8755_reg_default, i32 0, i32 %28
  %arrayidx9.i = getelementptr %struct.lp8755_platform_data, ptr %call.i100, i32 0, i32 1, i32 %28
  %29 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx8.i, ptr %arrayidx9.i, align 4
  %inc.i = add nuw nsw i32 %icnt.026.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %26
  br i1 %exitcond.not, label %lp8755_init_data.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

lp8755_init_data.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #5
  br label %if.end39

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end39:                                         ; preds = %lp8755_init_data.exit, %lp8755_init_data.exit.thread121, %if.then21
  %pdata1.i104 = getelementptr inbounds %struct.lp8755_chip, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %pdata1.i104 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata1.i104, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rconfig.i) #5
  %34 = getelementptr inbounds i8, ptr %rconfig.i, i32 20
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %34, align 4
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %regmap2.i = getelementptr inbounds %struct.regulator_config, ptr %rconfig.i, i32 0, i32 4
  %38 = ptrtoint ptr %regmap2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %regmap2.i, align 4
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %41 = ptrtoint ptr %rconfig.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %rconfig.i, align 4
  %driver_data.i = getelementptr inbounds %struct.regulator_config, ptr %rconfig.i, i32 0, i32 2
  %42 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %driver_data.i, align 4
  %mphase.i106 = getelementptr inbounds %struct.lp8755_chip, ptr %call.i, i32 0, i32 5
  %43 = ptrtoint ptr %mphase.i106 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mphase.i106, align 4
  %arrayidx47.i = getelementptr [9 x %struct.lp8755_mphase], ptr @mphase_buck, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp48.i = icmp sgt i32 %46, 0
  br i1 %cmp48.i, label %for.body.lr.ph.i, label %if.end39.lp8755_regulator_init.exit.thread_crit_edge

if.end39.lp8755_regulator_init.exit.thread_crit_edge: ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8755_regulator_init.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end39
  %init_data.i = getelementptr inbounds %struct.regulator_config, ptr %rconfig.i, i32 0, i32 1
  %of_node10.i = getelementptr inbounds %struct.regulator_config, ptr %rconfig.i, i32 0, i32 3
  br label %for.body.i113

for.cond.i:                                       ; preds = %for.body.i113
  %inc.i107 = add nuw nsw i32 %icnt.049.i, 1
  %47 = ptrtoint ptr %mphase.i106 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mphase.i106, align 4
  %arrayidx.i108 = getelementptr [9 x %struct.lp8755_mphase], ptr @mphase_buck, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i108, align 4
  %cmp.i109 = icmp slt i32 %inc.i107, %50
  br i1 %cmp.i109, label %for.cond.i.for.body.i113_crit_edge, label %for.cond.i.lp8755_regulator_init.exit.thread_crit_edge

for.cond.i.lp8755_regulator_init.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8755_regulator_init.exit.thread

for.cond.i.for.body.i113_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i113

for.body.i113:                                    ; preds = %for.cond.i.for.body.i113_crit_edge, %for.body.lr.ph.i
  %51 = phi i32 [ %44, %for.body.lr.ph.i ], [ %48, %for.cond.i.for.body.i113_crit_edge ]
  %icnt.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i107, %for.cond.i.for.body.i113_crit_edge ]
  %arrayidx7.i110 = getelementptr [9 x %struct.lp8755_mphase], ptr @mphase_buck, i32 0, i32 %51, i32 1, i32 %icnt.049.i
  %52 = ptrtoint ptr %arrayidx7.i110 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx7.i110, align 4
  %arrayidx8.i111 = getelementptr %struct.lp8755_platform_data, ptr %33, i32 0, i32 1, i32 %53
  %54 = ptrtoint ptr %arrayidx8.i111 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx8.i111, align 4
  %56 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %init_data.i, align 4
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 27
  %59 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node.i, align 8
  %61 = ptrtoint ptr %of_node10.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %of_node10.i, align 4
  %arrayidx12.i = getelementptr [6 x %struct.regulator_desc], ptr @lp8755_regulators, i32 0, i32 %53
  %call.i112 = call ptr @devm_regulator_register(ptr noundef %58, ptr noundef %arrayidx12.i, ptr noundef nonnull %rconfig.i) #5
  %arrayidx13.i = getelementptr %struct.lp8755_chip, ptr %call.i, i32 0, i32 6, i32 %53
  %62 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i112, ptr %arrayidx13.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lp8755_regulator_init.exit, label %for.cond.i

lp8755_regulator_init.exit.thread:                ; preds = %for.cond.i.lp8755_regulator_init.exit.thread_crit_edge, %if.end39.lp8755_regulator_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rconfig.i) #5
  br label %if.end47

lp8755_regulator_init.exit:                       ; preds = %for.body.i113
  %63 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx13.i, align 4
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.28, i32 noundef %53) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rconfig.i) #5
  %cmp41 = icmp slt ptr %call.i112, null
  br i1 %cmp41, label %do.end45, label %lp8755_regulator_init.exit.if.end47_crit_edge

lp8755_regulator_init.exit.if.end47_crit_edge:    ; preds = %lp8755_regulator_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

do.end45:                                         ; preds = %lp8755_regulator_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %call.i112 to i32
  br label %err

if.end47:                                         ; preds = %lp8755_regulator_init.exit.if.end47_crit_edge, %lp8755_regulator_init.exit.thread
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %67 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq, align 4
  %irq48 = getelementptr inbounds %struct.lp8755_chip, ptr %call.i, i32 0, i32 3
  %69 = ptrtoint ptr %irq48 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %irq48, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i114) #5
  %70 = ptrtoint ptr %regval.i114 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %regval.i114, align 4, !annotation !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i115 = icmp eq i32 %68, 0
  br i1 %cmp.i115, label %lp8755_int_config.exit.thread127, label %if.end.i119

lp8755_int_config.exit.thread127:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i114) #5
  br label %cleanup

if.end.i119:                                      ; preds = %if.end47
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 4
  %call.i118 = call i32 @regmap_read(ptr noundef %74, i32 noundef 15, ptr noundef nonnull %regval.i114) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp1.i = icmp slt i32 %call.i118, 0
  br i1 %cmp1.i, label %lp8755_int_config.exit.thread, label %lp8755_int_config.exit

lp8755_int_config.exit.thread:                    ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.37) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i114) #5
  br label %err

lp8755_int_config.exit:                           ; preds = %if.end.i119
  %77 = ptrtoint ptr %regval.i114 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %regval.i114, align 4
  %irqmask.i = getelementptr inbounds %struct.lp8755_chip, ptr %call.i, i32 0, i32 4
  %79 = ptrtoint ptr %irqmask.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %irqmask.i, align 4
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 4
  %82 = ptrtoint ptr %irq48 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq48, align 4
  %call10.i = call i32 @devm_request_threaded_irq(ptr noundef %81, i32 noundef %83, ptr noundef null, ptr noundef nonnull @lp8755_irq_handler, i32 noundef 8194, ptr noundef nonnull @.str.41, ptr noundef %call.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i114) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp50 = icmp slt i32 %call10.i, 0
  br i1 %cmp50, label %lp8755_int_config.exit.err_crit_edge, label %lp8755_int_config.exit.cleanup_crit_edge

lp8755_int_config.exit.cleanup_crit_edge:         ; preds = %lp8755_int_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lp8755_int_config.exit.err_crit_edge:             ; preds = %lp8755_int_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

err:                                              ; preds = %lp8755_int_config.exit.err_crit_edge, %lp8755_int_config.exit.thread, %do.end45
  %.str.17.sink = phi ptr [ @.str.14, %do.end45 ], [ @.str.17, %lp8755_int_config.exit.thread ], [ @.str.17, %lp8755_int_config.exit.err_crit_edge ]
  %ret.0 = phi i32 [ %66, %do.end45 ], [ %call.i118, %lp8755_int_config.exit.thread ], [ %call10.i, %lp8755_int_config.exit.err_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.17.sink) #8
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call59 = call i32 @regmap_write(ptr noundef %85, i32 noundef 0, i32 noundef 0) #5
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %call59.1 = call i32 @regmap_write(ptr noundef %87, i32 noundef 1, i32 noundef 0) #5
  %88 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap, align 4
  %call59.2 = call i32 @regmap_write(ptr noundef %89, i32 noundef 2, i32 noundef 0) #5
  %90 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap, align 4
  %call59.3 = call i32 @regmap_write(ptr noundef %91, i32 noundef 3, i32 noundef 0) #5
  %92 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap, align 4
  %call59.4 = call i32 @regmap_write(ptr noundef %93, i32 noundef 4, i32 noundef 0) #5
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 4
  %call59.5 = call i32 @regmap_write(ptr noundef %95, i32 noundef 5, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %lp8755_int_config.exit.cleanup_crit_edge, %lp8755_int_config.exit.thread127, %do.end36, %if.else.cleanup_crit_edge, %if.then13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %10, %if.then13 ], [ %call.i101, %do.end36 ], [ -95, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ %call10.i, %lp8755_int_config.exit.cleanup_crit_edge ], [ 0, %lp8755_int_config.exit.thread127 ], [ %ret.0, %err ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8755_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.lp8755_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef 0) #5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1.1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 1, i32 noundef 0) #5
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call1.2 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 2, i32 noundef 0) #5
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call1.3 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 3, i32 noundef 0) #5
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call1.4 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 4, i32 noundef 0) #5
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call1.5 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 5, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8755_buck_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %call1 = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw i32 1, %call
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %add = add i32 %call, 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %add, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %sw.bb2.do.end25_crit_edge, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2.do.end25_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25

sw.bb4:                                           ; preds = %entry
  %regmap5 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %3 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap5, align 4
  %add6 = add i32 %call, 8
  %call.i45 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %add6, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp8 = icmp slt i32 %call.i45, 0
  br i1 %cmp8, label %sw.bb4.do.end25_crit_edge, label %if.end10

sw.bb4.do.end25_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25

if.end10:                                         ; preds = %sw.bb4
  %5 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap5, align 4
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp13 = icmp slt i32 %call.i46, 0
  br i1 %cmp13, label %if.end10.do.end25_crit_edge, label %if.end10.sw.epilog_crit_edge

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end10.do.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #8
  %shl16 = shl nuw i32 1, %call
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end10.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sw.bb
  %regbval.0 = phi i32 [ %shl16, %do.end ], [ 0, %if.end10.sw.epilog_crit_edge ], [ 0, %sw.bb2.sw.epilog_crit_edge ], [ %shl, %sw.bb ]
  %regmap17 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %9 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap17, align 4
  %shl18 = shl nuw i32 1, %call
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 6, i32 noundef %shl18, i32 noundef %regbval.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp20 = icmp slt i32 %call.i47, 0
  br i1 %cmp20, label %sw.epilog.do.end25_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog.do.end25_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25

do.end25:                                         ; preds = %sw.epilog.do.end25_crit_edge, %if.end10.do.end25_crit_edge, %sw.bb4.do.end25_crit_edge, %sw.bb2.do.end25_crit_edge
  %ret.0 = phi i32 [ %call.i47, %sw.epilog.do.end25_crit_edge ], [ %call.i45, %sw.bb4.do.end25_crit_edge ], [ %call.i46, %if.end10.do.end25_crit_edge ], [ %call.i, %sw.bb2.do.end25_crit_edge ]
  %dev26 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.31) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end25 ], [ %call.i47, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8755_buck_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #5
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !118
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 6, ptr noundef nonnull %regval) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regval, align 4
  %shl = shl nuw i32 1, %call
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %add = add i32 %call, 8
  %call5 = call i32 @regmap_read(ptr noundef %6, i32 noundef %add, ptr noundef nonnull %regval) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end3.do.end_crit_edge, label %if.end8

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regval, align 4
  %and9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %. = select i1 %tobool10.not, i32 2, i32 4
  br label %cleanup

do.end:                                           ; preds = %if.end3.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.34) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end.cleanup_crit_edge ], [ %., %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8755_buck_enable_time(ptr noundef %rdev) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #5
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !118
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %add = add i32 %call, 18
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %regval) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.35) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regval, align 4
  %and = and i32 %4, 255
  %mul = mul nuw nsw i32 %and, 100
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %mul, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8755_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %flag0 = alloca i32, align 4
  %flag1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flag0) #5
  %0 = ptrtoint ptr %flag0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flag0, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flag1) #5
  %1 = ptrtoint ptr %flag1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %flag1, align 4, !annotation !118
  %regmap = getelementptr inbounds %struct.lp8755_chip, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 13, ptr noundef nonnull %flag0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_write(ptr noundef %5, i32 noundef 13, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.do.end_crit_edge, label %for.cond.preheader

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.preheader:                               ; preds = %if.end
  %irqmask = getelementptr inbounds %struct.lp8755_chip, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %flag0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flag0, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irqmask, align 4
  %and8 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true10

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true10:                                  ; preds = %land.lhs.true
  %arrayidx = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %cmp11.not = icmp eq ptr %11, null
  br i1 %cmp11.not, label %land.lhs.true10.for.inc_crit_edge, label %if.then12

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %11, i32 noundef 8, ptr noundef null) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %land.lhs.true10.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %12 = ptrtoint ptr %flag0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flag0, align 4
  %and.1 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %14 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irqmask, align 4
  %and8.1 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.1)
  %tobool9.not.1 = icmp eq i32 %and8.1, 0
  br i1 %tobool9.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true10.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true10.1:                                ; preds = %land.lhs.true.1
  %arrayidx.1 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %cmp11.not.1 = icmp eq ptr %17, null
  br i1 %cmp11.not.1, label %land.lhs.true10.1.for.inc.1_crit_edge, label %if.then12.1

land.lhs.true10.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true10.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then12.1:                                      ; preds = %land.lhs.true10.1
  call void @__sanitizer_cov_trace_pc() #7
  %call15.1 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %17, i32 noundef 8, ptr noundef null) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then12.1, %land.lhs.true10.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %18 = ptrtoint ptr %flag0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flag0, align 4
  %and.2 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %20 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irqmask, align 4
  %and8.2 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.2)
  %tobool9.not.2 = icmp eq i32 %and8.2, 0
  br i1 %tobool9.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true10.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true10.2:                                ; preds = %land.lhs.true.2
  %arrayidx.2 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2, align 4
  %cmp11.not.2 = icmp eq ptr %23, null
  br i1 %cmp11.not.2, label %land.lhs.true10.2.for.inc.2_crit_edge, label %if.then12.2

land.lhs.true10.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true10.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then12.2:                                      ; preds = %land.lhs.true10.2
  call void @__sanitizer_cov_trace_pc() #7
  %call15.2 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %23, i32 noundef 8, ptr noundef null) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then12.2, %land.lhs.true10.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %24 = ptrtoint ptr %flag0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flag0, align 4
  %and.3 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %26 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irqmask, align 4
  %and8.3 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.3)
  %tobool9.not.3 = icmp eq i32 %and8.3, 0
  br i1 %tobool9.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true10.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true10.3:                                ; preds = %land.lhs.true.3
  %arrayidx.3 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.3, align 4
  %cmp11.not.3 = icmp eq ptr %29, null
  br i1 %cmp11.not.3, label %land.lhs.true10.3.for.inc.3_crit_edge, label %if.then12.3

land.lhs.true10.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true10.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then12.3:                                      ; preds = %land.lhs.true10.3
  call void @__sanitizer_cov_trace_pc() #7
  %call15.3 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %29, i32 noundef 8, ptr noundef null) #5
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then12.3, %land.lhs.true10.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %30 = ptrtoint ptr %flag0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flag0, align 4
  %and.4 = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %32 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irqmask, align 4
  %and8.4 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.4)
  %tobool9.not.4 = icmp eq i32 %and8.4, 0
  br i1 %tobool9.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true10.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true10.4:                                ; preds = %land.lhs.true.4
  %arrayidx.4 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 4
  %34 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.4, align 4
  %cmp11.not.4 = icmp eq ptr %35, null
  br i1 %cmp11.not.4, label %land.lhs.true10.4.for.inc.4_crit_edge, label %if.then12.4

land.lhs.true10.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true10.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then12.4:                                      ; preds = %land.lhs.true10.4
  call void @__sanitizer_cov_trace_pc() #7
  %call15.4 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %35, i32 noundef 8, ptr noundef null) #5
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then12.4, %land.lhs.true10.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %36 = ptrtoint ptr %flag0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flag0, align 4
  %and.5 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %38 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irqmask, align 4
  %and8.5 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.5)
  %tobool9.not.5 = icmp eq i32 %and8.5, 0
  br i1 %tobool9.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true10.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true10.5:                                ; preds = %land.lhs.true.5
  %arrayidx.5 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 5
  %40 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.5, align 4
  %cmp11.not.5 = icmp eq ptr %41, null
  br i1 %cmp11.not.5, label %land.lhs.true10.5.for.inc.5_crit_edge, label %if.then12.5

land.lhs.true10.5.for.inc.5_crit_edge:            ; preds = %land.lhs.true10.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.then12.5:                                      ; preds = %land.lhs.true10.5
  call void @__sanitizer_cov_trace_pc() #7
  %call15.5 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %41, i32 noundef 8, ptr noundef null) #5
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then12.5, %land.lhs.true10.5.for.inc.5_crit_edge, %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call18 = call i32 @regmap_read(ptr noundef %43, i32 noundef 14, ptr noundef nonnull %flag1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %for.inc.5.do.end_crit_edge, label %if.end21

for.inc.5.do.end_crit_edge:                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end21:                                         ; preds = %for.inc.5
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call23 = call i32 @regmap_write(ptr noundef %45, i32 noundef 14, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end21.do.end_crit_edge, label %if.end26

if.end21.do.end_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end26:                                         ; preds = %if.end21
  %46 = ptrtoint ptr %flag1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flag1, align 4
  %and27 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end48_crit_edge, label %land.lhs.true29

if.end26.if.end48_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

land.lhs.true29:                                  ; preds = %if.end26
  %48 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irqmask, align 4
  %and31 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %land.lhs.true29.if.end48_crit_edge, label %for.body36.preheader

land.lhs.true29.if.end48_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

for.body36.preheader:                             ; preds = %land.lhs.true29
  %arrayidx38 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 0
  %50 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx38, align 4
  %cmp39.not = icmp eq ptr %51, null
  br i1 %cmp39.not, label %for.body36.preheader.for.inc45_crit_edge, label %if.then40

for.body36.preheader.for.inc45_crit_edge:         ; preds = %for.body36.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc45

if.then40:                                        ; preds = %for.body36.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call43 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %51, i32 noundef 2, ptr noundef null) #5
  br label %for.inc45

for.inc45:                                        ; preds = %if.then40, %for.body36.preheader.for.inc45_crit_edge
  %arrayidx38.1 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 1
  %52 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx38.1, align 4
  %cmp39.not.1 = icmp eq ptr %53, null
  br i1 %cmp39.not.1, label %for.inc45.for.inc45.1_crit_edge, label %if.then40.1

for.inc45.for.inc45.1_crit_edge:                  ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc45.1

if.then40.1:                                      ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #7
  %call43.1 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %53, i32 noundef 2, ptr noundef null) #5
  br label %for.inc45.1

for.inc45.1:                                      ; preds = %if.then40.1, %for.inc45.for.inc45.1_crit_edge
  %arrayidx38.2 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 2
  %54 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx38.2, align 4
  %cmp39.not.2 = icmp eq ptr %55, null
  br i1 %cmp39.not.2, label %for.inc45.1.for.inc45.2_crit_edge, label %if.then40.2

for.inc45.1.for.inc45.2_crit_edge:                ; preds = %for.inc45.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc45.2

if.then40.2:                                      ; preds = %for.inc45.1
  call void @__sanitizer_cov_trace_pc() #7
  %call43.2 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %55, i32 noundef 2, ptr noundef null) #5
  br label %for.inc45.2

for.inc45.2:                                      ; preds = %if.then40.2, %for.inc45.1.for.inc45.2_crit_edge
  %arrayidx38.3 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 3
  %56 = ptrtoint ptr %arrayidx38.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx38.3, align 4
  %cmp39.not.3 = icmp eq ptr %57, null
  br i1 %cmp39.not.3, label %for.inc45.2.for.inc45.3_crit_edge, label %if.then40.3

for.inc45.2.for.inc45.3_crit_edge:                ; preds = %for.inc45.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc45.3

if.then40.3:                                      ; preds = %for.inc45.2
  call void @__sanitizer_cov_trace_pc() #7
  %call43.3 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %57, i32 noundef 2, ptr noundef null) #5
  br label %for.inc45.3

for.inc45.3:                                      ; preds = %if.then40.3, %for.inc45.2.for.inc45.3_crit_edge
  %arrayidx38.4 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 4
  %58 = ptrtoint ptr %arrayidx38.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx38.4, align 4
  %cmp39.not.4 = icmp eq ptr %59, null
  br i1 %cmp39.not.4, label %for.inc45.3.for.inc45.4_crit_edge, label %if.then40.4

for.inc45.3.for.inc45.4_crit_edge:                ; preds = %for.inc45.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc45.4

if.then40.4:                                      ; preds = %for.inc45.3
  call void @__sanitizer_cov_trace_pc() #7
  %call43.4 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %59, i32 noundef 2, ptr noundef null) #5
  br label %for.inc45.4

for.inc45.4:                                      ; preds = %if.then40.4, %for.inc45.3.for.inc45.4_crit_edge
  %arrayidx38.5 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 5
  %60 = ptrtoint ptr %arrayidx38.5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx38.5, align 4
  %cmp39.not.5 = icmp eq ptr %61, null
  br i1 %cmp39.not.5, label %for.inc45.4.if.end48_crit_edge, label %if.then40.5

for.inc45.4.if.end48_crit_edge:                   ; preds = %for.inc45.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then40.5:                                      ; preds = %for.inc45.4
  call void @__sanitizer_cov_trace_pc() #7
  %call43.5 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %61, i32 noundef 2, ptr noundef null) #5
  br label %if.end48

if.end48:                                         ; preds = %if.then40.5, %for.inc45.4.if.end48_crit_edge, %land.lhs.true29.if.end48_crit_edge, %if.end26.if.end48_crit_edge
  %62 = ptrtoint ptr %flag1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flag1, align 4
  %and49 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %land.lhs.true51

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true51:                                  ; preds = %if.end48
  %64 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irqmask, align 4
  %and53 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %land.lhs.true51.cleanup_crit_edge, label %for.body58.preheader

land.lhs.true51.cleanup_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body58.preheader:                             ; preds = %land.lhs.true51
  %arrayidx60 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 0
  %66 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx60, align 4
  %cmp61.not = icmp eq ptr %67, null
  br i1 %cmp61.not, label %for.body58.preheader.for.inc67_crit_edge, label %if.then62

for.body58.preheader.for.inc67_crit_edge:         ; preds = %for.body58.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc67

if.then62:                                        ; preds = %for.body58.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call65 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %67, i32 noundef 65536, ptr noundef null) #5
  br label %for.inc67

for.inc67:                                        ; preds = %if.then62, %for.body58.preheader.for.inc67_crit_edge
  %arrayidx60.1 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 1
  %68 = ptrtoint ptr %arrayidx60.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx60.1, align 4
  %cmp61.not.1 = icmp eq ptr %69, null
  br i1 %cmp61.not.1, label %for.inc67.for.inc67.1_crit_edge, label %if.then62.1

for.inc67.for.inc67.1_crit_edge:                  ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc67.1

if.then62.1:                                      ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #7
  %call65.1 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %69, i32 noundef 65536, ptr noundef null) #5
  br label %for.inc67.1

for.inc67.1:                                      ; preds = %if.then62.1, %for.inc67.for.inc67.1_crit_edge
  %arrayidx60.2 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 2
  %70 = ptrtoint ptr %arrayidx60.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx60.2, align 4
  %cmp61.not.2 = icmp eq ptr %71, null
  br i1 %cmp61.not.2, label %for.inc67.1.for.inc67.2_crit_edge, label %if.then62.2

for.inc67.1.for.inc67.2_crit_edge:                ; preds = %for.inc67.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc67.2

if.then62.2:                                      ; preds = %for.inc67.1
  call void @__sanitizer_cov_trace_pc() #7
  %call65.2 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %71, i32 noundef 65536, ptr noundef null) #5
  br label %for.inc67.2

for.inc67.2:                                      ; preds = %if.then62.2, %for.inc67.1.for.inc67.2_crit_edge
  %arrayidx60.3 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 3
  %72 = ptrtoint ptr %arrayidx60.3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx60.3, align 4
  %cmp61.not.3 = icmp eq ptr %73, null
  br i1 %cmp61.not.3, label %for.inc67.2.for.inc67.3_crit_edge, label %if.then62.3

for.inc67.2.for.inc67.3_crit_edge:                ; preds = %for.inc67.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc67.3

if.then62.3:                                      ; preds = %for.inc67.2
  call void @__sanitizer_cov_trace_pc() #7
  %call65.3 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %73, i32 noundef 65536, ptr noundef null) #5
  br label %for.inc67.3

for.inc67.3:                                      ; preds = %if.then62.3, %for.inc67.2.for.inc67.3_crit_edge
  %arrayidx60.4 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 4
  %74 = ptrtoint ptr %arrayidx60.4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx60.4, align 4
  %cmp61.not.4 = icmp eq ptr %75, null
  br i1 %cmp61.not.4, label %for.inc67.3.for.inc67.4_crit_edge, label %if.then62.4

for.inc67.3.for.inc67.4_crit_edge:                ; preds = %for.inc67.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc67.4

if.then62.4:                                      ; preds = %for.inc67.3
  call void @__sanitizer_cov_trace_pc() #7
  %call65.4 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %75, i32 noundef 65536, ptr noundef null) #5
  br label %for.inc67.4

for.inc67.4:                                      ; preds = %if.then62.4, %for.inc67.3.for.inc67.4_crit_edge
  %arrayidx60.5 = getelementptr %struct.lp8755_chip, ptr %data, i32 0, i32 6, i32 5
  %76 = ptrtoint ptr %arrayidx60.5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx60.5, align 4
  %cmp61.not.5 = icmp eq ptr %77, null
  br i1 %cmp61.not.5, label %for.inc67.4.cleanup_crit_edge, label %if.then62.5

for.inc67.4.cleanup_crit_edge:                    ; preds = %for.inc67.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then62.5:                                      ; preds = %for.inc67.4
  call void @__sanitizer_cov_trace_pc() #7
  %call65.5 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %77, i32 noundef 65536, ptr noundef null) #5
  br label %cleanup

do.end:                                           ; preds = %if.end21.do.end_crit_edge, %for.inc.5.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %78 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.42) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then62.5, %for.inc67.4.cleanup_crit_edge, %land.lhs.true51.cleanup_crit_edge, %if.end48.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %land.lhs.true51.cleanup_crit_edge ], [ 1, %if.end48.cleanup_crit_edge ], [ 1, %if.then62.5 ], [ 1, %for.inc67.4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag0) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74, !76, !77, !78, !79, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !97, !98, !100, !101, !103, !105, !106, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__initcall__kmod_lp8755__288_457_lp8755_init4, !1, !"__initcall__kmod_lp8755__288_457_lp8755_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/lp8755.c", i32 457, i32 1}
!2 = !{ptr @__exitcall_lp8755_exit, !3, !"__exitcall_lp8755_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/lp8755.c", i32 464, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/lp8755.c", i32 466, i32 1}
!6 = !{ptr @__UNIQUE_ID_author290, !7, !"__UNIQUE_ID_author290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/lp8755.c", i32 467, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/lp8755.c", i32 468, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/lp8755.c", i32 445, i32 14}
!13 = !{ptr @lp8755_i2c_driver, !14, !"lp8755_i2c_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/lp8755.c", i32 443, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/lp8755.c", i32 368, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @lp8755_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @lp8755_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @lp8755_probe._key, !24, !"_key", i1 false, i1 false}
!24 = !{!"../drivers/regulator/lp8755.c", i32 378, i32 18}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/lp8755.c", i32 381, i32 3}
!28 = !{ptr @lp8755_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @lp8755_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/lp8755.c", i32 397, i32 4}
!32 = !{ptr @lp8755_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @lp8755_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/lp8755.c", i32 404, i32 3}
!36 = !{ptr @lp8755_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @lp8755_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/lp8755.c", i32 411, i32 3}
!40 = !{ptr @lp8755_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @lp8755_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @lp8755_regmap, !43, !"lp8755_regmap", i1 false, i1 false}
!43 = !{!"../drivers/regulator/lp8755.c", i32 354, i32 35}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/lp8755.c", i32 211, i32 2}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @lp8755_init_data._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @lp8755_init_data._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mphase_buck, !50, !"mphase_buck", i1 false, i1 false}
!50 = !{!"../drivers/regulator/lp8755.c", i32 177, i32 35}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/lp8755.c", i32 169, i32 19}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/lp8755.c", i32 170, i32 19}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/lp8755.c", i32 171, i32 19}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/lp8755.c", i32 172, i32 19}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/lp8755.c", i32 173, i32 19}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/lp8755.c", i32 174, i32 19}
!63 = !{ptr @lp8755_reg_default, !64, !"lp8755_reg_default", i1 false, i1 false}
!64 = !{!"../drivers/regulator/lp8755.c", i32 168, i32 35}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/lp8755.c", i32 264, i32 4}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @lp8755_regulator_init._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @lp8755_regulator_init._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @lp8755_regulators, !71, !"lp8755_regulators", i1 false, i1 false}
!71 = !{!"../drivers/regulator/lp8755.c", i32 235, i32 36}
!72 = !{ptr @lp8755_buck_ops, !73, !"lp8755_buck_ops", i1 false, i1 false}
!73 = !{!"../drivers/regulator/lp8755.c", i32 143, i32 35}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/lp8755.c", i32 95, i32 3}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @lp8755_buck_set_mode._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @lp8755_buck_set_mode._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @lp8755_buck_set_mode._entry.32, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/regulator/lp8755.c", i32 105, i32 2}
!81 = !{ptr @lp8755_buck_set_mode._entry_ptr.33, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/lp8755.c", i32 135, i32 2}
!84 = !{ptr @lp8755_buck_get_mode._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @lp8755_buck_get_mode._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/lp8755.c", i32 60, i32 3}
!88 = !{ptr @lp8755_buck_enable_time._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @lp8755_buck_enable_time._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @lp8755_buck_ramp_table, !91, !"lp8755_buck_ramp_table", i1 false, i1 false}
!91 = !{!"../drivers/regulator/lp8755.c", i32 139, i32 27}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/lp8755.c", i32 337, i32 3}
!94 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @lp8755_int_config._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @lp8755_int_config._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @lp8755_int_config._entry.39, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/regulator/lp8755.c", i32 343, i32 3}
!100 = !{ptr @lp8755_int_config._entry_ptr.40, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/lp8755.c", i32 351, i32 7}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/regulator/lp8755.c", i32 327, i32 2}
!105 = !{ptr @lp8755_irq_handler._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @lp8755_irq_handler._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @lp8755_id, !108, !"lp8755_id", i1 false, i1 false}
!108 = !{!"../drivers/regulator/lp8755.c", i32 436, i32 35}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"auto-init"}
