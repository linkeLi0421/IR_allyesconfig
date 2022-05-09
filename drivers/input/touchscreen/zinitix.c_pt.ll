; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/zinitix.c_pt.bc'
source_filename = "../drivers/input/touchscreen/zinitix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bt541_ts_data = type { ptr, ptr, %struct.touchscreen_properties, [2 x %struct.regulator_bulk_data], i32 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.touch_event = type { i16, i8, i8, [5 x %struct.point_coord] }
%struct.point_coord = type { i16, i16, i8, i8, i8, i8 }

@__initcall__kmod_zinitix__291_627_zinitix_ts_driver_init6 = internal global ptr @zinitix_ts_driver_init, section ".initcall6.init", align 4
@zinitix_ts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @zinitix_ts_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @zinitix_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zinitix_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_zinitix_ts_driver_exit = internal global ptr @zinitix_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [53 x i8] c"zinitix.author=Michael Srba <Michael.Srba@seznam.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [47 x i8] c"zinitix.description=Zinitix touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [47 x i8] c"zinitix.file=drivers/input/touchscreen/zinitix\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [23 x i8] c"zinitix.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Zinitix-TS\00", [21 x i8] zeroinitializer }, align 32
@zinitix_of_match = internal constant { [15 x %struct.of_device_id], [708 x i8] } { [15 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zinitix,bt402\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zinitix,bt403\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zinitix,bt404\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zinitix,bt412\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zinitix,bt413\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zinitix,bt431\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zinitix,bt432\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zinitix,bt531\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zinitix,bt532\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zinitix,bt538\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zinitix,bt541\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zinitix,bt548\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zinitix,bt554\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zinitix,at100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [708 x i8] zeroinitializer }, align 32
@zinitix_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @zinitix_suspend, ptr @zinitix_resume, ptr @zinitix_suspend, ptr @zinitix_resume, ptr @zinitix_suspend, ptr @zinitix_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@zinitix_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to assert adapter's support for plain I2C.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zinitix_ts_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/touchscreen/zinitix.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zinitix_ts_probe._entry_ptr = internal global ptr @zinitix_ts_probe._entry, section ".printk_index", align 4
@zinitix_ts_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to initialize regulators: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@zinitix_ts_probe._entry_ptr.8 = internal global ptr @zinitix_ts_probe._entry.6, section ".printk_index", align 4
@zinitix_ts_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 533, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@zinitix_ts_probe._entry_ptr.11 = internal global ptr @zinitix_ts_probe._entry.9, section ".printk_index", align 4
@zinitix_ts_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 540, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to initialize input device: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@zinitix_ts_probe._entry_ptr.14 = internal global ptr @zinitix_ts_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zinitix,mode\00", [19 x i8] zeroinitializer }, align 32
@zinitix_ts_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 558, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Malformed zinitix,mode property, must be 2 (supplied: %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@zinitix_ts_probe._entry_ptr.18 = internal global ptr @zinitix_ts_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vddo-supply\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddo\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcca\00", [27 x i8] zeroinitializer }, align 32
@zinitix_init_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"zinitix_init_regulators\00", [40 x i8] zeroinitializer }, align 32
@zinitix_init_regulators._entry_ptr = internal global ptr @zinitix_init_regulators._entry, section ".printk_index", align 4
@zinitix_ts_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read in touchpoint struct\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zinitix_ts_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@zinitix_ts_irq_handler._entry_ptr = internal global ptr @zinitix_ts_irq_handler._entry, section ".printk_index", align 4
@zinitix_report_finger.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"zinitix\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zinitix_report_finger\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unknown finger event %#02x\0A\00", [36 x i8] zeroinitializer }, align 32
@zinitix_report_finger.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"finger %d %s (%u, %u)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"move\00", [27 x i8] zeroinitializer }, align 32
@zinitix_report_finger.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.3, ptr @.str.33, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"finger %d up (%u, %u)\0A\00", [41 x i8] zeroinitializer }, align 32
@zinitix_init_input_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device.\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zinitix_init_input_dev\00", [41 x i8] zeroinitializer }, align 32
@zinitix_init_input_dev._entry_ptr = internal global ptr @zinitix_init_input_dev._entry, section ".printk_index", align 4
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Zinitix Capacitive TouchScreen\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"input/ts\00", [23 x i8] zeroinitializer }, align 32
@zinitix_init_input_dev._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.35, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Touchscreen-size-x and/or touchscreen-size-y not set in dts\0A\00", [35 x i8] zeroinitializer }, align 32
@zinitix_init_input_dev._entry_ptr.40 = internal global ptr @zinitix_init_input_dev._entry.38, section ".printk_index", align 4
@zinitix_init_input_dev._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.3, i32 489, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to initialize MT slots: %d\00", [62 x i8] zeroinitializer }, align 32
@zinitix_init_input_dev._entry_ptr.43 = internal global ptr @zinitix_init_input_dev._entry.41, section ".printk_index", align 4
@zinitix_init_input_dev._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.35, ptr @.str.3, i32 496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register input device: %d\00", [60 x i8] zeroinitializer }, align 32
@zinitix_init_input_dev._entry_ptr.46 = internal global ptr @zinitix_init_input_dev._entry.44, section ".printk_index", align 4
@zinitix_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zinitix_start\00", [18 x i8] zeroinitializer }, align 32
@zinitix_start._entry_ptr = internal global ptr @zinitix_start._entry, section ".printk_index", align 4
@zinitix_start._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 405, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error while sending power-on sequence: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@zinitix_start._entry_ptr.51 = internal global ptr @zinitix_start._entry.49, section ".printk_index", align 4
@zinitix_start._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.3, i32 412, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error while configuring touch IC\0A\00", [62 x i8] zeroinitializer }, align 32
@zinitix_start._entry_ptr.54 = internal global ptr @zinitix_start._entry.52, section ".printk_index", align 4
@zinitix_send_power_on_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to send power sequence(vendor cmd enable)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"zinitix_send_power_on_sequence\00", [33 x i8] zeroinitializer }, align 32
@zinitix_send_power_on_sequence._entry_ptr = internal global ptr @zinitix_send_power_on_sequence._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@zinitix_send_power_on_sequence._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to send power sequence (intn clear)\0A\00", [52 x i8] zeroinitializer }, align 32
@zinitix_send_power_on_sequence._entry_ptr.59 = internal global ptr @zinitix_send_power_on_sequence._entry.57, section ".printk_index", align 4
@zinitix_send_power_on_sequence._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.3, i32 306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to send power sequence (nvm init)\0A\00", [54 x i8] zeroinitializer }, align 32
@zinitix_send_power_on_sequence._entry_ptr.62 = internal global ptr @zinitix_send_power_on_sequence._entry.60, section ".printk_index", align 4
@zinitix_send_power_on_sequence._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.3, i32 314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to send power sequence (program start)\0A\00", [49 x i8] zeroinitializer }, align 32
@zinitix_send_power_on_sequence._entry_ptr.65 = internal global ptr @zinitix_send_power_on_sequence._entry.63, section ".printk_index", align 4
@zinitix_init_touch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to write reset command\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zinitix_init_touch\00", [45 x i8] zeroinitializer }, align 32
@zinitix_init_touch._entry_ptr = internal global ptr @zinitix_init_touch._entry, section ".printk_index", align 4
@zinitix_init_touch._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to reset interrupt enable flag\0A\00", [57 x i8] zeroinitializer }, align 32
@zinitix_init_touch._entry_ptr.70 = internal global ptr @zinitix_init_touch._entry.68, section ".printk_index", align 4
@zinitix_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 431, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to disable regulators: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zinitix_stop\00", [19 x i8] zeroinitializer }, align 32
@zinitix_stop._entry_ptr = internal global ptr @zinitix_stop._entry, section ".printk_index", align 4
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"zinitix_ts_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 619, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 622, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"zinitix_of_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 599, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"zinitix_pm_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 596, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 509, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 523, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 533, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 539, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 544, i32 49 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 556, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 263, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 264, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 265, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 268, i32 31 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 275, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 367, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 329, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 344, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 348, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 459, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 467, i32 20 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 468, i32 20 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 480, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 488, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 495, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 395, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 404, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 411, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 289, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 297, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 305, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 313, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 201, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 207, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [39 x i8] c"../drivers/input/touchscreen/zinitix.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 430, i32 3 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_zinitix_ts_driver_exit, ptr @__initcall__kmod_zinitix__291_627_zinitix_ts_driver_init6, ptr @zinitix_init_input_dev._entry, ptr @zinitix_init_input_dev._entry.38, ptr @zinitix_init_input_dev._entry.41, ptr @zinitix_init_input_dev._entry.44, ptr @zinitix_init_input_dev._entry_ptr, ptr @zinitix_init_input_dev._entry_ptr.40, ptr @zinitix_init_input_dev._entry_ptr.43, ptr @zinitix_init_input_dev._entry_ptr.46, ptr @zinitix_init_regulators._entry, ptr @zinitix_init_regulators._entry_ptr, ptr @zinitix_init_touch._entry, ptr @zinitix_init_touch._entry.68, ptr @zinitix_init_touch._entry_ptr, ptr @zinitix_init_touch._entry_ptr.70, ptr @zinitix_send_power_on_sequence._entry, ptr @zinitix_send_power_on_sequence._entry.57, ptr @zinitix_send_power_on_sequence._entry.60, ptr @zinitix_send_power_on_sequence._entry.63, ptr @zinitix_send_power_on_sequence._entry_ptr, ptr @zinitix_send_power_on_sequence._entry_ptr.59, ptr @zinitix_send_power_on_sequence._entry_ptr.62, ptr @zinitix_send_power_on_sequence._entry_ptr.65, ptr @zinitix_start._entry, ptr @zinitix_start._entry.49, ptr @zinitix_start._entry.52, ptr @zinitix_start._entry_ptr, ptr @zinitix_start._entry_ptr.51, ptr @zinitix_start._entry_ptr.54, ptr @zinitix_stop._entry, ptr @zinitix_stop._entry_ptr, ptr @zinitix_ts_driver_exit, ptr @zinitix_ts_irq_handler._entry, ptr @zinitix_ts_irq_handler._entry_ptr, ptr @zinitix_ts_probe._entry, ptr @zinitix_ts_probe._entry.12, ptr @zinitix_ts_probe._entry.16, ptr @zinitix_ts_probe._entry.6, ptr @zinitix_ts_probe._entry.9, ptr @zinitix_ts_probe._entry_ptr, ptr @zinitix_ts_probe._entry_ptr.11, ptr @zinitix_ts_probe._entry_ptr.14, ptr @zinitix_ts_probe._entry_ptr.18, ptr @zinitix_ts_probe._entry_ptr.8, ptr @zinitix_ts_driver, ptr @.str, ptr @zinitix_of_match, ptr @zinitix_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_ts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_of_match to i32), i32 2940, i32 3648, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_ts_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_ts_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_ts_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_ts_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_init_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_ts_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_init_input_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_init_input_dev._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_init_input_dev._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_init_input_dev._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_start._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_start._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_send_power_on_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_send_power_on_sequence._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_send_power_on_sequence._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_send_power_on_sequence._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_init_touch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_init_touch._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zinitix_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zinitix_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @zinitix_ts_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zinitix_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @zinitix_ts_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zinitix_ts_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %call.i77 = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.19, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i77, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.22, ptr @.str.20
  %spec.select25.i = select i1 %tobool.not.i, ptr @.str.20, ptr @.str.21
  %10 = getelementptr inbounds %struct.bt541_ts_data, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select.i, ptr %10, align 4
  %12 = getelementptr %struct.bt541_ts_data, ptr %call.i, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spec.select25.i, ptr %12, align 4
  %call12.i = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.i = icmp slt i32 %call12.i, 0
  br i1 %cmp.i, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call12.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call12.i) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call16 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %15, ptr noundef null, ptr noundef nonnull @zinitix_ts_irq_handler, i32 noundef 532480, ptr noundef %name, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call16) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  %call.i78 = tail call ptr @devm_input_allocate_device(ptr noundef %dev.i) #6
  %tobool.not.i79 = icmp eq ptr %call.i78, null
  br i1 %tobool.not.i79, label %do.end.i80, label %if.end.i

