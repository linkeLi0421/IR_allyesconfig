; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-x1205.c_pt.bc'
source_filename = "../drivers/rtc/rtc-x1205.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.x1205_limit = type { i8, i8, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_x1205__297_689_x1205_driver_init6 = internal global ptr @x1205_driver_init, section ".initcall6.init", align 4
@x1205_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @x1205_probe, ptr @x1205_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @x1205_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @x1205_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_x1205_driver_exit = internal global ptr @x1205_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [98 x i8] c"rtc_x1205.author=Karen Spearel <kas111 at gmail dot com>, Alessandro Zummo <a.zummo@towertech.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [54 x i8] c"rtc_x1205.description=Xicor/Intersil X1205 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [37 x i8] c"rtc_x1205.file=drivers/rtc/rtc-x1205\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [22 x i8] c"rtc_x1205.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc-x1205\00", [22 x i8] zeroinitializer }, align 32
@x1205_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xircom,x1205\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@x1205_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"x1205\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@x1205_probe.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -100, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc_x1205\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"x1205_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-x1205.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@x1205_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @x1205_rtc_read_time, ptr @x1205_rtc_set_time, ptr @x1205_rtc_read_alarm, ptr @x1205_rtc_set_alarm, ptr @x1205_rtc_proc, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@x1205_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 646, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"power failure detected, please set the clock\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@x1205_probe._entry_ptr = internal global ptr @x1205_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@x1205_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 651, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"couldn't read status\0A\00", [42 x i8] zeroinitializer }, align 32
@x1205_probe._entry_ptr.10 = internal global ptr @x1205_probe._entry.8, section ".printk_index", align 4
@x1205_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 656, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to create sysfs entries\0A\00", [32 x i8] zeroinitializer }, align 32
@x1205_probe._entry_ptr.13 = internal global ptr @x1205_probe._entry.11, section ".printk_index", align 4
@x1205_validate_client.probe_zero_pattern = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"?\18\13\F8\12\C0\11\18\10\FF", [22 x i8] zeroinitializer }, align 32
@x1205_validate_client.probe_limits_pattern = internal constant { [10 x %struct.x1205_limit], [56 x i8] } { [10 x %struct.x1205_limit] [%struct.x1205_limit { i8 55, i8 -1, i8 19, i8 20 }, %struct.x1205_limit { i8 54, i8 -1, i8 0, i8 6 }, %struct.x1205_limit { i8 53, i8 -1, i8 0, i8 99 }, %struct.x1205_limit { i8 52, i8 -1, i8 0, i8 12 }, %struct.x1205_limit { i8 51, i8 -1, i8 0, i8 31 }, %struct.x1205_limit { i8 50, i8 127, i8 0, i8 23 }, %struct.x1205_limit { i8 49, i8 -1, i8 0, i8 59 }, %struct.x1205_limit { i8 48, i8 -1, i8 0, i8 59 }, %struct.x1205_limit { i8 15, i8 -1, i8 19, i8 20 }, %struct.x1205_limit { i8 7, i8 -1, i8 19, i8 20 }], [56 x i8] zeroinitializer }, align 32
@x1205_validate_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 434, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: could not read register %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"x1205_validate_client\00", [42 x i8] zeroinitializer }, align 32
@x1205_validate_client._entry_ptr = internal global ptr @x1205_validate_client._entry, section ".printk_index", align 4
@x1205_validate_client._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 442, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: register=%02x, zero pattern=%d, value=%x\0A\00", [50 x i8] zeroinitializer }, align 32
@x1205_validate_client._entry_ptr.18 = internal global ptr @x1205_validate_client._entry.16, section ".printk_index", align 4
@x1205_validate_client._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 472, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@x1205_validate_client._entry_ptr.21 = internal global ptr @x1205_validate_client._entry.20, section ".printk_index", align 4
@x1205_validate_client.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.3, ptr @.str.22, i8 0, i8 121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: register=%x, lim pattern=%d, value=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@x1205_get_datetime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 111, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: read error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"x1205_get_datetime\00", [45 x i8] zeroinitializer }, align 32
@x1205_get_datetime._entry_ptr = internal global ptr @x1205_get_datetime._entry, section ".printk_index", align 4
@x1205_get_datetime.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 30, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"%s: raw read data - sec=%02x, min=%02x, hr=%02x, mday=%02x, mon=%02x, year=%02x, wday=%02x, y2k=%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@x1205_get_datetime.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.26, i8 0, i8 35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: tm is secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@x1205_set_datetime.wel = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00?\02", [29 x i8] zeroinitializer }, align 32
@x1205_set_datetime.rwel = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00?\06", [29 x i8] zeroinitializer }, align 32
@x1205_set_datetime.diswe = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00?\00", [29 x i8] zeroinitializer }, align 32
@x1205_set_datetime.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 47, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"x1205_set_datetime\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: sec=%d min=%d hour=%d mday=%d mon=%d year=%d wday=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@x1205_set_datetime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 216, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: wel - %d\0A\00", [18 x i8] zeroinitializer }, align 32
@x1205_set_datetime._entry_ptr = internal global ptr @x1205_set_datetime._entry, section ".printk_index", align 4
@x1205_set_datetime._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.27, ptr @.str.3, i32 222, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: rwel - %d\0A\00", [17 x i8] zeroinitializer }, align 32
@x1205_set_datetime._entry_ptr.32 = internal global ptr @x1205_set_datetime._entry.30, section ".printk_index", align 4
@x1205_set_datetime._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.27, ptr @.str.3, i32 231, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: result=%d addr=%02x, data=%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@x1205_set_datetime._entry_ptr.35 = internal global ptr @x1205_set_datetime._entry.33, section ".printk_index", align 4
@__const.x1205_set_datetime.al0e = private unnamed_addr constant [3 x i8] c"\00\11\00", align 1
@x1205_set_datetime._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.27, ptr @.str.3, i32 249, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: aloe rwel - %d\0A\00", [44 x i8] zeroinitializer }, align 32
@x1205_set_datetime._entry_ptr.38 = internal global ptr @x1205_set_datetime._entry.36, section ".printk_index", align 4
@x1205_set_datetime._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.27, ptr @.str.3, i32 261, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: al0e - %d\0A\00", [17 x i8] zeroinitializer }, align 32
@x1205_set_datetime._entry_ptr.41 = internal global ptr @x1205_set_datetime._entry.39, section ".printk_index", align 4
@x1205_set_datetime._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.27, ptr @.str.3, i32 272, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: diswe - %d\0A\00", [16 x i8] zeroinitializer }, align 32
@x1205_set_datetime._entry_ptr.44 = internal global ptr @x1205_set_datetime._entry.42, section ".printk_index", align 4
@x1205_rtc_read_alarm.int_addr = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\00\11", [30 x i8] zeroinitializer }, align 32
@x1205_rtc_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.45, ptr @.str.3, i32 516, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"x1205_rtc_read_alarm\00", [43 x i8] zeroinitializer }, align 32
@x1205_rtc_read_alarm._entry_ptr = internal global ptr @x1205_rtc_read_alarm._entry, section ".printk_index", align 4
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"digital_trim\09: %d ppm\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"analog_trim\09: %d.%02d pF\0A\00", [38 x i8] zeroinitializer }, align 32
@x1205_get_dtrim.dtr_addr = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\00\13", [30 x i8] zeroinitializer }, align 32
@x1205_get_dtrim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.48, ptr @.str.3, i32 314, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"x1205_get_dtrim\00", [16 x i8] zeroinitializer }, align 32
@x1205_get_dtrim._entry_ptr = internal global ptr @x1205_get_dtrim._entry, section ".printk_index", align 4
@x1205_get_dtrim.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 79, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: raw dtr=%x\0A\00", [16 x i8] zeroinitializer }, align 32
@x1205_get_atrim.atr_addr = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\00\12", [30 x i8] zeroinitializer }, align 32
@x1205_get_atrim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.50, ptr @.str.3, i32 355, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"x1205_get_atrim\00", [16 x i8] zeroinitializer }, align 32
@x1205_get_atrim._entry_ptr = internal global ptr @x1205_get_atrim._entry, section ".printk_index", align 4
@x1205_get_atrim.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 89, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: raw atr=%x\0A\00", [16 x i8] zeroinitializer }, align 32
@x1205_get_atrim.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.52, i8 0, i8 91, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: raw atr=%x (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@x1205_get_atrim.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.53, i8 0, i8 92, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: real=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@x1205_get_status.sr_addr = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\00?", [30 x i8] zeroinitializer }, align 32
@x1205_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.54, ptr @.str.3, i32 165, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"x1205_get_status\00", [47 x i8] zeroinitializer }, align 32
@x1205_get_status._entry_ptr = internal global ptr @x1205_get_status._entry, section ".printk_index", align 4
@x1205_fix_osc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 288, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to restart the oscillator\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"x1205_fix_osc\00", [18 x i8] zeroinitializer }, align 32
@x1205_fix_osc._entry_ptr = internal global ptr @x1205_fix_osc._entry, section ".printk_index", align 4
@dev_attr_atrim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @x1205_sysfs_show_atrim, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dtrim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @x1205_sysfs_show_dtrim, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atrim\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d.%02d pF\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dtrim\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%d ppm\0A\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"x1205_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 679, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 681, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"x1205_dt_ids\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 673, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"x1205_id\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 667, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 624, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"x1205_rtc_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 561, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 644, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 651, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 656, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"probe_zero_pattern\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 387, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant [21 x i8] c"probe_limits_pattern\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 396, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 432, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 440, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 470, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 481, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 111, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 115, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 136, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [4 x i8] c"wel\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 179, i32 29 }
@___asan_gen_.157 = private unnamed_addr constant [5 x i8] c"rwel\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 182, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant [6 x i8] c"diswe\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 185, i32 29 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 187, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 216, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 222, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 228, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 246, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 258, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 272, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [9 x i8] c"int_addr\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 497, i32 23 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 516, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 552, i32 19 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 556, i32 19 }
@___asan_gen_.220 = private unnamed_addr constant [9 x i8] c"dtr_addr\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 296, i32 23 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 314, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 318, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [9 x i8] c"atr_addr\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 337, i32 23 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 355, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 359, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 367, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 371, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [8 x i8] c"sr_addr\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 147, i32 23 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 165, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 288, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [15 x i8] c"dev_attr_atrim\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [15 x i8] c"dev_attr_dtrim\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 580, i32 8 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 578, i32 22 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 593, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [27 x i8] c"../drivers/rtc/rtc-x1205.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 591, i32 22 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_x1205_driver_exit, ptr @__initcall__kmod_rtc_x1205__297_689_x1205_driver_init6, ptr @x1205_driver_exit, ptr @x1205_fix_osc._entry, ptr @x1205_fix_osc._entry_ptr, ptr @x1205_get_atrim._entry, ptr @x1205_get_atrim._entry_ptr, ptr @x1205_get_datetime._entry, ptr @x1205_get_datetime._entry_ptr, ptr @x1205_get_dtrim._entry, ptr @x1205_get_dtrim._entry_ptr, ptr @x1205_get_status._entry, ptr @x1205_get_status._entry_ptr, ptr @x1205_probe._entry, ptr @x1205_probe._entry.11, ptr @x1205_probe._entry.8, ptr @x1205_probe._entry_ptr, ptr @x1205_probe._entry_ptr.10, ptr @x1205_probe._entry_ptr.13, ptr @x1205_rtc_read_alarm._entry, ptr @x1205_rtc_read_alarm._entry_ptr, ptr @x1205_set_datetime._entry, ptr @x1205_set_datetime._entry.30, ptr @x1205_set_datetime._entry.33, ptr @x1205_set_datetime._entry.36, ptr @x1205_set_datetime._entry.39, ptr @x1205_set_datetime._entry.42, ptr @x1205_set_datetime._entry_ptr, ptr @x1205_set_datetime._entry_ptr.32, ptr @x1205_set_datetime._entry_ptr.35, ptr @x1205_set_datetime._entry_ptr.38, ptr @x1205_set_datetime._entry_ptr.41, ptr @x1205_set_datetime._entry_ptr.44, ptr @x1205_validate_client._entry, ptr @x1205_validate_client._entry.16, ptr @x1205_validate_client._entry.20, ptr @x1205_validate_client._entry_ptr, ptr @x1205_validate_client._entry_ptr.18, ptr @x1205_validate_client._entry_ptr.21, ptr @x1205_driver, ptr @.str, ptr @x1205_dt_ids, ptr @x1205_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @x1205_rtc_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @x1205_validate_client.probe_zero_pattern, ptr @x1205_validate_client.probe_limits_pattern, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @x1205_set_datetime.wel, ptr @x1205_set_datetime.rwel, ptr @x1205_set_datetime.diswe, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @x1205_rtc_read_alarm.int_addr, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @x1205_get_dtrim.dtr_addr, ptr @.str.48, ptr @.str.49, ptr @x1205_get_atrim.atr_addr, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @x1205_get_status.sr_addr, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @dev_attr_atrim, ptr @dev_attr_dtrim, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_validate_client.probe_zero_pattern to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_validate_client.probe_limits_pattern to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_validate_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_validate_client._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_validate_client._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_get_datetime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_set_datetime.wel to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_set_datetime.rwel to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_set_datetime.diswe to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_set_datetime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_set_datetime._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_set_datetime._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_set_datetime._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_set_datetime._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_set_datetime._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_rtc_read_alarm.int_addr to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_rtc_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_get_dtrim.dtr_addr to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_get_dtrim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_get_atrim.atr_addr to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_get_atrim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_get_status.sr_addr to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1205_fix_osc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_atrim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dtrim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @x1205_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @x1205_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @x1205_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @x1205_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1205_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %sr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sr) #7
  %0 = ptrtoint ptr %sr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %sr, align 1, !annotation !168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x1205_probe.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@x1205_probe, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !169

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @x1205_probe.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not = icmp eq i32 %and.i, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %call8 = tail call fastcc i32 @x1205_validate_client(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.i2c_driver, ptr @x1205_driver, i32 0, i32 7), align 4
  %call12 = tail call ptr @devm_rtc_device_register(ptr noundef %dev11, ptr noundef %7, ptr noundef nonnull @x1205_rtc_ops, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %10 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %12 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr1.i, align 2
  %14 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %10, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @x1205_get_status.sr_addr, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %18 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %13, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %20 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sr, ptr %buf6.i, align 4
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.then19, label %do.end30

if.then19:                                        ; preds = %if.end16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  %24 = ptrtoint ptr %sr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sr, align 1
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool20.not = icmp eq i8 %26, 0
  br i1 %tobool20.not, label %if.then19.if.end32_crit_edge, label %do.end24

if.then19.if.end32_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end24:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.5) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 10737400) #7
  call fastcc void @x1205_fix_osc(ptr noundef %client)
  br label %if.end32

