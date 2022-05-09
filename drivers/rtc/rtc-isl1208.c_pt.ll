; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-isl1208.c_pt.bc'
source_filename = "../drivers/rtc/rtc-isl1208.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.isl1208_config = type { [8 x i8], i32, i8 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.isl1208_state = type { %struct.nvmem_config, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_isl1208__289_909_isl1208_driver_init6 = internal global ptr @isl1208_driver_init, section ".initcall6.init", align 4
@isl1208_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @isl1208_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @isl1208_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @isl1208_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_isl1208_driver_exit = internal global ptr @isl1208_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [56 x i8] c"rtc_isl1208.author=Herbert Valerio Riedel <hvr@gnu.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [52 x i8] c"rtc_isl1208.description=Intersil ISL1208 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"rtc_isl1208.file=drivers/rtc/rtc-isl1208\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"rtc_isl1208.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc-isl1208\00", [20 x i8] zeroinitializer }, align 32
@isl1208_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl1208\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @isl1208_configs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl1209\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @isl1208_configs, i64 16) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl1218\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @isl1208_configs, i64 32) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl1219\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @isl1208_configs, i64 48) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@isl1208_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"isl1208\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"isl1209\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"isl1218\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"isl1219\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@isl1208_configs = internal constant { [4 x %struct.isl1208_config], [32 x i8] } { [4 x %struct.isl1208_config] [%struct.isl1208_config { [8 x i8] c"isl1208\00", i32 2, i8 0 }, %struct.isl1208_config { [8 x i8] c"isl1209\00", i32 2, i8 -128 }, %struct.isl1208_config { [8 x i8] c"isl1218\00", i32 8, i8 0 }, %struct.isl1208_config { [8 x i8] c"isl1219\00", i32 2, i8 -64 }], [32 x i8] zeroinitializer }, align 32
@isl1208_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @isl1208_rtc_read_time, ptr @isl1208_rtc_set_time, ptr @isl1208_rtc_read_alarm, ptr @isl1208_rtc_set_alarm, ptr @isl1208_rtc_proc, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@isl1208_nvmem_config = internal constant { %struct.nvmem_config, [40 x i8] } { %struct.nvmem_config { ptr null, ptr @.str.65, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @isl1208_nvmem_read, ptr @isl1208_nvmem_write, ptr null, i32 0, i32 1, i32 1, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@isl1208_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 842, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reading status failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isl1208_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-isl1208.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isl1208_probe._entry_ptr = internal global ptr @isl1208_probe._entry, section ".printk_index", align 4
@isl1208_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 848, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rtc power failure detected, please set clock.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@isl1208_probe._entry_ptr.9 = internal global ptr @isl1208_probe._entry.6, section ".printk_index", align 4
@isl1208_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 856, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to read EV reg\0A\00", [41 x i8] zeroinitializer }, align 32
@isl1208_probe._entry_ptr.12 = internal global ptr @isl1208_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isil,ev-evienb\00", [17 x i8] zeroinitializer }, align 32
@isl1208_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 868, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not enable tamper detection\0A\00", [61 x i8] zeroinitializer }, align 32
@isl1208_probe._entry_ptr.16 = internal global ptr @isl1208_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"evdet\00", [26 x i8] zeroinitializer }, align 32
@isl1219_rtc_sysfs_files = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @isl1219_rtc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@isl1208_rtc_sysfs_files = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @isl1208_rtc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@isl1208_i2c_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: reading SR failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isl1208_i2c_read_time\00", [42 x i8] zeroinitializer }, align 32
@isl1208_i2c_read_time._entry_ptr = internal global ptr @isl1208_i2c_read_time._entry, section ".printk_index", align 4
@isl1208_i2c_read_time._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: reading RTC section failed\0A\00", [32 x i8] zeroinitializer }, align 32
@isl1208_i2c_read_time._entry_ptr.22 = internal global ptr @isl1208_i2c_read_time._entry.20, section ".printk_index", align 4
@isl1208_i2c_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.23, ptr @.str.3, i32 469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isl1208_i2c_set_time\00", [43 x i8] zeroinitializer }, align 32
@isl1208_i2c_set_time._entry_ptr = internal global ptr @isl1208_i2c_set_time._entry, section ".printk_index", align 4
@isl1208_i2c_set_time._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: writing SR failed\0A\00", [41 x i8] zeroinitializer }, align 32
@isl1208_i2c_set_time._entry_ptr.26 = internal global ptr @isl1208_i2c_set_time._entry.24, section ".printk_index", align 4
@isl1208_i2c_set_time._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 485, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: writing RTC section failed\0A\00", [32 x i8] zeroinitializer }, align 32
@isl1208_i2c_set_time._entry_ptr.29 = internal global ptr @isl1208_i2c_set_time._entry.27, section ".printk_index", align 4
@isl1208_i2c_set_time._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.23, ptr @.str.3, i32 492, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@isl1208_i2c_set_time._entry_ptr.31 = internal global ptr @isl1208_i2c_set_time._entry.30, section ".printk_index", align 4
@isl1208_i2c_set_time._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 498, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@isl1208_i2c_set_time._entry_ptr.33 = internal global ptr @isl1208_i2c_set_time._entry.32, section ".printk_index", align 4
@isl1208_i2c_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.34, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isl1208_i2c_read_alarm\00", [41 x i8] zeroinitializer }, align 32
@isl1208_i2c_read_alarm._entry_ptr = internal global ptr @isl1208_i2c_read_alarm._entry, section ".printk_index", align 4
@isl1208_i2c_read_alarm._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: reading alarm section failed\0A\00", [62 x i8] zeroinitializer }, align 32
@isl1208_i2c_read_alarm._entry_ptr.37 = internal global ptr @isl1208_i2c_read_alarm._entry.35, section ".printk_index", align 4
@isl1208_i2c_read_alarm._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.3, i32 378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: reading RTC YR failed\0A\00", [37 x i8] zeroinitializer }, align 32
@isl1208_i2c_read_alarm._entry_ptr.40 = internal global ptr @isl1208_i2c_read_alarm._entry.38, section ".printk_index", align 4
@isl1208_i2c_read_alarm._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.3, i32 385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: reading INT failed\0A\00", [40 x i8] zeroinitializer }, align 32
@isl1208_i2c_read_alarm._entry_ptr.43 = internal global ptr @isl1208_i2c_read_alarm._entry.41, section ".printk_index", align 4
@isl1208_i2c_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 427, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: writing ALARM section failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isl1208_i2c_set_alarm\00", [42 x i8] zeroinitializer }, align 32
@isl1208_i2c_set_alarm._entry_ptr = internal global ptr @isl1208_i2c_set_alarm._entry, section ".printk_index", align 4
@isl1208_rtc_toggle_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.46, ptr @.str.3, i32 246, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"isl1208_rtc_toggle_alarm\00", [39 x i8] zeroinitializer }, align 32
@isl1208_rtc_toggle_alarm._entry_ptr = internal global ptr @isl1208_rtc_toggle_alarm._entry, section ".printk_index", align 4
@isl1208_rtc_toggle_alarm._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: writing INT failed\0A\00", [40 x i8] zeroinitializer }, align 32
@isl1208_rtc_toggle_alarm._entry_ptr.49 = internal global ptr @isl1208_rtc_toggle_alarm._entry.47, section ".printk_index", align 4
@isl1208_rtc_proc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.50, ptr @.str.3, i32 272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isl1208_rtc_proc\00", [47 x i8] zeroinitializer }, align 32
@isl1208_rtc_proc._entry_ptr = internal global ptr @isl1208_rtc_proc._entry, section ".printk_index", align 4
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"status_reg\09:%s%s%s%s%s%s (0x%.2x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" RTCF\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" BAT\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ALM\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" WRTC\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" XTOSCB\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" ARST\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"batt_status\09: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bad\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"okay\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"digital_trim\09: %d ppm\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"analog_trim\09: %d.%.2d pF\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"user_data\09: 0x%.4x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isl1208_nvram\00", [18 x i8] zeroinitializer }, align 32
@isl1219_rtc_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_timestamp0, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_timestamp0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timestamp0_show, ptr @timestamp0_store }, [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timestamp0\00", [21 x i8] zeroinitializer }, align 32
@timestamp0_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.67, ptr @.str.3, i32 557, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"timestamp0_show\00", [16 x i8] zeroinitializer }, align 32
@timestamp0_show._entry_ptr = internal global ptr @timestamp0_show._entry, section ".printk_index", align 4
@timestamp0_show._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 568, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: reading event section failed\0A\00", [62 x i8] zeroinitializer }, align 32
@timestamp0_show._entry_ptr.70 = internal global ptr @timestamp0_show._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@timestamp0_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.72, ptr @.str.3, i32 533, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timestamp0_store\00", [47 x i8] zeroinitializer }, align 32
@timestamp0_store._entry_ptr = internal global ptr @timestamp0_store._entry, section ".printk_index", align 4
@timestamp0_store._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.72, ptr @.str.3, i32 542, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@timestamp0_store._entry_ptr.74 = internal global ptr @timestamp0_store._entry.73, section ".printk_index", align 4
@isl1208_rtc_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_atrim, ptr @dev_attr_dtrim, ptr @dev_attr_usr, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_atrim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @isl1208_sysfs_show_atrim, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dtrim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @isl1208_sysfs_show_dtrim, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_usr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @isl1208_sysfs_show_usr, ptr @isl1208_sysfs_store_usr }, [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atrim\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d.%.2d pF\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dtrim\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%d ppm\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usr\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%.4x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@isl1208_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 794, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to request irq %d, no alarm support\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isl1208_setup_irq\00", [46 x i8] zeroinitializer }, align 32
@isl1208_setup_irq._entry_ptr = internal global ptr @isl1208_setup_irq._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@isl1208_rtc_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.85, ptr @.str.3, i32 611, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isl1208_rtc_interrupt\00", [42 x i8] zeroinitializer }, align 32
@isl1208_rtc_interrupt._entry_ptr = internal global ptr @isl1208_rtc_interrupt._entry, section ".printk_index", align 4
@isl1208_rtc_interrupt.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.86, ptr @.str.85, ptr @.str.3, ptr @.str.87, i8 0, i8 -102, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc_isl1208\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"alarm!\0A\00", [24 x i8] zeroinitializer }, align 32
@isl1208_rtc_interrupt._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.85, ptr @.str.3, i32 626, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@isl1208_rtc_interrupt._entry_ptr.89 = internal global ptr @isl1208_rtc_interrupt._entry.88, section ".printk_index", align 4
@isl1208_rtc_interrupt._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.85, ptr @.str.3, i32 637, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"event detected\00", [17 x i8] zeroinitializer }, align 32
@isl1208_rtc_interrupt._entry_ptr.92 = internal global ptr @isl1208_rtc_interrupt._entry.90, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"isl1208_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 900, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 902, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"isl1208_of_match\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 102, i32 49 }
@___asan_gen_.102 = private unnamed_addr constant [11 x i8] c"isl1208_id\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 93, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"isl1208_configs\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 86, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"isl1208_rtc_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 647, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"isl1208_nvmem_config\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 772, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 842, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 847, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 856, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 860, i32 33 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 868, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 871, i32 37 }
@___asan_gen_.159 = private unnamed_addr constant [24 x i8] c"isl1219_rtc_sysfs_files\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 737, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant [24 x i8] c"isl1208_rtc_sysfs_files\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 728, i32 37 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 311, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 317, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 469, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 477, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 484, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 492, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 498, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 354, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 361, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 378, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 385, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 426, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 246, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 257, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 272, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 276, i32 18 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 277, i32 35 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 277, i32 45 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 278, i32 34 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 279, i32 34 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 280, i32 35 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 281, i32 37 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 282, i32 35 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 284, i32 18 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 285, i32 35 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 285, i32 43 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 289, i32 19 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 293, i32 19 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 298, i32 19 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 773, i32 10 }
@___asan_gen_.300 = private unnamed_addr constant [18 x i8] c"isl1219_rtc_attrs\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 732, i32 26 }
@___asan_gen_.303 = private unnamed_addr constant [20 x i8] c"dev_attr_timestamp0\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 589, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 557, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 567, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 585, i32 22 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 533, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 541, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [18 x i8] c"isl1208_rtc_attrs\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 721, i32 26 }
@___asan_gen_.336 = private unnamed_addr constant [15 x i8] c"dev_attr_atrim\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [15 x i8] c"dev_attr_dtrim\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [13 x i8] c"dev_attr_usr\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 668, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 665, i32 22 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 681, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 678, i32 22 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 718, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 691, i32 22 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 702, i32 19 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 705, i32 19 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 792, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 610, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 617, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 625, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.397 = private constant [29 x i8] c"../drivers/rtc/rtc-isl1208.c\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 637, i32 3 }
@llvm.compiler.used = appending global [136 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_isl1208_driver_exit, ptr @__initcall__kmod_rtc_isl1208__289_909_isl1208_driver_init6, ptr @isl1208_driver_exit, ptr @isl1208_i2c_read_alarm._entry, ptr @isl1208_i2c_read_alarm._entry.35, ptr @isl1208_i2c_read_alarm._entry.38, ptr @isl1208_i2c_read_alarm._entry.41, ptr @isl1208_i2c_read_alarm._entry_ptr, ptr @isl1208_i2c_read_alarm._entry_ptr.37, ptr @isl1208_i2c_read_alarm._entry_ptr.40, ptr @isl1208_i2c_read_alarm._entry_ptr.43, ptr @isl1208_i2c_read_time._entry, ptr @isl1208_i2c_read_time._entry.20, ptr @isl1208_i2c_read_time._entry_ptr, ptr @isl1208_i2c_read_time._entry_ptr.22, ptr @isl1208_i2c_set_alarm._entry, ptr @isl1208_i2c_set_alarm._entry_ptr, ptr @isl1208_i2c_set_time._entry, ptr @isl1208_i2c_set_time._entry.24, ptr @isl1208_i2c_set_time._entry.27, ptr @isl1208_i2c_set_time._entry.30, ptr @isl1208_i2c_set_time._entry.32, ptr @isl1208_i2c_set_time._entry_ptr, ptr @isl1208_i2c_set_time._entry_ptr.26, ptr @isl1208_i2c_set_time._entry_ptr.29, ptr @isl1208_i2c_set_time._entry_ptr.31, ptr @isl1208_i2c_set_time._entry_ptr.33, ptr @isl1208_probe._entry, ptr @isl1208_probe._entry.10, ptr @isl1208_probe._entry.14, ptr @isl1208_probe._entry.6, ptr @isl1208_probe._entry_ptr, ptr @isl1208_probe._entry_ptr.12, ptr @isl1208_probe._entry_ptr.16, ptr @isl1208_probe._entry_ptr.9, ptr @isl1208_rtc_interrupt._entry, ptr @isl1208_rtc_interrupt._entry.88, ptr @isl1208_rtc_interrupt._entry.90, ptr @isl1208_rtc_interrupt._entry_ptr, ptr @isl1208_rtc_interrupt._entry_ptr.89, ptr @isl1208_rtc_interrupt._entry_ptr.92, ptr @isl1208_rtc_proc._entry, ptr @isl1208_rtc_proc._entry_ptr, ptr @isl1208_rtc_toggle_alarm._entry, ptr @isl1208_rtc_toggle_alarm._entry.47, ptr @isl1208_rtc_toggle_alarm._entry_ptr, ptr @isl1208_rtc_toggle_alarm._entry_ptr.49, ptr @isl1208_setup_irq._entry, ptr @isl1208_setup_irq._entry_ptr, ptr @timestamp0_show._entry, ptr @timestamp0_show._entry.68, ptr @timestamp0_show._entry_ptr, ptr @timestamp0_show._entry_ptr.70, ptr @timestamp0_store._entry, ptr @timestamp0_store._entry.73, ptr @timestamp0_store._entry_ptr, ptr @timestamp0_store._entry_ptr.74, ptr @isl1208_driver, ptr @.str, ptr @isl1208_of_match, ptr @isl1208_id, ptr @isl1208_configs, ptr @isl1208_rtc_ops, ptr @isl1208_nvmem_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @isl1219_rtc_sysfs_files, ptr @isl1208_rtc_sysfs_files, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @isl1219_rtc_attrs, ptr @dev_attr_timestamp0, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @isl1208_rtc_attrs, ptr @dev_attr_atrim, ptr @dev_attr_dtrim, ptr @dev_attr_usr, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.91], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_configs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_nvmem_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1219_rtc_sysfs_files to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_rtc_sysfs_files to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_i2c_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_i2c_read_time._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_i2c_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_i2c_set_time._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_i2c_set_time._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_i2c_set_time._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_i2c_set_time._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_i2c_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_i2c_read_alarm._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_i2c_read_alarm._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_i2c_read_alarm._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_i2c_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_rtc_toggle_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_rtc_toggle_alarm._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_rtc_proc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1219_rtc_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timestamp0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timestamp0_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timestamp0_show._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timestamp0_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timestamp0_store._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_rtc_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_atrim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dtrim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_rtc_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_rtc_interrupt._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl1208_rtc_interrupt._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isl1208_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @isl1208_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isl1208_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @isl1208_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl1208_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %regs.i = alloca [7 x i8], align 1
  %evienb = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup127_crit_edge, label %if.end