do.end.i80:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.34) #9
  br label %do.end29

if.end.i:                                         ; preds = %if.end23
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i78, i32 0, i32 40, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %input_dev3.i = getelementptr inbounds %struct.bt541_ts_data, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %input_dev3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i78, ptr %input_dev3.i, align 4
  %22 = ptrtoint ptr %call.i78 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.36, ptr %call.i78, align 8
  %phys.i = getelementptr inbounds %struct.input_dev, ptr %call.i78, i32 0, i32 1
  %23 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.37, ptr %phys.i, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call.i78, i32 0, i32 3
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 24, ptr %id.i, align 4
  %open.i = getelementptr inbounds %struct.input_dev, ptr %call.i78, i32 0, i32 31
  %25 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @zinitix_input_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.input_dev, ptr %call.i78, i32 0, i32 32
  %26 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @zinitix_input_close, ptr %close.i, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call.i78, i32 noundef 3, i32 noundef 53) #6
  tail call void @input_set_capability(ptr noundef nonnull %call.i78, i32 noundef 3, i32 noundef 54) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i78, i32 noundef 50, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i78, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #6
  %prop.i = getelementptr inbounds %struct.bt541_ts_data, ptr %call.i, i32 0, i32 2
  tail call void @touchscreen_parse_properties(ptr noundef nonnull %call.i78, i1 noundef zeroext true, ptr noundef %prop.i) #6
  %27 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prop.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool5.not.i = icmp eq i32 %28, 0
  br i1 %tobool5.not.i, label %if.end.i.do.end11.i_crit_edge, label %lor.lhs.false.i