do.end30:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.54) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.9) #10
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %do.end24, %if.then19.if.end32_crit_edge
  %call.i58 = call i32 @device_create_file(ptr noundef %dev11, ptr noundef nonnull @dev_attr_atrim) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool.not.i = icmp eq i32 %call.i58, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.do.end39_crit_edge

if.end32.do.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

if.end.i:                                         ; preds = %if.end32
  %call1.i = call i32 @device_create_file(ptr noundef %dev11, ptr noundef nonnull @dev_attr_dtrim) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @device_remove_file(ptr noundef %dev11, ptr noundef nonnull @dev_attr_atrim) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then3.i, %if.end32.do.end39_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.12) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end.i.cleanup_crit_edge, %if.then14, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then14 ], [ -19, %do.end.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ 0, %do.end39 ], [ 0, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1205_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_atrim) #7
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_dtrim) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x1205_validate_client(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %buf = alloca i8, align 1
  %addr = alloca [2 x i8], align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  %reg = alloca i8, align 1
  %addr35 = alloca [2 x i8], align 1
  %msgs40 = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds [2 x i8], ptr %addr, i32 0, i32 1
  %addr3 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %arrayinit.element5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %flags8 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %len9 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %buf10 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = getelementptr inbounds i8, ptr %msgs, i32 4
  br label %for.body

for.cond31.preheader:                             ; preds = %for.inc
  %2 = getelementptr inbounds [2 x i8], ptr %addr35, i32 0, i32 1
  %flags44 = getelementptr inbounds %struct.i2c_msg, ptr %msgs40, i32 0, i32 1
  %len45 = getelementptr inbounds %struct.i2c_msg, ptr %msgs40, i32 0, i32 2
  %buf46 = getelementptr inbounds %struct.i2c_msg, ptr %msgs40, i32 0, i32 3
  %arrayinit.element48 = getelementptr inbounds %struct.i2c_msg, ptr %msgs40, i32 1
  %flags51 = getelementptr inbounds %struct.i2c_msg, ptr %msgs40, i32 1, i32 1
  %len52 = getelementptr inbounds %struct.i2c_msg, ptr %msgs40, i32 1, i32 2
  %buf53 = getelementptr inbounds %struct.i2c_msg, ptr %msgs40, i32 1, i32 3
  %3 = getelementptr inbounds i8, ptr %msgs40, i32 4
  br label %for.body34

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0177 = phi i32 [ 0, %entry ], [ %add30, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #7
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr) #7
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %addr, align 1
  %arrayidx = getelementptr [10 x i8], ptr @x1205_validate_client.probe_zero_pattern, i32 0, i32 %i.0177
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #7
  %9 = call ptr @memset(ptr %1, i32 255, i32 16)
  %10 = ptrtoint ptr %addr3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr3, align 2
  %12 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msgs, align 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags, align 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %len, align 4
  %15 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %addr, ptr %buf4, align 4
  %16 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %11, ptr %arrayinit.element5, align 4
  %17 = ptrtoint ptr %flags8 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags8, align 2
  %18 = ptrtoint ptr %len9 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len9, align 4
  %19 = ptrtoint ptr %buf10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf, ptr %buf10, align 4
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msgs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp12.not = icmp eq i32 %call, 2
  br i1 %cmp12.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv = zext i8 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %conv) #10
  br label %cleanup.thread

