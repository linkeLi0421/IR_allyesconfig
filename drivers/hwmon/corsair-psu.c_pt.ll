; ModuleID = '/llk/IR_all_yes/drivers/hwmon/corsair-psu.c_pt.bc'
source_filename = "../drivers/hwmon/corsair-psu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.corsairpsu_data = type { ptr, ptr, ptr, %struct.completion, %struct.mutex, ptr, [16 x i8], [16 x i8], [2 x i32], [3 x i32], [3 x i32], [3 x i32], i8, i8, i8, i8, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_corsair_psu__225_811_corsairpsu_driver_init6 = internal global ptr @corsairpsu_driver_init, section ".initcall6.init", align 4
@corsairpsu_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @corsairpsu_idtable, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @corsairpsu_probe, ptr @corsairpsu_remove, ptr null, ptr @corsairpsu_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @corsairpsu_resume, ptr @corsairpsu_resume, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_corsairpsu_driver_exit = internal global ptr @corsairpsu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file226 = internal constant [43 x i8] c"corsair_psu.file=drivers/hwmon/corsair-psu\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [24 x i8] c"corsair_psu.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [64 x i8] c"corsair_psu.author=Wilken Gottwalt <wilken.gottwalt@posteo.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [91 x i8] c"corsair_psu.description=Linux driver for Corsair power supplies with HID sensors interface\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"corsair_psu\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"corsair-psu\00", [20 x i8] zeroinitializer }, align 32
@corsairpsu_idtable = internal constant { [12 x %struct.hid_device_id], [32 x i8] } { [12 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 6940, i32 7171, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 7172, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 7173, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 7174, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 7175, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 7176, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 7177, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 7178, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 7179, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 7180, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 7181, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@corsairpsu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@corsairpsu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 718, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to initialize device (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"corsairpsu_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/hwmon/corsair-psu.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@corsairpsu_probe._entry_ptr = internal global ptr @corsairpsu_probe._entry, section ".printk_index", align 4
@corsairpsu_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 724, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to query firmware (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@corsairpsu_probe._entry_ptr.10 = internal global ptr @corsairpsu_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"corsairpsu\00", [21 x i8] zeroinitializer }, align 32
@corsairpsu_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @corsairpsu_hwmon_ops, ptr @corsairpsu_info }, [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 963, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already started\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid_device_io_start\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry_ptr = internal global ptr @hid_device_io_start._entry, section ".printk_index", align 4
@corsairpsu_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @corsairpsu_hwmon_ops_is_visible, ptr @corsairpsu_hwmon_ops_read, ptr @corsairpsu_hwmon_ops_read_string, ptr null }, [16 x i8] zeroinitializer }, align 32
@corsairpsu_info = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.compoundliteral.32, ptr @.compoundliteral.34, ptr @.compoundliteral.36, ptr @.compoundliteral.38, ptr @.compoundliteral.40, ptr @.compoundliteral.42, ptr null], [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"case temp\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vrm temp\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"psu fan\00", [24 x i8] zeroinitializer }, align 32
@label_watts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [16 x i8] zeroinitializer }, align 32
@label_volts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@label_amps = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power total\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power +12v\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"power +5v\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power +3.3v\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v_in\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"v_out +12v\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"v_out +5v\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"v_out +3.3v\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"curr in\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"curr +12v\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"curr +5v\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"curr +3.3v\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 2097666, i32 2097666, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.33 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 6, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral.35 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 4194816, i32 4194816, i32 4194816, i32 4194816, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 4, ptr @.compoundliteral.37 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 1026, i32 1074, i32 1074, i32 1074, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.39 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 1026, i32 1058, i32 1058, i32 1058, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.41 }, [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uptime\00", [25 x i8] zeroinitializer }, align 32
@uptime_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @uptime_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uptime_total\00", [19 x i8] zeroinitializer }, align 32
@uptime_total_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @uptime_total_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@vendor_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @vendor_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"product\00", [24 x i8] zeroinitializer }, align 32
@product_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @product_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"N/A\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%ld day(s), %02ld:%02ld:%02ld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%02ld:%02ld:%02ld\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 64, i64 68, i64 70, i64 139, i64 140, i64 150]
@__sancov_gen_cov_switch_values.52 = internal global [17 x i64] [i64 15, i64 8, i64 64, i64 68, i64 70, i64 79, i64 136, i64 137, i64 139, i64 140, i64 141, i64 142, i64 144, i64 150, i64 209, i64 210, i64 238]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 9, i64 21]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 5, i64 10]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 10]
@__sancov_gen_cov_switch_values.57 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"corsairpsu_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 800, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 811, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 801, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"corsairpsu_idtable\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 784, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 711, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 718, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 724, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 731, i32 64 }
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"corsairpsu_chip_info\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 597, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 87, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 963, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [21 x i8] c"corsairpsu_hwmon_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 565, i32 31 }
@___asan_gen_.136 = private unnamed_addr constant [16 x i8] c"corsairpsu_info\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 571, i32 41 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 546, i32 20 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 546, i32 30 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 549, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"label_watts\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 95, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant [12 x i8] c"label_volts\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 102, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant [11 x i8] c"label_amps\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 109, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 96, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 97, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 98, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 99, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 103, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 104, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 105, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 106, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 110, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 111, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 112, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 113, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 667, i32 32 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 670, i32 22 }
@___asan_gen_.211 = private unnamed_addr constant [12 x i8] c"uptime_fops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 633, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 671, i32 22 }
@___asan_gen_.217 = private unnamed_addr constant [18 x i8] c"uptime_total_fops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 641, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 672, i32 22 }
@___asan_gen_.223 = private unnamed_addr constant [12 x i8] c"vendor_fops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 651, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 673, i32 22 }
@___asan_gen_.229 = private unnamed_addr constant [13 x i8] c"product_fops\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 661, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 612, i32 18 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 617, i32 20 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 623, i32 19 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [31 x i8] c"../drivers/hwmon/corsair-psu.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 647, i32 19 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_corsairpsu_driver_exit, ptr @__initcall__kmod_corsair_psu__225_811_corsairpsu_driver_init6, ptr @corsairpsu_driver_exit, ptr @corsairpsu_probe._entry, ptr @corsairpsu_probe._entry.8, ptr @corsairpsu_probe._entry_ptr, ptr @corsairpsu_probe._entry_ptr.10, ptr @hid_device_io_start._entry, ptr @hid_device_io_start._entry_ptr, ptr @corsairpsu_driver, ptr @.str, ptr @.str.1, ptr @corsairpsu_idtable, ptr @corsairpsu_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @corsairpsu_chip_info, ptr @init_completion.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @corsairpsu_hwmon_ops, ptr @corsairpsu_info, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @label_watts, ptr @label_volts, ptr @label_amps, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.compoundliteral, ptr @.compoundliteral.32, ptr @.compoundliteral.33, ptr @.compoundliteral.34, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37, ptr @.compoundliteral.38, ptr @.compoundliteral.39, ptr @.compoundliteral.40, ptr @.compoundliteral.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.str.44, ptr @uptime_fops, ptr @.str.45, ptr @uptime_total_fops, ptr @.str.46, ptr @vendor_fops, ptr @.str.47, ptr @product_fops, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsairpsu_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsairpsu_idtable to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsairpsu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsairpsu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsairpsu_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsairpsu_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsairpsu_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsairpsu_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @label_watts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @label_volts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @label_amps to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uptime_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uptime_total_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @product_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @corsairpsu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @corsairpsu_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @corsairpsu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hid_unregister_driver(ptr noundef nonnull @corsairpsu_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @corsairpsu_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 248, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3264) #8
  %cmd_buffer = getelementptr inbounds %struct.corsairpsu_data, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %cmd_buffer, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i80 = tail call i32 @hid_open_report(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool8.not = icmp eq i32 %call.i80, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @hid_hw_open(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.fail_and_stop_crit_edge

if.end14.fail_and_stop_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_and_stop

if.end18:                                         ; preds = %if.end14
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hdev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.corsairpsu_data, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @corsairpsu_probe.__key) #8
  %wait_completion = getelementptr inbounds %struct.corsairpsu_data, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %wait_completion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wait_completion, align 4
  %wait.i = getelementptr inbounds %struct.corsairpsu_data, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #8
  %io_started.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 35
  %4 = ptrtoint ptr %io_started.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %io_started.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %hid_device_io_start.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %io_started.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %io_started.i, align 4
  %driver_input_lock.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 17
  tail call void @up(ptr noundef %driver_input_lock.i) #8
  br label %hid_device_io_start.exit

hid_device_io_start.exit:                         ; preds = %if.end.i, %do.end.i
  %7 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd_buffer, align 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 64)
  %10 = load ptr, ptr %cmd_buffer, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -2, ptr %10, align 1
  %12 = load ptr, ptr %cmd_buffer, align 4
  %arrayidx3.i.i = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %arrayidx3.i.i, align 1
  %14 = load ptr, ptr %cmd_buffer, align 4
  %arrayidx5.i.i = getelementptr i8, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx5.i.i, align 1
  %16 = ptrtoint ptr %wait_completion to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %wait_completion, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %19 = load ptr, ptr %cmd_buffer, align 4
  %call.i.i = tail call i32 @hid_hw_output_report(ptr noundef %18, ptr noundef %19, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %hid_device_io_start.exit.do.end24_crit_edge, label %if.end.i.i

hid_device_io_start.exit.do.end24_crit_edge:      ; preds = %hid_device_io_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

if.end.i.i:                                       ; preds = %hid_device_io_start.exit
  %call9.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_completion, i32 noundef 25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.do.end24_crit_edge, label %if.end11.i.i

if.end.i.i.do.end24_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

if.end11.i.i:                                     ; preds = %if.end.i.i
  %20 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd_buffer, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %23)
  %cmp15.not.i.i = icmp eq i8 %23, -2
  br i1 %cmp15.not.i.i, label %lor.lhs.false.i.i, label %if.end11.i.i.do.end24_crit_edge