if.end.i.do.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %max_y.i = getelementptr inbounds %struct.bt541_ts_data, ptr %call.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %max_y.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_y.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool7.not.i = icmp eq i32 %30, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i.do.end11.i_crit_edge, label %if.end14.i

lor.lhs.false.i.do.end11.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11.i

do.end11.i:                                       ; preds = %lor.lhs.false.i.do.end11.i_crit_edge, %if.end.i.do.end11.i_crit_edge
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %dev13.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.39) #9
  br label %do.end29

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %call15.i = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call.i78, i32 noundef 5, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end23.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i, ptr noundef nonnull @.str.42, i32 noundef %call15.i) #9
  br label %do.end29

if.end23.i:                                       ; preds = %if.end14.i
  %call24.i = tail call i32 @input_register_device(ptr noundef nonnull %call.i78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end31, label %do.end29.i

do.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %dev31.i = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31.i, ptr noundef nonnull @.str.45, i32 noundef %call24.i) #9
  br label %do.end29

do.end29:                                         ; preds = %do.end29.i, %do.end20.i, %do.end11.i, %do.end.i80
  %retval.0.i81.ph = phi i32 [ -12, %do.end.i80 ], [ -22, %do.end11.i ], [ %call24.i, %do.end29.i ], [ %call15.i, %do.end20.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i81.ph) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end23.i
  %zinitix_mode = getelementptr inbounds %struct.bt541_ts_data, ptr %call.i, i32 0, i32 4
  %call.i82 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %zinitix_mode, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp = icmp slt i32 %call.i82, 0
  br i1 %cmp, label %if.end36.thread, label %if.end36