if.end:                                           ; preds = %for.body
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf, align 1
  %add = or i32 %i.0177, 1
  %arrayidx15 = getelementptr [10 x i8], ptr @x1205_validate_client.probe_zero_pattern, i32 0, i32 %add
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx15, align 1
  %and163 = and i8 %25, %23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and163)
  %cmp17.not = icmp eq i8 %and163, 0
  br i1 %cmp17.not, label %for.inc, label %do.end22

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv14 = zext i8 %23 to i32
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv25 = zext i8 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %conv25, i32 noundef %i.0177, i32 noundef %conv14) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end22, %do.end
  %retval.1.ph = phi i32 [ -5, %do.end ], [ -19, %do.end22 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  br label %cleanup127

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  %add30 = add nuw nsw i32 %i.0177, 2
  %cmp = icmp ult i32 %i.0177, 8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.cond31.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body34:                                       ; preds = %for.inc125.for.body34_crit_edge, %for.cond31.preheader
  %i.1178 = phi i32 [ 0, %for.cond31.preheader ], [ %inc, %for.inc125.for.body34_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #7
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %reg, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr35) #7
  %27 = ptrtoint ptr %addr35 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %addr35, align 1
  %arrayidx38 = getelementptr [10 x %struct.x1205_limit], ptr @x1205_validate_client.probe_limits_pattern, i32 0, i32 %i.1178
  %28 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx38, align 1
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs40) #7
  %31 = call ptr @memset(ptr %3, i32 255, i32 16)
  %32 = ptrtoint ptr %addr3 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr3, align 2
  %34 = ptrtoint ptr %msgs40 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %msgs40, align 4
  %35 = ptrtoint ptr %flags44 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags44, align 2
  %36 = ptrtoint ptr %len45 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 2, ptr %len45, align 4
  %37 = ptrtoint ptr %buf46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %addr35, ptr %buf46, align 4
  %38 = ptrtoint ptr %arrayinit.element48 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %33, ptr %arrayinit.element48, align 4
  %39 = ptrtoint ptr %flags51 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %flags51, align 2
  %40 = ptrtoint ptr %len52 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %len52, align 4
  %41 = ptrtoint ptr %buf53 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %reg, ptr %buf53, align 4
  %42 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter, align 8
  %call56 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msgs40, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 2
  br i1 %cmp57.not, label %cond.end, label %do.end62