entry.cleanup127_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %regs.i) #8
  %6 = call ptr @memset(ptr %regs.i, i32 0, i32 7)
  %call.i.i194 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %regs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i194)
  %cmp.i = icmp slt i32 %call.i.i194, 0
  br i1 %cmp.i, label %isl1208_i2c_validate_client.exit, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %regs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool.not.i = icmp sgt i8 %8, -1
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.preheader.i.isl1208_i2c_validate_client.exit.thread_crit_edge

for.body.preheader.i.isl1208_i2c_validate_client.exit.thread_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_i2c_validate_client.exit.thread

for.cond.i:                                       ; preds = %for.body.preheader.i
  %arrayidx.1.i = getelementptr inbounds [7 x i8], ptr %regs.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool.not.1.i = icmp sgt i8 %10, -1
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.isl1208_i2c_validate_client.exit.thread_crit_edge

for.cond.i.isl1208_i2c_validate_client.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_i2c_validate_client.exit.thread

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr inbounds [7 x i8], ptr %regs.i, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.2.i, align 1
  %and13.2.i = and i8 %12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and13.2.i)
  %tobool.not.2.i = icmp eq i8 %and13.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.isl1208_i2c_validate_client.exit.thread_crit_edge

for.cond.1.i.isl1208_i2c_validate_client.exit.thread_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_i2c_validate_client.exit.thread

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr inbounds [7 x i8], ptr %regs.i, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %14)
  %tobool.not.3.i = icmp ult i8 %14, 64
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.isl1208_i2c_validate_client.exit.thread_crit_edge