if.end11.i.i.do.end24_crit_edge:                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

lor.lhs.false.i.i:                                ; preds = %if.end11.i.i
  %arrayidx19.i.i = getelementptr i8, ptr %21, i32 1
  %24 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx19.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp21.not.i.i = icmp eq i8 %25, 3
  br i1 %cmp21.not.i.i, label %if.end26, label %lor.lhs.false.i.i.do.end24_crit_edge

lor.lhs.false.i.i.do.end24_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

do.end24:                                         ; preds = %lor.lhs.false.i.i.do.end24_crit_edge, %if.end11.i.i.do.end24_crit_edge, %if.end.i.i.do.end24_crit_edge, %hid_device_io_start.exit.do.end24_crit_edge
  %retval.0.i.i.ph = phi i32 [ -95, %lor.lhs.false.i.i.do.end24_crit_edge ], [ -95, %if.end11.i.i.do.end24_crit_edge ], [ -110, %if.end.i.i.do.end24_crit_edge ], [ %call.i.i, %hid_device_io_start.exit.do.end24_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i.i.ph) #11
  br label %fail_and_stop

if.end26:                                         ; preds = %lor.lhs.false.i.i
  %call27 = tail call fastcc i32 @corsairpsu_fwinfo(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call27) #11
  br label %fail_and_stop

if.end34:                                         ; preds = %if.end26
  tail call fastcc void @corsairpsu_get_criticals(ptr noundef nonnull %call.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %call.i81 = call fastcc i32 @corsairpsu_get_value(ptr noundef nonnull %call.i, i8 noundef zeroext -119, i8 noundef zeroext 0, ptr noundef nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i82 = icmp eq i32 %call.i81, 0
  %in_curr_cmd_support.i = getelementptr inbounds %struct.corsairpsu_data, ptr %call.i, i32 0, i32 16
  %frombool.i = zext i1 %tobool.not.i82 to i8
  %26 = ptrtoint ptr %in_curr_cmd_support.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool.i, ptr %in_curr_cmd_support.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  %call36 = tail call ptr @hwmon_device_register_with_info(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull %call.i, ptr noundef nonnull @corsairpsu_chip_info, ptr noundef null) #8
  %hwmon_dev = getelementptr inbounds %struct.corsairpsu_data, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call36, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call36 to i32
  tail call void @hid_hw_close(ptr noundef %hdev) #8
  br label %fail_and_stop

if.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @corsairpsu_debugfs_init(ptr noundef nonnull %call.i)
  br label %cleanup

fail_and_stop:                                    ; preds = %if.then39, %do.end32, %do.end24, %if.end14.fail_and_stop_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14.fail_and_stop_crit_edge ], [ %retval.0.i.i.ph, %do.end24 ], [ %call27, %do.end32 ], [ %28, %if.then39 ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_and_stop, %if.end42, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail_and_stop ], [ 0, %if.end42 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i80, %if.end6.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @corsairpsu_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debugfs = getelementptr inbounds %struct.corsairpsu_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %3) #8
  %hwmon_dev = getelementptr inbounds %struct.corsairpsu_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %5) #8
  tail call void @hid_hw_close(ptr noundef %hdev) #8
  tail call void @hid_hw_stop(ptr noundef %hdev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @corsairpsu_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %wait_completion = getelementptr inbounds %struct.corsairpsu_data, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @completion_done(ptr noundef %wait_completion) #8
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_buffer = getelementptr inbounds %struct.corsairpsu_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_buffer, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %size, i32 64)
  %5 = call ptr @memcpy(ptr %3, ptr %data, i32 %4)
  tail call void @complete(ptr noundef %wait_completion) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @corsairpsu_resume(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmd_buffer.i.i = getelementptr inbounds %struct.corsairpsu_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_buffer.i.i, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 64)
  %5 = load ptr, ptr %cmd_buffer.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -2, ptr %5, align 1
  %7 = load ptr, ptr %cmd_buffer.i.i, align 4
  %arrayidx3.i.i = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %arrayidx3.i.i, align 1
  %9 = load ptr, ptr %cmd_buffer.i.i, align 4
  %arrayidx5.i.i = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx5.i.i, align 1
  %wait_completion.i.i = getelementptr inbounds %struct.corsairpsu_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %wait_completion.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %wait_completion.i.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = load ptr, ptr %cmd_buffer.i.i, align 4
  %call.i.i = tail call i32 @hid_hw_output_report(ptr noundef %13, ptr noundef %14, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.corsairpsu_init.exit_crit_edge, label %if.end.i.i

entry.corsairpsu_init.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %corsairpsu_init.exit

if.end.i.i:                                       ; preds = %entry
  %call9.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_completion.i.i, i32 noundef 25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.corsairpsu_init.exit_crit_edge, label %if.end11.i.i

if.end.i.i.corsairpsu_init.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %corsairpsu_init.exit

if.end11.i.i:                                     ; preds = %if.end.i.i
  %15 = ptrtoint ptr %cmd_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd_buffer.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %18)
  %cmp15.not.i.i = icmp eq i8 %18, -2
  br i1 %cmp15.not.i.i, label %lor.lhs.false.i.i, label %if.end11.i.i.corsairpsu_init.exit_crit_edge

if.end11.i.i.corsairpsu_init.exit_crit_edge:      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %corsairpsu_init.exit

lor.lhs.false.i.i:                                ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19.i.i = getelementptr i8, ptr %16, i32 1
  %19 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx19.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp21.not.i.i = icmp eq i8 %20, 3
  %spec.select.i = select i1 %cmp21.not.i.i, i32 0, i32 -95
  br label %corsairpsu_init.exit

corsairpsu_init.exit:                             ; preds = %lor.lhs.false.i.i, %if.end11.i.i.corsairpsu_init.exit_crit_edge, %if.end.i.i.corsairpsu_init.exit_crit_edge, %entry.corsairpsu_init.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %entry.corsairpsu_init.exit_crit_edge ], [ -110, %if.end.i.i.corsairpsu_init.exit_crit_edge ], [ -95, %if.end11.i.i.corsairpsu_init.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i.i ]
  ret i32 %retval.0.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @corsairpsu_fwinfo(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.corsairpsu_data, ptr %priv, i32 0, i32 6
  %cmd_buffer.i = getelementptr inbounds %struct.corsairpsu_data, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %cmd_buffer.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_buffer.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 64)
  %3 = load ptr, ptr %cmd_buffer.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %3, align 1
  %5 = load ptr, ptr %cmd_buffer.i, align 4
  %arrayidx3.i = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -103, ptr %arrayidx3.i, align 1
  %7 = load ptr, ptr %cmd_buffer.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx5.i, align 1
  %wait_completion.i = getelementptr inbounds %struct.corsairpsu_data, ptr %priv, i32 0, i32 3
  %9 = ptrtoint ptr %wait_completion.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %wait_completion.i, align 4
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %12 = load ptr, ptr %cmd_buffer.i, align 4
  %call.i = tail call i32 @hid_hw_output_report(ptr noundef %11, ptr noundef %12, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call9.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_completion.i, i32 noundef 25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end11.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %cmd_buffer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd_buffer.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp15.not.i = icmp eq i8 %16, 3
  br i1 %cmp15.not.i, label %lor.lhs.false.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end11.i
  %arrayidx19.i = getelementptr i8, ptr %14, i32 1
  %17 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %18)
  %cmp21.not.i = icmp eq i8 %18, -103
  br i1 %cmp21.not.i, label %if.end24.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24.i:                                       ; preds = %lor.lhs.false.i
  %tobool25.not.i = icmp eq ptr %vendor, null
  br i1 %tobool25.not.i, label %if.end24.i.if.end_crit_edge, label %if.then26.i