do.end62:                                         ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  %dev63 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv66 = zext i8 %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %conv66) #10
  br label %cleanup119.thread

cond.end:                                         ; preds = %for.body34
  %mask = getelementptr [10 x %struct.x1205_limit], ptr @x1205_validate_client.probe_limits_pattern, i32 0, i32 %i.1178, i32 1
  %44 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mask, align 1
  %46 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %reg, align 1
  %and71162 = and i8 %45, %47
  %call91 = call i32 @_bcd2bin(i8 noundef zeroext %and71162) #11
  %conv93 = and i32 %call91, 255
  %max = getelementptr [10 x %struct.x1205_limit], ptr @x1205_validate_client.probe_limits_pattern, i32 0, i32 %i.1178, i32 3
  %48 = ptrtoint ptr %max to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %max, align 1
  %conv95 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv93, i32 %conv95)
  %cmp96 = icmp ugt i32 %conv93, %conv95
  br i1 %cmp96, label %cond.end.do.body104_crit_edge, label %lor.lhs.false

cond.end.do.body104_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body104

lor.lhs.false:                                    ; preds = %cond.end
  %min = getelementptr [10 x %struct.x1205_limit], ptr @x1205_validate_client.probe_limits_pattern, i32 0, i32 %i.1178, i32 2
  %50 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %min, align 1
  %conv100 = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv93, i32 %conv100)
  %cmp101 = icmp ult i32 %conv93, %conv100
  br i1 %cmp101, label %lor.lhs.false.do.body104_crit_edge, label %for.inc125

lor.lhs.false.do.body104_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body104

do.body104:                                       ; preds = %lor.lhs.false.do.body104_crit_edge, %cond.end.do.body104_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x1205_validate_client.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@x1205_validate_client, %cleanup119.thread)) #7
          to label %if.then109 [label %cleanup119.thread], !srcloc !169

if.then109:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #9
  %dev110 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv113 = zext i8 %29 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @x1205_validate_client.__UNIQUE_ID_ddebug295, ptr noundef %dev110, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.15, i32 noundef %conv113, i32 noundef %i.1178, i32 noundef %conv93) #7
  br label %cleanup119.thread

cleanup119.thread:                                ; preds = %if.then109, %do.body104, %do.end62
  %retval.3.ph = phi i32 [ -19, %if.then109 ], [ -5, %do.end62 ], [ -19, %do.body104 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs40) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr35) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #7
  br label %cleanup127

for.inc125:                                       ; preds = %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs40) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr35) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #7
  %inc = add nuw nsw i32 %i.1178, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.inc125.cleanup127_crit_edge, label %for.inc125.for.body34_crit_edge

for.inc125.for.body34_crit_edge:                  ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body34

for.inc125.cleanup127_crit_edge:                  ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

cleanup127:                                       ; preds = %for.inc125.cleanup127_crit_edge, %cleanup119.thread, %cleanup.thread
  %retval.4 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ %retval.3.ph, %cleanup119.thread ], [ 0, %for.inc125.cleanup127_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @x1205_fix_osc(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #7
  %0 = call ptr @memset(ptr %tm, i32 0, i32 36)
  %call = call fastcc i32 @x1205_set_datetime(ptr noundef %client, ptr noundef nonnull %tm, i8 noundef zeroext 48, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1205_rtc_read_time(ptr noundef %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call fastcc i32 @x1205_get_datetime(ptr noundef %add.ptr, ptr noundef %tm, i8 noundef zeroext 48)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1205_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call fastcc i32 @x1205_set_datetime(ptr noundef %add.ptr, ptr noundef %tm, i8 noundef zeroext 48, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1205_rtc_read_alarm(ptr noundef %dev, ptr nocapture noundef %alrm) #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %intreg = alloca i8, align 1
  %status = alloca i8, align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %intreg) #7
  %0 = ptrtoint ptr %intreg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %intreg, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #7
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %status, align 1, !annotation !168
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #7
  %2 = getelementptr inbounds i8, ptr %msgs, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %addr1 = getelementptr i8, ptr %dev, i32 -30
  %4 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr1, align 2
  %6 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @x1205_rtc_read_alarm.int_addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %5, ptr %arrayinit.element, align 4
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %11 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags4, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %12 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len5, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %13 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %intreg, ptr %buf6, align 4
  %adapter = getelementptr i8, ptr %dev, i32 -8
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msgs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.45) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %16 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 255, i32 16)
  %18 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr1, align 2
  %20 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i, align 2
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2, ptr %16, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @x1205_get_status.sr_addr, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %24 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %19, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %25 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %26 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %27 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %status, ptr %buf6.i, align 4
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.then10, label %x1205_get_status.exit

x1205_get_status.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.54) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  %30 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %status, align 1
  %32 = lshr i8 %31, 5
  %.lobit = and i8 %32, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %33 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.lobit, ptr %pending, align 1
  %34 = ptrtoint ptr %intreg to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %intreg, align 1
  %36 = lshr i8 %35, 5
  %.lobit31 = and i8 %36, 1
  %37 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.lobit31, ptr %alrm, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %call17 = call fastcc i32 @x1205_get_datetime(ptr noundef %add.ptr, ptr noundef %time, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %x1205_get_status.exit, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call17, %if.then10 ], [ -5, %x1205_get_status.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %intreg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1205_rtc_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %0 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %alrm, align 4
  %call = tail call fastcc i32 @x1205_set_datetime(ptr noundef %add.ptr, ptr noundef %time, i8 noundef zeroext 0, i8 noundef zeroext %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1205_rtc_proc(ptr noundef %dev, ptr noundef %seq) #2 align 64 {
entry:
  %dtrim = alloca i32, align 4
  %atrim = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dtrim) #7
  %0 = ptrtoint ptr %dtrim to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dtrim, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %atrim) #7
  %1 = ptrtoint ptr %atrim to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %atrim, align 4, !annotation !168
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = call fastcc i32 @x1205_get_dtrim(ptr noundef %add.ptr, ptr noundef nonnull %dtrim)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dtrim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtrim, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.46, i32 noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = call fastcc i32 @x1205_get_atrim(ptr noundef %add.ptr, ptr noundef nonnull %atrim)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %atrim to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %atrim, align 4
  %.frozen = freeze i32 %5
  %div = sdiv i32 %.frozen, 1000
  %6 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %.frozen, %6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.47, i32 noundef %div, i32 noundef %rem.decomposed) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %atrim) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dtrim) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x1205_get_datetime(ptr noundef %client, ptr nocapture noundef %tm, i8 noundef zeroext %reg_base) unnamed_addr #2 align 64 {