for.cond.2.i.isl1208_i2c_validate_client.exit.thread_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_i2c_validate_client.exit.thread

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr inbounds [7 x i8], ptr %regs.i, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %16)
  %tobool.not.4.i = icmp ult i8 %16, 32
  br i1 %tobool.not.4.i, label %for.cond.5.i, label %for.cond.3.i.isl1208_i2c_validate_client.exit.thread_crit_edge

for.cond.3.i.isl1208_i2c_validate_client.exit.thread_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_i2c_validate_client.exit.thread

for.cond.5.i:                                     ; preds = %for.cond.3.i
  %arrayidx.6.i = getelementptr inbounds [7 x i8], ptr %regs.i, i32 0, i32 6
  %17 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %18)
  %tobool.not.6.i = icmp ult i8 %18, 8
  br i1 %tobool.not.6.i, label %isl1208_i2c_validate_client.exit.thread200, label %for.cond.5.i.isl1208_i2c_validate_client.exit.thread_crit_edge

for.cond.5.i.isl1208_i2c_validate_client.exit.thread_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_i2c_validate_client.exit.thread

isl1208_i2c_validate_client.exit.thread200:       ; preds = %for.cond.5.i
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs.i) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 96, i32 noundef 3520) #8
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %isl1208_i2c_validate_client.exit.thread200.cleanup127_crit_edge, label %if.end7

isl1208_i2c_validate_client.exit.thread200.cleanup127_crit_edge: ; preds = %isl1208_i2c_validate_client.exit.thread200
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

isl1208_i2c_validate_client.exit.thread:          ; preds = %for.cond.5.i.isl1208_i2c_validate_client.exit.thread_crit_edge, %for.cond.3.i.isl1208_i2c_validate_client.exit.thread_crit_edge, %for.cond.2.i.isl1208_i2c_validate_client.exit.thread_crit_edge, %for.cond.1.i.isl1208_i2c_validate_client.exit.thread_crit_edge, %for.cond.i.isl1208_i2c_validate_client.exit.thread_crit_edge, %for.body.preheader.i.isl1208_i2c_validate_client.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs.i) #8
  br label %cleanup127

isl1208_i2c_validate_client.exit:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs.i) #8
  br label %cleanup127

if.end7:                                          ; preds = %isl1208_i2c_validate_client.exit.thread200
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %tobool9.not = icmp eq ptr %21, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call12 = call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %config = getelementptr inbounds %struct.isl1208_state, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call12, ptr %config, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.then10.cleanup127_crit_edge, label %if.then10.if.end22_crit_edge

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then10.cleanup127_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.else:                                          ; preds = %if.end7
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %23 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp17 = icmp ugt i32 %24, 3
  br i1 %cmp17, label %if.else.cleanup127_crit_edge, label %if.end19

if.else.cleanup127_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [4 x %struct.isl1208_config], ptr @isl1208_configs, i32 0, i32 %24
  %config21 = getelementptr inbounds %struct.isl1208_state, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %config21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx, ptr %config21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %if.then10.if.end22_crit_edge
  %call24 = call ptr @devm_rtc_allocate_device(ptr noundef %dev) #8
  %rtc = getelementptr inbounds %struct.isl1208_state, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call24, ptr %rtc, align 4
  %cmp.i195 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i195, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call24 to i32
  br label %cleanup127

if.end30:                                         ; preds = %if.end22
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call24, i32 0, i32 3
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @isl1208_rtc_ops, ptr %ops, align 8
  %29 = call ptr @memcpy(ptr %call.i, ptr @isl1208_nvmem_config, i32 88)
  %config32 = getelementptr inbounds %struct.isl1208_state, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %config32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config32, align 4
  %nvmem_length = getelementptr inbounds %struct.isl1208_config, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %nvmem_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nvmem_length, align 4
  %size = getelementptr inbounds %struct.nvmem_config, ptr %call.i, i32 0, i32 18
  %34 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %size, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %call.i, i32 0, i32 21
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %priv, align 4
  %call.i196 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %cmp36 = icmp slt i32 %call.i196, 0
  br i1 %cmp36, label %do.end, label %if.end39

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup127

if.end39:                                         ; preds = %if.end30
  %and = and i32 %call.i196, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end39.if.end46_crit_edge, label %do.end44

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %if.end46

if.end46:                                         ; preds = %do.end44, %if.end39.if.end46_crit_edge
  %36 = ptrtoint ptr %config32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config32, align 4
  %has_tamper = getelementptr inbounds %struct.isl1208_config, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %has_tamper to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %has_tamper, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool48.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool48.not, label %if.end46.if.end81_crit_edge, label %if.then49

if.end46.if.end81_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then49:                                        ; preds = %if.end46
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %evienb) #8
  %41 = ptrtoint ptr %evienb to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %evienb, align 4, !annotation !215
  %call52 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then49.cleanup.thread_crit_edge, label %if.end59

if.then49.cleanup.thread_crit_edge:               ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end59:                                         ; preds = %if.then49
  %or = or i32 %call52, 16
  %call.i.i197 = call i32 @of_property_read_variable_u32_array(ptr noundef %40, ptr noundef nonnull @.str.13, ptr noundef nonnull %evienb, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i197)
  %tobool61.not = icmp sgt i32 %call.i.i197, -1
  br i1 %tobool61.not, label %if.then62, label %if.end59.if.end69_crit_edge

if.end59.if.end69_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then62:                                        ; preds = %if.end59
  %42 = ptrtoint ptr %evienb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %evienb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool63.not = icmp eq i32 %43, 0
  br i1 %tobool63.not, label %if.else66, label %if.then64

if.then64:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  %or65 = or i32 %call52, 144
  br label %if.end69

if.else66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  %and67 = and i32 %or, -129
  br label %if.end69

if.end69:                                         ; preds = %if.else66, %if.then64, %if.end59.if.end69_crit_edge
  %rc.0 = phi i32 [ %or, %if.end59.if.end69_crit_edge ], [ %or65, %if.then64 ], [ %and67, %if.else66 ]
  %conv = trunc i32 %rc.0 to i8
  %call70 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 9, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end69.cleanup.thread_crit_edge, label %cleanup

if.end69.cleanup.thread_crit_edge:                ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end69.cleanup.thread_crit_edge, %if.then49.cleanup.thread_crit_edge
  %.str.11.sink = phi ptr [ @.str.11, %if.then49.cleanup.thread_crit_edge ], [ @.str.15, %if.end69.cleanup.thread_crit_edge ]
  %retval.0.ph = phi i32 [ %call52, %if.then49.cleanup.thread_crit_edge ], [ %call70, %if.end69.cleanup.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.11.sink) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %evienb) #8
  br label %cleanup127

cleanup:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %call79 = call i32 @of_irq_get_byname(ptr noundef %40, ptr noundef nonnull @.str.17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %evienb) #8
  br label %if.end81

if.end81:                                         ; preds = %cleanup, %if.end46.if.end81_crit_edge
  %evdet_irq.1 = phi i32 [ %call79, %cleanup ], [ -1, %if.end46.if.end81_crit_edge ]
  %44 = ptrtoint ptr %config32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config32, align 4
  %has_timestamp = getelementptr inbounds %struct.isl1208_config, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %has_timestamp to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load83 = load i8, ptr %has_timestamp, align 4
  %47 = and i8 %bf.load83, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool86.not = icmp eq i8 %47, 0
  br i1 %tobool86.not, label %if.end81.if.end93_crit_edge, label %if.then87

if.end81.if.end93_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then87:                                        ; preds = %if.end81
  %48 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rtc, align 4
  %call89 = call i32 @rtc_add_group(ptr noundef %49, ptr noundef nonnull @isl1219_rtc_sysfs_files) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then87.if.end93_crit_edge, label %if.then87.cleanup127_crit_edge

if.then87.cleanup127_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.then87.if.end93_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.end93:                                         ; preds = %if.then87.if.end93_crit_edge, %if.end81.if.end93_crit_edge
  %50 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rtc, align 4
  %call95 = call i32 @rtc_add_group(ptr noundef %51, ptr noundef nonnull @isl1208_rtc_sysfs_files) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end93.cleanup127_crit_edge

if.end93.cleanup127_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end98:                                         ; preds = %if.end93
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp99 = icmp sgt i32 %53, 0
  br i1 %cmp99, label %if.end104, label %if.end98.if.end107_crit_edge

if.end98.if.end107_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.end104:                                        ; preds = %if.end98
  %call103 = call fastcc i32 @isl1208_setup_irq(ptr noundef %client, i32 noundef %53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool105.not = icmp eq i32 %call103, 0
  br i1 %tobool105.not, label %if.end104.if.end107_crit_edge, label %if.end104.cleanup127_crit_edge

if.end104.cleanup127_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end104.if.end107_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.end107:                                        ; preds = %if.end104.if.end107_crit_edge, %if.end98.if.end107_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %evdet_irq.1)
  %cmp108 = icmp sgt i32 %evdet_irq.1, 0
  br i1 %cmp108, label %land.lhs.true, label %if.end107.if.end118_crit_edge

if.end107.if.end118_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

