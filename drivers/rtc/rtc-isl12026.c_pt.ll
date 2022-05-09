; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-isl12026.c_pt.bc'
source_filename = "../drivers/rtc/rtc-isl12026.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.isl12026 = type { ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_isl12026__292_498_isl12026_driver_init6 = internal global ptr @isl12026_driver_init, section ".initcall6.init", align 4
@isl12026_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @isl12026_remove, ptr @isl12026_probe_new, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @isl12026_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_isl12026_driver_exit = internal global ptr @isl12026_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [46 x i8] c"rtc_isl12026.description=ISL 12026 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [43 x i8] c"rtc_isl12026.file=drivers/rtc/rtc-isl12026\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [25 x i8] c"rtc_isl12026.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc-isl12026\00", [19 x i8] zeroinitializer }, align 32
@isl12026_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl12026\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"isl12026-\00", [22 x i8] zeroinitializer }, align 32
@isl12026_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @isl12026_rtc_read_time, ptr @isl12026_rtc_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@isl12026_nvm_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 315, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvmem read error, ret=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isl12026_nvm_read\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/rtc/rtc-isl12026.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isl12026_nvm_read._entry_ptr = internal global ptr @isl12026_nvm_read._entry, section ".printk_index", align 4
@isl12026_nvm_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 363, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvmem write error, ret=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isl12026_nvm_write\00", [45 x i8] zeroinitializer }, align 32
@isl12026_nvm_write._entry_ptr = internal global ptr @isl12026_nvm_write._entry, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"isil,pwr-bsw\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isil,pwr-sbib\00", [18 x i8] zeroinitializer }, align 32
@isl12026_force_power_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 405, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: Failed to read PWR %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"isl12026_force_power_modes\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@isl12026_force_power_modes._entry_ptr = internal global ptr @isl12026_force_power_modes._entry, section ".printk_index", align 4
@isl12026_force_power_modes.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.12, ptr @.str.4, ptr @.str.15, i8 0, i8 106, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc_isl12026\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PWR: %02x\0A\00", [21 x i8] zeroinitializer }, align 32
@isl12026_force_power_modes.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.12, ptr @.str.4, ptr @.str.16, i8 0, i8 106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Updating PWR to: %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@isl12026_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 65, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"read reg error, ret=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isl12026_read_reg\00", [46 x i8] zeroinitializer }, align 32
@isl12026_read_reg._entry_ptr = internal global ptr @isl12026_read_reg._entry, section ".printk_index", align 4
@isl12026_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 153, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"write error CCR, ret=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isl12026_write_reg\00", [45 x i8] zeroinitializer }, align 32
@isl12026_write_reg._entry_ptr = internal global ptr @isl12026_write_reg._entry, section ".printk_index", align 4
@isl12026_arm_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 92, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"write error SR.WEL, ret=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isl12026_arm_write\00", [45 x i8] zeroinitializer }, align 32
@isl12026_arm_write._entry_ptr = internal global ptr @isl12026_arm_write._entry, section ".printk_index", align 4
@isl12026_arm_write._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 103, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"write error SR.WEL|SR.RWEL, ret=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@isl12026_arm_write._entry_ptr.25 = internal global ptr @isl12026_arm_write._entry.23, section ".printk_index", align 4
@__const.isl12026_disarm_write.op = private unnamed_addr constant [3 x i8] c"\00?\00", align 1
@isl12026_disarm_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 127, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"write error SR, ret=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isl12026_disarm_write\00", [42 x i8] zeroinitializer }, align 32
@isl12026_disarm_write._entry_ptr = internal global ptr @isl12026_disarm_write._entry, section ".printk_index", align 4
@isl12026_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 231, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"read error, ret=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isl12026_rtc_read_time\00", [41 x i8] zeroinitializer }, align 32
@isl12026_rtc_read_time._entry_ptr = internal global ptr @isl12026_rtc_read_time._entry, section ".printk_index", align 4
@isl12026_rtc_read_time._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 237, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Real-Time Clock Failure on read\0A\00", [63 x i8] zeroinitializer }, align 32
@isl12026_rtc_read_time._entry_ptr.32 = internal global ptr @isl12026_rtc_read_time._entry.30, section ".printk_index", align 4
@isl12026_rtc_read_time._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.4, i32 239, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Oscillator Failure on read\0A\00", [36 x i8] zeroinitializer }, align 32
@isl12026_rtc_read_time._entry_ptr.35 = internal global ptr @isl12026_rtc_read_time._entry.33, section ".printk_index", align 4
@isl12026_rtc_read_time._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 249, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@isl12026_rtc_read_time._entry_ptr.37 = internal global ptr @isl12026_rtc_read_time._entry.36, section ".printk_index", align 4
@isl12026_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.38, ptr @.str.4, i32 194, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isl12026_rtc_set_time\00", [42 x i8] zeroinitializer }, align 32
@isl12026_rtc_set_time._entry_ptr = internal global ptr @isl12026_rtc_set_time._entry, section ".printk_index", align 4
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"isl12026_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 489, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 491, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"isl12026_dt_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 483, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 437, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"isl12026_rtc_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 273, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 314, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 362, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 392, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 396, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 405, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 426, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 427, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 65, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 153, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 92, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 102, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 126, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 231, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 237, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 239, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 249, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [30 x i8] c"../drivers/rtc/rtc-isl12026.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 194, i32 3 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_isl12026_driver_exit, ptr @__initcall__kmod_rtc_isl12026__292_498_isl12026_driver_init6, ptr @isl12026_arm_write._entry, ptr @isl12026_arm_write._entry.23, ptr @isl12026_arm_write._entry_ptr, ptr @isl12026_arm_write._entry_ptr.25, ptr @isl12026_disarm_write._entry, ptr @isl12026_disarm_write._entry_ptr, ptr @isl12026_driver_exit, ptr @isl12026_force_power_modes._entry, ptr @isl12026_force_power_modes._entry_ptr, ptr @isl12026_nvm_read._entry, ptr @isl12026_nvm_read._entry_ptr, ptr @isl12026_nvm_write._entry, ptr @isl12026_nvm_write._entry_ptr, ptr @isl12026_read_reg._entry, ptr @isl12026_read_reg._entry_ptr, ptr @isl12026_rtc_read_time._entry, ptr @isl12026_rtc_read_time._entry.30, ptr @isl12026_rtc_read_time._entry.33, ptr @isl12026_rtc_read_time._entry.36, ptr @isl12026_rtc_read_time._entry_ptr, ptr @isl12026_rtc_read_time._entry_ptr.32, ptr @isl12026_rtc_read_time._entry_ptr.35, ptr @isl12026_rtc_read_time._entry_ptr.37, ptr @isl12026_rtc_set_time._entry, ptr @isl12026_rtc_set_time._entry_ptr, ptr @isl12026_write_reg._entry, ptr @isl12026_write_reg._entry_ptr, ptr @isl12026_driver, ptr @.str, ptr @isl12026_dt_match, ptr @.str.1, ptr @isl12026_rtc_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.38], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_nvm_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_nvm_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_force_power_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_arm_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_arm_write._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_disarm_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_rtc_read_time._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_rtc_read_time._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_rtc_read_time._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl12026_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isl12026_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @isl12026_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isl12026_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @isl12026_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl12026_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nvm_client = getelementptr inbounds %struct.isl12026, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nvm_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvm_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl12026_probe_new(ptr noundef %client) #2 align 64 {
entry:
  %nvm_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvm_cfg) #7
  %0 = getelementptr inbounds i8, ptr %nvm_cfg, i32 40
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %nvm_cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %nvm_cfg, align 4
  %name = getelementptr inbounds %struct.nvmem_config, ptr %nvm_cfg, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %name, align 4
  %id = getelementptr inbounds %struct.nvmem_config, ptr %nvm_cfg, i32 0, i32 2
  %of_node = getelementptr inbounds %struct.nvmem_config, ptr %nvm_cfg, i32 0, i32 13
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %of_node, align 4
  %no_of_node = getelementptr inbounds %struct.nvmem_config, ptr %nvm_cfg, i32 0, i32 14
  %5 = ptrtoint ptr %no_of_node to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %no_of_node, align 4
  %reg_read = getelementptr inbounds %struct.nvmem_config, ptr %nvm_cfg, i32 0, i32 15
  %6 = call ptr @memset(ptr %id, i32 0, i32 35)
  %7 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @isl12026_nvm_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.nvmem_config, ptr %nvm_cfg, i32 0, i32 16
  %8 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @isl12026_nvm_write, ptr %reg_write, align 4
  %cell_post_process = getelementptr inbounds %struct.nvmem_config, ptr %nvm_cfg, i32 0, i32 17
  %9 = ptrtoint ptr %cell_post_process to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cell_post_process, align 4
  %size = getelementptr inbounds %struct.nvmem_config, ptr %nvm_cfg, i32 0, i32 18
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 512, ptr %size, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %nvm_cfg, i32 0, i32 19
  %11 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %word_size, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %nvm_cfg, i32 0, i32 20
  %12 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %stride, align 4
  %priv1 = getelementptr inbounds %struct.nvmem_config, ptr %nvm_cfg, i32 0, i32 21
  %13 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %priv1, align 4
  %compat = getelementptr inbounds %struct.nvmem_config, ptr %nvm_cfg, i32 0, i32 22
  %14 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %compat, align 4
  %base_dev = getelementptr inbounds %struct.nvmem_config, ptr %nvm_cfg, i32 0, i32 23
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %15 = ptrtoint ptr %base_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev2, ptr %base_dev, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %21(ptr noundef %17) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 8, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call fastcc void @isl12026_force_power_modes(ptr noundef %client)
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %call9 = tail call ptr @i2c_new_dummy_device(ptr noundef %24, i16 noundef zeroext 87) #7
  %nvm_client = getelementptr inbounds %struct.isl12026, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %nvm_client to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9, ptr %nvm_client, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call17 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev2) #7
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call17, ptr %call.i, align 4
  %cmp.i.i.not = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  %28 = ptrtoint ptr %call17 to i32
  br i1 %cmp.i.i.not, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call17, i32 0, i32 3
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @isl12026_rtc_ops, ptr %ops, align 8
  %30 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %priv1, align 4
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %call26 = call i32 @devm_rtc_nvmem_register(ptr noundef %32, ptr noundef nonnull %nvm_cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %call31 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %34) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end22.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.then12 ], [ %call31, %if.end29 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %28, %if.end15.cleanup_crit_edge ], [ %call26, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvm_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl12026_nvm_read(ptr nocapture noundef readonly %p, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  %addr = alloca [2 x i8], align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr) #7
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %addr, align 1, !annotation !101
  %1 = getelementptr inbounds [2 x i8], ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !101
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #7
  %3 = getelementptr inbounds i8, ptr %msgs, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %nvm_client = getelementptr inbounds %struct.isl12026, ptr %p, i32 0, i32 1
  %5 = ptrtoint ptr %nvm_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nvm_client, align 4
  %addr2 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr2, align 2
  %9 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %13 = load i16, ptr %addr2, align 2
  %14 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %15 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags6, align 2
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %16 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %val, ptr %buf8, align 4
  %17 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %18, i32 0, i32 4
  %call = call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %shr = lshr i32 %offset, 8
  %conv = trunc i32 %shr to i8
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %addr, align 1
  %conv9 = trunc i32 %offset to i8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv9, ptr %1, align 1
  %conv11 = trunc i32 %bytes to i16
  %21 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv11, ptr %len7, align 4
  %22 = ptrtoint ptr %nvm_client to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nvm_client, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %call16 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msgs, i32 noundef 2) #7
  %26 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p, align 4
  %ops_lock18 = getelementptr inbounds %struct.rtc_device, ptr %27, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %ops_lock18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16)
  %cmp.not = icmp eq i32 %call16, 2
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %nvm_client to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nvm_client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp22 = icmp slt i32 %call16, 0
  %spec.select = select i1 %cmp22, i32 %call16, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl12026_nvm_write(ptr nocapture noundef readonly %p, i32 noundef %offset, ptr nocapture noundef readonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  %payload = alloca [18 x i8], align 1
  %msgs = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %payload) #7
  %0 = getelementptr inbounds [18 x i8], ptr %payload, i32 0, i32 1
  %1 = getelementptr inbounds [18 x i8], ptr %payload, i32 0, i32 2
  %2 = call ptr @memset(ptr %payload, i32 255, i32 18)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #7
  %3 = getelementptr inbounds i8, ptr %msgs, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %nvm_client = getelementptr inbounds %struct.isl12026, ptr %p, i32 0, i32 1
  %5 = ptrtoint ptr %nvm_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nvm_client, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr1, align 2
  %9 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %payload, ptr %buf, align 4
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %14, i32 0, i32 4
  %call = call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool2.not60 = icmp eq i32 %bytes, 0
  br i1 %tobool2.not60, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %num_written.063 = phi i32 [ %add27, %if.end24.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %bytes.addr.062 = phi i32 [ %sub25, %if.end24.while.body_crit_edge ], [ %bytes, %while.cond.preheader.while.body_crit_edge ]
  %offset.addr.061 = phi i32 [ %add26, %if.end24.while.body_crit_edge ], [ %offset, %while.cond.preheader.while.body_crit_edge ]
  %15 = add i32 %offset.addr.061, 16
  %add = and i32 %15, -16
  %sub = sub i32 %add, %offset.addr.061
  %16 = call i32 @llvm.umin.i32(i32 %bytes.addr.062, i32 %sub)
  %add.ptr4 = getelementptr i8, ptr %val, i32 %num_written.063
  %17 = call ptr @memcpy(ptr %1, ptr %add.ptr4, i32 %16)
  %shr = lshr i32 %offset.addr.061, 8
  %conv = trunc i32 %shr to i8
  %18 = ptrtoint ptr %payload to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %payload, align 1
  %conv5 = trunc i32 %offset.addr.061 to i8
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv5, ptr %0, align 1
  %20 = trunc i32 %16 to i16
  %conv8 = add i16 %20, 2
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv8, ptr %len, align 4
  %22 = ptrtoint ptr %nvm_client to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nvm_client, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %call13 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msgs, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 1
  br i1 %cmp14.not, label %if.end24, label %do.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %nvm_client to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nvm_client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp18 = icmp slt i32 %call13, 0
  %spec.select = select i1 %cmp18, i32 %call13, i32 -5
  br label %while.end

if.end24:                                         ; preds = %while.body
  %sub25 = sub i32 %bytes.addr.062, %16
  %add26 = add i32 %16, %offset.addr.061
  %add27 = add i32 %16, %num_written.063
  call void @msleep(i32 noundef 20) #7
  %tobool2.not = icmp eq i32 %sub25, 0
  br i1 %tobool2.not, label %if.end24.while.end_crit_edge, label %if.end24.while.body_crit_edge

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end24.while.end_crit_edge, %do.end, %while.cond.preheader.while.end_crit_edge
  %ret.1 = phi i32 [ %spec.select, %do.end ], [ 0, %while.cond.preheader.while.end_crit_edge ], [ 0, %if.end24.while.end_crit_edge ]
  %28 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p, align 4
  %ops_lock29 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %ops_lock29) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %while.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #7
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %payload) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isl12026_force_power_modes(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %op.i.i = alloca [3 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %op.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %addr.i = alloca [2 x i8], align 1
  %val.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %bsw_val = alloca i32, align 4
  %sbib_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bsw_val) #7
  %0 = ptrtoint ptr %bsw_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bsw_val, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sbib_val) #7
  %1 = ptrtoint ptr %sbib_val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %sbib_val, align 4, !annotation !101
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull %bsw_val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp = icmp sgt i32 %call.i.i, -1
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i.i93 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef nonnull %sbib_val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i93)
  %cmp4 = icmp sgt i32 %call.i.i93, -1
  %brmerge = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %brmerge, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i) #7
  %6 = getelementptr inbounds [2 x i8], ptr %addr.i, i32 0, i32 1
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %addr.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 20, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %val.i, align 1, !annotation !101
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %10 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %addr3.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %12 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr3.i, align 2
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
  store ptr %addr.i, ptr %buf.i, align 4
  %arrayinit.element4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %18 = ptrtoint ptr %arrayinit.element4.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %13, ptr %arrayinit.element4.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %20 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %val.i, ptr %buf9.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %isl12026_read_reg.exit, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12.i = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp12.i, i32 %call.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i) #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %spec.select) #10
  br label %cleanup