entry:
  %dt_addr = alloca [2 x i8], align 1
  %buf = alloca [8 x i8], align 8
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dt_addr) #7
  %0 = getelementptr inbounds [2 x i8], ptr %dt_addr, i32 0, i32 1
  %1 = ptrtoint ptr %dt_addr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %dt_addr, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %reg_base, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %9 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %buf, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #7
  %11 = getelementptr inbounds i8, ptr %msgs, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %addr2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %13 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr2, align 2
  %15 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %len, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %18 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dt_addr, ptr %buf3, align 4
  %arrayinit.element4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %19 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %14, ptr %arrayinit.element4, align 4
  %flags7 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %20 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags7, align 2
  %len8 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %21 = ptrtoint ptr %len8 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 8, ptr %len8, align 4
  %buf9 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %22 = ptrtoint ptr %buf9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf, ptr %buf9, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msgs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %do.body11, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #10
  br label %cleanup

do.body11:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x1205_get_datetime.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@x1205_get_datetime, %do.end35)) #7
          to label %if.then16 [label %do.end35], !srcloc !169

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf, align 8
  %conv = zext i8 %26 to i32
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %3, align 1
  %conv20 = zext i8 %28 to i32
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %4, align 2
  %conv22 = zext i8 %30 to i32
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %5, align 1
  %conv24 = zext i8 %32 to i32
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %6, align 4
  %conv26 = zext i8 %34 to i32
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %7, align 1
  %conv28 = zext i8 %36 to i32
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %8, align 2
  %conv30 = zext i8 %38 to i32
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %9, align 1
  %conv32 = zext i8 %40 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @x1205_get_datetime.__UNIQUE_ID_ddebug288, ptr noundef %dev17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %conv, i32 noundef %conv20, i32 noundef %conv22, i32 noundef %conv24, i32 noundef %conv26, i32 noundef %conv28, i32 noundef %conv30, i32 noundef %conv32) #7
  br label %do.end35

do.end35:                                         ; preds = %if.then16, %do.body11
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %reg_base)
  %cmp37 = icmp ult i8 %reg_base, 48
  br i1 %cmp37, label %for.body.preheader, label %do.end35.cond.end_crit_edge

do.end35.cond.end_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

for.body.preheader:                               ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %buf, align 8
  %43 = and i8 %42, 127
  store i8 %43, ptr %buf, align 8
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %3, align 1
  %46 = and i8 %45, 127
  store i8 %46, ptr %3, align 1
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %4, align 2
  %49 = and i8 %48, 127
  store i8 %49, ptr %4, align 2
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %5, align 1
  %52 = and i8 %51, 127
  store i8 %52, ptr %5, align 1
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %6, align 4
  %55 = and i8 %54, 127
  store i8 %55, ptr %6, align 4
  br label %cond.end

cond.end:                                         ; preds = %for.body.preheader, %do.end35.cond.end_crit_edge
  %56 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %buf, align 8
  %call53 = call i32 @_bcd2bin(i8 noundef zeroext %57) #11
  %58 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call53, ptr %tm, align 4
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %3, align 1
  %call66 = call i32 @_bcd2bin(i8 noundef zeroext %60) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %61 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call66, ptr %tm_min, align 4
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %4, align 2
  %64 = and i8 %63, 63
  %call89 = call i32 @_bcd2bin(i8 noundef zeroext %64) #11
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %65 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call89, ptr %tm_hour, align 4
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %5, align 1
  %call104 = call i32 @_bcd2bin(i8 noundef zeroext %67) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %68 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call104, ptr %tm_mday, align 4
  %69 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %6, align 4
  %call119 = call i32 @_bcd2bin(i8 noundef zeroext %70) #11
  %sub = add i32 %call119, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %71 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub, ptr %tm_mon, align 4
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %7, align 1
  %call134 = call i32 @_bcd2bin(i8 noundef zeroext %73) #11
  %74 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %9, align 1
  %call149 = call i32 @_bcd2bin(i8 noundef zeroext %75) #11
  %mul152 = mul i32 %call149, 100
  %add153 = add i32 %call134, -1900
  %sub154 = add i32 %add153, %mul152
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %76 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub154, ptr %tm_year, align 4
  %77 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %8, align 2
  %conv156 = zext i8 %78 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %79 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv156, ptr %tm_wday, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x1205_get_datetime.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@x1205_get_datetime, %cleanup)) #7
          to label %if.then171 [label %cleanup], !srcloc !169

if.then171:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev172 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %80 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tm, align 4
  %82 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tm_min, align 4
  %84 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tm_hour, align 4
  %86 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tm_mday, align 4
  %88 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tm_mon, align 4
  %90 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tm_year, align 4
  %92 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tm_wday, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @x1205_get_datetime.__UNIQUE_ID_ddebug289, ptr noundef %dev172, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then171, %cond.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then171 ], [ 0, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dt_addr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x1205_set_datetime(ptr noundef %client, ptr nocapture noundef readonly %tm, i8 noundef zeroext %reg_base, i8 noundef zeroext %alm_enable) unnamed_addr #2 align 64 {
entry:
  %rdata = alloca [10 x i8], align 1
  %al0e = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %rdata) #7
  %0 = getelementptr inbounds [10 x i8], ptr %rdata, i32 0, i32 1
  %1 = getelementptr inbounds [10 x i8], ptr %rdata, i32 0, i32 2
  %2 = getelementptr inbounds [10 x i8], ptr %rdata, i32 0, i32 3
  %3 = getelementptr inbounds [10 x i8], ptr %rdata, i32 0, i32 4
  %4 = getelementptr inbounds [10 x i8], ptr %rdata, i32 0, i32 5
  %5 = getelementptr inbounds [10 x i8], ptr %rdata, i32 0, i32 6
  %6 = getelementptr inbounds [10 x i8], ptr %rdata, i32 0, i32 7
  %7 = getelementptr inbounds [10 x i8], ptr %rdata, i32 0, i32 8
  %8 = getelementptr inbounds [10 x i8], ptr %rdata, i32 0, i32 9
  %9 = ptrtoint ptr %rdata to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %rdata, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %reg_base, ptr %0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x1205_set_datetime.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@x1205_set_datetime, %cond.end)) #7
          to label %if.then [label %cond.end], !srcloc !169

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %11 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %17 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %19 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %21 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_year, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %23 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @x1205_set_datetime.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #7
  br label %cond.end