if.end36.thread:                                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %zinitix_mode to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %zinitix_mode, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %38 = ptrtoint ptr %zinitix_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %zinitix_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp38.not = icmp eq i32 %.pr, 2
  br i1 %cmp38.not, label %if.end36.cleanup_crit_edge, label %do.end42

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %.pr) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.end36.cleanup_crit_edge, %if.end36.thread, %do.end29, %do.end21, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call12.i, %do.end12 ], [ %call16, %do.end21 ], [ %retval.0.i81.ph, %do.end29 ], [ -22, %do.end42 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ 0, %if.end36.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zinitix_ts_irq_handler(i32 noundef %irq, ptr noundef %bt541_handler) #2 align 64 {
entry:
  %reg_le.i23 = alloca i16, align 2
  %reg_le.i = alloca i16, align 2
  %touch_event = alloca %struct.touch_event, align 2
  %finger_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bt541_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bt541_handler, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %touch_event) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %finger_mask) #6
  %2 = ptrtoint ptr %finger_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %finger_mask, align 4, !annotation !149
  %3 = call ptr @memset(ptr %touch_event, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_le.i) #6
  %4 = ptrtoint ptr %reg_le.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -32768, ptr %reg_le.i, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %reg_le.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call.i2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %touch_event, i32 noundef 44, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call.i2.i)
  %cmp3.not.i = icmp eq i32 %call.i2.i, 44
  br i1 %cmp3.not.i, label %if.end, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i) #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #9
  br label %out

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i) #6
  %finger_mask3 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1
  %5 = ptrtoint ptr %finger_mask3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %finger_mask3, align 2
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %finger_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %finger_mask, align 4
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %finger_mask, i32 noundef 5, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call4)
  %cmp32 = icmp slt i32 %call4, 5
  br i1 %cmp32, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.033 = phi i32 [ %call10, %if.end9.for.body_crit_edge ], [ %call4, %if.end.for.body_crit_edge ]
  %sub_status = getelementptr %struct.touch_event, ptr %touch_event, i32 0, i32 3, i32 %i.033, i32 3
  %8 = ptrtoint ptr %sub_status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sub_status, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %for.body.if.end9_crit_edge, label %if.then8

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.touch_event, ptr %touch_event, i32 0, i32 3, i32 %i.033
  call fastcc void @zinitix_report_finger(ptr noundef %bt541_handler, i32 noundef %i.033, ptr noundef %arrayidx)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %for.body.if.end9_crit_edge
  %add = add nsw i32 %i.033, 1
  %call10 = call i32 @_find_next_bit_be(ptr noundef nonnull %finger_mask, i32 noundef 5, i32 noundef %add) #6
  %cmp = icmp slt i32 %call10, 5
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %if.end.for.end_crit_edge
  %input_dev = getelementptr inbounds %struct.bt541_ts_data, ptr %bt541_handler, i32 0, i32 1
  %11 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input_dev, align 4
  call void @input_mt_sync_frame(ptr noundef %12) #6
  %13 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input_dev, align 4
  call void @input_event(ptr noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %out

out:                                              ; preds = %for.end, %do.end
  %15 = ptrtoint ptr %bt541_handler to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bt541_handler, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_le.i23) #6
  %17 = ptrtoint ptr %reg_le.i23 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 768, ptr %reg_le.i23, align 2
  %call.i.i24 = call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef nonnull %reg_le.i23, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i23) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %finger_mask) #6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %touch_event) #6
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zinitix_report_finger(ptr noundef %bt541, i32 noundef %slot, ptr nocapture noundef readonly %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub_status = getelementptr inbounds %struct.point_coord, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %sub_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sub_status, align 1
  %2 = and i8 %1, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.body, label %if.end14, !prof !150

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zinitix_report_finger.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zinitix_report_finger, %if.then11)) #6
          to label %cleanup [label %if.then11], !srcloc !151

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %bt541 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bt541, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %sub_status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sub_status, align 1
  %conv13 = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zinitix_report_finger.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %conv13) #6
  br label %cleanup

if.end14:                                         ; preds = %entry
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %p, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %y16 = getelementptr inbounds %struct.point_coord, ptr %p, i32 0, i32 1
  %10 = ptrtoint ptr %y16 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %y16, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %input_dev = getelementptr inbounds %struct.bt541_ts_data, ptr %bt541, i32 0, i32 1
  %13 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input_dev, align 4
  tail call void @input_event(ptr noundef %14, i32 noundef 3, i32 noundef 47, i32 noundef %slot) #6
  %15 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input_dev, align 4
  %17 = ptrtoint ptr %sub_status to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sub_status, align 1
  %19 = and i8 %18, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool21.not = icmp eq i8 %19, 0
  %call24 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %16, i32 noundef 0, i1 noundef zeroext %tobool21.not) #6
  br i1 %call24, label %if.then25, label %do.body55

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input_dev, align 4
  %prop = getelementptr inbounds %struct.bt541_ts_data, ptr %bt541, i32 0, i32 2
  %conv27 = zext i16 %9 to i32
  %conv28 = zext i16 %12 to i32
  tail call void @touchscreen_report_pos(ptr noundef %21, ptr noundef %prop, i32 noundef %conv27, i32 noundef %conv28, i1 noundef zeroext true) #6
  %22 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input_dev, align 4
  %width = getelementptr inbounds %struct.point_coord, ptr %p, i32 0, i32 2
  %24 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %width, align 2
  %conv30 = zext i8 %25 to i32
  tail call void @input_event(ptr noundef %23, i32 noundef 3, i32 noundef 48, i32 noundef %conv30) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zinitix_report_finger.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zinitix_report_finger, %if.then43)) #6
          to label %cleanup [label %if.then43], !srcloc !151

if.then43:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %bt541 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bt541, align 4
  %dev45 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %sub_status to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sub_status, align 1
  %30 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool49.not = icmp eq i8 %30, 0
  %cond = select i1 %tobool49.not, ptr @.str.32, ptr @.str.31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zinitix_report_finger.__UNIQUE_ID_ddebug289, ptr noundef %dev45, ptr noundef nonnull @.str.30, i32 noundef %slot, ptr noundef nonnull %cond, i32 noundef %conv27, i32 noundef %conv28) #6
  br label %cleanup