isl12026_read_reg.exit:                           ; preds = %if.end
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val.i, align 1
  %conv14.i = zext i8 %25 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i) #7
  br i1 %cmp, label %if.then13, label %isl12026_read_reg.exit.if.end17_crit_edge

isl12026_read_reg.exit.if.end17_crit_edge:        ; preds = %isl12026_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then13:                                        ; preds = %isl12026_read_reg.exit
  %26 = ptrtoint ptr %bsw_val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bsw_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool14.not = icmp eq i32 %27, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %conv14.i, 64
  br label %if.end17

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %conv14.i, 191
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15, %isl12026_read_reg.exit.if.end17_crit_edge
  %requested_pwr.0 = phi i32 [ %or, %if.then15 ], [ %and, %if.else ], [ %conv14.i, %isl12026_read_reg.exit.if.end17_crit_edge ]
  br i1 %cmp4, label %if.then19, label %if.end17.land.lhs.true28_crit_edge

if.end17.land.lhs.true28_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true28

if.then19:                                        ; preds = %if.end17
  %28 = ptrtoint ptr %sbib_val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sbib_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool20.not = icmp eq i32 %29, 0
  br i1 %tobool20.not, label %if.else23, label %if.then21

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %or22 = or i32 %requested_pwr.0, 128
  br label %land.lhs.true28