cond.end:                                         ; preds = %if.then, %entry
  %25 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm, align 4
  %call9 = tail call zeroext i8 @_bin2bcd(i32 noundef %26) #11
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call9, ptr %1, align 1
  %tm_min12 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %28 = ptrtoint ptr %tm_min12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_min12, align 4
  %call23 = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #11
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call23, ptr %2, align 1
  %tm_hour29 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %31 = ptrtoint ptr %tm_hour29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_hour29, align 4
  %call40 = tail call zeroext i8 @_bin2bcd(i32 noundef %32) #11
  %conv44 = or i8 %call40, -128
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv44, ptr %3, align 1
  %tm_mday46 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %34 = ptrtoint ptr %tm_mday46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_mday46, align 4
  %call57 = tail call zeroext i8 @_bin2bcd(i32 noundef %35) #11
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call57, ptr %4, align 1
  %tm_mon63 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %37 = ptrtoint ptr %tm_mon63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tm_mon63, align 4
  %add64 = add i32 %38, 1
  %call78 = tail call zeroext i8 @_bin2bcd(i32 noundef %add64) #11
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %call78, ptr %5, align 1
  %tm_year84 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %40 = ptrtoint ptr %tm_year84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_year84, align 4
  %rem85 = srem i32 %41, 100
  %call99 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem85) #11
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %call99, ptr %6, align 1
  %tm_wday105 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %43 = ptrtoint ptr %tm_wday105 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tm_wday105, align 4
  %45 = trunc i32 %44 to i8
  %conv106 = and i8 %45, 7
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv106, ptr %7, align 1
  %add109 = add i32 %41, 1900
  %div110 = sdiv i32 %add109, 100
  %call127 = tail call zeroext i8 @_bin2bcd(i32 noundef %div110) #11
  %47 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %call127, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %reg_base)
  %cmp = icmp ult i8 %reg_base, 48
  br i1 %cmp, label %for.body.preheader, label %cond.end.if.end142_crit_edge

cond.end.if.end142_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

for.body.preheader:                               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %1, align 1
  %50 = or i8 %49, -128
  store i8 %50, ptr %1, align 1
  %arrayidx138.1 = getelementptr inbounds [10 x i8], ptr %rdata, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx138.1 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx138.1, align 1
  %53 = or i8 %52, -128
  store i8 %53, ptr %arrayidx138.1, align 1
  %arrayidx138.2 = getelementptr inbounds [10 x i8], ptr %rdata, i32 0, i32 4
  %54 = ptrtoint ptr %arrayidx138.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx138.2, align 1
  %56 = or i8 %55, -128
  store i8 %56, ptr %arrayidx138.2, align 1
  %arrayidx138.3 = getelementptr inbounds [10 x i8], ptr %rdata, i32 0, i32 5
  %57 = ptrtoint ptr %arrayidx138.3 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx138.3, align 1
  %59 = or i8 %58, -128
  store i8 %59, ptr %arrayidx138.3, align 1
  %arrayidx138.4 = getelementptr inbounds [10 x i8], ptr %rdata, i32 0, i32 6
  %60 = ptrtoint ptr %arrayidx138.4 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx138.4, align 1
  %62 = or i8 %61, -128
  store i8 %62, ptr %arrayidx138.4, align 1
  br label %if.end142

if.end142:                                        ; preds = %for.body.preheader, %cond.end.if.end142_crit_edge
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull @x1205_set_datetime.wel, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp144.not = icmp eq i32 %call.i, 3
  br i1 %cmp144.not, label %if.end151, label %do.end149

do.end149:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  %dev150 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev150, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %call.i) #10
  br label %cleanup212

if.end151:                                        ; preds = %if.end142
  %call.i287 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull @x1205_set_datetime.rwel, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i287)
  %cmp153.not = icmp eq i32 %call.i287, 3
  br i1 %cmp153.not, label %if.end160, label %do.end158

do.end158:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  %dev159 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev159, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27, i32 noundef %call.i287) #10
  br label %cleanup212

if.end160:                                        ; preds = %if.end151
  %call.i288 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %rdata, i32 noundef 10, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call.i288)
  %cmp163.not = icmp eq i32 %call.i288, 10
  br i1 %cmp163.not, label %if.end174, label %do.end168

do.end168:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  %dev169 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %0, align 1
  %conv171 = zext i8 %64 to i32
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %1, align 1
  %conv173 = zext i8 %66 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev169, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, i32 noundef %call.i288, i32 noundef %conv171, i32 noundef %conv173) #10
  br label %cleanup212

if.end174:                                        ; preds = %if.end160
  br i1 %cmp, label %if.then178, label %if.end174.if.end202_crit_edge

if.end174.if.end202_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end202

if.then178:                                       ; preds = %if.end174
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %al0e) #7
  %67 = call ptr @memcpy(ptr %al0e, ptr @__const.x1205_set_datetime.al0e, i32 3)
  call void @msleep(i32 noundef 10) #7
  %call.i289 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull @x1205_set_datetime.rwel, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i289)
  %cmp180.not = icmp eq i32 %call.i289, 3
  br i1 %cmp180.not, label %if.end187, label %do.end185

do.end185:                                        ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #9
  %dev186 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev186, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, i32 noundef %call.i289) #10
  br label %cleanup

if.end187:                                        ; preds = %if.then178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %alm_enable)
  %tobool188.not = icmp eq i8 %alm_enable, 0
  br i1 %tobool188.not, label %if.end187.if.end191_crit_edge, label %if.then189

if.end187.if.end191_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.then189:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx190 = getelementptr inbounds [3 x i8], ptr %al0e, i32 0, i32 2
  %68 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 32, ptr %arrayidx190, align 1
  br label %if.end191

if.end191:                                        ; preds = %if.then189, %if.end187.if.end191_crit_edge
  %call.i290 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %al0e, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i290)
  %cmp194.not = icmp eq i32 %call.i290, 3
  br i1 %cmp194.not, label %if.end201, label %do.end199

do.end199:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #9
  %dev200 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev200, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.27, i32 noundef %call.i290) #10
  br label %cleanup

if.end201:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 10) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %al0e) #7
  br label %if.end202

cleanup:                                          ; preds = %do.end199, %do.end185
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %al0e) #7
  br label %cleanup212

if.end202:                                        ; preds = %if.end201, %if.end174.if.end202_crit_edge
  %call.i291 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull @x1205_set_datetime.diswe, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i291)
  %cmp204.not = icmp eq i32 %call.i291, 3
  br i1 %cmp204.not, label %if.end202.cleanup212_crit_edge, label %do.end209