do.body55:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zinitix_report_finger.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zinitix_report_finger, %if.then67)) #6
          to label %cleanup [label %if.then67], !srcloc !151

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %bt541 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bt541, align 4
  %dev69 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  %conv70 = zext i16 %9 to i32
  %conv71 = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zinitix_report_finger.__UNIQUE_ID_ddebug290, ptr noundef %dev69, ptr noundef nonnull @.str.33, i32 noundef %slot, i32 noundef %conv70, i32 noundef %conv71) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %do.body55, %if.then43, %if.then25, %if.then11, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zinitix_input_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @zinitix_start(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zinitix_input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %5) #6
  %supplies.i = getelementptr inbounds %struct.bt541_ts_data, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.zinitix_stop.exit_crit_edge, label %do.end.i

entry.zinitix_stop.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %zinitix_stop.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.71, i32 noundef %call.i) #9
  br label %zinitix_stop.exit

zinitix_stop.exit:                                ; preds = %do.end.i, %entry.zinitix_stop.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zinitix_start(ptr noundef %bt541) unnamed_addr #2 align 64 {
entry:
  %packet.i = alloca [2 x i16], align 2
  %reg_le.i108.i = alloca i16, align 2
  %packet.i102.i = alloca [2 x i16], align 2
  %packet.i96.i = alloca [2 x i16], align 2
  %packet.i90.i = alloca [2 x i16], align 2
  %packet.i84.i = alloca [2 x i16], align 2
  %packet.i78.i = alloca [2 x i16], align 2
  %packet.i.i33 = alloca [2 x i16], align 2
  %reg_le.i.i34 = alloca i16, align 2
  %packet.i52.i = alloca [2 x i16], align 2
  %packet.i46.i = alloca [2 x i16], align 2
  %reg_le.i.i = alloca i16, align 2
  %packet.i.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.bt541_ts_data, ptr %bt541, i32 0, i32 3
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %bt541 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bt541, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 15) #6
  %2 = ptrtoint ptr %bt541 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bt541, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet.i.i) #6
  %4 = getelementptr inbounds [2 x i16], ptr %packet.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 192, ptr %packet.i.i, align 2
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 256, ptr %4, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %packet.i.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i.i) #6
  br i1 %cmp.not.i.i, label %if.end.i, label %if.end.do.end6_crit_edge

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 2147480) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_le.i.i) #6
  %8 = ptrtoint ptr %reg_le.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1216, ptr %reg_le.i.i, align 2
  %call.i.i41.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %reg_le.i.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i41.i)
  %cmp.not.i42.i = icmp eq i32 %call.i.i41.i, 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i.i) #6
  br i1 %cmp.not.i42.i, label %if.end9.i, label %if.end.i.do.end6_crit_edge

if.end.i.do.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

if.end9.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 2147480) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet.i46.i) #6
  %10 = getelementptr inbounds [2 x i16], ptr %packet.i46.i, i32 0, i32 1
  %11 = ptrtoint ptr %packet.i46.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 704, ptr %packet.i46.i, align 2
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 256, ptr %10, align 2
  %call.i.i47.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %packet.i46.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i47.i)
  %cmp.not.i48.i = icmp eq i32 %call.i.i47.i, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i46.i) #6
  br i1 %cmp.not.i48.i, label %if.end17.i, label %if.end9.i.do.end6_crit_edge

if.end9.i.do.end6_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

if.end17.i:                                       ; preds = %if.end9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 429496000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet.i52.i) #6
  %14 = getelementptr inbounds [2 x i16], ptr %packet.i52.i, i32 0, i32 1
  %15 = ptrtoint ptr %packet.i52.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 448, ptr %packet.i52.i, align 2
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 256, ptr %14, align 2
  %call.i.i53.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %packet.i52.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i53.i)
  %cmp.not.i54.i = icmp eq i32 %call.i.i53.i, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i52.i) #6
  br i1 %cmp.not.i54.i, label %if.end9, label %if.end17.i.do.end6_crit_edge

if.end17.i.do.end6_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end6:                                          ; preds = %if.end17.i.do.end6_crit_edge, %if.end9.i.do.end6_crit_edge, %if.end.i.do.end6_crit_edge, %if.end.do.end6_crit_edge
  %call.i.i53.i.sink64 = phi i32 [ %call.i.i.i, %if.end.do.end6_crit_edge ], [ %call.i.i41.i, %if.end.i.do.end6_crit_edge ], [ %call.i.i47.i, %if.end9.i.do.end6_crit_edge ], [ %call.i.i53.i, %if.end17.i.do.end6_crit_edge ]
  %.str.64.sink = phi ptr [ @.str.55, %if.end.do.end6_crit_edge ], [ @.str.58, %if.end.i.do.end6_crit_edge ], [ @.str.61, %if.end9.i.do.end6_crit_edge ], [ @.str.64, %if.end17.i.do.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53.i.sink64)
  %cmp1.i55.i = icmp slt i32 %call.i.i53.i.sink64, 0
  %dev24.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24.i, ptr noundef nonnull %.str.64.sink) #9
  %spec.select60 = select i1 %cmp1.i55.i, i32 %call.i.i53.i.sink64, i32 -5
  %17 = ptrtoint ptr %bt541 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bt541, align 4
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.50, i32 noundef %spec.select60) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end17.i
  call void @msleep(i32 noundef 40) #6
  %19 = ptrtoint ptr %bt541 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bt541, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_le.i.i34) #6
  %21 = ptrtoint ptr %reg_le.i.i34 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %reg_le.i.i34, align 2
  %call.i.i.i35 = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %reg_le.i.i34, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i35)
  %cmp.not.i.i36 = icmp eq i32 %call.i.i.i35, 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i.i34) #6
  br i1 %cmp.not.i.i36, label %if.end.i41, label %if.end9.do.end15.sink.split_crit_edge