if.else23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %and24 = and i32 %requested_pwr.0, -129
  br label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.else23, %if.then21, %if.end17.land.lhs.true28_crit_edge
  %requested_pwr.1 = phi i32 [ %or22, %if.then21 ], [ %and24, %if.else23 ], [ %requested_pwr.0, %if.end17.land.lhs.true28_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %requested_pwr.1, i32 %conv14.i)
  %cmp29.not = icmp eq i32 %requested_pwr.1, %conv14.i
  br i1 %cmp29.not, label %land.lhs.true28.cleanup_crit_edge, label %do.body31

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body31:                                        ; preds = %land.lhs.true28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isl12026_force_power_modes.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isl12026_force_power_modes, %do.body43)) #7
          to label %if.then38 [label %do.body43], !srcloc !102

if.then38:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isl12026_force_power_modes.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %conv14.i) #7
  br label %do.body43

do.body43:                                        ; preds = %if.then38, %do.body31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isl12026_force_power_modes.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@isl12026_force_power_modes, %do.end61)) #7
          to label %if.then57 [label %do.end61], !srcloc !102

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isl12026_force_power_modes.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %requested_pwr.1) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then57, %do.body43
  %conv = trunc i32 %requested_pwr.1 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %op.i) #7
  %30 = getelementptr inbounds [3 x i8], ptr %op.i, i32 0, i32 1
  %31 = getelementptr inbounds [3 x i8], ptr %op.i, i32 0, i32 2
  %32 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %op.i, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 20, ptr %30, align 1
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %35 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 262143, ptr %35, align 4
  %37 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr3.i, align 2
  %39 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %msg.i, align 4
  %flags.i94 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i94 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i94, align 2
  %buf.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %41 = ptrtoint ptr %buf.i96 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %op.i, ptr %buf.i96, align 4
  %call.i97 = call fastcc i32 @isl12026_arm_write(ptr noundef %client) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end61.isl12026_write_reg.exit_crit_edge