if.end24.i.if.end_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %14, i32 2
  %19 = call ptr @memcpy(ptr %vendor, ptr %add.ptr.i, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then26.i, %if.end24.i.if.end_crit_edge
  %product = getelementptr inbounds %struct.corsairpsu_data, ptr %priv, i32 0, i32 7
  %20 = ptrtoint ptr %cmd_buffer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd_buffer.i, align 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 64)
  %23 = load ptr, ptr %cmd_buffer.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %23, align 1
  %25 = load ptr, ptr %cmd_buffer.i, align 4
  %arrayidx3.i13 = getelementptr i8, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx3.i13 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -102, ptr %arrayidx3.i13, align 1
  %27 = load ptr, ptr %cmd_buffer.i, align 4
  %arrayidx5.i14 = getelementptr i8, ptr %27, i32 2
  %28 = ptrtoint ptr %arrayidx5.i14 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx5.i14, align 1
  %29 = ptrtoint ptr %wait_completion.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %wait_completion.i, align 4
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %32 = load ptr, ptr %cmd_buffer.i, align 4
  %call.i16 = tail call i32 @hid_hw_output_report(ptr noundef %31, ptr noundef %32, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp.i17 = icmp slt i32 %call.i16, 0
  br i1 %cmp.i17, label %if.end.cleanup_crit_edge, label %if.end.i20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i20:                                       ; preds = %if.end
  %call9.i18 = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_completion.i, i32 noundef 25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i18)
  %tobool.not.i19 = icmp eq i32 %call9.i18, 0
  br i1 %tobool.not.i19, label %if.end.i20.cleanup_crit_edge, label %if.end11.i22

if.end.i20.cleanup_crit_edge:                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11.i22:                                     ; preds = %if.end.i20
  %33 = ptrtoint ptr %cmd_buffer.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd_buffer.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp15.not.i21 = icmp eq i8 %36, 3
  br i1 %cmp15.not.i21, label %lor.lhs.false.i25, label %if.end11.i22.cleanup_crit_edge

if.end11.i22.cleanup_crit_edge:                   ; preds = %if.end11.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i25:                                ; preds = %if.end11.i22
  %arrayidx19.i23 = getelementptr i8, ptr %34, i32 1
  %37 = ptrtoint ptr %arrayidx19.i23 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx19.i23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -102, i8 %38)
  %cmp21.not.i24 = icmp eq i8 %38, -102
  br i1 %cmp21.not.i24, label %if.end24.i27, label %lor.lhs.false.i25.cleanup_crit_edge

lor.lhs.false.i25.cleanup_crit_edge:              ; preds = %lor.lhs.false.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24.i27:                                     ; preds = %lor.lhs.false.i25
  %tobool25.not.i26 = icmp eq ptr %product, null
  br i1 %tobool25.not.i26, label %if.end24.i27.cleanup_crit_edge, label %if.then26.i29