if.end9.do.end15.sink.split_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15.sink.split

if.end.i41:                                       ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet.i.i33) #6
  %22 = getelementptr inbounds [2 x i16], ptr %packet.i.i33, i32 0, i32 1
  %23 = ptrtoint ptr %packet.i.i33 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -4096, ptr %packet.i.i33, align 2
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %22, align 2
  %call.i.i73.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %packet.i.i33, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i73.i)
  %cmp.not.i74.i = icmp eq i32 %call.i.i73.i, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i.i33) #6
  br i1 %cmp.not.i74.i, label %if.end9.i44, label %if.end.i41.do.end15.sink.split_crit_edge

if.end.i41.do.end15.sink.split_crit_edge:         ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15.sink.split

if.end9.i44:                                      ; preds = %if.end.i41
  %prop.i = getelementptr inbounds %struct.bt541_ts_data, ptr %bt541, i32 0, i32 2
  %25 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prop.i, align 4
  %conv.i = trunc i32 %26 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet.i78.i) #6
  %27 = getelementptr inbounds [2 x i16], ptr %packet.i78.i, i32 0, i32 1
  %28 = ptrtoint ptr %packet.i78.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -16384, ptr %packet.i78.i, align 2
  %29 = call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %27, align 2
  %call.i.i79.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %packet.i78.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i79.i)
  %cmp.not.i80.i = icmp eq i32 %call.i.i79.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79.i)
  %cmp1.i81.i = icmp slt i32 %call.i.i79.i, 0
  %spec.select.i82.i = select i1 %cmp1.i81.i, i32 %call.i.i79.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i78.i) #6
  br i1 %cmp.not.i80.i, label %if.end13.i, label %if.end9.i44.do.end15_crit_edge

if.end9.i44.do.end15_crit_edge:                   ; preds = %if.end9.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.end13.i:                                       ; preds = %if.end9.i44
  %max_y.i = getelementptr inbounds %struct.bt541_ts_data, ptr %bt541, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %max_y.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_y.i, align 4
  %conv15.i = trunc i32 %32 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet.i84.i) #6
  %33 = getelementptr inbounds [2 x i16], ptr %packet.i84.i, i32 0, i32 1
  %34 = ptrtoint ptr %packet.i84.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -16128, ptr %packet.i84.i, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %conv15.i) #6
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %33, align 2
  %call.i.i85.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %packet.i84.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i85.i)
  %cmp.not.i86.i = icmp eq i32 %call.i.i85.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85.i)
  %cmp1.i87.i = icmp slt i32 %call.i.i85.i, 0
  %spec.select.i88.i = select i1 %cmp1.i87.i, i32 %call.i.i85.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i84.i) #6
  br i1 %cmp.not.i86.i, label %if.end19.i, label %if.end13.i.do.end15_crit_edge

if.end13.i.do.end15_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.end19.i:                                       ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet.i90.i) #6
  %37 = getelementptr inbounds [2 x i16], ptr %packet.i90.i, i32 0, i32 1
  %38 = ptrtoint ptr %packet.i90.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 5376, ptr %packet.i90.i, align 2
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1280, ptr %37, align 2
  %call.i.i91.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %packet.i90.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i91.i)
  %cmp.not.i92.i = icmp eq i32 %call.i.i91.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i91.i)
  %cmp1.i93.i = icmp slt i32 %call.i.i91.i, 0
  %spec.select.i94.i = select i1 %cmp1.i93.i, i32 %call.i.i91.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i90.i) #6
  br i1 %cmp.not.i92.i, label %if.end23.i, label %if.end19.i.do.end15_crit_edge

if.end19.i.do.end15_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.end23.i:                                       ; preds = %if.end19.i
  %zinitix_mode.i = getelementptr inbounds %struct.bt541_ts_data, ptr %bt541, i32 0, i32 4
  %40 = ptrtoint ptr %zinitix_mode.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %zinitix_mode.i, align 4
  %conv24.i = trunc i32 %41 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet.i96.i) #6
  %42 = getelementptr inbounds [2 x i16], ptr %packet.i96.i, i32 0, i32 1
  %43 = ptrtoint ptr %packet.i96.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 6400, ptr %packet.i96.i, align 2
  %44 = call i16 @llvm.bswap.i16(i16 %conv24.i) #6
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %42, align 2
  %call.i.i97.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %packet.i96.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i97.i)
  %cmp.not.i98.i = icmp eq i32 %call.i.i97.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97.i)
  %cmp1.i99.i = icmp slt i32 %call.i.i97.i, 0
  %spec.select.i100.i = select i1 %cmp1.i99.i, i32 %call.i.i97.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i96.i) #6
  br i1 %cmp.not.i98.i, label %if.end28.i, label %if.end23.i.do.end15_crit_edge

if.end23.i.do.end15_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.end28.i:                                       ; preds = %if.end23.i
  %46 = ptrtoint ptr %zinitix_mode.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %zinitix_mode.i, align 4
  %conv30.i = trunc i32 %47 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet.i) #6
  %48 = getelementptr inbounds [2 x i16], ptr %packet.i, i32 0, i32 1
  %49 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 4096, ptr %packet.i, align 2
  %50 = call i16 @llvm.bswap.i16(i16 %conv30.i) #6
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %48, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %packet.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  %spec.select.i = select i1 %cmp1.i, i32 %call.i.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i) #6
  br i1 %cmp.not.i, label %if.end34.i, label %if.end28.i.do.end15_crit_edge