land.lhs.true:                                    ; preds = %if.end107
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %evdet_irq.1, i32 %55)
  %cmp111.not = icmp eq i32 %evdet_irq.1, %55
  br i1 %cmp111.not, label %land.lhs.true.if.end118_crit_edge, label %if.end115

land.lhs.true.if.end118_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.end115:                                        ; preds = %land.lhs.true
  %call114 = call fastcc i32 @isl1208_setup_irq(ptr noundef %client, i32 noundef %evdet_irq.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool116.not = icmp eq i32 %call114, 0
  br i1 %tobool116.not, label %if.end115.if.end118_crit_edge, label %if.end115.cleanup127_crit_edge

if.end115.cleanup127_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end115.if.end118_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.end118:                                        ; preds = %if.end115.if.end118_crit_edge, %land.lhs.true.if.end118_crit_edge, %if.end107.if.end118_crit_edge
  %56 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rtc, align 4
  %call121 = call i32 @devm_rtc_nvmem_register(ptr noundef %57, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %if.end118.cleanup127_crit_edge

if.end118.cleanup127_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end124:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rtc, align 4
  %call126 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %59) #8
  br label %cleanup127

cleanup127:                                       ; preds = %if.end124, %if.end118.cleanup127_crit_edge, %if.end115.cleanup127_crit_edge, %if.end104.cleanup127_crit_edge, %if.end93.cleanup127_crit_edge, %if.then87.cleanup127_crit_edge, %cleanup.thread, %do.end, %if.then27, %if.else.cleanup127_crit_edge, %if.then10.cleanup127_crit_edge, %isl1208_i2c_validate_client.exit, %isl1208_i2c_validate_client.exit.thread, %isl1208_i2c_validate_client.exit.thread200.cleanup127_crit_edge, %entry.cleanup127_crit_edge
  %retval.1 = phi i32 [ %27, %if.then27 ], [ %call.i196, %do.end ], [ %call126, %if.end124 ], [ -19, %entry.cleanup127_crit_edge ], [ -19, %isl1208_i2c_validate_client.exit ], [ -12, %isl1208_i2c_validate_client.exit.thread200.cleanup127_crit_edge ], [ -19, %if.then10.cleanup127_crit_edge ], [ -19, %if.else.cleanup127_crit_edge ], [ %call89, %if.then87.cleanup127_crit_edge ], [ %call95, %if.end93.cleanup127_crit_edge ], [ %call103, %if.end104.cleanup127_crit_edge ], [ %call114, %if.end115.cleanup127_crit_edge ], [ %call121, %if.end118.cleanup127_crit_edge ], [ -19, %isl1208_i2c_validate_client.exit.thread ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isl1208_setup_irq(ptr noundef %client, i32 noundef %irq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.i2c_driver, ptr @isl1208_driver, i32 0, i32 7), align 4
  %call = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef null, ptr noundef nonnull @isl1208_rtc_interrupt, i32 noundef 8320, ptr noundef %0, ptr noundef %client) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %irq, i32 noundef 1) #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83, i32 noundef %irq) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl1208_rtc_read_time(ptr noundef %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call fastcc i32 @isl1208_i2c_read_time(ptr noundef %add.ptr, ptr noundef %tm)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl1208_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %regs.i = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %regs.i) #8
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %0 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_year.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %1)
  %cmp.i = icmp slt i32 %1, 100
  br i1 %cmp.i, label %entry.isl1208_i2c_set_time.exit_crit_edge, label %cond.end.i

entry.isl1208_i2c_set_time.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_i2c_set_time.exit

cond.end.i:                                       ; preds = %entry
  %2 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %3) #12
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call.i, ptr %regs.i, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %5 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %6) #12
  %arrayidx21.i = getelementptr inbounds [7 x i8], ptr %regs.i, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call16.i, ptr %arrayidx21.i, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %8 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_hour.i, align 4
  %call32.i = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #12
  %conv36.i = or i8 %call32.i, -128
  %arrayidx37.i = getelementptr inbounds [7 x i8], ptr %regs.i, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv36.i, ptr %arrayidx37.i, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %11 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_mday.i, align 4
  %call48.i = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #12
  %arrayidx53.i = getelementptr inbounds [7 x i8], ptr %regs.i, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call48.i, ptr %arrayidx53.i, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %14 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mon.i, align 4
  %add54.i = add i32 %15, 1
  %call68.i = tail call zeroext i8 @_bin2bcd(i32 noundef %add54.i) #12
  %arrayidx73.i = getelementptr inbounds [7 x i8], ptr %regs.i, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call68.i, ptr %arrayidx73.i, align 1
  %sub.i = add nsw i32 %1, -100
  %call88.i = tail call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #12
  %arrayidx93.i = getelementptr inbounds [7 x i8], ptr %regs.i, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call88.i, ptr %arrayidx93.i, align 1
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %18 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_wday.i, align 4
  %and.i = and i32 %19, 7
  %call107.i = tail call zeroext i8 @_bin2bcd(i32 noundef %and.i) #12
  %arrayidx112.i = getelementptr inbounds [7 x i8], ptr %regs.i, i32 0, i32 6
  %20 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call107.i, ptr %arrayidx112.i, align 1
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp114.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp114.i, label %do.end.i, label %if.end117.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.23) #11
  br label %isl1208_i2c_set_time.exit

if.end117.i:                                      ; preds = %cond.end.i
  %21 = trunc i32 %call.i.i to i8
  %conv119.i = or i8 %21, 16
  %call120.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 7, i8 noundef zeroext %conv119.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %cmp121.i = icmp slt i32 %call120.i, 0
  br i1 %cmp121.i, label %do.end126.i, label %if.end128.i

do.end126.i:                                      ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #11
  br label %isl1208_i2c_set_time.exit

if.end128.i:                                      ; preds = %if.end117.i
  %call.i207.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %regs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207.i)
  %cmp130.i = icmp slt i32 %call.i207.i, 0
  br i1 %cmp130.i, label %do.end135.i, label %if.end137.i

do.end135.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23) #11
  br label %isl1208_i2c_set_time.exit

if.end137.i:                                      ; preds = %if.end128.i
  %call.i208.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208.i)
  %cmp139.i = icmp slt i32 %call.i208.i, 0
  br i1 %cmp139.i, label %do.end144.i, label %if.end146.i

do.end144.i:                                      ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.23) #11
  br label %isl1208_i2c_set_time.exit

if.end146.i:                                      ; preds = %if.end137.i
  %22 = trunc i32 %call.i208.i to i8
  %conv148.i = and i8 %22, -17
  %call149.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 7, i8 noundef zeroext %conv148.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i)
  %cmp150.i = icmp slt i32 %call149.i, 0
  br i1 %cmp150.i, label %do.end155.i, label %if.end146.i.isl1208_i2c_set_time.exit_crit_edge

if.end146.i.isl1208_i2c_set_time.exit_crit_edge:  ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_i2c_set_time.exit

do.end155.i:                                      ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #11
  br label %isl1208_i2c_set_time.exit

isl1208_i2c_set_time.exit:                        ; preds = %do.end155.i, %if.end146.i.isl1208_i2c_set_time.exit_crit_edge, %do.end144.i, %do.end135.i, %do.end126.i, %do.end.i, %entry.isl1208_i2c_set_time.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %do.end.i ], [ %call120.i, %do.end126.i ], [ %call.i207.i, %do.end135.i ], [ %call.i208.i, %do.end144.i ], [ %call149.i, %do.end155.i ], [ -22, %entry.isl1208_i2c_set_time.exit_crit_edge ], [ 0, %if.end146.i.isl1208_i2c_set_time.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl1208_rtc_read_alarm(ptr noundef %dev, ptr nocapture noundef writeonly %alarm) #2 align 64 {
entry:
  %regs.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %time.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %regs.i) #8
  %0 = call ptr @memset(ptr %regs.i, i32 0, i32 6)
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.34) #11
  br label %isl1208_i2c_read_alarm.exit

if.end.i:                                         ; preds = %entry
  %call.i198.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 12, i8 noundef zeroext 6, ptr noundef nonnull %regs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198.i)
  %cmp2.i = icmp slt i32 %call.i198.i, 0
  br i1 %cmp2.i, label %do.end6.i, label %cond.end.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34) #11
  br label %isl1208_i2c_read_alarm.exit

cond.end.i:                                       ; preds = %if.end.i
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %regs.i, align 1
  %3 = and i8 %2, 127
  %call21.i = call i32 @_bcd2bin(i8 noundef zeroext %3) #12
  %4 = ptrtoint ptr %time.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call21.i, ptr %time.i, align 4
  %arrayidx22.i = getelementptr inbounds [6 x i8], ptr %regs.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx22.i, align 1
  %7 = and i8 %6, 127
  %call42.i = call i32 @_bcd2bin(i8 noundef zeroext %7) #12
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call42.i, ptr %tm_min.i, align 4
  %arrayidx45.i = getelementptr inbounds [6 x i8], ptr %regs.i, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx45.i, align 1
  %11 = and i8 %10, 63
  %call65.i = call i32 @_bcd2bin(i8 noundef zeroext %11) #12
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call65.i, ptr %tm_hour.i, align 4
  %arrayidx68.i = getelementptr inbounds [6 x i8], ptr %regs.i, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx68.i, align 1
  %15 = and i8 %14, 63
  %call88.i = call i32 @_bcd2bin(i8 noundef zeroext %15) #12
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call88.i, ptr %tm_mday.i, align 4
  %arrayidx91.i = getelementptr inbounds [6 x i8], ptr %regs.i, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx91.i, align 1
  %19 = and i8 %18, 31
  %call111.i = call i32 @_bcd2bin(i8 noundef zeroext %19) #12
  %sub.i = add i32 %call111.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %arrayidx114.i = getelementptr inbounds [6 x i8], ptr %regs.i, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx114.i, align 1
  %23 = and i8 %22, 3
  %call134.i = call i32 @_bcd2bin(i8 noundef zeroext %23) #12
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call134.i, ptr %tm_wday.i, align 4
  %call137.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %cmp138.i = icmp slt i32 %call137.i, 0
  br i1 %cmp138.i, label %do.end143.i, label %cond.end155.i