if.end24.i27.cleanup_crit_edge:                   ; preds = %if.end24.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26.i29:                                    ; preds = %if.end24.i27
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i28 = getelementptr i8, ptr %34, i32 2
  %39 = call ptr @memcpy(ptr %product, ptr %add.ptr.i28, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.then26.i29, %if.end24.i27.cleanup_crit_edge, %lor.lhs.false.i25.cleanup_crit_edge, %if.end11.i22.cleanup_crit_edge, %if.end.i20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24.i27.cleanup_crit_edge ], [ 0, %if.then26.i29 ], [ -95, %if.end11.i22.cleanup_crit_edge ], [ -95, %lor.lhs.false.i25.cleanup_crit_edge ], [ -110, %if.end.i20.cleanup_crit_edge ], [ %call.i16, %if.end.cleanup_crit_edge ], [ -95, %if.end11.i.cleanup_crit_edge ], [ -95, %lor.lhs.false.i.cleanup_crit_edge ], [ -110, %if.end.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @corsairpsu_get_criticals(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !122
  %temp_crit_support = getelementptr inbounds %struct.corsairpsu_data, ptr %priv, i32 0, i32 12
  %call = call fastcc i32 @corsairpsu_get_value(ptr noundef %priv, i8 noundef zeroext 79, i8 noundef zeroext 0, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %temp_crit_support to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %temp_crit_support, align 4
  %conv2 = or i8 %2, 1
  store i8 %conv2, ptr %temp_crit_support, align 4
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp, align 4
  %arrayidx = getelementptr %struct.corsairpsu_data, ptr %priv, i32 0, i32 8, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %call.1 = call fastcc i32 @corsairpsu_get_value(ptr noundef %priv, i8 noundef zeroext 79, i8 noundef zeroext 1, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %temp_crit_support to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %temp_crit_support, align 4
  %conv2.1 = or i8 %7, 2
  store i8 %conv2.1, ptr %temp_crit_support, align 4
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tmp, align 4
  %arrayidx.1 = getelementptr %struct.corsairpsu_data, ptr %priv, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %in_crit_support = getelementptr inbounds %struct.corsairpsu_data, ptr %priv, i32 0, i32 13
  %in_lcrit_support = getelementptr inbounds %struct.corsairpsu_data, ptr %priv, i32 0, i32 14
  %curr_crit_support = getelementptr inbounds %struct.corsairpsu_data, ptr %priv, i32 0, i32 15
  %call8 = call fastcc i32 @corsairpsu_get_value(ptr noundef %priv, i8 noundef zeroext 64, i8 noundef zeroext 0, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %for.inc.1.if.end16_crit_edge

for.inc.1.if.end16_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then10:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %in_crit_support to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %in_crit_support, align 1
  %conv14 = or i8 %12, 1
  store i8 %conv14, ptr %in_crit_support, align 1
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp, align 4
  %arrayidx15 = getelementptr %struct.corsairpsu_data, ptr %priv, i32 0, i32 9, i32 0
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %for.inc.1.if.end16_crit_edge
  %call18 = call fastcc i32 @corsairpsu_get_value(ptr noundef %priv, i8 noundef zeroext 68, i8 noundef zeroext 0, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %in_lcrit_support to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %in_lcrit_support, align 2
  %conv24 = or i8 %17, 1
  store i8 %conv24, ptr %in_lcrit_support, align 2
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp, align 4
  %arrayidx25 = getelementptr %struct.corsairpsu_data, ptr %priv, i32 0, i32 10, i32 0
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end16.if.end26_crit_edge
  %call28 = call fastcc i32 @corsairpsu_get_value(ptr noundef %priv, i8 noundef zeroext 70, i8 noundef zeroext 0, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end26.for.inc37_crit_edge

if.end26.for.inc37_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc37

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %curr_crit_support to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %curr_crit_support, align 1
  %conv34 = or i8 %22, 1
  store i8 %conv34, ptr %curr_crit_support, align 1
  %23 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmp, align 4
  %arrayidx35 = getelementptr %struct.corsairpsu_data, ptr %priv, i32 0, i32 11, i32 0
  %25 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx35, align 4
  br label %for.inc37

for.inc37:                                        ; preds = %if.then30, %if.end26.for.inc37_crit_edge
  %call8.1 = call fastcc i32 @corsairpsu_get_value(ptr noundef %priv, i8 noundef zeroext 64, i8 noundef zeroext 1, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %if.then10.1, label %for.inc37.if.end16.1_crit_edge

for.inc37.if.end16.1_crit_edge:                   ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.1

if.then10.1:                                      ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %in_crit_support to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %in_crit_support, align 1
  %conv14.1 = or i8 %27, 2
  store i8 %conv14.1, ptr %in_crit_support, align 1
  %28 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tmp, align 4
  %arrayidx15.1 = getelementptr %struct.corsairpsu_data, ptr %priv, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx15.1, align 4
  br label %if.end16.1

if.end16.1:                                       ; preds = %if.then10.1, %for.inc37.if.end16.1_crit_edge
  %call18.1 = call fastcc i32 @corsairpsu_get_value(ptr noundef %priv, i8 noundef zeroext 68, i8 noundef zeroext 1, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1)
  %tobool19.not.1 = icmp eq i32 %call18.1, 0
  br i1 %tobool19.not.1, label %if.then20.1, label %if.end16.1.if.end26.1_crit_edge

if.end16.1.if.end26.1_crit_edge:                  ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.1

if.then20.1:                                      ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %in_lcrit_support to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %in_lcrit_support, align 2
  %conv24.1 = or i8 %32, 2
  store i8 %conv24.1, ptr %in_lcrit_support, align 2
  %33 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tmp, align 4
  %arrayidx25.1 = getelementptr %struct.corsairpsu_data, ptr %priv, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx25.1, align 4
  br label %if.end26.1

if.end26.1:                                       ; preds = %if.then20.1, %if.end16.1.if.end26.1_crit_edge
  %call28.1 = call fastcc i32 @corsairpsu_get_value(ptr noundef %priv, i8 noundef zeroext 70, i8 noundef zeroext 1, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.1)
  %tobool29.not.1 = icmp eq i32 %call28.1, 0
  br i1 %tobool29.not.1, label %if.then30.1, label %if.end26.1.for.inc37.1_crit_edge

if.end26.1.for.inc37.1_crit_edge:                 ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc37.1

if.then30.1:                                      ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %curr_crit_support to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %curr_crit_support, align 1
  %conv34.1 = or i8 %37, 2
  store i8 %conv34.1, ptr %curr_crit_support, align 1
  %38 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tmp, align 4
  %arrayidx35.1 = getelementptr %struct.corsairpsu_data, ptr %priv, i32 0, i32 11, i32 1
  %40 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx35.1, align 4
  br label %for.inc37.1

for.inc37.1:                                      ; preds = %if.then30.1, %if.end26.1.for.inc37.1_crit_edge
  %call8.2 = call fastcc i32 @corsairpsu_get_value(ptr noundef %priv, i8 noundef zeroext 64, i8 noundef zeroext 2, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %tobool9.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool9.not.2, label %if.then10.2, label %for.inc37.1.if.end16.2_crit_edge

for.inc37.1.if.end16.2_crit_edge:                 ; preds = %for.inc37.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.2

if.then10.2:                                      ; preds = %for.inc37.1
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %in_crit_support to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %in_crit_support, align 1
  %conv14.2 = or i8 %42, 4
  store i8 %conv14.2, ptr %in_crit_support, align 1
  %43 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tmp, align 4
  %arrayidx15.2 = getelementptr %struct.corsairpsu_data, ptr %priv, i32 0, i32 9, i32 2
  %45 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx15.2, align 4
  br label %if.end16.2

if.end16.2:                                       ; preds = %if.then10.2, %for.inc37.1.if.end16.2_crit_edge
  %call18.2 = call fastcc i32 @corsairpsu_get_value(ptr noundef %priv, i8 noundef zeroext 68, i8 noundef zeroext 2, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.2)
  %tobool19.not.2 = icmp eq i32 %call18.2, 0
  br i1 %tobool19.not.2, label %if.then20.2, label %if.end16.2.if.end26.2_crit_edge

if.end16.2.if.end26.2_crit_edge:                  ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.2

if.then20.2:                                      ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %in_lcrit_support to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %in_lcrit_support, align 2
  %conv24.2 = or i8 %47, 4
  store i8 %conv24.2, ptr %in_lcrit_support, align 2
  %48 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tmp, align 4
  %arrayidx25.2 = getelementptr %struct.corsairpsu_data, ptr %priv, i32 0, i32 10, i32 2
  %50 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx25.2, align 4
  br label %if.end26.2

if.end26.2:                                       ; preds = %if.then20.2, %if.end16.2.if.end26.2_crit_edge
  %call28.2 = call fastcc i32 @corsairpsu_get_value(ptr noundef %priv, i8 noundef zeroext 70, i8 noundef zeroext 2, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.2)
  %tobool29.not.2 = icmp eq i32 %call28.2, 0
  br i1 %tobool29.not.2, label %if.then30.2, label %if.end26.2.for.inc37.2_crit_edge

if.end26.2.for.inc37.2_crit_edge:                 ; preds = %if.end26.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc37.2

if.then30.2:                                      ; preds = %if.end26.2
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %curr_crit_support to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %curr_crit_support, align 1
  %conv34.2 = or i8 %52, 4
  store i8 %conv34.2, ptr %curr_crit_support, align 1
  %53 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tmp, align 4
  %arrayidx35.2 = getelementptr %struct.corsairpsu_data, ptr %priv, i32 0, i32 11, i32 2
  %55 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx35.2, align 4
  br label %for.inc37.2

for.inc37.2:                                      ; preds = %if.then30.2, %if.end26.2.for.inc37.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @corsairpsu_debugfs_init(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #8
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %init_name.i = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 18, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 18
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %entry.dev_name.exit_crit_edge ]
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i) #8
  %call3 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef null) #8
  %debugfs = getelementptr inbounds %struct.corsairpsu_data, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %debugfs, align 4
  %call5 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext 292, ptr noundef %call3, ptr noundef %priv, ptr noundef nonnull @uptime_fops) #8
  %8 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs, align 4
  %call7 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext 292, ptr noundef %9, ptr noundef %priv, ptr noundef nonnull @uptime_total_fops) #8
  %10 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debugfs, align 4
  %call9 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.46, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %priv, ptr noundef nonnull @vendor_fops) #8
  %12 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %debugfs, align 4
  %call11 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.47, i16 noundef zeroext 292, ptr noundef %13, ptr noundef %priv, ptr noundef nonnull @product_fops) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @corsairpsu_get_value(ptr noundef %priv, i8 noundef zeroext %cmd, i8 noundef zeroext %rail, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.corsairpsu_data, ptr %priv, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %0 = zext i8 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %cmd, label %entry.sw.epilog.i_crit_edge [
    i8 64, label %entry.sw.bb.i_crit_edge
    i8 68, label %entry.sw.bb.i_crit_edge56
    i8 70, label %entry.sw.bb.i_crit_edge57
    i8 -117, label %entry.sw.bb.i_crit_edge58
    i8 -116, label %entry.sw.bb.i_crit_edge59
    i8 -106, label %entry.sw.bb.i_crit_edge60
  ]

entry.sw.bb.i_crit_edge60:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge59:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge58:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge56:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge56, %entry.sw.bb.i_crit_edge57, %entry.sw.bb.i_crit_edge58, %entry.sw.bb.i_crit_edge59, %entry.sw.bb.i_crit_edge60
  %cmd_buffer.i.i = getelementptr inbounds %struct.corsairpsu_data, ptr %priv, i32 0, i32 5
  %1 = ptrtoint ptr %cmd_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd_buffer.i.i, align 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 64)
  %4 = load ptr, ptr %cmd_buffer.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %4, align 1
  %6 = load ptr, ptr %cmd_buffer.i.i, align 4
  %arrayidx3.i.i = getelementptr i8, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx3.i.i, align 1
  %8 = load ptr, ptr %cmd_buffer.i.i, align 4
  %arrayidx5.i.i = getelementptr i8, ptr %8, i32 2
  %9 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %rail, ptr %arrayidx5.i.i, align 1
  %wait_completion.i.i = getelementptr inbounds %struct.corsairpsu_data, ptr %priv, i32 0, i32 3
  %10 = ptrtoint ptr %wait_completion.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wait_completion.i.i, align 4
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %13 = load ptr, ptr %cmd_buffer.i.i, align 4
  %call.i.i = tail call i32 @hid_hw_output_report(ptr noundef %12, ptr noundef %13, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.i.corsairpsu_request.exit.thread_crit_edge, label %if.end.i.i

sw.bb.i.corsairpsu_request.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %corsairpsu_request.exit.thread

if.end.i.i:                                       ; preds = %sw.bb.i
  %call9.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_completion.i.i, i32 noundef 25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.corsairpsu_request.exit.thread_crit_edge, label %if.end11.i.i

if.end.i.i.corsairpsu_request.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %corsairpsu_request.exit.thread

if.end11.i.i:                                     ; preds = %if.end.i.i
  %14 = ptrtoint ptr %cmd_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd_buffer.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp15.not.i.i = icmp eq i8 %17, 2
  br i1 %cmp15.not.i.i, label %lor.lhs.false.i.i, label %if.end11.i.i.corsairpsu_request.exit.thread_crit_edge

if.end11.i.i.corsairpsu_request.exit.thread_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %corsairpsu_request.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.end11.i.i
  %arrayidx19.i.i = getelementptr i8, ptr %15, i32 1
  %18 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx19.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp21.not.i.i = icmp eq i8 %19, 0
  br i1 %cmp21.not.i.i, label %lor.lhs.false.i.i.sw.epilog.i_crit_edge, label %lor.lhs.false.i.i.corsairpsu_request.exit.thread_crit_edge

lor.lhs.false.i.i.corsairpsu_request.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %corsairpsu_request.exit.thread

lor.lhs.false.i.i.sw.epilog.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %lor.lhs.false.i.i.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge
  %cmd_buffer.i9.i = getelementptr inbounds %struct.corsairpsu_data, ptr %priv, i32 0, i32 5
  %20 = ptrtoint ptr %cmd_buffer.i9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd_buffer.i9.i, align 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 64)
  %23 = load ptr, ptr %cmd_buffer.i9.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %23, align 1
  %25 = load ptr, ptr %cmd_buffer.i9.i, align 4
  %arrayidx3.i10.i = getelementptr i8, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx3.i10.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %cmd, ptr %arrayidx3.i10.i, align 1
  %27 = load ptr, ptr %cmd_buffer.i9.i, align 4
  %arrayidx5.i11.i = getelementptr i8, ptr %27, i32 2
  %28 = ptrtoint ptr %arrayidx5.i11.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx5.i11.i, align 1
  %wait_completion.i12.i = getelementptr inbounds %struct.corsairpsu_data, ptr %priv, i32 0, i32 3
  %29 = ptrtoint ptr %wait_completion.i12.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %wait_completion.i12.i, align 4
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %32 = load ptr, ptr %cmd_buffer.i9.i, align 4
  %call.i13.i = tail call i32 @hid_hw_output_report(ptr noundef %31, ptr noundef %32, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %cmp.i14.i = icmp slt i32 %call.i13.i, 0
  br i1 %cmp.i14.i, label %sw.epilog.i.corsairpsu_request.exit.thread_crit_edge, label %if.end.i17.i

sw.epilog.i.corsairpsu_request.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %corsairpsu_request.exit.thread

if.end.i17.i:                                     ; preds = %sw.epilog.i
  %call9.i15.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_completion.i12.i, i32 noundef 25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i15.i)
  %tobool.not.i16.i = icmp eq i32 %call9.i15.i, 0
  br i1 %tobool.not.i16.i, label %if.end.i17.i.corsairpsu_request.exit.thread_crit_edge, label %if.end11.i19.i

if.end.i17.i.corsairpsu_request.exit.thread_crit_edge: ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %corsairpsu_request.exit.thread

if.end11.i19.i:                                   ; preds = %if.end.i17.i
  %33 = ptrtoint ptr %cmd_buffer.i9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd_buffer.i9.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp15.not.i18.i = icmp eq i8 %36, 3
  br i1 %cmp15.not.i18.i, label %lor.lhs.false.i22.i, label %if.end11.i19.i.corsairpsu_request.exit.thread_crit_edge

if.end11.i19.i.corsairpsu_request.exit.thread_crit_edge: ; preds = %if.end11.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %corsairpsu_request.exit.thread

lor.lhs.false.i22.i:                              ; preds = %if.end11.i19.i
  %arrayidx19.i20.i = getelementptr i8, ptr %34, i32 1
  %37 = ptrtoint ptr %arrayidx19.i20.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx19.i20.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %cmd)
  %cmp21.not.i21.i = icmp eq i8 %38, %cmd
  br i1 %cmp21.not.i21.i, label %if.end, label %lor.lhs.false.i22.i.corsairpsu_request.exit.thread_crit_edge

lor.lhs.false.i22.i.corsairpsu_request.exit.thread_crit_edge: ; preds = %lor.lhs.false.i22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %corsairpsu_request.exit.thread

corsairpsu_request.exit.thread:                   ; preds = %lor.lhs.false.i22.i.corsairpsu_request.exit.thread_crit_edge, %if.end11.i19.i.corsairpsu_request.exit.thread_crit_edge, %if.end.i17.i.corsairpsu_request.exit.thread_crit_edge, %sw.epilog.i.corsairpsu_request.exit.thread_crit_edge, %lor.lhs.false.i.i.corsairpsu_request.exit.thread_crit_edge, %if.end11.i.i.corsairpsu_request.exit.thread_crit_edge, %if.end.i.i.corsairpsu_request.exit.thread_crit_edge, %sw.bb.i.corsairpsu_request.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ %call.i.i, %sw.bb.i.corsairpsu_request.exit.thread_crit_edge ], [ -110, %if.end.i.i.corsairpsu_request.exit.thread_crit_edge ], [ -95, %lor.lhs.false.i.i.corsairpsu_request.exit.thread_crit_edge ], [ -95, %if.end11.i.i.corsairpsu_request.exit.thread_crit_edge ], [ -95, %if.end11.i19.i.corsairpsu_request.exit.thread_crit_edge ], [ -95, %lor.lhs.false.i22.i.corsairpsu_request.exit.thread_crit_edge ], [ -110, %if.end.i17.i.corsairpsu_request.exit.thread_crit_edge ], [ %call.i13.i, %sw.epilog.i.corsairpsu_request.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i22.i
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 2
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %data.sroa.0.0.copyload = load i8, ptr %add.ptr.i.i, align 1
  %data.sroa.5.0.add.ptr.i.i.sroa_idx = getelementptr i8, ptr %34, i32 3
  %40 = ptrtoint ptr %data.sroa.5.0.add.ptr.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %40)
  %data.sroa.5.0.copyload = load i8, ptr %data.sroa.5.0.add.ptr.i.i.sroa_idx, align 1
  %data.sroa.7.0.add.ptr.i.i.sroa_idx = getelementptr i8, ptr %34, i32 4
  %41 = ptrtoint ptr %data.sroa.7.0.add.ptr.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %41)
  %data.sroa.7.0.copyload = load i8, ptr %data.sroa.7.0.add.ptr.i.i.sroa_idx, align 1
  %data.sroa.9.0.add.ptr.i.i.sroa_idx = getelementptr i8, ptr %34, i32 5
  %42 = ptrtoint ptr %data.sroa.9.0.add.ptr.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %42)
  %data.sroa.9.0.copyload = load i8, ptr %data.sroa.9.0.add.ptr.i.i.sroa_idx, align 1
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %conv5 = zext i8 %data.sroa.5.0.copyload to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %conv9 = zext i8 %data.sroa.0.0.copyload to i32
  %add = or i32 %shl6, %conv9
  %43 = zext i8 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %cmd, label %if.end.cleanup_crit_edge [
    i8 64, label %if.end.sw.bb_crit_edge
    i8 68, label %if.end.sw.bb_crit_edge61
    i8 70, label %if.end.sw.bb_crit_edge62
    i8 79, label %if.end.sw.bb_crit_edge63
    i8 -120, label %if.end.sw.bb_crit_edge64
    i8 -119, label %if.end.sw.bb_crit_edge65
    i8 -117, label %if.end.sw.bb_crit_edge66
    i8 -116, label %if.end.sw.bb_crit_edge67
    i8 -115, label %if.end.sw.bb_crit_edge68
    i8 -114, label %if.end.sw.bb_crit_edge69
    i8 -112, label %sw.bb14
    i8 -106, label %if.end.sw.bb18_crit_edge
    i8 -18, label %if.end.sw.bb18_crit_edge70
    i8 -47, label %if.end.sw.bb22_crit_edge
    i8 -46, label %if.end.sw.bb22_crit_edge71
  ]