do.end61.isl12026_write_reg.exit_crit_edge:       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl12026_write_reg.exit

if.end.i:                                         ; preds = %do.end61
  %42 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i, align 8
  %call3.i = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp.not.i99 = icmp eq i32 %call3.i, 1
  br i1 %cmp.not.i99, label %if.end8.i, label %do.end.i101

do.end.i101:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call3.i) #10
  br label %isl12026_write_reg.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @msleep(i32 noundef 20) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %op.i.i) #7
  %44 = call ptr @memcpy(ptr %op.i.i, ptr @__const.isl12026_disarm_write.op, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %45 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 262143, ptr %45, align 4
  %47 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %addr3.i, align 2
  %49 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %op.i.i, ptr %buf.i.i, align 4
  %52 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter.i, align 8
  %call.i.i102 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i102)
  %cmp.not.i.i = icmp eq i32 %call.i.i102, 1
  br i1 %cmp.not.i.i, label %if.end8.i.isl12026_disarm_write.exit.i_crit_edge, label %do.end.i.i

if.end8.i.isl12026_disarm_write.exit.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl12026_disarm_write.exit.i

do.end.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call.i.i102) #10
  br label %isl12026_disarm_write.exit.i

isl12026_disarm_write.exit.i:                     ; preds = %do.end.i.i, %if.end8.i.isl12026_disarm_write.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %op.i.i) #7
  br label %isl12026_write_reg.exit