do.end143.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.34) #11
  br label %isl1208_i2c_read_alarm.exit

cond.end155.i:                                    ; preds = %cond.end.i
  %conv146.i = trunc i32 %call137.i to i8
  %call154.i = call i32 @_bcd2bin(i8 noundef zeroext %conv146.i) #12
  %add157.i = add i32 %call154.i, 100
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 5
  %25 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add157.i, ptr %tm_year.i, align 4
  %call158.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158.i)
  %cmp159.i = icmp slt i32 %call158.i, 0
  br i1 %cmp159.i, label %do.end164.i, label %if.end166.i

do.end164.i:                                      ; preds = %cond.end155.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34) #11
  br label %isl1208_i2c_read_alarm.exit

if.end166.i:                                      ; preds = %cond.end155.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = trunc i32 %call158.i to i8
  %27 = lshr i8 %26, 6
  %28 = and i8 %27, 1
  %29 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %alarm, align 4
  br label %isl1208_i2c_read_alarm.exit

isl1208_i2c_read_alarm.exit:                      ; preds = %if.end166.i, %do.end164.i, %do.end143.i, %do.end6.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i.i, %do.end.i ], [ %call.i198.i, %do.end6.i ], [ %call137.i, %do.end143.i ], [ %call158.i, %do.end164.i ], [ 0, %if.end166.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %regs.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl1208_rtc_set_alarm(ptr noundef %dev, ptr noundef %alarm) #2 align 64 {
entry:
  %regs.i = alloca [6 x i8], align 1
  %rtc_tm.i = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %time.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %regs.i) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rtc_tm.i) #8
  %0 = call ptr @memset(ptr %rtc_tm.i, i32 255, i32 36)
  %call.i = call fastcc i32 @isl1208_i2c_read_time(ptr noundef %add.ptr, ptr noundef nonnull %rtc_tm.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.isl1208_i2c_set_alarm.exit_crit_edge

entry.isl1208_i2c_set_alarm.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_i2c_set_alarm.exit

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not.i = icmp eq i8 %2, 0
  br i1 %tobool1.not.i, label %if.end.i.cond.end.i_crit_edge, label %lor.lhs.false.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i64 @rtc_tm_to_time64(ptr noundef %time.i) #8
  %call1.i.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %rtc_tm.i) #8
  %sub.i.i = sub i64 %call.i.i, %call1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i)
  %cmp.i = icmp slt i64 %sub.i.i, 1
  %spec.select.i = select i1 %cmp.i, i32 0, i32 128
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i, %if.end.i.cond.end.i_crit_edge
  %enable.0.i = phi i32 [ 0, %if.end.i.cond.end.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %3 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %time.i, align 4
  %call8.i = call zeroext i8 @_bin2bcd(i32 noundef %4) #12
  %5 = trunc i32 %enable.0.i to i8
  %conv10.i = or i8 %call8.i, %5
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv10.i, ptr %regs.i, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_min.i, align 4
  %call21.i = call zeroext i8 @_bin2bcd(i32 noundef %8) #12
  %9 = trunc i32 %enable.0.i to i8
  %conv26.i = or i8 %call21.i, %9
  %arrayidx27.i = getelementptr inbounds [6 x i8], ptr %regs.i, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv26.i, ptr %arrayidx27.i, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_hour.i, align 4
  %call38.i = call zeroext i8 @_bin2bcd(i32 noundef %12) #12
  %conv44.i = or i8 %call38.i, -128
  %arrayidx45.i = getelementptr inbounds [6 x i8], ptr %regs.i, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv44.i, ptr %arrayidx45.i, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mday.i, align 4
  %call56.i = call zeroext i8 @_bin2bcd(i32 noundef %15) #12
  %16 = trunc i32 %enable.0.i to i8
  %conv61.i = or i8 %call56.i, %16
  %arrayidx62.i = getelementptr inbounds [6 x i8], ptr %regs.i, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv61.i, ptr %arrayidx62.i, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_mon.i, align 4
  %add63.i = add i32 %19, 1
  %call77.i = call zeroext i8 @_bin2bcd(i32 noundef %add63.i) #12
  %20 = trunc i32 %enable.0.i to i8
  %conv82.i = or i8 %call77.i, %20
  %arrayidx83.i = getelementptr inbounds [6 x i8], ptr %regs.i, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv82.i, ptr %arrayidx83.i, align 1
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 6
  %22 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_wday.i, align 4
  %and.i = and i32 %23, 7
  %call97.i = call zeroext i8 @_bin2bcd(i32 noundef %and.i) #12
  %24 = trunc i32 %enable.0.i to i8
  %conv102.i = or i8 %call97.i, %24
  %arrayidx103.i = getelementptr inbounds [6 x i8], ptr %regs.i, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv102.i, ptr %arrayidx103.i, align 1
  %call.i157.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 12, i8 noundef zeroext 6, ptr noundef nonnull %regs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157.i)
  %cmp105.i = icmp slt i32 %call.i157.i, 0
  br i1 %cmp105.i, label %do.end.i, label %if.end108.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #11
  br label %isl1208_i2c_set_alarm.exit

if.end108.i:                                      ; preds = %cond.end.i
  %call.i158.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158.i)
  %cmp.i.i = icmp slt i32 %call.i158.i, 0
  br i1 %cmp.i.i, label %if.end108.i.cleanup.sink.split.i.i_crit_edge, label %if.end.i.i

if.end108.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i

if.end.i.i:                                       ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable.0.i)
  %tobool.not.i.i = icmp eq i32 %enable.0.i, 0
  %and.i.i = and i32 %call.i158.i, 63
  %masksel.i.i = select i1 %tobool.not.i.i, i32 0, i32 192
  %icr.0.i.i = or i32 %and.i.i, %masksel.i.i
  %conv.i.i = trunc i32 %icr.0.i.i to i8
  %call3.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 8, i8 noundef zeroext %conv.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end.i.i.isl1208_i2c_set_alarm.exit_crit_edge

if.end.i.i.isl1208_i2c_set_alarm.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_i2c_set_alarm.exit

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end.i.i.cleanup.sink.split.i.i_crit_edge, %if.end108.i.cleanup.sink.split.i.i_crit_edge
  %.str.48.sink.i.i = phi ptr [ @.str.42, %if.end108.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.48, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ %call.i158.i, %if.end108.i.cleanup.sink.split.i.i_crit_edge ], [ %call3.i.i, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.48.sink.i.i, ptr noundef nonnull @.str.46) #11
  br label %isl1208_i2c_set_alarm.exit

isl1208_i2c_set_alarm.exit:                       ; preds = %cleanup.sink.split.i.i, %if.end.i.i.isl1208_i2c_set_alarm.exit_crit_edge, %do.end.i, %entry.isl1208_i2c_set_alarm.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i157.i, %do.end.i ], [ %call.i, %entry.isl1208_i2c_set_alarm.exit_crit_edge ], [ 0, %if.end.i.i.isl1208_i2c_set_alarm.exit_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rtc_tm.i) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %regs.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl1208_rtc_proc(ptr noundef %dev, ptr noundef %seq) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.50) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.53, ptr @.str.52
  %and2 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %cond4 = select i1 %tobool3.not, ptr @.str.53, ptr @.str.54
  %and5 = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.53, ptr @.str.55
  %and8 = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %cond10 = select i1 %tobool9.not, ptr @.str.53, ptr @.str.56
  %and11 = and i32 %call.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.53, ptr @.str.57
  %and14 = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.53, ptr @.str.58
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond, ptr noundef nonnull %cond4, ptr noundef nonnull %cond7, ptr noundef nonnull %cond10, ptr noundef nonnull %cond13, ptr noundef nonnull %cond16, i32 noundef %call.i) #8
  %cond19 = select i1 %tobool.not, ptr @.str.61, ptr @.str.60
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.59, ptr noundef nonnull %cond19) #8
  %call.i58 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp.i = icmp slt i32 %call.i58, 0
  br i1 %cmp.i, label %if.end.if.end23_crit_edge, label %if.then22

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %call.i58, 3
  %mul.i = mul nuw nsw i32 %and.i, 20
  %and1.i = and i32 %call.i58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %0 = sub nsw i32 0, %mul.i
  %1 = select i1 %tobool.not.i, i32 %mul.i, i32 %0
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.62, i32 noundef %1) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end.if.end23_crit_edge
  %call.i59 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp.i60 = icmp slt i32 %call.i59, 0
  %and.i61 = and i32 %call.i59, 63
  %xor.i = xor i32 %and.i61, 32
  %add.i62 = add nuw nsw i32 %xor.i, 18
  %retval.0.i63 = select i1 %cmp.i60, i32 %call.i59, i32 %add.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i63)
  %cmp25 = icmp sgt i32 %retval.0.i63, -1
  br i1 %cmp25, label %if.then26, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %shr70 = lshr i32 %retval.0.i63, 2
  %and27 = and i32 %retval.0.i63, 3
  %mul = mul nuw nsw i32 %and27, 25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.63, i32 noundef %shr70, i32 noundef %mul) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %buf.i, align 2
  %call.i.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 18, i8 noundef zeroext 2, ptr noundef nonnull %buf.i) #8
  %3 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i64 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i64, label %if.end28.isl1208_i2c_get_usr.exit_crit_edge, label %if.end.i65