if.end.sw.bb22_crit_edge71:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22

if.end.sw.bb22_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22

if.end.sw.bb18_crit_edge70:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

if.end.sw.bb18_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

if.end.sw.bb_crit_edge69:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge68:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge67:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge66:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge65:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge64:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge63:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge62:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge61:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge61, %if.end.sw.bb_crit_edge62, %if.end.sw.bb_crit_edge63, %if.end.sw.bb_crit_edge64, %if.end.sw.bb_crit_edge65, %if.end.sw.bb_crit_edge66, %if.end.sw.bb_crit_edge67, %if.end.sw.bb_crit_edge68, %if.end.sw.bb_crit_edge69
  %conv12 = trunc i32 %add to i16
  %44 = ashr i16 %conv12, 11
  %shr.i = sext i16 %44 to i32
  %45 = and i32 %add, 2047
  %mul.i = mul nuw nsw i32 %45, 1000
  %shl6.i = shl i32 %mul.i, %shr.i
  %sub.i = sub nsw i32 0, %shr.i
  %shr7.i53 = lshr i32 %mul.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv12)
  %cmp12.i = icmp slt i16 %conv12, 0
  %cond.i = select i1 %cmp12.i, i32 %shr7.i53, i32 %shl6.i
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond.i, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv16 = trunc i32 %add to i16
  %47 = ashr i16 %conv16, 11
  %shr.i34 = sext i16 %47 to i32
  %48 = and i32 %add, 2047
  %shl6.i35 = shl nuw nsw i32 %48, %shr.i34
  %sub.i36 = sub nsw i32 0, %shr.i34
  %shr7.i3754 = lshr i32 %48, %sub.i36
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv16)
  %cmp12.i38 = icmp slt i16 %conv16, 0
  %cond.i39 = select i1 %cmp12.i38, i32 %shr7.i3754, i32 %shl6.i35
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond.i39, ptr %val, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %if.end.sw.bb18_crit_edge, %if.end.sw.bb18_crit_edge70
  %conv20 = trunc i32 %add to i16
  %50 = ashr i16 %conv20, 11
  %shr.i40 = sext i16 %50 to i32
  %51 = and i32 %add, 2047
  %mul.i41 = mul nuw nsw i32 %51, 1000000
  %shl6.i42 = shl i32 %mul.i41, %shr.i40
  %sub.i43 = sub nsw i32 0, %shr.i40
  %shr7.i4455 = lshr i32 %mul.i41, %sub.i43
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv20)
  %cmp12.i45 = icmp slt i16 %conv20, 0
  %cond.i46 = select i1 %cmp12.i45, i32 %shr7.i4455, i32 %shl6.i42
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond.i46, ptr %val, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %if.end.sw.bb22_crit_edge, %if.end.sw.bb22_crit_edge71
  %conv2 = zext i8 %data.sroa.7.0.copyload to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %add7 = or i32 %add, %shl3
  %conv = zext i8 %data.sroa.9.0.copyload to i32
  %shl = shl nuw i32 %conv, 24
  %add10 = or i32 %add7, %shl
  %53 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add10, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb22, %sw.bb18, %sw.bb14, %sw.bb, %if.end.cleanup_crit_edge, %corsairpsu_request.exit.thread
  %retval.0 = phi i32 [ 0, %sw.bb22 ], [ 0, %sw.bb18 ], [ 0, %sw.bb14 ], [ 0, %sw.bb ], [ -95, %if.end.cleanup_crit_edge ], [ %ret.0.i.ph, %corsairpsu_request.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @corsairpsu_hwmon_ops_is_visible(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.bb1
    i32 4, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb.sw.bb.i_crit_edge
    i32 21, label %sw.bb.sw.bb.i_crit_edge43
    i32 9, label %sw.bb.sw.bb.i_crit_edge44
  ]

sw.bb.sw.bb.i_crit_edge44:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge43:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb.sw.bb.i_crit_edge, %sw.bb.sw.bb.i_crit_edge43, %sw.bb.sw.bb.i_crit_edge44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp.i = icmp sgt i32 %channel, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %temp_crit_support.i = getelementptr inbounds %struct.corsairpsu_data, ptr %data, i32 0, i32 12
  %2 = ptrtoint ptr %temp_crit_support.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %temp_crit_support.i, align 4
  %conv.i = zext i8 %3 to i32
  %sub.i = add nsw i32 %channel, -1
  %shl.i = shl nuw i32 1, %sub.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i16 0, i16 292
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %attr.off.i = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr.off.i)
  %switch.i = icmp ult i32 %attr.off.i, 2
  %..i = select i1 %switch.i, i16 292, i16 0
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %attr)
  %switch.selectcmp.case1.i = icmp eq i32 %attr, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %attr)
  %switch.selectcmp.case2.i = icmp eq i32 %attr, 22
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %4 = select i1 %switch.selectcmp.i, i16 292, i16 0
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %attr, label %sw.bb5.cleanup_crit_edge [
    i32 1, label %sw.bb5.sw.bb.i22_crit_edge
    i32 10, label %sw.bb5.sw.bb.i22_crit_edge45
    i32 5, label %sw.bb5.sw.bb.i22_crit_edge46
    i32 4, label %sw.bb1.i
  ]