isl12026_write_reg.exit:                          ; preds = %isl12026_disarm_write.exit.i, %do.end.i101, %do.end61.isl12026_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %op.i) #7
  br label %cleanup

cleanup:                                          ; preds = %isl12026_write_reg.exit, %land.lhs.true28.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sbib_val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bsw_val) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isl12026_arm_write(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %op = alloca [3 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %op) #7
  %0 = getelementptr inbounds [3 x i8], ptr %op, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %op, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr1, align 2
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %op, ptr %buf, align 4
  %9 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %op, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 63, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %1, align 1
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 3, ptr %len, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp5, i32 %call, i32 -5
  br label %out

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 6, ptr %1, align 1
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 3, ptr %len, align 4
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %call9 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 1
  br i1 %cmp10.not, label %if.end.out_crit_edge, label %do.end14

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.24, i32 noundef %call9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp16 = icmp slt i32 %call9, 0
  %spec.select34 = select i1 %cmp16, i32 %call9, i32 -5
  br label %out

out:                                              ; preds = %do.end14, %if.end.out_crit_edge, %do.end
  %ret.0 = phi i32 [ %spec.select, %do.end ], [ %spec.select34, %do.end14 ], [ 0, %if.end.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %op) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl12026_rtc_read_time(ptr noundef %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  %ccr = alloca [8 x i8], align 8
  %addr = alloca [2 x i8], align 1
  %sr = alloca i8, align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ccr) #7
  %0 = getelementptr inbounds [8 x i8], ptr %ccr, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %ccr, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %ccr, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %ccr, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %ccr, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %ccr, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %ccr, i32 0, i32 7
  %7 = ptrtoint ptr %ccr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %ccr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr) #7
  %8 = getelementptr inbounds [2 x i8], ptr %addr, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sr) #7
  %9 = ptrtoint ptr %sr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %sr, align 1, !annotation !101
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #7
  %10 = getelementptr inbounds i8, ptr %msgs, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %addr2 = getelementptr i8, ptr %dev, i32 -30
  %12 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr2, align 2
  %14 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %18 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %13, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %19 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %addr, align 1
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 63, ptr %8, align 1
  %22 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len6, align 4
  %23 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sr, ptr %buf7, align 4
  %adapter = getelementptr i8, ptr %dev, i32 -8
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msgs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp15, i32 %call, i32 -5
  br label %out