if.end28.i.do.end15_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.end34.i:                                       ; preds = %if.end28.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet.i102.i) #6
  %52 = getelementptr inbounds [2 x i16], ptr %packet.i102.i, i32 0, i32 1
  %53 = ptrtoint ptr %packet.i102.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -4096, ptr %packet.i102.i, align 2
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 3840, ptr %52, align 2
  %call.i.i103.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %packet.i102.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i103.i)
  %cmp.not.i104.i = icmp eq i32 %call.i.i103.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103.i)
  %cmp1.i105.i = icmp slt i32 %call.i.i103.i, 0
  %spec.select.i106.i = select i1 %cmp1.i105.i, i32 %call.i.i103.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i102.i) #6
  br i1 %cmp.not.i104.i, label %if.end18, label %if.end34.i.do.end15_crit_edge

if.end34.i.do.end15_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.end15.sink.split:                              ; preds = %if.end.i41.do.end15.sink.split_crit_edge, %if.end9.do.end15.sink.split_crit_edge
  %call.i.i73.i.sink65 = phi i32 [ %call.i.i.i35, %if.end9.do.end15.sink.split_crit_edge ], [ %call.i.i73.i, %if.end.i41.do.end15.sink.split_crit_edge ]
  %.str.69.sink = phi ptr [ @.str.66, %if.end9.do.end15.sink.split_crit_edge ], [ @.str.69, %if.end.i41.do.end15.sink.split_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73.i.sink65)
  %cmp1.i75.i = icmp slt i32 %call.i.i73.i.sink65, 0
  %dev8.i42 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i42, ptr noundef nonnull %.str.69.sink) #9
  %spec.select62 = select i1 %cmp1.i75.i, i32 %call.i.i73.i.sink65, i32 -5
  br label %do.end15

do.end15:                                         ; preds = %do.end15.sink.split, %if.end34.i.do.end15_crit_edge, %if.end28.i.do.end15_crit_edge, %if.end23.i.do.end15_crit_edge, %if.end19.i.do.end15_crit_edge, %if.end13.i.do.end15_crit_edge, %if.end9.i44.do.end15_crit_edge
  %retval.0.i45.ph = phi i32 [ %spec.select.i106.i, %if.end34.i.do.end15_crit_edge ], [ %spec.select.i, %if.end28.i.do.end15_crit_edge ], [ %spec.select.i100.i, %if.end23.i.do.end15_crit_edge ], [ %spec.select.i94.i, %if.end19.i.do.end15_crit_edge ], [ %spec.select.i88.i, %if.end13.i.do.end15_crit_edge ], [ %spec.select.i82.i, %if.end9.i44.do.end15_crit_edge ], [ %spec.select62, %do.end15.sink.split ]
  %55 = ptrtoint ptr %bt541 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bt541, align 4
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.53) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  %57 = ptrtoint ptr %reg_le.i108.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 768, ptr %reg_le.i108.i, align 2
  %call.i.i109.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %reg_le.i108.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 2147480) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  %59 = ptrtoint ptr %reg_le.i108.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 768, ptr %reg_le.i108.i, align 2
  %call.i.i109.1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %reg_le.i108.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 2147480) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  %61 = ptrtoint ptr %reg_le.i108.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 768, ptr %reg_le.i108.i, align 2
  %call.i.i109.2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %reg_le.i108.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %62(i32 noundef 2147480) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  %63 = ptrtoint ptr %reg_le.i108.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 768, ptr %reg_le.i108.i, align 2
  %call.i.i109.3.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %reg_le.i108.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 2147480) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  %65 = ptrtoint ptr %reg_le.i108.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 768, ptr %reg_le.i108.i, align 2
  %call.i.i109.4.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %reg_le.i108.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %66(i32 noundef 2147480) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  %67 = ptrtoint ptr %reg_le.i108.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 768, ptr %reg_le.i108.i, align 2
  %call.i.i109.5.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %reg_le.i108.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %68(i32 noundef 2147480) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  %69 = ptrtoint ptr %reg_le.i108.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 768, ptr %reg_le.i108.i, align 2
  %call.i.i109.6.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %reg_le.i108.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 2147480) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  %71 = ptrtoint ptr %reg_le.i108.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 768, ptr %reg_le.i108.i, align 2
  %call.i.i109.7.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %reg_le.i108.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %72(i32 noundef 2147480) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  %73 = ptrtoint ptr %reg_le.i108.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 768, ptr %reg_le.i108.i, align 2
  %call.i.i109.8.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %reg_le.i108.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %74(i32 noundef 2147480) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  %75 = ptrtoint ptr %reg_le.i108.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 768, ptr %reg_le.i108.i, align 2
  %call.i.i109.9.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %reg_le.i108.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_le.i108.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 2147480) #6
  %77 = ptrtoint ptr %bt541 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bt541, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %80) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end15, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %spec.select60, %do.end6 ], [ %retval.0.i45.ph, %do.end15 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zinitix_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev = getelementptr inbounds %struct.bt541_ts_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 4
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #6
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %9) #6
  %supplies.i = getelementptr inbounds %struct.bt541_ts_data, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.71, i32 noundef %call.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input_dev, align 4
  %mutex5 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zinitix_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev = getelementptr inbounds %struct.bt541_ts_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 4
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #6
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call fastcc i32 @zinitix_start(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_dev, align 4
  %mutex5 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex5) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !73, !74, !75, !76, !78, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @__initcall__kmod_zinitix__291_627_zinitix_ts_driver_init6, !1, !"__initcall__kmod_zinitix__291_627_zinitix_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/zinitix.c", i32 627, i32 1}