if.end28.isl1208_i2c_get_usr.exit_crit_edge:      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_i2c_get_usr.exit

if.end.i65:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf.i, align 2
  %conv2.i = zext i8 %7 to i32
  %or.i = or i32 %shl.i, %conv2.i
  br label %isl1208_i2c_get_usr.exit

isl1208_i2c_get_usr.exit:                         ; preds = %if.end.i65, %if.end28.isl1208_i2c_get_usr.exit_crit_edge
  %retval.0.i66 = phi i32 [ %or.i, %if.end.i65 ], [ %3, %if.end28.isl1208_i2c_get_usr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i66)
  %cmp30 = icmp sgt i32 %retval.0.i66, -1
  br i1 %cmp30, label %if.then31, label %isl1208_i2c_get_usr.exit.cleanup_crit_edge

isl1208_i2c_get_usr.exit.cleanup_crit_edge:       ; preds = %isl1208_i2c_get_usr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then31:                                        ; preds = %isl1208_i2c_get_usr.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.64, i32 noundef %retval.0.i66) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %isl1208_i2c_get_usr.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.then31 ], [ 0, %isl1208_i2c_get_usr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isl1208_i2c_read_time(ptr noundef %client, ptr nocapture noundef writeonly %tm) unnamed_addr #2 align 64 {
entry:
  %regs = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %regs) #8
  %0 = call ptr @memset(ptr %regs, i32 0, i32 7)
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i164 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %regs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %cmp2 = icmp slt i32 %call.i164, 0
  br i1 %cmp2, label %do.end6, label %cond.end

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19) #11
  br label %cleanup

cond.end:                                         ; preds = %if.end
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %regs, align 1
  %call13 = call i32 @_bcd2bin(i8 noundef zeroext %2) #12
  %3 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call13, ptr %tm, align 4
  %arrayidx14 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx14, align 1
  %call26 = call i32 @_bcd2bin(i8 noundef zeroext %5) #12
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %6 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call26, ptr %tm_min, align 4
  %arrayidx29 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %8 to i32
  %and31 = and i32 %conv30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool.not = icmp eq i32 %and31, 0
  br i1 %tobool.not, label %cond.false64, label %cond.end50

cond.end50:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %and34 = and i8 %8, 63
  %call49 = call i32 @_bcd2bin(i8 noundef zeroext %and34) #12
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %9 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call49, ptr %tm_hour, align 4
  br label %cond.end93

cond.false64:                                     ; preds = %cond.end
  %and53 = and i8 %8, 31
  %call68 = call i32 @_bcd2bin(i8 noundef zeroext %and53) #12
  %tm_hour71 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %10 = ptrtoint ptr %tm_hour71 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call68, ptr %tm_hour71, align 4
  %and73 = and i32 %conv30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %cond.false64.cond.end93_crit_edge, label %if.then75

cond.false64.cond.end93_crit_edge:                ; preds = %cond.false64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end93

if.then75:                                        ; preds = %cond.false64
  call void @__sanitizer_cov_trace_pc() #10
  %add77 = add i32 %call68, 12
  %11 = ptrtoint ptr %tm_hour71 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add77, ptr %tm_hour71, align 4
  br label %cond.end93

cond.end93:                                       ; preds = %if.then75, %cond.false64.cond.end93_crit_edge, %cond.end50
  %arrayidx80 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx80, align 1
  %call92 = call i32 @_bcd2bin(i8 noundef zeroext %13) #12
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %14 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call92, ptr %tm_mday, align 4
  %arrayidx95 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx95, align 1
  %call107 = call i32 @_bcd2bin(i8 noundef zeroext %16) #12
  %sub = add i32 %call107, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %17 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %tm_mon, align 4
  %arrayidx110 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 5
  %18 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx110, align 1
  %call122 = call i32 @_bcd2bin(i8 noundef zeroext %19) #12
  %add125 = add i32 %call122, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %20 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add125, ptr %tm_year, align 4
  %arrayidx126 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 6
  %21 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx126, align 1
  %call138 = call i32 @_bcd2bin(i8 noundef zeroext %22) #12
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %23 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call138, ptr %tm_wday, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end93, %do.end6, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call.i164, %do.end6 ], [ 0, %cond.end93 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl1208_nvmem_read(ptr nocapture noundef readonly %priv, i32 noundef %off, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rtc = getelementptr inbounds %struct.isl1208_state, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -32
  %4 = trunc i32 %off to i8
  %conv = add i8 %4, 18
  %conv.i = zext i8 %conv to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %conv)
  %cmp.i = icmp ugt i8 %conv, 25
  br i1 %cmp.i, label %do.end.i, label %if.end.if.end.i_crit_edge, !prof !216

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 125, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %add.i = add i32 %conv.i, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %add.i)
  %cmp22.i = icmp ugt i32 %add.i, 26
  br i1 %cmp22.i, label %do.end39.i, label %if.end.i.isl1208_i2c_read_regs.exit_crit_edge, !prof !216

if.end.i.isl1208_i2c_read_regs.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_i2c_read_regs.exit

do.end39.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 126, i32 noundef 9, ptr noundef null) #8
  br label %isl1208_i2c_read_regs.exit

isl1208_i2c_read_regs.exit:                       ; preds = %do.end39.i, %if.end.i.isl1208_i2c_read_regs.exit_crit_edge
  %conv53.i = trunc i32 %count to i8
  %call.i = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext %conv, i8 noundef zeroext %conv53.i, ptr noundef %buf) #8
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  %count.call = select i1 %cmp8, i32 %5, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %isl1208_i2c_read_regs.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call, %isl1208_i2c_read_regs.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl1208_nvmem_write(ptr nocapture noundef readonly %priv, i32 noundef %off, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rtc = getelementptr inbounds %struct.isl1208_state, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -32
  %4 = trunc i32 %off to i8
  %conv = add i8 %4, 18
  %conv.i = zext i8 %conv to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %conv)
  %cmp.i = icmp ugt i8 %conv, 25
  br i1 %cmp.i, label %do.end.i, label %if.end.if.end.i_crit_edge, !prof !216

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 139, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %add.i = add i32 %conv.i, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %add.i)
  %cmp22.i = icmp ugt i32 %add.i, 26
  br i1 %cmp22.i, label %do.end39.i, label %if.end.i.isl1208_i2c_set_regs.exit_crit_edge, !prof !216

if.end.i.isl1208_i2c_set_regs.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_i2c_set_regs.exit

do.end39.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 140, i32 noundef 9, ptr noundef null) #8
  br label %isl1208_i2c_set_regs.exit

isl1208_i2c_set_regs.exit:                        ; preds = %do.end39.i, %if.end.i.isl1208_i2c_set_regs.exit_crit_edge
  %conv53.i = trunc i32 %count to i8
  %call.i = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext %conv, i8 noundef zeroext %conv53.i, ptr noundef %buf) #8
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  %count.call = select i1 %cmp8, i32 %5, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %isl1208_i2c_set_regs.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call, %isl1208_i2c_set_regs.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timestamp0_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %regs = alloca [6 x i8], align 1
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %regs) #8
  %2 = call ptr @memset(ptr %regs, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #8
  %3 = getelementptr inbounds i8, ptr %tm, i32 24
  %4 = call ptr @memset(ptr %3, i32 255, i32 12)
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.67) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call.i149 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 20, i8 noundef zeroext 6, ptr noundef nonnull %regs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %cmp4 = icmp slt i32 %call.i149, 0
  br i1 %cmp4, label %do.end8, label %cond.end

do.end8:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67) #11
  br label %cleanup