if.end:                                           ; preds = %entry
  %26 = ptrtoint ptr %sr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sr, align 1
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %if.end.if.end21_crit_edge, label %do.end19

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31) #10
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %if.end.if.end21_crit_edge
  %29 = ptrtoint ptr %sr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sr, align 1
  %31 = and i8 %30, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool24.not = icmp eq i8 %31, 0
  br i1 %tobool24.not, label %if.end21.if.end30_crit_edge, label %do.end28

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34) #10
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %if.end21.if.end30_crit_edge
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %addr, align 1
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 48, ptr %8, align 1
  %34 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 8, ptr %len6, align 4
  %35 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ccr, ptr %buf7, align 4
  %36 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter, align 8
  %call40 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msgs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 2
  br i1 %cmp41.not, label %cond.end73, label %do.end46

do.end46:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp48 = icmp slt i32 %call40, 0
  %spec.select265 = select i1 %cmp48, i32 %call40, i32 -5
  br label %out

cond.end73:                                       ; preds = %if.end30
  %38 = ptrtoint ptr %ccr to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ccr, align 8
  %40 = and i8 %39, 127
  %call72 = call i32 @_bcd2bin(i8 noundef zeroext %40) #11
  %41 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call72, ptr %tm, align 4
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %0, align 1
  %44 = and i8 %43, 127
  %call95 = call i32 @_bcd2bin(i8 noundef zeroext %44) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %45 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call95, ptr %tm_min, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %tobool101.not = icmp sgt i8 %47, -1
  br i1 %tobool101.not, label %cond.end147, label %cond.false118

cond.false118:                                    ; preds = %cond.end73
  call void @__sanitizer_cov_trace_pc() #9
  %and105 = and i8 %47, 63
  %call123 = call i32 @_bcd2bin(i8 noundef zeroext %and105) #11
  br label %if.end156

cond.end147:                                      ; preds = %cond.end73
  call void @__sanitizer_cov_trace_pc() #9
  %and128 = and i8 %47, 31
  %call146 = call i32 @_bcd2bin(i8 noundef zeroext %and128) #11
  %48 = and i8 %47, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool152.not = icmp eq i8 %48, 0
  %cond153 = select i1 %tobool152.not, i32 0, i32 12
  %add154 = add i32 %call146, %cond153
  br label %if.end156