!2 = !{ptr @__exitcall_zinitix_ts_driver_exit, !1, !"__exitcall_zinitix_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/zinitix.c", i32 629, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/zinitix.c", i32 630, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/zinitix.c", i32 631, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/zinitix.c", i32 622, i32 11}
!12 = !{ptr @zinitix_ts_driver, !13, !"zinitix_ts_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/zinitix.c", i32 619, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/zinitix.c", i32 509, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @zinitix_ts_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @zinitix_ts_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/zinitix.c", i32 523, i32 3}
!24 = !{ptr @zinitix_ts_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @zinitix_ts_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/zinitix.c", i32 533, i32 3}
!28 = !{ptr @zinitix_ts_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @zinitix_ts_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/zinitix.c", i32 539, i32 3}
!32 = !{ptr @zinitix_ts_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @zinitix_ts_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/zinitix.c", i32 544, i32 49}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/zinitix.c", i32 556, i32 3}
!38 = !{ptr @zinitix_ts_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @zinitix_ts_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/zinitix.c", i32 263, i32 37}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/zinitix.c", i32 264, i32 31}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/zinitix.c", i32 265, i32 31}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/zinitix.c", i32 268, i32 31}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/zinitix.c", i32 275, i32 3}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @zinitix_init_regulators._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @zinitix_init_regulators._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/zinitix.c", i32 367, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @zinitix_ts_irq_handler._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @zinitix_ts_irq_handler._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/zinitix.c", i32 329, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @zinitix_report_finger.__UNIQUE_ID_ddebug288, !59, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/touchscreen/zinitix.c", i32 344, i32 3}
!65 = !{ptr @zinitix_report_finger.__UNIQUE_ID_ddebug289, !64, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!66 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/zinitix.c", i32 348, i32 3}
!70 = !{ptr @zinitix_report_finger.__UNIQUE_ID_ddebug290, !69, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/touchscreen/zinitix.c", i32 459, i32 3}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @zinitix_init_input_dev._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @zinitix_init_input_dev._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/touchscreen/zinitix.c", i32 467, i32 20}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/touchscreen/zinitix.c", i32 468, i32 20}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/touchscreen/zinitix.c", i32 480, i32 3}
!82 = !{ptr @zinitix_init_input_dev._entry.38, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @zinitix_init_input_dev._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/touchscreen/zinitix.c", i32 488, i32 3}
!86 = !{ptr @zinitix_init_input_dev._entry.41, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @zinitix_init_input_dev._entry_ptr.43, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/touchscreen/zinitix.c", i32 495, i32 3}
!90 = !{ptr @zinitix_init_input_dev._entry.44, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @zinitix_init_input_dev._entry_ptr.46, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/touchscreen/zinitix.c", i32 395, i32 3}
!94 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @zinitix_start._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @zinitix_start._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/touchscreen/zinitix.c", i32 404, i32 3}
!99 = !{ptr @zinitix_start._entry.49, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @zinitix_start._entry_ptr.51, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/touchscreen/zinitix.c", i32 411, i32 3}
!103 = !{ptr @zinitix_start._entry.52, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @zinitix_start._entry_ptr.54, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/touchscreen/zinitix.c", i32 289, i32 3}
!107 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @zinitix_send_power_on_sequence._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @zinitix_send_power_on_sequence._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/touchscreen/zinitix.c", i32 297, i32 3}
!112 = !{ptr @zinitix_send_power_on_sequence._entry.57, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @zinitix_send_power_on_sequence._entry_ptr.59, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/touchscreen/zinitix.c", i32 305, i32 3}
!116 = !{ptr @zinitix_send_power_on_sequence._entry.60, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @zinitix_send_power_on_sequence._entry_ptr.62, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/touchscreen/zinitix.c", i32 313, i32 3}
!120 = !{ptr @zinitix_send_power_on_sequence._entry.63, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @zinitix_send_power_on_sequence._entry_ptr.65, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/input/touchscreen/zinitix.c", i32 201, i32 3}
!124 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @zinitix_init_touch._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @zinitix_init_touch._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/input/touchscreen/zinitix.c", i32 207, i32 3}
!129 = !{ptr @zinitix_init_touch._entry.68, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @zinitix_init_touch._entry_ptr.70, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.71, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/input/touchscreen/zinitix.c", i32 430, i32 3}
!133 = !{ptr @.str.72, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @zinitix_stop._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @zinitix_stop._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @zinitix_of_match, !137, !"zinitix_of_match", i1 false, i1 false}
!137 = !{!"../drivers/input/touchscreen/zinitix.c", i32 599, i32 34}
!138 = !{ptr @zinitix_pm_ops, !139, !"zinitix_pm_ops", i1 false, i1 false}
!139 = !{!"../drivers/input/touchscreen/zinitix.c", i32 596, i32 8}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{!"auto-init"}
!150 = !{!"branch_weights", i32 1, i32 2000}
!151 = !{i64 2148770220, i64 2148770225, i64 2148770238, i64 2148770282, i64 2148770316, i64 2148770337}
