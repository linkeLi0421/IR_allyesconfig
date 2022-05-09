; ModuleID = '/llk/IR_all_yes/drivers/ptp/ptp_sysfs.c_pt.bc'
source_filename = "../drivers/ptp/ptp_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ptp_clock = type { %struct.posix_clock, %struct.device, ptr, i32, i32, ptr, i32, %struct.timestamp_event_queue, %struct.mutex, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], ptr, %struct.kthread_delayed_work, i32, i32, ptr, %struct.mutex, i8 }
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, ptr, %struct.rw_semaphore, i8 }
%struct.posix_clock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.timestamp_event_queue = type { [128 x %struct.ptp_extts_event], i32, i32, %struct.spinlock }
%struct.ptp_extts_event = type { %struct.ptp_clock_time, i32, i32, [2 x i32] }
%struct.ptp_clock_time = type { i64, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ptp_clock_request = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.75, %struct.ptp_clock_time, i32, i32, %union.anon.76 }
%union.anon.75 = type { %struct.ptp_clock_time }
%union.anon.76 = type { %struct.ptp_clock_time }
%struct.ptp_vclock = type { ptr, %struct.ptp_clock_info, ptr, %struct.cyclecounter, %struct.timecounter, %struct.spinlock }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }

@ptp_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @ptp_is_attribute_visible, ptr null, ptr @ptp_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ptp_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ptp_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ptp_populate_pin_groups.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pins\00", [27 x i8] zeroinitializer }, align 32
@ptp_attrs = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @dev_attr_clock_name, ptr @dev_attr_max_adjustment, ptr @dev_attr_n_alarms, ptr @dev_attr_n_external_timestamps, ptr @dev_attr_n_periodic_outputs, ptr @dev_attr_n_programmable_pins, ptr @dev_attr_pps_available, ptr @dev_attr_extts_enable, ptr @dev_attr_fifo, ptr @dev_attr_period, ptr @dev_attr_pps_enable, ptr @dev_attr_n_vclocks, ptr @dev_attr_max_vclocks, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_extts_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @extts_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fifo = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @extts_fifo_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_period = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @period_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pps_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @pps_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_n_vclocks = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @n_vclocks_show, ptr @n_vclocks_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_vclocks = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_vclocks_show, ptr @max_vclocks_store }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"extts_enable\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u %d\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fifo\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%u %lld %u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"period\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%u %lld %u %lld %u\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pps_enable\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"n_vclocks\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@n_vclocks_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 205, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max value is %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"n_vclocks_store\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/ptp/ptp_sysfs.c\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@n_vclocks_store._entry_ptr = internal global ptr @n_vclocks_store._entry, section ".printk_index", align 4
@n_vclocks_store._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.13, i32 220, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"new virtual clock ptp%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@n_vclocks_store._entry_ptr.19 = internal global ptr @n_vclocks_store._entry.16, section ".printk_index", align 4
@n_vclocks_store._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.13, i32 235, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"only physical clock in use now\0A\00", [32 x i8] zeroinitializer }, align 32
@n_vclocks_store._entry_ptr.22 = internal global ptr @n_vclocks_store._entry.20, section ".printk_index", align 4
@n_vclocks_store._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.12, ptr @.str.13, i32 237, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"guarantee physical clock free running\0A\00", [57 x i8] zeroinitializer }, align 32
@n_vclocks_store._entry_ptr.25 = internal global ptr @n_vclocks_store._entry.23, section ".printk_index", align 4
@unregister_vclock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.13, i32 161, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"delete virtual clock ptp%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unregister_vclock\00", [46 x i8] zeroinitializer }, align 32
@unregister_vclock._entry_ptr = internal global ptr @unregister_vclock._entry, section ".printk_index", align 4
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_vclocks\00", [20 x i8] zeroinitializer }, align 32
@dev_attr_clock_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @clock_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_adjustment = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_adj_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_n_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @n_alarm_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_n_external_timestamps = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @n_ext_ts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_n_periodic_outputs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @n_per_out_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_n_programmable_pins = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @n_pins_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pps_available = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pps_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clock_name\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max_adjustment\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"n_alarms\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"n_external_timestamps\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"n_periodic_outputs\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"n_programmable_pins\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pps_available\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u %u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u %u\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"ptp_group\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 351, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"ptp_groups\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 356, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 437, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 445, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant [10 x i8] c"ptp_attrs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 305, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"dev_attr_extts_enable\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"dev_attr_fifo\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"dev_attr_period\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"dev_attr_pps_enable\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"dev_attr_n_vclocks\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"dev_attr_max_vclocks\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 61, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 47, i32 20 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 95, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 89, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 123, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 106, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 150, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 138, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 247, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 182, i32 39 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 205, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 219, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 235, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 237, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 160, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 303, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"dev_attr_clock_name\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [24 x i8] c"dev_attr_max_adjustment\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [18 x i8] c"dev_attr_n_alarms\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [31 x i8] c"dev_attr_n_external_timestamps\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [28 x i8] c"dev_attr_n_periodic_outputs\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [29 x i8] c"dev_attr_n_programmable_pins\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [23 x i8] c"dev_attr_pps_available\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 19, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 17, i32 37 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 30, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 31, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 32, i32 1 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 33, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 34, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 35, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 390, i32 35 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [27 x i8] c"../drivers/ptp/ptp_sysfs.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 400, i32 20 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @n_vclocks_store._entry, ptr @n_vclocks_store._entry.16, ptr @n_vclocks_store._entry.20, ptr @n_vclocks_store._entry.23, ptr @n_vclocks_store._entry_ptr, ptr @n_vclocks_store._entry_ptr.19, ptr @n_vclocks_store._entry_ptr.22, ptr @n_vclocks_store._entry_ptr.25, ptr @unregister_vclock._entry, ptr @unregister_vclock._entry_ptr, ptr @ptp_group, ptr @ptp_groups, ptr @ptp_populate_pin_groups.__key, ptr @.str, ptr @ptp_attrs, ptr @dev_attr_extts_enable, ptr @dev_attr_fifo, ptr @dev_attr_period, ptr @dev_attr_pps_enable, ptr @dev_attr_n_vclocks, ptr @dev_attr_max_vclocks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @dev_attr_clock_name, ptr @dev_attr_max_adjustment, ptr @dev_attr_n_alarms, ptr @dev_attr_n_external_timestamps, ptr @dev_attr_n_periodic_outputs, ptr @dev_attr_n_programmable_pins, ptr @dev_attr_pps_available, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_populate_pin_groups.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_attrs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_extts_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fifo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_period to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pps_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_n_vclocks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_vclocks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_vclocks_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_vclocks_store._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_vclocks_store._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_vclocks_store._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unregister_vclock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_clock_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_adjustment to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_n_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_n_external_timestamps to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_n_periodic_outputs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_n_programmable_pins to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pps_available to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ptp_populate_pin_groups(ptr noundef %ptp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ptp_clock, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %n_pins2 = getelementptr inbounds %struct.ptp_clock_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %n_pins2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_pins2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 28) #10
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !101

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pin_dev_attr88 = getelementptr inbounds %struct.ptp_clock, ptr %ptp, i32 0, i32 12
  %6 = ptrtoint ptr %pin_dev_attr88 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pin_dev_attr88, align 8
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #13
  %pin_dev_attr = getelementptr inbounds %struct.ptp_clock, ptr %ptp, i32 0, i32 12
  %8 = ptrtoint ptr %pin_dev_attr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %pin_dev_attr, align 8
  %tobool4.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end7.i.i84

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i84:                                    ; preds = %if.end7.i.i
  %add = shl i32 %3, 2
  %9 = add i32 %add, 4
  %call8.i.i83 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #13
  %pin_attr = getelementptr inbounds %struct.ptp_clock, ptr %ptp, i32 0, i32 13
  %10 = ptrtoint ptr %pin_attr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i83, ptr %pin_attr, align 4
  %tobool9.not = icmp eq ptr %call8.i.i83, null
  br i1 %tobool9.not, label %no_pin_attr, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end7.i.i84
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %pin_dev_attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pin_dev_attr, align 8
  %arrayidx = getelementptr %struct.device_attribute, ptr %12, i32 %i.099
  %key = getelementptr inbounds %struct.attribute, ptr %arrayidx, i32 0, i32 3
  %13 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ptp_populate_pin_groups.__key, ptr %key, align 4
  %14 = ptrtoint ptr %pin_config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pin_config, align 4
  %arrayidx13 = getelementptr %struct.ptp_pin_desc, ptr %15, i32 %i.099
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx13, ptr %arrayidx, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %arrayidx, i32 0, i32 1
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 420, ptr %mode, align 4
  %show = getelementptr %struct.device_attribute, ptr %12, i32 %i.099, i32 1
  %18 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ptp_pin_show, ptr %show, align 4
  %store = getelementptr %struct.device_attribute, ptr %12, i32 %i.099, i32 2
  %19 = ptrtoint ptr %store to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ptp_pin_store, ptr %store, align 4
  %20 = ptrtoint ptr %pin_attr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pin_attr, align 4
  %arrayidx19 = getelementptr ptr, ptr %21, i32 %i.099
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx, ptr %arrayidx19, align 4
  %inc = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %pin_attr_group = getelementptr inbounds %struct.ptp_clock, ptr %ptp, i32 0, i32 14
  %23 = ptrtoint ptr %pin_attr_group to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str, ptr %pin_attr_group, align 8
  %24 = ptrtoint ptr %pin_attr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pin_attr, align 4
  %attrs = getelementptr inbounds %struct.ptp_clock, ptr %ptp, i32 0, i32 14, i32 3
  %26 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %attrs, align 4
  %pin_attr_groups = getelementptr inbounds %struct.ptp_clock, ptr %ptp, i32 0, i32 15
  %27 = ptrtoint ptr %pin_attr_groups to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pin_attr_group, ptr %pin_attr_groups, align 4
  br label %cleanup