if.end156:                                        ; preds = %cond.end147, %cond.false118
  %add154.sink = phi i32 [ %add154, %cond.end147 ], [ %call123, %cond.false118 ]
  %tm_hour155 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %49 = ptrtoint ptr %tm_hour155 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add154.sink, ptr %tm_hour155, align 4
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %2, align 1
  %52 = and i8 %51, 63
  %call177 = call i32 @_bcd2bin(i8 noundef zeroext %52) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %53 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call177, ptr %tm_mday, align 4
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %3, align 4
  %56 = and i8 %55, 31
  %call200 = call i32 @_bcd2bin(i8 noundef zeroext %56) #11
  %sub = add i32 %call200, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %57 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub, ptr %tm_mon, align 4
  %58 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %4, align 1
  %call215 = call i32 @_bcd2bin(i8 noundef zeroext %59) #11
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %60 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call215, ptr %tm_year, align 4
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %6, align 1
  %call230 = call i32 @_bcd2bin(i8 noundef zeroext %62) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call230)
  %cmp233 = icmp eq i32 %call230, 20
  br i1 %cmp233, label %if.then235, label %if.end156.if.end238_crit_edge

if.end156.if.end238_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end238

if.then235:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  %add237 = add i32 %call215, 100
  %63 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add237, ptr %tm_year, align 4
  br label %if.end238

if.end238:                                        ; preds = %if.then235, %if.end156.if.end238_crit_edge
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %5, align 2
  %66 = and i8 %65, 7
  %and241 = zext i8 %66 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %67 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and241, ptr %tm_wday, align 4
  br label %out

out:                                              ; preds = %if.end238, %do.end46, %do.end
  %ret.0 = phi i32 [ %spec.select, %do.end ], [ %spec.select265, %do.end46 ], [ 0, %if.end238 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sr) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ccr) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl12026_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %op.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %op = alloca [10 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %op) #7
  %0 = call ptr @memset(ptr %op, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %addr1 = getelementptr i8, ptr %dev, i32 -30
  %3 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr1, align 2
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 10, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %op, ptr %buf, align 4
  %call = call fastcc i32 @isl12026_arm_write(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds [10 x i8], ptr %op, i32 0, i32 9
  %10 = getelementptr inbounds [10 x i8], ptr %op, i32 0, i32 8
  %11 = getelementptr inbounds [10 x i8], ptr %op, i32 0, i32 7
  %12 = getelementptr inbounds [10 x i8], ptr %op, i32 0, i32 6
  %13 = getelementptr inbounds [10 x i8], ptr %op, i32 0, i32 5
  %14 = getelementptr inbounds [10 x i8], ptr %op, i32 0, i32 4
  %15 = getelementptr inbounds [10 x i8], ptr %op, i32 0, i32 3
  %16 = getelementptr inbounds [10 x i8], ptr %op, i32 0, i32 2
  %17 = getelementptr inbounds [10 x i8], ptr %op, i32 0, i32 1
  %18 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %op, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 48, ptr %17, align 1
  %20 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm, align 4
  %call6 = call zeroext i8 @_bin2bcd(i32 noundef %21) #11
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call6, ptr %16, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %23 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_min, align 4
  %call20 = call zeroext i8 @_bin2bcd(i32 noundef %24) #11
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call20, ptr %15, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %26 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_hour, align 4
  %call36 = call zeroext i8 @_bin2bcd(i32 noundef %27) #11
  %conv40 = or i8 %call36, -128
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv40, ptr %14, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %29 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_mday, align 4
  %call52 = call zeroext i8 @_bin2bcd(i32 noundef %30) #11
  %31 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call52, ptr %13, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %32 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_mon, align 4
  %add58 = add i32 %33, 1
  %call72 = call zeroext i8 @_bin2bcd(i32 noundef %add58) #11
  %34 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call72, ptr %12, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %35 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_year, align 4
  %rem78 = srem i32 %36, 100
  %call92 = call zeroext i8 @_bin2bcd(i32 noundef %rem78) #11
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %call92, ptr %11, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %38 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_wday, align 4
  %and = and i32 %39, 7
  %call111 = call zeroext i8 @_bin2bcd(i32 noundef %and) #11
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %call111, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %36)
  %cmp = icmp sgt i32 %36, 99
  %cond119 = select i1 %cmp, i32 20, i32 19
  %call139 = call zeroext i8 @_bin2bcd(i32 noundef %cond119) #11
  %41 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %call139, ptr %9, align 1
  %adapter = getelementptr i8, ptr %dev, i32 -8
  %42 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter, align 8
  %call145 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call145)
  %cmp146.not = icmp eq i32 %call145, 1
  br i1 %cmp146.not, label %if.end156, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call145) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp150 = icmp slt i32 %call145, 0
  %spec.select = select i1 %cmp150, i32 %call145, i32 -5
  br label %cleanup