sw.bb5.sw.bb.i22_crit_edge46:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i22

sw.bb5.sw.bb.i22_crit_edge45:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i22

sw.bb5.sw.bb.i22_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i22

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i22:                                        ; preds = %sw.bb5.sw.bb.i22_crit_edge, %sw.bb5.sw.bb.i22_crit_edge45, %sw.bb5.sw.bb.i22_crit_edge46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp.i21 = icmp sgt i32 %channel, 0
  br i1 %cmp.i21, label %land.lhs.true.i29, label %sw.bb.i22.cleanup_crit_edge

sw.bb.i22.cleanup_crit_edge:                      ; preds = %sw.bb.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i29:                                ; preds = %sw.bb.i22
  call void @__sanitizer_cov_trace_pc() #10
  %in_crit_support.i = getelementptr inbounds %struct.corsairpsu_data, ptr %data, i32 0, i32 13
  %6 = ptrtoint ptr %in_crit_support.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_crit_support.i, align 1
  %conv.i23 = zext i8 %7 to i32
  %sub.i24 = add nsw i32 %channel, -1
  %shl.i25 = shl nuw i32 1, %sub.i24
  %and.i26 = and i32 %shl.i25, %conv.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i27 = icmp eq i32 %and.i26, 0
  %spec.select.i28 = select i1 %tobool.not.i27, i16 0, i16 292
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp2.i = icmp sgt i32 %channel, 0
  br i1 %cmp2.i, label %land.lhs.true4.i, label %sw.bb1.i.cleanup_crit_edge

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true4.i:                                 ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  %in_lcrit_support.i = getelementptr inbounds %struct.corsairpsu_data, ptr %data, i32 0, i32 14
  %8 = ptrtoint ptr %in_lcrit_support.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_lcrit_support.i, align 2
  %conv5.i = zext i8 %9 to i32
  %sub6.i = add nsw i32 %channel, -1
  %shl7.i = shl nuw i32 1, %sub6.i
  %and8.i = and i32 %shl7.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %spec.select16.i = select i1 %tobool9.not.i, i16 0, i16 292
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %10 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %attr, label %sw.bb7.cleanup_crit_edge [
    i32 1, label %sw.bb.i32
    i32 10, label %sw.bb7.sw.bb1.i37_crit_edge
    i32 5, label %sw.bb7.sw.bb1.i37_crit_edge47
  ]

sw.bb7.sw.bb1.i37_crit_edge47:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i37

sw.bb7.sw.bb1.i37_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i37

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i32:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp.i31 = icmp eq i32 %channel, 0
  br i1 %cmp.i31, label %land.lhs.true.i35, label %sw.bb.i32.cleanup_crit_edge

sw.bb.i32.cleanup_crit_edge:                      ; preds = %sw.bb.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i35:                                ; preds = %sw.bb.i32
  call void @__sanitizer_cov_trace_pc() #10
  %in_curr_cmd_support.i = getelementptr inbounds %struct.corsairpsu_data, ptr %data, i32 0, i32 16
  %11 = ptrtoint ptr %in_curr_cmd_support.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %in_curr_cmd_support.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i33 = icmp eq i8 %12, 0
  %spec.select.i34 = select i1 %tobool.not.i33, i16 0, i16 292
  br label %cleanup

sw.bb1.i37:                                       ; preds = %sw.bb7.sw.bb1.i37_crit_edge, %sw.bb7.sw.bb1.i37_crit_edge47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp2.i36 = icmp sgt i32 %channel, 0
  br i1 %cmp2.i36, label %land.lhs.true3.i, label %sw.bb1.i37.cleanup_crit_edge

sw.bb1.i37.cleanup_crit_edge:                     ; preds = %sw.bb1.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true3.i:                                 ; preds = %sw.bb1.i37
  call void @__sanitizer_cov_trace_pc() #10
  %curr_crit_support.i = getelementptr inbounds %struct.corsairpsu_data, ptr %data, i32 0, i32 15
  %13 = ptrtoint ptr %curr_crit_support.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %curr_crit_support.i, align 1
  %conv.i38 = zext i8 %14 to i32
  %sub.i39 = add nsw i32 %channel, -1
  %shl.i40 = shl nuw i32 1, %sub.i39
  %and.i41 = and i32 %shl.i40, %conv.i38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool4.not.i = icmp eq i32 %and.i41, 0
  %spec.select10.i = select i1 %tobool4.not.i, i16 0, i16 292
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true3.i, %sw.bb1.i37.cleanup_crit_edge, %land.lhs.true.i35, %sw.bb.i32.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %land.lhs.true4.i, %sw.bb1.i.cleanup_crit_edge, %land.lhs.true.i29, %sw.bb.i22.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.bb3, %sw.bb1, %land.lhs.true.i, %sw.bb.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %4, %sw.bb3 ], [ %..i, %sw.bb1 ], [ 0, %entry.cleanup_crit_edge ], [ 292, %sw.bb.cleanup_crit_edge ], [ 292, %sw.bb.i.cleanup_crit_edge ], [ %spec.select.i, %land.lhs.true.i ], [ 292, %sw.bb5.cleanup_crit_edge ], [ 292, %sw.bb1.i.cleanup_crit_edge ], [ 292, %sw.bb.i22.cleanup_crit_edge ], [ %spec.select.i28, %land.lhs.true.i29 ], [ %spec.select16.i, %land.lhs.true4.i ], [ 292, %sw.bb7.cleanup_crit_edge ], [ 292, %sw.bb1.i37.cleanup_crit_edge ], [ 292, %sw.bb.i32.cleanup_crit_edge ], [ %spec.select.i34, %land.lhs.true.i35 ], [ %spec.select10.i, %land.lhs.true3.i ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @corsairpsu_hwmon_ops_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.bb2
    i32 4, label %sw.bb4
    i32 2, label %sw.bb6
    i32 3, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 9, label %sw.bb2.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not.i = icmp eq i32 %channel, 0
  %conv.i = select i1 %tobool.not.i, i8 -115, i8 -114
  %conv1.i = trunc i32 %channel to i8
  %call.i = tail call fastcc i32 @corsairpsu_get_value(ptr noundef %1, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv1.i, ptr noundef %val) #8
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.corsairpsu_data, ptr %1, i32 0, i32 8, i32 %channel
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cmp = icmp eq i32 %attr, 1
  br i1 %cmp, label %if.then, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call fastcc i32 @corsairpsu_get_value(ptr noundef %1, i8 noundef zeroext -112, i8 noundef zeroext 0, ptr noundef %val)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %attr)
  %cmp.i = icmp eq i32 %attr, 9
  br i1 %cmp.i, label %if.then.i, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb4
  %7 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %channel, label %if.then.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i26
    i32 1, label %if.then.i.sw.bb1.i_crit_edge
    i32 2, label %if.then.i.sw.bb1.i_crit_edge46
    i32 3, label %if.then.i.sw.bb1.i_crit_edge47
  ]