cond.end:                                         ; preds = %if.end2
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %regs, align 1
  %7 = and i8 %6, 127
  %call23 = call i32 @_bcd2bin(i8 noundef zeroext %7) #12
  %8 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call23, ptr %tm, align 4
  %arrayidx24 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx24, align 1
  %11 = and i8 %10, 127
  %call44 = call i32 @_bcd2bin(i8 noundef zeroext %11) #12
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %12 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call44, ptr %tm_min, align 4
  %arrayidx47 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx47, align 1
  %15 = and i8 %14, 63
  %call67 = call i32 @_bcd2bin(i8 noundef zeroext %15) #12
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %16 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call67, ptr %tm_hour, align 4
  %arrayidx70 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx70, align 1
  %19 = and i8 %18, 63
  %call90 = call i32 @_bcd2bin(i8 noundef zeroext %19) #12
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %20 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call90, ptr %tm_mday, align 4
  %arrayidx93 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx93, align 1
  %23 = and i8 %22, 31
  %call113 = call i32 @_bcd2bin(i8 noundef zeroext %23) #12
  %sub = add i32 %call113, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %24 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %tm_mon, align 4
  %arrayidx116 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx116, align 1
  %call128 = call i32 @_bcd2bin(i8 noundef zeroext %26) #12
  %add131 = add i32 %call128, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %27 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add131, ptr %tm_year, align 4
  %call132 = call i32 @rtc_valid_tm(ptr noundef nonnull %tm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end135:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call136 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %tm) #8
  %call137 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %call136)
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %cond.end.cleanup_crit_edge, %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %do.end8 ], [ %call137, %if.end135 ], [ 0, %if.end.cleanup_crit_edge ], [ %call132, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %regs) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timestamp0_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %2 = trunc i32 %call.i to i8
  %conv = and i8 %2, -9
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 7, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.25.sink = phi ptr [ @.str.18, %entry.cleanup.sink.split_crit_edge ], [ @.str.25, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %entry.cleanup.sink.split_crit_edge ], [ %count, %if.end.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.25.sink, ptr noundef nonnull @.str.72) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl1208_sysfs_show_atrim(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %call.i, 63
  %xor.i = xor i32 %and.i, 32
  %add.i = add nuw nsw i32 %xor.i, 18
  %2 = lshr i32 %add.i, 2
  %and = and i32 %add.i, 3
  %mul = mul nuw nsw i32 %and, 25
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.76, i32 noundef %2, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl1208_sysfs_show_dtrim(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %isl1208_i2c_get_dtr.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

isl1208_i2c_get_dtr.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %call.i, 3
  %mul.i = mul nuw nsw i32 %and.i, 20
  %and1.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %2 = sub nsw i32 0, %mul.i
  %3 = select i1 %tobool.not.i, i32 %mul.i, i32 %2
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.78, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %isl1208_i2c_get_dtr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %isl1208_i2c_get_dtr.exit ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl1208_sysfs_show_usr(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %buf.i, align 2
  %call.i.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 18, i8 noundef zeroext 2, ptr noundef nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %isl1208_i2c_get_usr.exit, label %isl1208_i2c_get_usr.exit.thread

isl1208_i2c_get_usr.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf.i, align 2
  %conv2.i = zext i8 %6 to i32
  %or.i = or i32 %shl.i, %conv2.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.80, i32 noundef %or.i)
  br label %cleanup

isl1208_i2c_get_usr.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %cleanup

cleanup:                                          ; preds = %isl1208_i2c_get_usr.exit, %isl1208_i2c_get_usr.exit.thread
  %retval.0 = phi i32 [ %call1, %isl1208_i2c_get_usr.exit.thread ], [ %call.i.i, %isl1208_i2c_get_usr.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl1208_sysfs_store_usr(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %usr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usr) #8
  %0 = ptrtoint ptr %usr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %usr, align 4
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %2)
  %cmp = icmp eq i8 %2, 48
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %buf, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %land.lhs.true.if.else_crit_edge [
    i8 120, label %land.lhs.true.if.then_crit_edge
    i8 88, label %land.lhs.true.if.then_crit_edge34
  ]

land.lhs.true.if.then_crit_edge34:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge34
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.81, ptr noundef nonnull %usr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp10.not = icmp eq i32 %call, 1
  br i1 %cmp10.not, label %if.then.if.end18_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call13 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.82, ptr noundef nonnull %usr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 1
  br i1 %cmp14.not, label %if.else.if.end18_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.then.if.end18_crit_edge
  %6 = ptrtoint ptr %usr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %7)
  %8 = icmp ugt i32 %7, 65535
  br i1 %8, label %if.end18.cleanup_crit_edge, label %if.end25

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 -32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %11 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %conv1.i = trunc i32 %7 to i8
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv1.i, ptr %buf.i, align 1
  %13 = lshr i32 %7, 8
  %conv4.i = trunc i32 %13 to i8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4.i, ptr %11, align 1
  %call.i.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 18, i8 noundef zeroext 2, ptr noundef nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  %count. = select i1 %tobool.not, i32 %count, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end18.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ %count., %if.end25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usr) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl1208_rtc_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %data, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  br i1 %cmp, label %while.end, label %if.end

if.end:                                           ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %3
  %cmp3 = icmp slt i32 %sub, 0
  br i1 %cmp3, label %do.end, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.85) #11
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %and = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end.if.end32_crit_edge, label %do.body7

while.end.if.end32_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.body7:                                         ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isl1208_rtc_interrupt.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isl1208_rtc_interrupt, %do.end17)) #8
          to label %if.then13 [label %do.end17], !srcloc !217

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isl1208_rtc_interrupt.__UNIQUE_ID_ddebug288, ptr noundef %dev14, ptr noundef nonnull @.str.87) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body7
  %rtc = getelementptr inbounds %struct.isl1208_state, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc, align 4
  tail call void @rtc_update_irq(ptr noundef %5, i32 noundef 1, i32 noundef 160) #8
  %6 = trunc i32 %call.i to i8
  %conv = and i8 %6, -5
  %call19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %data, i8 noundef zeroext 7, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end25, label %do.end17.if.end27_crit_edge

do.end17.if.end27_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end25:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.85) #11
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %do.end17.if.end27_crit_edge
  %handled.0 = phi i32 [ 0, %do.end25 ], [ 1, %do.end17.if.end27_crit_edge ]
  %call.i74 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %data, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp.i = icmp slt i32 %call.i74, 0
  br i1 %cmp.i, label %if.end27.isl1208_rtc_toggle_alarm.exit_crit_edge, label %if.end.i

if.end27.isl1208_rtc_toggle_alarm.exit_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_rtc_toggle_alarm.exit

if.end.i:                                         ; preds = %if.end27
  %7 = trunc i32 %call.i74 to i8
  %conv.i = and i8 %7, 63
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %data, i8 noundef zeroext 8, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.isl1208_rtc_toggle_alarm.exit_crit_edge, label %if.end.i.if.end32_crit_edge

if.end.i.if.end32_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end.i.isl1208_rtc_toggle_alarm.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl1208_rtc_toggle_alarm.exit

isl1208_rtc_toggle_alarm.exit:                    ; preds = %if.end.i.isl1208_rtc_toggle_alarm.exit_crit_edge, %if.end27.isl1208_rtc_toggle_alarm.exit_crit_edge
  %.str.48.sink.i = phi ptr [ @.str.42, %if.end27.isl1208_rtc_toggle_alarm.exit_crit_edge ], [ @.str.48, %if.end.i.isl1208_rtc_toggle_alarm.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i74, %if.end27.isl1208_rtc_toggle_alarm.exit_crit_edge ], [ %call3.i, %if.end.i.isl1208_rtc_toggle_alarm.exit_crit_edge ]
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull %.str.48.sink.i, ptr noundef nonnull @.str.46) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end.i.if.end32_crit_edge, %while.end.if.end32_crit_edge
  %handled.1 = phi i32 [ 0, %while.end.if.end32_crit_edge ], [ %handled.0, %if.end.i.if.end32_crit_edge ]
  %sr.0 = phi i32 [ %call.i, %while.end.if.end32_crit_edge ], [ %call19, %if.end.i.if.end32_crit_edge ]
  %config = getelementptr inbounds %struct.isl1208_state, ptr %2, i32 0, i32 2
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config, align 4
  %has_tamper = getelementptr inbounds %struct.isl1208_config, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %has_tamper to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %has_tamper, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool33.not = icmp sgt i8 %bf.load, -1
  %and34 = and i32 %sr.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %or.cond = select i1 %tobool33.not, i1 true, i1 %tobool35.not
  br i1 %or.cond, label %if.end32.if.end50_crit_edge, label %do.end39

if.end32.if.end50_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end39:                                         ; preds = %if.end32
  %dev40 = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev40, ptr noundef nonnull @.str.91) #11
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config, align 4
  %has_timestamp = getelementptr inbounds %struct.isl1208_config, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %has_timestamp to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load42 = load i8, ptr %has_timestamp, align 4
  %14 = and i8 %bf.load42, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool45.not = icmp eq i8 %14, 0
  br i1 %tobool45.not, label %do.end39.if.end50_crit_edge, label %if.then46

do.end39.if.end50_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then46:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  %rtc47 = getelementptr inbounds %struct.isl1208_state, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %rtc47 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtc47, align 4
  %17 = load ptr, ptr @dev_attr_timestamp0, align 4
  tail call void @sysfs_notify(ptr noundef %16, ptr noundef null, ptr noundef %17) #8
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %do.end39.if.end50_crit_edge, %if.end32.if.end50_crit_edge
  %handled.2 = phi i32 [ 1, %if.then46 ], [ 1, %do.end39.if.end50_crit_edge ], [ %handled.1, %if.end32.if.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.2)
  %tobool51.not = icmp ne i32 %handled.2, 0
  %cond = zext i1 %tobool51.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %isl1208_rtc_toggle_alarm.exit, %do.end
  %retval.0 = phi i32 [ %cond, %if.end50 ], [ %call.i, %do.end ], [ %retval.0.ph.i, %isl1208_rtc_toggle_alarm.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150, !152, !154, !155, !156, !158, !159, !161, !163, !165, !166, !168, !170, !171, !173, !175, !176, !178, !180, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !200, !201, !202, !204}