no_pin_attr:                                      ; preds = %if.end7.i.i84
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %pin_dev_attr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pin_dev_attr, align 8
  tail call void @kfree(ptr noundef %29) #10
  br label %cleanup

cleanup:                                          ; preds = %no_pin_attr, %for.end, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %no_pin_attr ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_pin_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %info.i = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 8
  %n_pins.i = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %n_pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.i = icmp sgt i32 %7, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %pin_config.i = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %pin_config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pin_config.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ptp_pin_desc, ptr %9, i32 %i.08.i
  %call.i = tail call i32 @strcmp(ptr noundef %arrayidx.i, ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %pincfg_mux = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 9
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %pincfg_mux, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info.i, align 8
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %pin_config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pin_config, align 4
  %func6 = getelementptr %struct.ptp_pin_desc, ptr %13, i32 %i.08.i, i32 2
  %14 = ptrtoint ptr %func6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %func6, align 4
  %chan10 = getelementptr %struct.ptp_pin_desc, ptr %13, i32 %i.08.i, i32 3
  %16 = ptrtoint ptr %chan10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chan10, align 4
  tail call void @mutex_unlock(ptr noundef %pincfg_mux) #10
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.38, i32 noundef %15, i32 noundef %17)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end5 ], [ -512, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_pin_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %func = alloca i32, align 4
  %chan = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %func) #10
  %2 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %func, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan) #10
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %chan, align 4, !annotation !102
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.39, ptr noundef nonnull %func, ptr noundef nonnull %chan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attr, align 4
  %info.i = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 8
  %n_pins.i = getelementptr inbounds %struct.ptp_clock_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %n_pins.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7.i = icmp sgt i32 %9, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %pin_config.i = getelementptr inbounds %struct.ptp_clock_info, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %pin_config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pin_config.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ptp_pin_desc, ptr %11, i32 %i.08.i
  %call.i = call i32 @strcmp(ptr noundef %arrayidx.i, ptr noundef %5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %for.body.i
  %pincfg_mux = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 9
  %call7 = call i32 @mutex_lock_interruptible_nested(ptr noundef %pincfg_mux, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %func, align 4
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan, align 4
  %call10 = call i32 @ptp_set_pinfunc(ptr noundef %1, i32 noundef %i.08.i, i32 noundef %13, i32 noundef %15) #10
  call void @mutex_unlock(ptr noundef %pincfg_mux) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  %count.call10 = select i1 %tobool12.not, i32 %count, i32 %call10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -512, %if.end6.cleanup_crit_edge ], [ %count.call10, %if.end9 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %func) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ptp_cleanup_pin_groups(ptr nocapture noundef readonly %ptp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pin_attr = getelementptr inbounds %struct.ptp_clock, ptr %ptp, i32 0, i32 13
  %0 = ptrtoint ptr %pin_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_attr, align 4
  tail call void @kfree(ptr noundef %1) #10
  %pin_dev_attr = getelementptr inbounds %struct.ptp_clock, ptr %ptp, i32 0, i32 12
  %2 = ptrtoint ptr %pin_dev_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pin_dev_attr, align 8
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ptp_is_attribute_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info2 = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 8
  %mode3 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %mode3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode3, align 4
  %cmp = icmp eq ptr %attr, @dev_attr_extts_enable
  %cmp4 = icmp eq ptr %attr, @dev_attr_fifo
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %n_ext_ts = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %n_ext_ts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_ext_ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool.not, i16 0, i16 %5
  br label %if.end28

if.else:                                          ; preds = %entry
  %cmp6 = icmp eq ptr %attr, @dev_attr_period
  br i1 %cmp6, label %if.then7, label %if.else11

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %n_per_out = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %n_per_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_per_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  %spec.select38 = select i1 %tobool8.not, i16 0, i16 %5
  br label %if.end28

if.else11:                                        ; preds = %if.else
  %cmp12 = icmp eq ptr %attr, @dev_attr_pps_enable
  br i1 %cmp12, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  %pps = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %pps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  %spec.select39 = select i1 %tobool14.not, i16 0, i16 %5
  br label %if.end28

if.else17:                                        ; preds = %if.else11
  %cmp18 = icmp eq ptr %attr, @dev_attr_n_vclocks
  %cmp20 = icmp eq ptr %attr, @dev_attr_max_vclocks
  %or.cond40 = or i1 %cmp18, %cmp20
  br i1 %or.cond40, label %if.then21, label %if.else17.if.end28_crit_edge

if.else17.if.end28_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then21:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #12
  %is_virtual_clock = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 22
  %12 = ptrtoint ptr %is_virtual_clock to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_virtual_clock, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not = icmp eq i8 %13, 0
  %spec.select41 = select i1 %tobool22.not, i16 %5, i16 0
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.else17.if.end28_crit_edge, %if.then13, %if.then7, %if.then
  %mode.0 = phi i16 [ %spec.select, %if.then ], [ %spec.select38, %if.then7 ], [ %spec.select39, %if.then13 ], [ %5, %if.else17.if.end28_crit_edge ], [ %spec.select41, %if.then21 ]
  ret i16 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @extts_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %req = alloca %struct.ptp_clock_request, align 8
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %4 = call ptr @memset(ptr %req, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #10
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %enable, align 4, !annotation !102
  %6 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.2, ptr noundef %6, ptr noundef nonnull %enable)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 2
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %n_ext_ts = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %n_ext_ts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_ext_ts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp3.not = icmp ult i32 %8, %10
  br i1 %cmp3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %if.end
  %enable6 = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 17
  %11 = ptrtoint ptr %enable6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enable6, align 4
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp ne i32 %14, 0
  %cond = zext i1 %tobool.not to i32
  %call7 = call i32 %12(ptr noundef %3, ptr noundef nonnull %req, i32 noundef %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %if.end5.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -22, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ %call7, %if.end5.out_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %count, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @extts_fifo_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tsevq = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 7
  %tsevq_mux = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 8
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %tsevq_mux, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 7, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %tail.i = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail.i, align 4
  %head.i = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head.i, align 8
  %sub.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %add.i = add i32 %sub.i, 128
  %cond.i = select i1 %cmp.i, i32 %add.i, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool8.not = icmp eq i32 %cond.i, 0
  br i1 %tobool8.not, label %if.end12.thread, label %if.end16

if.end12.thread:                                  ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  br label %out

if.end16:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head.i, align 8
  %arrayidx = getelementptr [128 x %struct.ptp_extts_event], ptr %tsevq, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %event.sroa.0.0.copyload = load i64, ptr %arrayidx, align 8
  %event.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %9 = ptrtoint ptr %event.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %event.sroa.6.0.copyload = load i32, ptr %event.sroa.6.0.arrayidx.sroa_idx, align 8
  %event.sroa.9.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 16
  %10 = ptrtoint ptr %event.sroa.9.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %event.sroa.9.0.copyload = load i32, ptr %event.sroa.9.0.arrayidx.sroa_idx, align 8
  %add = add i32 %7, 1
  %rem = srem i32 %add, 128
  store i32 %rem, ptr %head.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  %call18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.4, i32 noundef %event.sroa.9.0.copyload, i64 noundef %event.sroa.0.0.copyload, i32 noundef %event.sroa.6.0.copyload)
  br label %out

out:                                              ; preds = %if.end16, %if.end12.thread
  %cnt.0 = phi i32 [ %call18, %if.end16 ], [ 0, %if.end12.thread ]
  tail call void @mutex_unlock(ptr noundef %tsevq_mux) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cnt.0, %out ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @period_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %req = alloca %struct.ptp_clock_request, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %4 = call ptr @memset(ptr %req, i32 0, i32 64)
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %req, align 8
  %6 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1
  %index = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 2
  %nsec = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %period = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 1
  %nsec3 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 1, i32 1
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.6, ptr noundef %index, ptr noundef %6, ptr noundef %nsec, ptr noundef %period, ptr noundef %nsec3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 5
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 8
  %n_per_out = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %n_per_out to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_per_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp6.not = icmp ult i32 %8, %10
  br i1 %cmp6.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %if.end
  %11 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %period, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool.not = icmp eq i64 %12, 0
  br i1 %tobool.not, label %lor.rhs, label %if.end8.lor.end_crit_edge

if.end8.lor.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %nsec3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nsec3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13 = icmp ne i32 %14, 0
  %phi.cast = zext i1 %tobool13 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end8.lor.end_crit_edge
  %15 = phi i32 [ 1, %if.end8.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %enable14 = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 17
  %16 = ptrtoint ptr %enable14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enable14, align 4
  %call15 = call i32 %17(ptr noundef %3, ptr noundef nonnull %req, i32 noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.end.cleanup_crit_edge, label %lor.end.out_crit_edge

lor.end.out_crit_edge:                            ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %lor.end.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -22, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ %call15, %lor.end.out_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %count, %lor.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pps_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %req = alloca %struct.ptp_clock_request, align 8
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %4 = call ptr @memset(ptr %req, i32 0, i32 64)
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %req, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #10
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %enable, align 4, !annotation !102
  %call1 = tail call zeroext i1 @capable(i32 noundef 25) #10
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.8, ptr noundef nonnull %enable)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 1
  br i1 %cmp.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end
  %enable5 = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 17
  %7 = ptrtoint ptr %enable5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enable5, align 4
  %9 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp ne i32 %10, 0
  %cond = zext i1 %tobool.not to i32
  %call6 = call i32 %8(ptr noundef %3, ptr noundef nonnull %req, i32 noundef %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ -22, %if.end.out_crit_edge ], [ %call6, %if.end4.out_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -1, %entry.cleanup_crit_edge ], [ %count, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_vclocks_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %n_vclocks_mux = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 21
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %n_vclocks_mux, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %n_vclocks = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %n_vclocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_vclocks, align 8
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4095, ptr noundef nonnull @.str.10, i32 noundef %3)
  tail call void @mutex_unlock(ptr noundef %n_vclocks_mux) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_vclocks_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #10
  %2 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %num, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #10
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %i, align 4, !annotation !102
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %num) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_vclocks_mux = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 21
  %call2 = call i32 @mutex_lock_interruptible_nested(ptr noundef %n_vclocks_mux, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  %max_vclocks = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %max_vclocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_vclocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %7) #15
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end5
  %n_vclocks = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %n_vclocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_vclocks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp9 = icmp ugt i32 %5, %9
  br i1 %cmp9, label %for.cond.preheader, label %if.end8.if.end24_crit_edge

if.end8.if.end24_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

for.cond.preheader:                               ; preds = %if.end8
  %10 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %i, align 4
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num, align 4
  %13 = ptrtoint ptr %n_vclocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_vclocks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp1289.not = icmp eq i32 %12, %14
  br i1 %cmp1289.not, label %for.cond.preheader.if.end24_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end24_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vclock_index = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %call13 = call ptr @ptp_vclock_register(ptr noundef %1) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %for.body.cleanup.sink.split_crit_edge, label %if.end16

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end16:                                         ; preds = %for.body
  %clock = getelementptr inbounds %struct.ptp_vclock, ptr %call13, i32 0, i32 2
  %15 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clock, align 8
  %index = getelementptr inbounds %struct.ptp_clock, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 8
  %19 = ptrtoint ptr %vclock_index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vclock_index, align 4
  %21 = ptrtoint ptr %n_vclocks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_vclocks, align 8
  %add.ptr = getelementptr i32, ptr %20, i32 %22
  %23 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i, align 4
  %add.ptr18 = getelementptr i32, ptr %add.ptr, i32 %24
  %25 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %18, ptr %add.ptr18, align 4
  %26 = load ptr, ptr %clock, align 8
  %index23 = getelementptr inbounds %struct.ptp_clock, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %index23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index23, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %28) #15
  %29 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %i, align 4
  %31 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num, align 4
  %33 = ptrtoint ptr %n_vclocks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_vclocks, align 8
  %sub = sub i32 %32, %34
  %cmp12 = icmp ult i32 %inc, %sub
  br i1 %cmp12, label %if.end16.for.body_crit_edge, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end24:                                         ; preds = %if.end16.if.end24_crit_edge, %for.cond.preheader.if.end24_crit_edge, %if.end8.if.end24_crit_edge
  %35 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num, align 4
  %37 = ptrtoint ptr %n_vclocks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_vclocks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp26 = icmp ugt i32 %38, %36
  br i1 %cmp26, label %if.then27, label %if.end24.if.end43_crit_edge

if.end24.if.end43_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then27:                                        ; preds = %if.end24
  %sub29 = sub i32 %38, %36
  %39 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub29, ptr %i, align 4
  %call30 = call i32 @device_for_each_child_reverse(ptr noundef %dev, ptr noundef nonnull %i, ptr noundef nonnull @unregister_vclock) #10
  %40 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %i, align 4
  %41 = ptrtoint ptr %n_vclocks to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_vclocks, align 8
  %43 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp34.not91 = icmp eq i32 %42, %44
  br i1 %cmp34.not91, label %if.then27.if.end43_crit_edge, label %for.body35.lr.ph

if.then27.if.end43_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

for.body35.lr.ph:                                 ; preds = %if.then27
  %vclock_index36 = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 20
  br label %for.body35

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.body35.lr.ph
  %45 = phi i32 [ %42, %for.body35.lr.ph ], [ %52, %for.body35.for.body35_crit_edge ]
  %storemerge92.neg = phi i32 [ -1, %for.body35.lr.ph ], [ %inc41.neg, %for.body35.for.body35_crit_edge ]
  %46 = ptrtoint ptr %vclock_index36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vclock_index36, align 4
  %add.ptr38 = getelementptr i32, ptr %47, i32 %45
  %add.ptr39 = getelementptr i32, ptr %add.ptr38, i32 %storemerge92.neg
  %48 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %add.ptr39, align 4
  %49 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i, align 4
  %inc41.neg = xor i32 %50, -1
  %inc41 = add i32 %50, 1
  store i32 %inc41, ptr %i, align 4
  %51 = ptrtoint ptr %n_vclocks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_vclocks, align 8
  %53 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num, align 4
  %sub33 = sub i32 %52, %54
  %cmp34.not = icmp ugt i32 %inc41, %sub33
  br i1 %cmp34.not, label %for.body35.if.end43_crit_edge, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35

for.body35.if.end43_crit_edge:                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.end43:                                         ; preds = %for.body35.if.end43_crit_edge, %if.then27.if.end43_crit_edge, %if.end24.if.end43_crit_edge
  %55 = phi i32 [ %36, %if.end24.if.end43_crit_edge ], [ %42, %if.then27.if.end43_crit_edge ], [ %54, %for.body35.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp44 = icmp eq i32 %55, 0
  %.str.21..str.24 = select i1 %cmp44, ptr @.str.21, ptr @.str.24
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.21..str.24) #15
  %56 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num, align 4
  %58 = ptrtoint ptr %n_vclocks to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %n_vclocks, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end43, %for.body.cleanup.sink.split_crit_edge, %do.end
  %retval.0.ph = phi i32 [ %count, %if.end43 ], [ -22, %do.end ], [ -22, %for.body.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %n_vclocks_mux) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -512, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_vclock_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child_reverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unregister_vclock(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info1 = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %clock = getelementptr i8, ptr %3, i32 108
  %6 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock, align 8
  %index = getelementptr inbounds %struct.ptp_clock, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef %9) #15
  tail call void @ptp_vclock_unregister(ptr noundef %add.ptr) #10
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  %. = select i1 %cmp, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_vclock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_vclocks_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %max_vclocks = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %max_vclocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_vclocks, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4095, ptr noundef nonnull @.str.10, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_vclocks_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %max = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max) #10
  %2 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %max, align 4, !annotation !102
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %max) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %max_vclocks = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %max_vclocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_vclocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp2 = icmp eq i32 %4, %6
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %n_vclocks_mux = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 21
  %call5 = call i32 @mutex_lock_interruptible_nested(ptr noundef %n_vclocks_mux, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %7 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max, align 4
  %n_vclocks = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %n_vclocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_vclocks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp9 = icmp ult i32 %8, %10
  br i1 %cmp9, label %if.end8.cleanup.sink.split_crit_edge, label %if.end8.i.i

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end8.i.i:                                      ; preds = %if.end8
  %mul = shl i32 %8, 2
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #13
  %tobool13.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool13.not, label %if.end8.i.i.cleanup.sink.split_crit_edge, label %if.end15

if.end8.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %n_vclocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_vclocks, align 8
  %mul17 = shl i32 %12, 2
  %vclock_index18 = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %vclock_index18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vclock_index18, align 4
  %15 = call ptr @memcpy(ptr %call9.i.i, ptr %14, i32 %mul17)
  %16 = load ptr, ptr %vclock_index18, align 4
  call void @kfree(ptr noundef %16) #10
  %17 = ptrtoint ptr %vclock_index18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i, ptr %vclock_index18, align 4
  %18 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max, align 4
  %20 = ptrtoint ptr %max_vclocks to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %max_vclocks, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15, %if.end8.i.i.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %count, %if.end15 ], [ -22, %if.end8.cleanup.sink.split_crit_edge ], [ -12, %if.end8.i.i.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %n_vclocks_mux) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ -512, %if.end4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clock_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %name = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 1
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4095, ptr noundef nonnull @.str.30, ptr noundef %name)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_adj_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %max_adj = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %max_adj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_adj, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4095, ptr noundef nonnull @.str.32, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %n_alarm = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %n_alarm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_alarm, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4095, ptr noundef nonnull @.str.32, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_ext_ts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %n_ext_ts = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %n_ext_ts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_ext_ts, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4095, ptr noundef nonnull @.str.32, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_per_out_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %n_per_out = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %n_per_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_per_out, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4095, ptr noundef nonnull @.str.32, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_pins_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %n_pins = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %n_pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_pins, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4095, ptr noundef nonnull @.str.32, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pps_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %pps = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %pps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pps, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4095, ptr noundef nonnull @.str.32, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_set_pinfunc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !64, !66, !67, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @ptp_groups, !1, !"ptp_groups", i1 false, i1 false}
!1 = !{!"../drivers/ptp/ptp_sysfs.c", i32 356, i32 31}
!2 = !{ptr @ptp_populate_pin_groups.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/ptp/ptp_sysfs.c", i32 437, i32 3}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/ptp/ptp_sysfs.c", i32 445, i32 29}
!6 = !{ptr @ptp_group, !7, !"ptp_group", i1 false, i1 false}
!7 = !{!"../drivers/ptp/ptp_sysfs.c", i32 351, i32 37}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/ptp/ptp_sysfs.c", i32 61, i32 8}
!10 = !{ptr @dev_attr_extts_enable, !9, !"dev_attr_extts_enable", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/ptp/ptp_sysfs.c", i32 47, i32 20}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/ptp/ptp_sysfs.c", i32 95, i32 8}
!15 = !{ptr @dev_attr_fifo, !14, !"dev_attr_fifo", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ptp/ptp_sysfs.c", i32 89, i32 34}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/ptp/ptp_sysfs.c", i32 123, i32 8}
!20 = !{ptr @dev_attr_period, !19, !"dev_attr_period", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/ptp/ptp_sysfs.c", i32 106, i32 20}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/ptp/ptp_sysfs.c", i32 150, i32 8}
!25 = !{ptr @dev_attr_pps_enable, !24, !"dev_attr_pps_enable", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ptp/ptp_sysfs.c", i32 138, i32 20}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ptp/ptp_sysfs.c", i32 247, i32 8}
!30 = !{ptr @dev_attr_n_vclocks, !29, !"dev_attr_n_vclocks", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/ptp/ptp_sysfs.c", i32 182, i32 39}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/ptp/ptp_sysfs.c", i32 205, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @n_vclocks_store._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @n_vclocks_store._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/ptp/ptp_sysfs.c", i32 219, i32 4}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @n_vclocks_store._entry.16, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @n_vclocks_store._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ptp/ptp_sysfs.c", i32 235, i32 3}
!48 = !{ptr @n_vclocks_store._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @n_vclocks_store._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ptp/ptp_sysfs.c", i32 237, i32 3}
!52 = !{ptr @n_vclocks_store._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @n_vclocks_store._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/ptp/ptp_sysfs.c", i32 160, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @unregister_vclock._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @unregister_vclock._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/ptp/ptp_sysfs.c", i32 303, i32 8}
!61 = !{ptr @dev_attr_max_vclocks, !60, !"dev_attr_max_vclocks", i1 false, i1 false}
!62 = !{ptr @ptp_attrs, !63, !"ptp_attrs", i1 false, i1 false}
!63 = !{!"../drivers/ptp/ptp_sysfs.c", i32 305, i32 26}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ptp/ptp_sysfs.c", i32 19, i32 8}
!66 = !{ptr @dev_attr_clock_name, !65, !"dev_attr_clock_name", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/ptp/ptp_sysfs.c", i32 17, i32 37}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/ptp/ptp_sysfs.c", i32 30, i32 1}
!71 = !{ptr @dev_attr_max_adjustment, !70, !"dev_attr_max_adjustment", i1 false, i1 false}
!72 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/ptp/ptp_sysfs.c", i32 31, i32 1}
!75 = !{ptr @dev_attr_n_alarms, !74, !"dev_attr_n_alarms", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/ptp/ptp_sysfs.c", i32 32, i32 1}
!78 = !{ptr @dev_attr_n_external_timestamps, !77, !"dev_attr_n_external_timestamps", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/ptp/ptp_sysfs.c", i32 33, i32 1}
!81 = !{ptr @dev_attr_n_periodic_outputs, !80, !"dev_attr_n_periodic_outputs", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/ptp/ptp_sysfs.c", i32 34, i32 1}
!84 = !{ptr @dev_attr_n_programmable_pins, !83, !"dev_attr_n_programmable_pins", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/ptp/ptp_sysfs.c", i32 35, i32 1}
!87 = !{ptr @dev_attr_pps_available, !86, !"dev_attr_pps_available", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/ptp/ptp_sysfs.c", i32 390, i32 35}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/ptp/ptp_sysfs.c", i32 400, i32 20}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{!"auto-init"}
!103 = !{i8 0, i8 2}