if.end202.cleanup212_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup212

do.end209:                                        ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #9
  %dev210 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev210, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.27, i32 noundef %call.i291) #10
  br label %cleanup212

cleanup212:                                       ; preds = %do.end209, %if.end202.cleanup212_crit_edge, %cleanup, %do.end168, %do.end158, %do.end149
  %retval.1 = phi i32 [ -5, %do.end149 ], [ -5, %do.end158 ], [ -5, %do.end168 ], [ -5, %do.end209 ], [ -5, %cleanup ], [ 0, %if.end202.cleanup212_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %rdata) #7
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x1205_get_dtrim(ptr noundef %client, ptr nocapture noundef %trim) unnamed_addr #2 align 64 {
entry:
  %dtr = alloca i8, align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dtr) #7
  %0 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %dtr, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #7
  %1 = getelementptr inbounds i8, ptr %msgs, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr1, align 2
  %5 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @x1205_get_dtrim.dtr_addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %4, ptr %arrayinit.element, align 4
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %10 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags4, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %11 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %len5, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %12 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dtr, ptr %buf6, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msgs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %do.body7, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.48) #10
  br label %cleanup

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x1205_get_dtrim.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@x1205_get_dtrim, %do.end16)) #7
          to label %if.then12 [label %do.end16], !srcloc !169

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %15 = ptrtoint ptr %dtr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dtr, align 1
  %conv = zext i8 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @x1205_get_dtrim.__UNIQUE_ID_ddebug291, ptr noundef %dev13, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef %conv) #7
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body7
  %17 = ptrtoint ptr %dtr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dtr, align 1
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not = icmp eq i8 %19, 0
  %spec.store.select = select i1 %tobool18.not, i32 0, i32 20
  %20 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool23.not = icmp eq i8 %20, 0
  %add25 = or i32 %spec.store.select, 10
  %spec.select = select i1 %tobool23.not, i32 %spec.store.select, i32 %add25
  %21 = ptrtoint ptr %trim to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %trim, align 4
  %22 = and i8 %18, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool29.not = icmp eq i8 %22, 0
  br i1 %tobool29.not, label %do.end16.cleanup_crit_edge, label %if.then30

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then30:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %trim to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %trim, align 4
  %sub = sub i32 0, %24
  store i32 %sub, ptr %trim, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.end16.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then30 ], [ 0, %do.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dtr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x1205_get_atrim(ptr noundef %client, ptr nocapture noundef %trim) unnamed_addr #2 align 64 {
entry:
  %atr = alloca i8, align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %atr) #7
  %0 = ptrtoint ptr %atr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %atr, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #7
  %1 = getelementptr inbounds i8, ptr %msgs, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr1, align 2
  %5 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @x1205_get_atrim.atr_addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %4, ptr %arrayinit.element, align 4
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %10 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags4, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %11 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %len5, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %12 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %atr, ptr %buf6, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msgs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %do.body7, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.50) #10
  br label %cleanup

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x1205_get_atrim.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@x1205_get_atrim, %do.end16)) #7
          to label %if.then12 [label %do.end16], !srcloc !169

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %15 = ptrtoint ptr %atr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %atr, align 1
  %conv = sext i8 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @x1205_get_atrim.__UNIQUE_ID_ddebug292, ptr noundef %dev13, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef %conv) #7
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body7
  %17 = ptrtoint ptr %atr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %atr, align 1
  %conv1778 = zext i8 %18 to i32
  %shl.i = shl i32 %conv1778, 26
  %shr.i = ashr exact i32 %shl.i, 26
  %conv19 = trunc i32 %shr.i to i8
  store i8 %conv19, ptr %atr, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x1205_get_atrim.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@x1205_get_atrim, %do.end40)) #7
          to label %if.then34 [label %do.end40], !srcloc !169

if.then34:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %19 = ptrtoint ptr %atr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %atr, align 1
  %conv36 = sext i8 %20 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @x1205_get_atrim.__UNIQUE_ID_ddebug293, ptr noundef %dev35, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef %conv36, i32 noundef %conv36) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then34, %do.end16
  %21 = ptrtoint ptr %atr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %atr, align 1
  %conv41 = sext i8 %22 to i32
  %mul = mul nsw i32 %conv41, 250
  %add = add nsw i32 %mul, 11000
  %23 = ptrtoint ptr %trim to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %trim, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x1205_get_atrim.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@x1205_get_atrim, %cleanup)) #7
          to label %if.then56 [label %cleanup], !srcloc !169