if.end156:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %op.i) #7
  %44 = call ptr @memcpy(ptr %op.i, ptr @__const.isl12026_disarm_write.op, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %45 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 262143, ptr %45, align 4
  %47 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %addr1, align 2
  %49 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %op.i, ptr %buf.i, align 4
  %52 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end156.isl12026_disarm_write.exit_crit_edge, label %do.end.i

if.end156.isl12026_disarm_write.exit_crit_edge:   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl12026_disarm_write.exit

do.end.i:                                         ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp2.i, i32 %call.i, i32 -5
  br label %isl12026_disarm_write.exit

isl12026_disarm_write.exit:                       ; preds = %do.end.i, %if.end156.isl12026_disarm_write.exit_crit_edge
  %ret.0.i = phi i32 [ %spec.select.i, %do.end.i ], [ 0, %if.end156.isl12026_disarm_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %op.i) #7
  br label %cleanup

cleanup:                                          ; preds = %isl12026_disarm_write.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %spec.select, %do.end ], [ %ret.0.i, %isl12026_disarm_write.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %op) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_rtc_isl12026__292_498_isl12026_driver_init6, !1, !"__initcall__kmod_rtc_isl12026__292_498_isl12026_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-isl12026.c", i32 498, i32 1}
!2 = !{ptr @__exitcall_isl12026_driver_exit, !1, !"__exitcall_isl12026_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-isl12026.c", i32 500, i32 1}
!5 = !{ptr @__UNIQUE_ID_file294, !6, !"__UNIQUE_ID_file294", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-isl12026.c", i32 501, i32 1}
!7 = !{ptr @__UNIQUE_ID_license295, !6, !"__UNIQUE_ID_license295", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-isl12026.c", i32 491, i32 11}
!10 = !{ptr @isl12026_driver, !11, !"isl12026_driver", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-isl12026.c", i32 489, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-isl12026.c", i32 437, i32 11}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-isl12026.c", i32 314, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @isl12026_nvm_read._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @isl12026_nvm_read._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-isl12026.c", i32 362, i32 4}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @isl12026_nvm_write._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @isl12026_nvm_write._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-isl12026.c", i32 392, i32 8}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-isl12026.c", i32 396, i32 8}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-isl12026.c", i32 405, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @isl12026_force_power_modes._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @isl12026_force_power_modes._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-isl12026.c", i32 426, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @isl12026_force_power_modes.__UNIQUE_ID_ddebug290, !38, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-isl12026.c", i32 427, i32 3}
!43 = !{ptr @isl12026_force_power_modes.__UNIQUE_ID_ddebug291, !42, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-isl12026.c", i32 65, i32 3}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @isl12026_read_reg._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @isl12026_read_reg._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-isl12026.c", i32 153, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @isl12026_write_reg._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @isl12026_write_reg._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/rtc/rtc-isl12026.c", i32 92, i32 3}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @isl12026_arm_write._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @isl12026_arm_write._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-isl12026.c", i32 102, i32 3}
!61 = !{ptr @isl12026_arm_write._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @isl12026_arm_write._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-isl12026.c", i32 126, i32 3}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @isl12026_disarm_write._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @isl12026_disarm_write._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @isl12026_rtc_ops, !69, !"isl12026_rtc_ops", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-isl12026.c", i32 273, i32 35}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-isl12026.c", i32 231, i32 3}
!72 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @isl12026_rtc_read_time._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @isl12026_rtc_read_time._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-isl12026.c", i32 237, i32 3}
!77 = !{ptr @isl12026_rtc_read_time._entry.30, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @isl12026_rtc_read_time._entry_ptr.32, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/rtc/rtc-isl12026.c", i32 239, i32 3}
!81 = !{ptr @isl12026_rtc_read_time._entry.33, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @isl12026_rtc_read_time._entry_ptr.35, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @isl12026_rtc_read_time._entry.36, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/rtc/rtc-isl12026.c", i32 249, i32 3}
!85 = !{ptr @isl12026_rtc_read_time._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/rtc/rtc-isl12026.c", i32 194, i32 3}
!88 = !{ptr @isl12026_rtc_set_time._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @isl12026_rtc_set_time._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @isl12026_dt_match, !91, !"isl12026_dt_match", i1 false, i1 false}
!91 = !{!"../drivers/rtc/rtc-isl12026.c", i32 483, i32 34}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"auto-init"}
!102 = !{i64 2148766611, i64 2148766616, i64 2148766629, i64 2148766673, i64 2148766707, i64 2148766728}