if.then.i.sw.bb1.i_crit_edge47:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.then.i.sw.bb1.i_crit_edge46:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.then.i.sw.bb1.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i26:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25 = tail call fastcc i32 @corsairpsu_get_value(ptr noundef %1, i8 noundef zeroext -18, i8 noundef zeroext 0, ptr noundef %val) #8
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then.i.sw.bb1.i_crit_edge, %if.then.i.sw.bb1.i_crit_edge46, %if.then.i.sw.bb1.i_crit_edge47
  %8 = trunc i32 %channel to i8
  %conv.i27 = add nsw i8 %8, -1
  %call2.i = tail call fastcc i32 @corsairpsu_get_value(ptr noundef %1, i8 noundef zeroext -106, i8 noundef zeroext %conv.i27, ptr noundef %val) #8
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %9 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %attr, label %sw.bb6.cleanup_crit_edge [
    i32 1, label %sw.bb.i29
    i32 5, label %sw.bb4.i
    i32 4, label %sw.bb6.i
  ]

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i29:                                        ; preds = %sw.bb6
  %10 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %channel, label %sw.bb.i29.cleanup_crit_edge [
    i32 0, label %sw.bb1.i31
    i32 1, label %sw.bb.i29.sw.bb2.i33_crit_edge
    i32 2, label %sw.bb.i29.sw.bb2.i33_crit_edge48
    i32 3, label %sw.bb.i29.sw.bb2.i33_crit_edge49
  ]

sw.bb.i29.sw.bb2.i33_crit_edge49:                 ; preds = %sw.bb.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i33

sw.bb.i29.sw.bb2.i33_crit_edge48:                 ; preds = %sw.bb.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i33

sw.bb.i29.sw.bb2.i33_crit_edge:                   ; preds = %sw.bb.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i33

sw.bb.i29.cleanup_crit_edge:                      ; preds = %sw.bb.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1.i31:                                       ; preds = %sw.bb.i29
  call void @__sanitizer_cov_trace_pc() #10
  %call.i30 = tail call fastcc i32 @corsairpsu_get_value(ptr noundef %1, i8 noundef zeroext -120, i8 noundef zeroext 0, ptr noundef %val) #8
  br label %cleanup

sw.bb2.i33:                                       ; preds = %sw.bb.i29.sw.bb2.i33_crit_edge, %sw.bb.i29.sw.bb2.i33_crit_edge48, %sw.bb.i29.sw.bb2.i33_crit_edge49
  %11 = trunc i32 %channel to i8
  %conv.i32 = add nsw i8 %11, -1
  %call3.i = tail call fastcc i32 @corsairpsu_get_value(ptr noundef %1, i8 noundef zeroext -117, i8 noundef zeroext %conv.i32, ptr noundef %val) #8
  br label %cleanup

sw.bb4.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %sub5.i = add i32 %channel, -1
  %arrayidx.i34 = getelementptr %struct.corsairpsu_data, ptr %1, i32 0, i32 9, i32 %sub5.i
  %12 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i34, align 4
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val, align 4
  br label %cleanup

sw.bb6.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %sub7.i = add i32 %channel, -1
  %arrayidx8.i = getelementptr %struct.corsairpsu_data, ptr %1, i32 0, i32 10, i32 %sub7.i
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx8.i, align 4
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %18 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %attr, label %sw.bb8.cleanup_crit_edge [
    i32 1, label %sw.bb.i36
    i32 5, label %sw.bb4.i44
  ]

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i36:                                        ; preds = %sw.bb8
  %19 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %channel, label %sw.bb.i36.cleanup_crit_edge [
    i32 0, label %sw.bb1.i38
    i32 1, label %sw.bb.i36.sw.bb2.i41_crit_edge
    i32 2, label %sw.bb.i36.sw.bb2.i41_crit_edge50
    i32 3, label %sw.bb.i36.sw.bb2.i41_crit_edge51
  ]

sw.bb.i36.sw.bb2.i41_crit_edge51:                 ; preds = %sw.bb.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i41

sw.bb.i36.sw.bb2.i41_crit_edge50:                 ; preds = %sw.bb.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i41

sw.bb.i36.sw.bb2.i41_crit_edge:                   ; preds = %sw.bb.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i41

sw.bb.i36.cleanup_crit_edge:                      ; preds = %sw.bb.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1.i38:                                       ; preds = %sw.bb.i36
  call void @__sanitizer_cov_trace_pc() #10
  %call.i37 = tail call fastcc i32 @corsairpsu_get_value(ptr noundef %1, i8 noundef zeroext -119, i8 noundef zeroext 0, ptr noundef %val) #8
  br label %cleanup

sw.bb2.i41:                                       ; preds = %sw.bb.i36.sw.bb2.i41_crit_edge, %sw.bb.i36.sw.bb2.i41_crit_edge50, %sw.bb.i36.sw.bb2.i41_crit_edge51
  %20 = trunc i32 %channel to i8
  %conv.i39 = add nsw i8 %20, -1
  %call3.i40 = tail call fastcc i32 @corsairpsu_get_value(ptr noundef %1, i8 noundef zeroext -116, i8 noundef zeroext %conv.i39, ptr noundef %val) #8
  br label %cleanup

sw.bb4.i44:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %sub5.i42 = add i32 %channel, -1
  %arrayidx.i43 = getelementptr %struct.corsairpsu_data, ptr %1, i32 0, i32 11, i32 %sub5.i42
  %21 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i43, align 4
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4.i44, %sw.bb2.i41, %sw.bb1.i38, %sw.bb.i36.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb6.i, %sw.bb4.i, %sw.bb2.i33, %sw.bb1.i31, %sw.bb.i29.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb1.i, %sw.bb.i26, %if.then.i.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %if.then, %sw.bb2.cleanup_crit_edge, %sw.bb2.i, %sw.bb.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ -95, %sw.bb2.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %call.i, %sw.bb.i ], [ -95, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb2.i ], [ %call2.i, %sw.bb1.i ], [ %call.i25, %sw.bb.i26 ], [ -95, %if.then.i.cleanup_crit_edge ], [ -95, %sw.bb4.cleanup_crit_edge ], [ %call3.i, %sw.bb2.i33 ], [ %call.i30, %sw.bb1.i31 ], [ -95, %sw.bb6.cleanup_crit_edge ], [ 0, %sw.bb6.i ], [ 0, %sw.bb4.i ], [ -95, %sw.bb.i29.cleanup_crit_edge ], [ %call3.i40, %sw.bb2.i41 ], [ %call.i37, %sw.bb1.i38 ], [ -95, %sw.bb8.cleanup_crit_edge ], [ 0, %sw.bb4.i44 ], [ -95, %sw.bb.i36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @corsairpsu_hwmon_ops_read_string(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %attr)
  %cmp1 = icmp eq i32 %attr, 21
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not = icmp eq i32 %channel, 0
  %cond = select i1 %tobool.not, ptr @.str.18, ptr @.str.17
  br label %return.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cmp2 = icmp eq i32 %type, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr)
  %cmp4 = icmp eq i32 %attr, 2
  %or.cond51 = and i1 %cmp2, %cmp4
  br i1 %or.cond51, label %if.else.return.sink.split_crit_edge, label %if.else6