if.then56:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  %dev57 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %24 = ptrtoint ptr %trim to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %trim, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @x1205_get_atrim.__UNIQUE_ID_ddebug294, ptr noundef %dev57, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50, i32 noundef %25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %do.end40, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then56 ], [ 0, %do.end40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %atr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1205_sysfs_show_atrim(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %atrim = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %atrim) #7
  %0 = ptrtoint ptr %atrim to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %atrim, align 4, !annotation !168
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = call fastcc i32 @x1205_get_atrim(ptr noundef %add.ptr, ptr noundef nonnull %atrim)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %atrim to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %atrim, align 4
  %.frozen = freeze i32 %2
  %div = sdiv i32 %.frozen, 1000
  %3 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %.frozen, %3
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.58, i32 noundef %div, i32 noundef %rem.decomposed)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %atrim) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1205_sysfs_show_dtrim(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %dtrim = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dtrim) #7
  %0 = ptrtoint ptr %dtrim to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dtrim, align 4, !annotation !168
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = call fastcc i32 @x1205_get_dtrim(ptr noundef %add.ptr, ptr noundef nonnull %dtrim)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %dtrim to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dtrim, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.60, i32 noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dtrim) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !57, !58, !59, !60, !62, !63, !65, !66, !68, !70, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !105, !106, !108, !110, !112, !114, !115, !116, !118, !119, !121, !123, !124, !125, !127, !128, !130, !131, !133, !134, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !150, !152, !153, !155, !157}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__initcall__kmod_rtc_x1205__297_689_x1205_driver_init6, !1, !"__initcall__kmod_rtc_x1205__297_689_x1205_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-x1205.c", i32 689, i32 1}
!2 = !{ptr @__exitcall_x1205_driver_exit, !1, !"__exitcall_x1205_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author298, !4, !"__UNIQUE_ID_author298", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-x1205.c", i32 691, i32 1}
!5 = !{ptr @__UNIQUE_ID_description299, !6, !"__UNIQUE_ID_description299", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-x1205.c", i32 694, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-x1205.c", i32 695, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-x1205.c", i32 681, i32 11}
!12 = !{ptr @x1205_driver, !13, !"x1205_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-x1205.c", i32 679, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-x1205.c", i32 624, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @x1205_probe.__UNIQUE_ID_ddebug296, !15, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-x1205.c", i32 644, i32 4}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @x1205_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @x1205_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-x1205.c", i32 651, i32 3}
!28 = !{ptr @x1205_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @x1205_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-x1205.c", i32 656, i32 3}
!32 = !{ptr @x1205_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @x1205_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @x1205_validate_client.probe_zero_pattern, !35, !"probe_zero_pattern", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-x1205.c", i32 387, i32 29}
!36 = !{ptr @x1205_validate_client.probe_limits_pattern, !37, !"probe_limits_pattern", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-x1205.c", i32 396, i32 34}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-x1205.c", i32 432, i32 4}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @x1205_validate_client._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @x1205_validate_client._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-x1205.c", i32 440, i32 4}
!45 = !{ptr @x1205_validate_client._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @x1205_validate_client._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @x1205_validate_client._entry.20, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-x1205.c", i32 470, i32 4}
!49 = !{ptr @x1205_validate_client._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-x1205.c", i32 481, i32 4}
!52 = !{ptr @x1205_validate_client.__UNIQUE_ID_ddebug295, !51, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!53 = !{ptr @x1205_rtc_ops, !54, !"x1205_rtc_ops", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-x1205.c", i32 561, i32 35}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-x1205.c", i32 111, i32 3}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @x1205_get_datetime._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @x1205_get_datetime._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-x1205.c", i32 115, i32 2}
!62 = !{ptr @x1205_get_datetime.__UNIQUE_ID_ddebug288, !61, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-x1205.c", i32 136, i32 2}
!65 = !{ptr @x1205_get_datetime.__UNIQUE_ID_ddebug289, !64, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!66 = !{ptr @x1205_set_datetime.wel, !67, !"wel", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-x1205.c", i32 179, i32 29}
!68 = !{ptr @x1205_set_datetime.rwel, !69, !"rwel", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-x1205.c", i32 182, i32 29}
!70 = !{ptr @x1205_set_datetime.diswe, !71, !"diswe", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-x1205.c", i32 185, i32 29}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/rtc/rtc-x1205.c", i32 187, i32 2}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @x1205_set_datetime.__UNIQUE_ID_ddebug290, !73, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/rtc/rtc-x1205.c", i32 216, i32 3}
!78 = !{ptr @x1205_set_datetime._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @x1205_set_datetime._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-x1205.c", i32 222, i32 3}
!82 = !{ptr @x1205_set_datetime._entry.30, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @x1205_set_datetime._entry_ptr.32, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/rtc/rtc-x1205.c", i32 228, i32 3}
!86 = !{ptr @x1205_set_datetime._entry.33, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @x1205_set_datetime._entry_ptr.35, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/rtc/rtc-x1205.c", i32 246, i32 4}
!90 = !{ptr @x1205_set_datetime._entry.36, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @x1205_set_datetime._entry_ptr.38, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/rtc/rtc-x1205.c", i32 258, i32 4}
!94 = !{ptr @x1205_set_datetime._entry.39, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @x1205_set_datetime._entry_ptr.41, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/rtc/rtc-x1205.c", i32 272, i32 3}
!98 = !{ptr @x1205_set_datetime._entry.42, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @x1205_set_datetime._entry_ptr.44, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @x1205_rtc_read_alarm.int_addr, !101, !"int_addr", i1 false, i1 false}
!101 = !{!"../drivers/rtc/rtc-x1205.c", i32 497, i32 23}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/rtc/rtc-x1205.c", i32 516, i32 3}
!104 = !{ptr @x1205_rtc_read_alarm._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @x1205_rtc_read_alarm._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/rtc/rtc-x1205.c", i32 552, i32 19}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/rtc/rtc-x1205.c", i32 556, i32 19}
!110 = !{ptr @x1205_get_dtrim.dtr_addr, !111, !"dtr_addr", i1 false, i1 false}
!111 = !{!"../drivers/rtc/rtc-x1205.c", i32 296, i32 23}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/rtc/rtc-x1205.c", i32 314, i32 3}
!114 = !{ptr @x1205_get_dtrim._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @x1205_get_dtrim._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/rtc/rtc-x1205.c", i32 318, i32 2}
!118 = !{ptr @x1205_get_dtrim.__UNIQUE_ID_ddebug291, !117, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!119 = !{ptr @x1205_get_atrim.atr_addr, !120, !"atr_addr", i1 false, i1 false}
!120 = !{!"../drivers/rtc/rtc-x1205.c", i32 337, i32 23}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/rtc/rtc-x1205.c", i32 355, i32 3}
!123 = !{ptr @x1205_get_atrim._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @x1205_get_atrim._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/rtc/rtc-x1205.c", i32 359, i32 2}
!127 = !{ptr @x1205_get_atrim.__UNIQUE_ID_ddebug292, !126, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/rtc/rtc-x1205.c", i32 367, i32 2}
!130 = !{ptr @x1205_get_atrim.__UNIQUE_ID_ddebug293, !129, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/rtc/rtc-x1205.c", i32 371, i32 2}
!133 = !{ptr @x1205_get_atrim.__UNIQUE_ID_ddebug294, !132, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!134 = !{ptr @x1205_get_status.sr_addr, !135, !"sr_addr", i1 false, i1 false}
!135 = !{!"../drivers/rtc/rtc-x1205.c", i32 147, i32 23}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/rtc/rtc-x1205.c", i32 165, i32 3}
!138 = !{ptr @x1205_get_status._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @x1205_get_status._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/rtc/rtc-x1205.c", i32 288, i32 3}
!142 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @x1205_fix_osc._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @x1205_fix_osc._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/rtc/rtc-x1205.c", i32 580, i32 8}
!147 = !{ptr @dev_attr_atrim, !146, !"dev_attr_atrim", i1 false, i1 false}
!148 = !{ptr @.str.58, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/rtc/rtc-x1205.c", i32 578, i32 22}
!150 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/rtc/rtc-x1205.c", i32 593, i32 8}
!152 = !{ptr @dev_attr_dtrim, !151, !"dev_attr_dtrim", i1 false, i1 false}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/rtc/rtc-x1205.c", i32 591, i32 22}
!155 = !{ptr @x1205_dt_ids, !156, !"x1205_dt_ids", i1 false, i1 false}
!156 = !{!"../drivers/rtc/rtc-x1205.c", i32 673, i32 34}
!157 = !{ptr @x1205_id, !158, !"x1205_id", i1 false, i1 false}
!158 = !{!"../drivers/rtc/rtc-x1205.c", i32 667, i32 35}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{!"auto-init"}
!169 = !{i64 2149001490, i64 2149001495, i64 2149001508, i64 2149001552, i64 2149001586, i64 2149001607}