!llvm.module.flags = !{!206, !207, !208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = !{ptr @__initcall__kmod_rtc_isl1208__289_909_isl1208_driver_init6, !1, !"__initcall__kmod_rtc_isl1208__289_909_isl1208_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-isl1208.c", i32 909, i32 1}
!2 = !{ptr @__exitcall_isl1208_driver_exit, !1, !"__exitcall_isl1208_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-isl1208.c", i32 911, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-isl1208.c", i32 912, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-isl1208.c", i32 913, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-isl1208.c", i32 902, i32 11}
!12 = !{ptr @isl1208_driver, !13, !"isl1208_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-isl1208.c", i32 900, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-isl1208.c", i32 842, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @isl1208_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @isl1208_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-isl1208.c", i32 847, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @isl1208_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @isl1208_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-isl1208.c", i32 856, i32 4}
!29 = !{ptr @isl1208_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @isl1208_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-isl1208.c", i32 860, i32 33}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-isl1208.c", i32 868, i32 4}
!35 = !{ptr @isl1208_probe._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @isl1208_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-isl1208.c", i32 871, i32 37}
!39 = !{ptr @isl1208_configs, !40, !"isl1208_configs", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-isl1208.c", i32 86, i32 3}
!41 = !{ptr @isl1208_rtc_ops, !42, !"isl1208_rtc_ops", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-isl1208.c", i32 647, i32 35}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-isl1208.c", i32 311, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @isl1208_i2c_read_time._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @isl1208_i2c_read_time._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-isl1208.c", i32 317, i32 3}
!50 = !{ptr @isl1208_i2c_read_time._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @isl1208_i2c_read_time._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-isl1208.c", i32 469, i32 3}
!54 = !{ptr @isl1208_i2c_set_time._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @isl1208_i2c_set_time._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-isl1208.c", i32 477, i32 3}
!58 = !{ptr @isl1208_i2c_set_time._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @isl1208_i2c_set_time._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-isl1208.c", i32 484, i32 3}
!62 = !{ptr @isl1208_i2c_set_time._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @isl1208_i2c_set_time._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @isl1208_i2c_set_time._entry.30, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/rtc/rtc-isl1208.c", i32 492, i32 3}
!66 = !{ptr @isl1208_i2c_set_time._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @isl1208_i2c_set_time._entry.32, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/rtc/rtc-isl1208.c", i32 498, i32 3}
!69 = !{ptr @isl1208_i2c_set_time._entry_ptr.33, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-isl1208.c", i32 354, i32 3}
!72 = !{ptr @isl1208_i2c_read_alarm._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @isl1208_i2c_read_alarm._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-isl1208.c", i32 361, i32 3}
!76 = !{ptr @isl1208_i2c_read_alarm._entry.35, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @isl1208_i2c_read_alarm._entry_ptr.37, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/rtc/rtc-isl1208.c", i32 378, i32 3}
!80 = !{ptr @isl1208_i2c_read_alarm._entry.38, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @isl1208_i2c_read_alarm._entry_ptr.40, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-isl1208.c", i32 385, i32 3}
!84 = !{ptr @isl1208_i2c_read_alarm._entry.41, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @isl1208_i2c_read_alarm._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/rtc/rtc-isl1208.c", i32 426, i32 3}
!88 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @isl1208_i2c_set_alarm._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @isl1208_i2c_set_alarm._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/rtc/rtc-isl1208.c", i32 246, i32 3}
!93 = !{ptr @isl1208_rtc_toggle_alarm._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @isl1208_rtc_toggle_alarm._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/rtc/rtc-isl1208.c", i32 257, i32 3}
!97 = !{ptr @isl1208_rtc_toggle_alarm._entry.47, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @isl1208_rtc_toggle_alarm._entry_ptr.49, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/rtc/rtc-isl1208.c", i32 272, i32 3}
!101 = !{ptr @isl1208_rtc_proc._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @isl1208_rtc_proc._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/rtc/rtc-isl1208.c", i32 276, i32 18}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/rtc/rtc-isl1208.c", i32 277, i32 35}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/rtc/rtc-isl1208.c", i32 277, i32 45}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/rtc/rtc-isl1208.c", i32 278, i32 34}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/rtc/rtc-isl1208.c", i32 279, i32 34}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/rtc/rtc-isl1208.c", i32 280, i32 35}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/rtc/rtc-isl1208.c", i32 281, i32 37}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/rtc/rtc-isl1208.c", i32 282, i32 35}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/rtc/rtc-isl1208.c", i32 284, i32 18}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/rtc/rtc-isl1208.c", i32 285, i32 35}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/rtc/rtc-isl1208.c", i32 285, i32 43}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/rtc/rtc-isl1208.c", i32 289, i32 19}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/rtc/rtc-isl1208.c", i32 293, i32 19}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/rtc/rtc-isl1208.c", i32 298, i32 19}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/rtc/rtc-isl1208.c", i32 773, i32 10}
!133 = !{ptr @isl1208_nvmem_config, !134, !"isl1208_nvmem_config", i1 false, i1 false}
!134 = !{!"../drivers/rtc/rtc-isl1208.c", i32 772, i32 34}
!135 = !{ptr @isl1219_rtc_sysfs_files, !136, !"isl1219_rtc_sysfs_files", i1 false, i1 false}
!136 = !{!"../drivers/rtc/rtc-isl1208.c", i32 737, i32 37}
!137 = !{ptr @isl1219_rtc_attrs, !138, !"isl1219_rtc_attrs", i1 false, i1 false}
!138 = !{!"../drivers/rtc/rtc-isl1208.c", i32 732, i32 26}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/rtc/rtc-isl1208.c", i32 589, i32 8}
!141 = !{ptr @dev_attr_timestamp0, !140, !"dev_attr_timestamp0", i1 false, i1 false}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/rtc/rtc-isl1208.c", i32 557, i32 3}
!144 = !{ptr @timestamp0_show._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @timestamp0_show._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/rtc/rtc-isl1208.c", i32 567, i32 3}
!148 = !{ptr @timestamp0_show._entry.68, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @timestamp0_show._entry_ptr.70, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/rtc/rtc-isl1208.c", i32 585, i32 22}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/rtc/rtc-isl1208.c", i32 533, i32 3}
!154 = !{ptr @timestamp0_store._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @timestamp0_store._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @timestamp0_store._entry.73, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/rtc/rtc-isl1208.c", i32 541, i32 3}
!158 = !{ptr @timestamp0_store._entry_ptr.74, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @isl1208_rtc_sysfs_files, !160, !"isl1208_rtc_sysfs_files", i1 false, i1 false}
!160 = !{!"../drivers/rtc/rtc-isl1208.c", i32 728, i32 37}
!161 = !{ptr @isl1208_rtc_attrs, !162, !"isl1208_rtc_attrs", i1 false, i1 false}
!162 = !{!"../drivers/rtc/rtc-isl1208.c", i32 721, i32 26}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/rtc/rtc-isl1208.c", i32 668, i32 8}
!165 = !{ptr @dev_attr_atrim, !164, !"dev_attr_atrim", i1 false, i1 false}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/rtc/rtc-isl1208.c", i32 665, i32 22}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/rtc/rtc-isl1208.c", i32 681, i32 8}
!170 = !{ptr @dev_attr_dtrim, !169, !"dev_attr_dtrim", i1 false, i1 false}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/rtc/rtc-isl1208.c", i32 678, i32 22}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/rtc/rtc-isl1208.c", i32 718, i32 8}
!175 = !{ptr @dev_attr_usr, !174, !"dev_attr_usr", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/rtc/rtc-isl1208.c", i32 691, i32 22}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/rtc/rtc-isl1208.c", i32 702, i32 19}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/rtc/rtc-isl1208.c", i32 705, i32 19}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/rtc/rtc-isl1208.c", i32 792, i32 3}
!184 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @isl1208_setup_irq._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @isl1208_setup_irq._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.85, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/rtc/rtc-isl1208.c", i32 610, i32 4}
!189 = !{ptr @isl1208_rtc_interrupt._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @isl1208_rtc_interrupt._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/rtc/rtc-isl1208.c", i32 617, i32 3}
!193 = !{ptr @.str.87, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @isl1208_rtc_interrupt.__UNIQUE_ID_ddebug288, !192, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!195 = !{ptr @isl1208_rtc_interrupt._entry.88, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/rtc/rtc-isl1208.c", i32 625, i32 4}
!197 = !{ptr @isl1208_rtc_interrupt._entry_ptr.89, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/rtc/rtc-isl1208.c", i32 637, i32 3}
!200 = !{ptr @isl1208_rtc_interrupt._entry.90, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @isl1208_rtc_interrupt._entry_ptr.92, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @isl1208_of_match, !203, !"isl1208_of_match", i1 false, i1 false}
!203 = !{!"../drivers/rtc/rtc-isl1208.c", i32 102, i32 49}
!204 = !{ptr @isl1208_id, !205, !"isl1208_id", i1 false, i1 false}
!205 = !{!"../drivers/rtc/rtc-isl1208.c", i32 93, i32 35}
!206 = !{i32 1, !"wchar_size", i32 2}
!207 = !{i32 1, !"min_enum_size", i32 4}
!208 = !{i32 8, !"branch-target-enforcement", i32 0}
!209 = !{i32 8, !"sign-return-address", i32 0}
!210 = !{i32 8, !"sign-return-address-all", i32 0}
!211 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!212 = !{i32 7, !"uwtable", i32 1}
!213 = !{i32 7, !"frame-pointer", i32 2}
!214 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!215 = !{!"auto-init"}
!216 = !{!"branch_weights", i32 1, i32 2000}
!217 = !{i64 2149009335, i64 2149009340, i64 2149009353, i64 2149009397, i64 2149009431, i64 2149009452}