if.else.return.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp7 = icmp eq i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %attr)
  %cmp9 = icmp eq i32 %attr, 22
  %or.cond52 = and i1 %cmp7, %cmp9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channel)
  %cmp11 = icmp slt i32 %channel, 4
  %or.cond53 = and i1 %or.cond52, %cmp11
  br i1 %or.cond53, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [4 x ptr], ptr @label_watts, i32 0, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return.sink.split

if.else13:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp14 = icmp eq i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %attr)
  %cmp16 = icmp eq i32 %attr, 10
  %or.cond54 = and i1 %cmp14, %cmp16
  %or.cond55 = and i1 %or.cond54, %cmp11
  br i1 %or.cond55, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx20 = getelementptr [4 x ptr], ptr @label_volts, i32 0, i32 %channel
  %2 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx20, align 4
  br label %return.sink.split

if.else21:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp22 = icmp eq i32 %type, 3
  %or.cond56 = and i1 %cmp22, %cmp16
  %or.cond57 = and i1 %or.cond56, %cmp11
  br i1 %or.cond57, label %if.then27, label %if.else21.return_crit_edge

if.else21.return_crit_edge:                       ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then27:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx28 = getelementptr [4 x ptr], ptr @label_amps, i32 0, i32 %channel
  %4 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx28, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then27, %if.then19, %if.then12, %if.else.return.sink.split_crit_edge, %if.then
  %.sink = phi ptr [ %5, %if.then27 ], [ %3, %if.then19 ], [ %1, %if.then12 ], [ %cond, %if.then ], [ @.str.19, %if.else.return.sink.split_crit_edge ]
  %6 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %.sink, ptr %str, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else21.return_crit_edge
  %retval.0 = phi i32 [ -95, %if.else21.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uptime_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @uptime_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uptime_show(ptr noundef %seqf, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @print_uptime(ptr noundef %seqf, i8 noundef zeroext -46)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_uptime(ptr noundef %seqf, i8 noundef zeroext %cmd) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seqf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !122
  %call = call fastcc i32 @corsairpsu_get_value(ptr noundef %1, i8 noundef zeroext %cmd, i8 noundef zeroext 0, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seqf, ptr noundef nonnull @.str.48) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 86400, i32 %4)
  %cmp1 = icmp sgt i32 %4, 86400
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %.frozen = freeze i32 %4
  %div18 = udiv i32 %.frozen, 86400
  %5 = mul i32 %div18, 86400
  %rem19.decomposed = sub i32 %.frozen, %5
  %div320 = udiv i32 %rem19.decomposed, 3600
  %rem421 = urem i32 %4, 3600
  %div522.lhs.trunc = trunc i32 %rem421 to i16
  %div52223 = udiv i16 %div522.lhs.trunc, 60
  %div522.zext = zext i16 %div52223 to i32
  %rem624 = urem i32 %4, 60
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seqf, ptr noundef nonnull @.str.49, i32 noundef %div18, i32 noundef %div320, i32 noundef %div522.zext, i32 noundef %rem624) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rem8 = srem i32 %4, 86400
  %div9 = sdiv i32 %rem8, 3600
  %rem10 = srem i32 %4, 3600
  %div11.lhs.trunc = trunc i32 %rem10 to i16
  %div1125 = sdiv i16 %div11.lhs.trunc, 60
  %div11.sext = sext i16 %div1125 to i32
  %rem12 = srem i32 %4, 60
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seqf, ptr noundef nonnull @.str.50, i32 noundef %div9, i32 noundef %div11.sext, i32 noundef %rem12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uptime_total_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @uptime_total_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uptime_total_show(ptr noundef %seqf, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @print_uptime(ptr noundef %seqf, i8 noundef zeroext -47)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @vendor_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_show(ptr noundef %seqf, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seqf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %vendor = getelementptr inbounds %struct.corsairpsu_data, ptr %1, i32 0, i32 6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seqf, ptr noundef nonnull @.str.51, ptr noundef %vendor) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @product_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @product_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @product_show(ptr noundef %seqf, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seqf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %product = getelementptr inbounds %struct.corsairpsu_data, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seqf, ptr noundef nonnull @.str.51, ptr noundef %product) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !37, !39, !40, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_corsair_psu__225_811_corsairpsu_driver_init6, !1, !"__initcall__kmod_corsair_psu__225_811_corsairpsu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/corsair-psu.c", i32 811, i32 1}
!2 = !{ptr @__exitcall_corsairpsu_driver_exit, !1, !"__exitcall_corsairpsu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file226, !4, !"__UNIQUE_ID_file226", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/corsair-psu.c", i32 813, i32 1}
!5 = !{ptr @__UNIQUE_ID_license227, !4, !"__UNIQUE_ID_license227", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author228, !7, !"__UNIQUE_ID_author228", i1 false, i1 false}
!7 = !{!"../drivers/hwmon/corsair-psu.c", i32 814, i32 1}
!8 = !{ptr @__UNIQUE_ID_description229, !9, !"__UNIQUE_ID_description229", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/corsair-psu.c", i32 815, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hwmon/corsair-psu.c", i32 801, i32 11}
!13 = !{ptr @corsairpsu_driver, !14, !"corsairpsu_driver", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/corsair-psu.c", i32 800, i32 26}
!15 = !{ptr @corsairpsu_idtable, !16, !"corsairpsu_idtable", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/corsair-psu.c", i32 784, i32 35}
!17 = !{ptr @corsairpsu_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/corsair-psu.c", i32 711, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/corsair-psu.c", i32 718, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @corsairpsu_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @corsairpsu_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/corsair-psu.c", i32 724, i32 3}
!30 = !{ptr @corsairpsu_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @corsairpsu_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/corsair-psu.c", i32 731, i32 64}
!34 = !{ptr @init_completion.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../include/linux/completion.h", i32 87, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/hid.h", i32 963, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hid_device_io_start._entry, !38, !"_entry", i1 false, i1 false}
!43 = !{ptr @hid_device_io_start._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @corsairpsu_chip_info, !45, !"corsairpsu_chip_info", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/corsair-psu.c", i32 597, i32 37}
!46 = !{ptr @corsairpsu_hwmon_ops, !47, !"corsairpsu_hwmon_ops", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/corsair-psu.c", i32 565, i32 31}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/corsair-psu.c", i32 546, i32 20}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/corsair-psu.c", i32 546, i32 30}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/corsair-psu.c", i32 549, i32 10}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/corsair-psu.c", i32 96, i32 2}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/corsair-psu.c", i32 97, i32 2}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/corsair-psu.c", i32 98, i32 2}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/corsair-psu.c", i32 99, i32 2}
!62 = !{ptr @label_watts, !63, !"label_watts", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/corsair-psu.c", i32 95, i32 26}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/corsair-psu.c", i32 103, i32 2}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/corsair-psu.c", i32 104, i32 2}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/corsair-psu.c", i32 105, i32 2}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/corsair-psu.c", i32 106, i32 2}
!72 = !{ptr @label_volts, !73, !"label_volts", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/corsair-psu.c", i32 102, i32 26}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/corsair-psu.c", i32 110, i32 2}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/corsair-psu.c", i32 111, i32 2}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/corsair-psu.c", i32 112, i32 2}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/corsair-psu.c", i32 113, i32 2}
!82 = !{ptr @label_amps, !83, !"label_amps", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/corsair-psu.c", i32 109, i32 26}
!84 = !{ptr @corsairpsu_info, !85, !"corsairpsu_info", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/corsair-psu.c", i32 571, i32 41}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/corsair-psu.c", i32 667, i32 32}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/corsair-psu.c", i32 670, i32 22}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/corsair-psu.c", i32 671, i32 22}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/corsair-psu.c", i32 672, i32 22}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/corsair-psu.c", i32 673, i32 22}
!96 = !{ptr @uptime_fops, !97, !"uptime_fops", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/corsair-psu.c", i32 633, i32 1}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/corsair-psu.c", i32 612, i32 18}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/corsair-psu.c", i32 617, i32 20}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/corsair-psu.c", i32 623, i32 19}
!104 = !{ptr @uptime_total_fops, !105, !"uptime_total_fops", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/corsair-psu.c", i32 641, i32 1}
!106 = !{ptr @vendor_fops, !107, !"vendor_fops", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/corsair-psu.c", i32 651, i32 1}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/corsair-psu.c", i32 647, i32 19}
!110 = !{ptr @product_fops, !111, !"product_fops", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/corsair-psu.c", i32 661, i32 1}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i8 0, i8 2}
!122 = !{!"auto-init"}
