; ModuleID = '/llk/IR_all_yes/drivers/base/power/sysfs.c_pt.bc'
source_filename = "../drivers/base/power/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+power_group_name\22, \22a\22\09"
module asm "\09.weak\09__crc_power_group_name\09\09\09\09"
module asm "\09.long\09__crc_power_group_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_group_name:\09\09\09\09\09"
module asm "\09.asciz \09\22power_group_name\22\09\09\09\09\09"
module asm "__kstrtabns_power_group_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.wakeup_source = type { ptr, i32, %struct.list_head, %struct.spinlock, ptr, %struct.timer_list, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i8 }
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, ptr, ptr, ptr }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.43, ptr }
%union.anon.43 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }

@power_group_name = dso_local constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_power_group_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_group_name = external dso_local constant [0 x i8], align 1
@__ksymtab_power_group_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_group_name to i32), ptr @__kstrtab_power_group_name, ptr @__kstrtabns_power_group_name }, section "___ksymtab_gpl+power_group_name", align 4
@pm_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @power_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm_runtime_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @runtime_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm_wakeup_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @wakeup_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm_qos_latency_tolerance_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @pm_qos_latency_tolerance_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm_qos_resume_latency_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @pm_qos_resume_latency_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm_qos_flags_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @pm_qos_flags_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@power_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_async, ptr @dev_attr_runtime_status, ptr @dev_attr_runtime_usage, ptr @dev_attr_runtime_active_kids, ptr @dev_attr_runtime_enabled, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_async = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @async_show, ptr @async_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_runtime_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @runtime_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_runtime_usage = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @runtime_usage_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_runtime_active_kids = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @runtime_active_kids_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_runtime_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @runtime_enabled_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@_enabled = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@_disabled = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"runtime_status\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unsupported\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"suspended\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"suspending\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"resuming\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"runtime_usage\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"runtime_active_kids\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"runtime_enabled\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disabled & forbidden\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"forbidden\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@runtime_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_control, ptr @dev_attr_runtime_suspended_time, ptr @dev_attr_runtime_active_time, ptr @dev_attr_autosuspend_delay_ms, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_control = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @control_show, ptr @control_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_runtime_suspended_time = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @runtime_suspended_time_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_runtime_active_time = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @runtime_active_time_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_autosuspend_delay_ms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @autosuspend_delay_ms_show, ptr @autosuspend_delay_ms_store }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@ctrl_auto = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@ctrl_on = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"runtime_suspended_time\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"runtime_active_time\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"autosuspend_delay_ms\00", [43 x i8] zeroinitializer }, align 32
@wakeup_attrs = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @dev_attr_wakeup, ptr @dev_attr_wakeup_count, ptr @dev_attr_wakeup_active_count, ptr @dev_attr_wakeup_abort_count, ptr @dev_attr_wakeup_expire_count, ptr @dev_attr_wakeup_active, ptr @dev_attr_wakeup_total_time_ms, ptr @dev_attr_wakeup_max_time_ms, ptr @dev_attr_wakeup_last_time_ms, ptr @dev_attr_wakeup_prevent_sleep_time_ms, ptr null], [52 x i8] zeroinitializer }, align 32
@dev_attr_wakeup = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wakeup_show, ptr @wakeup_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wakeup_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wakeup_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wakeup_active_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wakeup_active_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wakeup_abort_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wakeup_abort_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wakeup_expire_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wakeup_expire_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wakeup_active = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wakeup_active_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wakeup_total_time_ms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wakeup_total_time_ms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wakeup_max_time_ms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wakeup_max_time_ms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wakeup_last_time_ms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wakeup_last_time_ms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wakeup_prevent_sleep_time_ms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wakeup_prevent_sleep_time_ms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wakeup_count\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wakeup_active_count\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wakeup_abort_count\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wakeup_expire_count\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup_active\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wakeup_total_time_ms\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wakeup_max_time_ms\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wakeup_last_time_ms\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wakeup_prevent_sleep_time_ms\00", [35 x i8] zeroinitializer }, align 32
@pm_qos_latency_tolerance_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_pm_qos_latency_tolerance_us, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_pm_qos_latency_tolerance_us = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm_qos_latency_tolerance_us_show, ptr @pm_qos_latency_tolerance_us_store }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pm_qos_latency_tolerance_us\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@pm_qos_resume_latency_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_pm_qos_resume_latency_us, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_pm_qos_resume_latency_us = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm_qos_resume_latency_us_show, ptr @pm_qos_resume_latency_us_store }, [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pm_qos_resume_latency_us\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"n/a\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"n/a\00", [28 x i8] zeroinitializer }, align 32
@pm_qos_flags_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_pm_qos_no_power_off, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_pm_qos_no_power_off = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm_qos_no_power_off_show, ptr @pm_qos_no_power_off_store }, [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm_qos_no_power_off\00", [44 x i8] zeroinitializer }, align 32
@switch.table.runtime_status_show = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.8, ptr @.str.7, ptr @.str.5, ptr @.str.6], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"power_group_name\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 95, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"pm_attr_group\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 625, i32 37 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"pm_runtime_attr_group\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 662, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"pm_wakeup_attr_group\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 647, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant [36 x i8] c"pm_qos_latency_tolerance_attr_group\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 680, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant [33 x i8] c"pm_qos_resume_latency_attr_group\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 671, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"pm_qos_flags_attr_group\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 689, i32 37 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"power_attrs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 613, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"dev_attr_async\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [24 x i8] c"dev_attr_runtime_status\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"dev_attr_runtime_usage\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [29 x i8] c"dev_attr_runtime_active_kids\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [25 x i8] c"dev_attr_runtime_enabled\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 608, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 591, i32 25 }
@___asan_gen_.89 = private unnamed_addr constant [9 x i8] c"_enabled\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 321, i32 19 }
@___asan_gen_.92 = private unnamed_addr constant [10 x i8] c"_disabled\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 322, i32 19 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 180, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 156, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 158, i32 12 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 162, i32 13 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 165, i32 13 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 168, i32 13 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 171, i32 13 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 558, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 556, i32 25 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 567, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 585, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 575, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 577, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 579, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 581, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"runtime_attrs\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 652, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"dev_attr_control\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [32 x i8] c"dev_attr_runtime_suspended_time\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [29 x i8] c"dev_attr_runtime_active_time\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [30 x i8] c"dev_attr_autosuspend_delay_ms\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 122, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant [10 x i8] c"ctrl_auto\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 98, i32 19 }
@___asan_gen_.161 = private unnamed_addr constant [8 x i8] c"ctrl_on\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 99, i32 19 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 148, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 145, i32 25 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 135, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 209, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant [13 x i8] c"wakeup_attrs\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 630, i32 26 }
@___asan_gen_.179 = private unnamed_addr constant [16 x i8] c"dev_attr_wakeup\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [22 x i8] c"dev_attr_wakeup_count\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [29 x i8] c"dev_attr_wakeup_active_count\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [28 x i8] c"dev_attr_wakeup_abort_count\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [29 x i8] c"dev_attr_wakeup_expire_count\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [23 x i8] c"dev_attr_wakeup_active\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [30 x i8] c"dev_attr_wakeup_total_time_ms\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [28 x i8] c"dev_attr_wakeup_max_time_ms\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [29 x i8] c"dev_attr_wakeup_last_time_ms\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [38 x i8] c"dev_attr_wakeup_prevent_sleep_time_ms\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 347, i32 8 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 329, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 367, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 363, i32 26 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 364, i32 25 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 388, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 409, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 430, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 450, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 447, i32 25 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 471, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 468, i32 25 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 491, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 520, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 542, i32 8 }
@___asan_gen_.254 = private unnamed_addr constant [31 x i8] c"pm_qos_latency_tolerance_attrs\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 676, i32 26 }
@___asan_gen_.257 = private unnamed_addr constant [37 x i8] c"dev_attr_pm_qos_latency_tolerance_us\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 292, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 262, i32 34 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 264, i32 34 }
@___asan_gen_.269 = private unnamed_addr constant [28 x i8] c"pm_qos_resume_latency_attrs\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 667, i32 26 }
@___asan_gen_.272 = private unnamed_addr constant [34 x i8] c"dev_attr_pm_qos_resume_latency_us\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 253, i32 8 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 218, i32 26 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 242, i32 30 }
@___asan_gen_.284 = private unnamed_addr constant [19 x i8] c"pm_qos_flags_attrs\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 685, i32 26 }
@___asan_gen_.287 = private unnamed_addr constant [29 x i8] c"dev_attr_pm_qos_no_power_off\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private constant [30 x i8] c"../drivers/base/power/sysfs.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 318, i32 8 }
@___asan_gen_.293 = private unnamed_addr constant [33 x i8] c"switch.table.runtime_status_show\00", align 1
@llvm.compiler.used = appending global [85 x ptr] [ptr @__ksymtab_power_group_name, ptr @power_group_name, ptr @pm_attr_group, ptr @pm_runtime_attr_group, ptr @pm_wakeup_attr_group, ptr @pm_qos_latency_tolerance_attr_group, ptr @pm_qos_resume_latency_attr_group, ptr @pm_qos_flags_attr_group, ptr @power_attrs, ptr @dev_attr_async, ptr @dev_attr_runtime_status, ptr @dev_attr_runtime_usage, ptr @dev_attr_runtime_active_kids, ptr @dev_attr_runtime_enabled, ptr @.str, ptr @.str.1, ptr @_enabled, ptr @_disabled, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @runtime_attrs, ptr @dev_attr_control, ptr @dev_attr_runtime_suspended_time, ptr @dev_attr_runtime_active_time, ptr @dev_attr_autosuspend_delay_ms, ptr @.str.17, ptr @ctrl_auto, ptr @ctrl_on, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @wakeup_attrs, ptr @dev_attr_wakeup, ptr @dev_attr_wakeup_count, ptr @dev_attr_wakeup_active_count, ptr @dev_attr_wakeup_abort_count, ptr @dev_attr_wakeup_expire_count, ptr @dev_attr_wakeup_active, ptr @dev_attr_wakeup_total_time_ms, ptr @dev_attr_wakeup_max_time_ms, ptr @dev_attr_wakeup_last_time_ms, ptr @dev_attr_wakeup_prevent_sleep_time_ms, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @pm_qos_latency_tolerance_attrs, ptr @dev_attr_pm_qos_latency_tolerance_us, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @pm_qos_resume_latency_attrs, ptr @dev_attr_pm_qos_resume_latency_us, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @pm_qos_flags_attrs, ptr @dev_attr_pm_qos_no_power_off, ptr @.str.43, ptr @switch.table.runtime_status_show], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_group_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_runtime_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_wakeup_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_qos_latency_tolerance_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_qos_resume_latency_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_qos_flags_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_async to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_runtime_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_runtime_usage to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_runtime_active_kids to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_runtime_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_enabled to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_disabled to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @runtime_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_control to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_runtime_suspended_time to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_runtime_active_time to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_autosuspend_delay_ms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_auto to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_on to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_attrs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wakeup to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wakeup_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wakeup_active_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wakeup_abort_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wakeup_expire_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wakeup_active to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wakeup_total_time_ms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wakeup_max_time_ms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wakeup_last_time_ms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wakeup_prevent_sleep_time_ms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_qos_latency_tolerance_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pm_qos_latency_tolerance_us to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_qos_resume_latency_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pm_qos_resume_latency_us to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_qos_flags_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pm_qos_no_power_off to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.runtime_status_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpm_sysfs_add(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %no_pm.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %no_pm.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %no_pm.i, align 4
  %1 = and i16 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %bf.cast.i.not = icmp eq i16 %1, 0
  br i1 %bf.cast.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @pm_attr_group) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %no_callbacks.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %no_callbacks.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i54 = load i16, ptr %no_callbacks.i, align 4
  %3 = and i16 %bf.load.i54, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %if.then5, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then5:                                         ; preds = %if.end3
  %call7 = tail call i32 @sysfs_merge_group(ptr noundef %dev, ptr noundef nonnull @pm_runtime_attr_group) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end11_crit_edge, label %if.then5.err_out_crit_edge

if.then5.err_out_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %4 = ptrtoint ptr %no_pm.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i55 = load i16, ptr %no_pm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i55)
  %tobool.i56 = icmp slt i16 %bf.load.i55, 0
  br i1 %tobool.i56, label %if.then13, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then13:                                        ; preds = %if.end11
  %call15 = tail call i32 @sysfs_merge_group(ptr noundef %dev, ptr noundef nonnull @pm_wakeup_attr_group) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then13.if.end19_crit_edge, label %if.then13.err_runtime_crit_edge

if.then13.err_runtime_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_runtime

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.end19:                                         ; preds = %if.then13.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %set_latency_tolerance = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 27
  %5 = ptrtoint ptr %set_latency_tolerance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_latency_tolerance, align 4
  %tobool20.not = icmp eq ptr %6, null
  br i1 %tobool20.not, label %if.end19.if.end27_crit_edge, label %if.then21

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then21:                                        ; preds = %if.end19
  %call23 = tail call i32 @sysfs_merge_group(ptr noundef %dev, ptr noundef nonnull @pm_qos_latency_tolerance_attr_group) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then21.if.end27_crit_edge, label %if.then21.err_wakeup_crit_edge

if.then21.err_wakeup_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_wakeup

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.end27:                                         ; preds = %if.then21.if.end27_crit_edge, %if.end19.if.end27_crit_edge
  %call28 = tail call i32 @pm_wakeup_source_sysfs_add(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %err_latency

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_latency:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sysfs_unmerge_group(ptr noundef %dev, ptr noundef nonnull @pm_qos_latency_tolerance_attr_group) #4
  br label %err_wakeup

err_wakeup:                                       ; preds = %err_latency, %if.then21.err_wakeup_crit_edge
  %rc.0 = phi i32 [ %call23, %if.then21.err_wakeup_crit_edge ], [ %call28, %err_latency ]
  tail call void @sysfs_unmerge_group(ptr noundef %dev, ptr noundef nonnull @pm_wakeup_attr_group) #4
  br label %err_runtime

err_runtime:                                      ; preds = %err_wakeup, %if.then13.err_runtime_crit_edge
  %rc.1 = phi i32 [ %call15, %if.then13.err_runtime_crit_edge ], [ %rc.0, %err_wakeup ]
  tail call void @sysfs_unmerge_group(ptr noundef %dev, ptr noundef nonnull @pm_runtime_attr_group) #4
  br label %err_out

err_out:                                          ; preds = %err_runtime, %if.then5.err_out_crit_edge
  %rc.2 = phi i32 [ %rc.1, %err_runtime ], [ %call7, %if.then5.err_out_crit_edge ]
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @pm_attr_group) #4
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %err_out ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_merge_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_wakeup_source_sysfs_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_unmerge_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpm_sysfs_change_owner(ptr noundef %dev, [1 x i32] %kuid.coerce, [1 x i32] %kgid.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %no_pm.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %no_pm.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %no_pm.i, align 4
  %1 = and i16 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %bf.cast.i.not = icmp eq i16 %1, 0
  br i1 %bf.cast.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @sysfs_group_change_owner(ptr noundef %dev, ptr noundef nonnull @pm_attr_group, [1 x i32] %kuid.coerce, [1 x i32] %kgid.coerce) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %no_callbacks.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %no_callbacks.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i93 = load i16, ptr %no_callbacks.i, align 4
  %3 = and i16 %bf.load.i93, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %if.then8, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then8:                                         ; preds = %if.end6
  %call12 = tail call i32 @sysfs_group_change_owner(ptr noundef %dev, ptr noundef nonnull @pm_runtime_attr_group, [1 x i32] %kuid.coerce, [1 x i32] %kgid.coerce) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then8.if.end16_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.end16:                                         ; preds = %if.then8.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %4 = ptrtoint ptr %no_pm.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i94 = load i16, ptr %no_pm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i94)
  %tobool.i95 = icmp slt i16 %bf.load.i94, 0
  br i1 %tobool.i95, label %if.then18, label %if.end16.if.end32_crit_edge

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then18:                                        ; preds = %if.end16
  %call22 = tail call i32 @sysfs_group_change_owner(ptr noundef %dev, ptr noundef nonnull @pm_wakeup_attr_group, [1 x i32] %kuid.coerce, [1 x i32] %kgid.coerce) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.then18
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end25.if.end32_crit_edge, label %land.lhs.true.i

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true.i:                                  ; preds = %if.end25
  %dev4.i = getelementptr inbounds %struct.wakeup_source, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev4.i, align 4
  %tobool5.not.i = icmp eq ptr %8, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end32_crit_edge, label %dpm_sysfs_wakeup_change_owner.exit

land.lhs.true.i.if.end32_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

dpm_sysfs_wakeup_change_owner.exit:               ; preds = %land.lhs.true.i
  %call.i = tail call i32 @device_change_owner(ptr noundef nonnull %8, [1 x i32] %kuid.coerce, [1 x i32] %kgid.coerce) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %dpm_sysfs_wakeup_change_owner.exit.if.end32_crit_edge, label %dpm_sysfs_wakeup_change_owner.exit.cleanup_crit_edge

dpm_sysfs_wakeup_change_owner.exit.cleanup_crit_edge: ; preds = %dpm_sysfs_wakeup_change_owner.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

dpm_sysfs_wakeup_change_owner.exit.if.end32_crit_edge: ; preds = %dpm_sysfs_wakeup_change_owner.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.end32:                                         ; preds = %dpm_sysfs_wakeup_change_owner.exit.if.end32_crit_edge, %land.lhs.true.i.if.end32_crit_edge, %if.end25.if.end32_crit_edge, %if.end16.if.end32_crit_edge
  %set_latency_tolerance = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 27
  %9 = ptrtoint ptr %set_latency_tolerance to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_latency_tolerance, align 4
  %tobool33.not = icmp eq ptr %10, null
  br i1 %tobool33.not, label %if.end32.if.end42_crit_edge, label %if.then34

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then34:                                        ; preds = %if.end32
  %call38 = tail call i32 @sysfs_group_change_owner(ptr noundef %dev, ptr noundef nonnull @pm_qos_latency_tolerance_attr_group, [1 x i32] %kuid.coerce, [1 x i32] %kgid.coerce) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then34.if.end42_crit_edge, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then34.if.end42_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.end42:                                         ; preds = %if.then34.if.end42_crit_edge, %if.end32.if.end42_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then34.cleanup_crit_edge, %dpm_sysfs_wakeup_change_owner.exit.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ 0, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call12, %if.then8.cleanup_crit_edge ], [ %call22, %if.then18.cleanup_crit_edge ], [ %call.i, %dpm_sysfs_wakeup_change_owner.exit.cleanup_crit_edge ], [ %call38, %if.then34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_group_change_owner(ptr noundef, ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wakeup_sysfs_add(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sysfs_merge_group(ptr noundef %dev, ptr noundef nonnull @pm_wakeup_attr_group) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @kobject_uevent(ptr noundef %dev, i32 noundef 2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wakeup_sysfs_remove(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sysfs_unmerge_group(ptr noundef %dev, ptr noundef nonnull @pm_wakeup_attr_group) #4
  %call = tail call i32 @kobject_uevent(ptr noundef %dev, i32 noundef 2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_qos_sysfs_add_resume_latency(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sysfs_merge_group(ptr noundef %dev, ptr noundef nonnull @pm_qos_resume_latency_attr_group) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_qos_sysfs_remove_resume_latency(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sysfs_unmerge_group(ptr noundef %dev, ptr noundef nonnull @pm_qos_resume_latency_attr_group) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_qos_sysfs_add_flags(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sysfs_merge_group(ptr noundef %dev, ptr noundef nonnull @pm_qos_flags_attr_group) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_qos_sysfs_remove_flags(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sysfs_unmerge_group(ptr noundef %dev, ptr noundef nonnull @pm_qos_flags_attr_group) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_qos_sysfs_add_latency_tolerance(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sysfs_merge_group(ptr noundef %dev, ptr noundef nonnull @pm_qos_latency_tolerance_attr_group) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_qos_sysfs_remove_latency_tolerance(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sysfs_unmerge_group(ptr noundef %dev, ptr noundef nonnull @pm_qos_latency_tolerance_attr_group) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpm_sysfs_remove(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sysfs_unmerge_group(ptr noundef %dev, ptr noundef nonnull @pm_runtime_attr_group) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpm_sysfs_remove(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %no_pm.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %no_pm.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %no_pm.i, align 4
  %1 = and i16 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %bf.cast.i.not = icmp eq i16 %1, 0
  br i1 %bf.cast.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sysfs_unmerge_group(ptr noundef %dev, ptr noundef nonnull @pm_qos_latency_tolerance_attr_group) #4
  tail call void @dev_pm_qos_constraints_destroy(ptr noundef %dev) #4
  tail call void @sysfs_unmerge_group(ptr noundef %dev, ptr noundef nonnull @pm_runtime_attr_group) #4
  tail call void @sysfs_unmerge_group(ptr noundef %dev, ptr noundef nonnull @pm_wakeup_attr_group) #4
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @pm_attr_group) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_qos_constraints_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @async_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %async_suspend.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %async_suspend.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %async_suspend.i, align 4
  %1 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.i.not = icmp eq i16 %1, 0
  %cond = select i1 %tobool.i.not, ptr @_disabled, ptr @_enabled
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @async_store(ptr nocapture noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @_enabled) #4
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %is_prepared.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %1 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %bf.cast.not.i = icmp eq i16 %1, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set.i = or i16 %bf.load.i, 16384
  %2 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @_disabled) #4
  br i1 %call1, label %if.then2, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then2:                                         ; preds = %if.else
  %is_prepared.i7 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %is_prepared.i7 to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load.i8 = load i16, ptr %is_prepared.i7, align 4
  %4 = and i16 %bf.load.i8, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %bf.cast.not.i9 = icmp eq i16 %4, 0
  br i1 %bf.cast.not.i9, label %if.then.i10, label %if.then2.return_crit_edge

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then.i10:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear3.i = and i16 %bf.load.i8, -16385
  %5 = ptrtoint ptr %is_prepared.i7 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %bf.clear3.i, ptr %is_prepared.i7, align 4
  br label %return

return:                                           ; preds = %if.then.i10, %if.then2.return_crit_edge, %if.else.return_crit_edge, %if.then.i, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.return_crit_edge ], [ %n, %if.then.return_crit_edge ], [ %n, %if.then.i ], [ %n, %if.then2.return_crit_edge ], [ %n, %if.then.i10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @runtime_status_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_error = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 20
  %0 = ptrtoint ptr %runtime_error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.else:                                          ; preds = %entry
  %disable_depth = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %tobool2.not = icmp ult i16 %bf.load, 8192
  br i1 %tobool2.not, label %if.else4, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.else4:                                         ; preds = %if.else
  %runtime_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %3 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %switch.lookup, label %if.else4.cleanup_crit_edge

if.else4.cleanup_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.runtime_status_show, i32 0, i32 %4
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end9

if.end9:                                          ; preds = %switch.lookup, %if.else.if.end9_crit_edge, %entry.if.end9_crit_edge
  %output.0 = phi ptr [ @.str.3, %entry.if.end9_crit_edge ], [ @.str.4, %if.else.if.end9_crit_edge ], [ %switch.load, %switch.lookup ]
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.1, ptr noundef nonnull %output.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.else4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end9 ], [ -5, %if.else4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @runtime_usage_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage_count, i32 noundef 4) #4
  %0 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %usage_count, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %1) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @runtime_active_kids_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ignore_children = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %ignore_children to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ignore_children, align 4
  %1 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %bf.cast.not = icmp eq i16 %1, 0
  br i1 %bf.cast.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %child_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %child_count, i32 noundef 4) #4
  %2 = ptrtoint ptr %child_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %child_count, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %cond) #4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @runtime_enabled_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %disable_depth = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load)
  %tobool.not = icmp ugt i16 %bf.load, 8191
  %1 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool5.not = icmp eq i16 %1, 0
  %or.cond = and i1 %tobool.not, %tobool5.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %tobool11.not = icmp ult i16 %bf.load, 8192
  %.str.15..str.16 = select i1 %tobool5.not, ptr @.str.15, ptr @.str.16
  %spec.select = select i1 %tobool11.not, ptr %.str.15..str.16, ptr @.str.14
  %output.0 = select i1 %or.cond, ptr @.str.13, ptr %spec.select
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.1, ptr noundef nonnull %output.0) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @control_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_auto = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %runtime_auto to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %runtime_auto, align 4
  %1 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %cond = select i1 %tobool.not, ptr @ctrl_on, ptr @ctrl_auto
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @control_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @ctrl_auto) #4
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pm_runtime_allow(ptr noundef %dev) #4
  br label %if.end4

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @ctrl_on) #4
  br i1 %call1, label %if.then2, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pm_runtime_forbid(ptr noundef %dev) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else.if.end4_crit_edge, %if.then
  %n.addr.0 = phi i32 [ %n, %if.then ], [ %n, %if.then2 ], [ -22, %if.else.if.end4_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @runtime_suspended_time_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @pm_runtime_suspended_time(ptr noundef %dev) #4
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %call) #7, !srcloc !155
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %call, i64 %0, i32 0) #7, !srcloc !156
  %asmresult10.i = extractvalue { i64, i32 } %1, 0
  %div160262 = lshr i64 %asmresult10.i, 18
  %call182 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i64 noundef %div160262) #4
  ret i32 %call182
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @pm_runtime_suspended_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @runtime_active_time_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @pm_runtime_active_time(ptr noundef %dev) #4
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %call) #7, !srcloc !155
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %call, i64 %0, i32 0) #7, !srcloc !156
  %asmresult10.i = extractvalue { i64, i32 } %1, 0
  %div160262 = lshr i64 %asmresult10.i, 18
  %call182 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i64 noundef %div160262) #4
  ret i32 %call182
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @pm_runtime_active_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autosuspend_delay_ms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %use_autosuspend = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %use_autosuspend to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %use_autosuspend, align 4
  %1 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %autosuspend_delay = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 21
  %2 = ptrtoint ptr %autosuspend_delay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autosuspend_delay, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %3) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autosuspend_delay_ms_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  %delay = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay) #4
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %delay, align 4, !annotation !157
  %use_autosuspend = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %1 = ptrtoint ptr %use_autosuspend to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %use_autosuspend, align 4
  %2 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %delay) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %3 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef %4) #4
  call void @mutex_unlock(ptr noundef %mutex.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %n, %if.end3 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %device_may_wakeup.exit, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

device_may_wakeup.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  %cond = select i1 %tobool2.i.not, ptr @_disabled, ptr @_enabled
  br label %cond.end

cond.end:                                         ; preds = %device_may_wakeup.exit, %entry.cond.end_crit_edge
  %cond2 = phi ptr [ %cond, %device_may_wakeup.exit ], [ @.str.23, %entry.cond.end_crit_edge ]
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond2) #4
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @_enabled) #4
  br i1 %call1, label %if.end.return.sink.split_crit_edge, label %if.else

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

if.else:                                          ; preds = %if.end
  %call4 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @_disabled) #4
  br i1 %call4, label %if.else.return.sink.split_crit_edge, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.else.return.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

return.sink.split:                                ; preds = %if.else.return.sink.split_crit_edge, %if.end.return.sink.split_crit_edge
  %call3 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %call1) #4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.else.return_crit_edge ], [ %n, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_count_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %wakeup = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %0 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25) #4
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %wakeup_count = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %wakeup_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wakeup_count, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_active_count_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %wakeup = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %0 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25) #4
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %active_count = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %active_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_count, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_abort_count_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %wakeup = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %0 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25) #4
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %wakeup_count = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %wakeup_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wakeup_count, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_expire_count_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %wakeup = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %0 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25) #4
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %expire_count = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %expire_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %expire_count, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_active_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %wakeup = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %0 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25) #4
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %active4 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %active4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %active4, align 8
  %bf.load.lobit = lshr i8 %bf.load, 7
  %3 = zext i8 %bf.load.lobit to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_total_time_ms_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %wakeup = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %0 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25) #4
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %total_time = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %total_time to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %total_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #4
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #7, !srcloc !155
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %5, i32 0) #7, !srcloc !156
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.33, i64 noundef %cond213.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call8, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_max_time_ms_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %wakeup = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %0 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25) #4
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %max_time = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %max_time to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %max_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #4
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #7, !srcloc !155
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %5, i32 0) #7, !srcloc !156
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.33, i64 noundef %cond213.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call8, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_last_time_ms_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %wakeup = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %0 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25) #4
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %last_time = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %last_time to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #4
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #7, !srcloc !155
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %5, i32 0) #7, !srcloc !156
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.33, i64 noundef %cond213.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call8, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_prevent_sleep_time_ms_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %wakeup = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %0 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25) #4
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prevent_sleep_time = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %prevent_sleep_time to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %prevent_sleep_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #4
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #7, !srcloc !155
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %5, i32 0) #7, !srcloc !156
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %call10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.33, i64 noundef %cond213.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call8, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_qos_latency_tolerance_us_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dev_pm_qos_get_user_latency_tolerance(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.38) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call)
  %cmp2 = icmp eq i32 %call, 2147483647
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.39) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call4, %if.then3 ], [ %call6, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_qos_latency_tolerance_us_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #4
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !157
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %call3 = call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.38) #4
  br i1 %call3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %value, align 4
  br label %if.end11

if.else5:                                         ; preds = %if.else
  %call6 = call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.39) #4
  br i1 %call6, label %if.then7, label %if.else5.cleanup_crit_edge

if.else5.cleanup_crit_edge:                       ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2147483647, ptr %value, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then4, %if.then.if.end11_crit_edge
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %call12 = call i32 @dev_pm_qos_update_user_latency_tolerance(ptr noundef %dev, i32 noundef %6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  %call12.n = select i1 %cmp13, i32 %call12, i32 %n
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12.n, %if.end11 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_get_user_latency_tolerance(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_update_user_latency_tolerance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_change_owner(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_qos_resume_latency_us_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %qos.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 28
  %0 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qos.i, align 8
  %resume_latency_req.i = getelementptr inbounds %struct.dev_pm_qos, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %resume_latency_req.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resume_latency_req.i, align 4
  %data.i = getelementptr inbounds %struct.dev_pm_qos_request, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.41) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %5)
  %cmp2 = icmp eq i32 %5, 2147483647
  %spec.store.select = select i1 %cmp2, i32 0, i32 %5
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %spec.store.select) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_qos_resume_latency_us_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #4
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !157
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %2)
  %3 = icmp ugt i32 %2, 2147483646
  br i1 %3, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then4, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2147483647, ptr %value, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  %call6 = call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.42) #4
  br i1 %call6, label %if.then7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %value, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then4, %if.end.if.end10_crit_edge
  %qos = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 28
  %6 = ptrtoint ptr %qos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qos, align 8
  %resume_latency_req = getelementptr inbounds %struct.dev_pm_qos, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %resume_latency_req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume_latency_req, align 4
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  %call11 = call i32 @dev_pm_qos_update_request(ptr noundef %9, i32 noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  %call11.n = select i1 %cmp12, i32 %call11, i32 %n
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11.n, %if.end10 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_qos_no_power_off_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %qos.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 28
  %0 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qos.i, align 8
  %flags_req.i = getelementptr inbounds %struct.dev_pm_qos, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags_req.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flags_req.i, align 4
  %flags.i = getelementptr inbounds %struct.dev_pm_qos_request, ptr %3, i32 0, i32 1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and = and i32 %5, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %and) #4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_qos_no_power_off_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #4
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !157
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %ret) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4 = icmp ne i32 %2, 0
  %call5 = call i32 @dev_pm_qos_update_flags(ptr noundef %dev, i32 noundef 1, i1 noundef zeroext %tobool4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  %call5.n = select i1 %cmp6, i32 %call5, i32 %n
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5.n, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_update_flags(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !58, !60, !62, !64, !65, !67, !69, !70, !72, !73, !75, !77, !79, !80, !82, !84, !85, !87, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !105, !106, !108, !110, !111, !113, !114, !116, !117, !119, !121, !123, !124, !126, !128, !130, !132, !134, !135, !137, !139, !141, !143, !145}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @power_group_name, !1, !"power_group_name", i1 false, i1 false}
!1 = !{!"../drivers/base/power/sysfs.c", i32 95, i32 12}
!2 = !{ptr @__ksymtab_power_group_name, !3, !"__ksymtab_power_group_name", i1 false, i1 false}
!3 = !{!"../drivers/base/power/sysfs.c", i32 96, i32 1}
!4 = !{ptr @pm_attr_group, !5, !"pm_attr_group", i1 false, i1 false}
!5 = !{!"../drivers/base/power/sysfs.c", i32 625, i32 37}
!6 = !{ptr @power_attrs, !7, !"power_attrs", i1 false, i1 false}
!7 = !{!"../drivers/base/power/sysfs.c", i32 613, i32 26}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/base/power/sysfs.c", i32 608, i32 8}
!10 = !{ptr @dev_attr_async, !9, !"dev_attr_async", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/base/power/sysfs.c", i32 591, i32 25}
!13 = !{ptr @_enabled, !14, !"_enabled", i1 false, i1 false}
!14 = !{!"../drivers/base/power/sysfs.c", i32 321, i32 19}
!15 = !{ptr @_disabled, !16, !"_disabled", i1 false, i1 false}
!16 = !{!"../drivers/base/power/sysfs.c", i32 322, i32 19}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/base/power/sysfs.c", i32 180, i32 8}
!19 = !{ptr @dev_attr_runtime_status, !18, !"dev_attr_runtime_status", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/base/power/sysfs.c", i32 156, i32 12}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/base/power/sysfs.c", i32 158, i32 12}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/base/power/sysfs.c", i32 162, i32 13}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/base/power/sysfs.c", i32 165, i32 13}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/base/power/sysfs.c", i32 168, i32 13}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/base/power/sysfs.c", i32 171, i32 13}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/base/power/sysfs.c", i32 558, i32 8}
!34 = !{ptr @dev_attr_runtime_usage, !33, !"dev_attr_runtime_usage", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/base/power/sysfs.c", i32 556, i32 25}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/base/power/sysfs.c", i32 567, i32 8}
!39 = !{ptr @dev_attr_runtime_active_kids, !38, !"dev_attr_runtime_active_kids", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/base/power/sysfs.c", i32 585, i32 8}
!42 = !{ptr @dev_attr_runtime_enabled, !41, !"dev_attr_runtime_enabled", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/base/power/sysfs.c", i32 575, i32 12}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/base/power/sysfs.c", i32 577, i32 12}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/base/power/sysfs.c", i32 579, i32 12}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/base/power/sysfs.c", i32 581, i32 12}
!51 = !{ptr @pm_runtime_attr_group, !52, !"pm_runtime_attr_group", i1 false, i1 false}
!52 = !{!"../drivers/base/power/sysfs.c", i32 662, i32 37}
!53 = !{ptr @runtime_attrs, !54, !"runtime_attrs", i1 false, i1 false}
!54 = !{!"../drivers/base/power/sysfs.c", i32 652, i32 26}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/base/power/sysfs.c", i32 122, i32 8}
!57 = !{ptr @dev_attr_control, !56, !"dev_attr_control", i1 false, i1 false}
!58 = !{ptr @ctrl_auto, !59, !"ctrl_auto", i1 false, i1 false}
!59 = !{!"../drivers/base/power/sysfs.c", i32 98, i32 19}
!60 = !{ptr @ctrl_on, !61, !"ctrl_on", i1 false, i1 false}
!61 = !{!"../drivers/base/power/sysfs.c", i32 99, i32 19}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/base/power/sysfs.c", i32 148, i32 8}
!64 = !{ptr @dev_attr_runtime_suspended_time, !63, !"dev_attr_runtime_suspended_time", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/base/power/sysfs.c", i32 145, i32 25}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/base/power/sysfs.c", i32 135, i32 8}
!69 = !{ptr @dev_attr_runtime_active_time, !68, !"dev_attr_runtime_active_time", i1 false, i1 false}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/base/power/sysfs.c", i32 209, i32 8}
!72 = !{ptr @dev_attr_autosuspend_delay_ms, !71, !"dev_attr_autosuspend_delay_ms", i1 false, i1 false}
!73 = !{ptr @pm_wakeup_attr_group, !74, !"pm_wakeup_attr_group", i1 false, i1 false}
!74 = !{!"../drivers/base/power/sysfs.c", i32 647, i32 37}
!75 = !{ptr @wakeup_attrs, !76, !"wakeup_attrs", i1 false, i1 false}
!76 = !{!"../drivers/base/power/sysfs.c", i32 630, i32 26}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/base/power/sysfs.c", i32 347, i32 8}
!79 = !{ptr @dev_attr_wakeup, !78, !"dev_attr_wakeup", i1 false, i1 false}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/base/power/sysfs.c", i32 329, i32 8}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/base/power/sysfs.c", i32 367, i32 8}
!84 = !{ptr @dev_attr_wakeup_count, !83, !"dev_attr_wakeup_count", i1 false, i1 false}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/base/power/sysfs.c", i32 363, i32 26}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/base/power/sysfs.c", i32 364, i32 25}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/base/power/sysfs.c", i32 388, i32 8}
!91 = !{ptr @dev_attr_wakeup_active_count, !90, !"dev_attr_wakeup_active_count", i1 false, i1 false}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/base/power/sysfs.c", i32 409, i32 8}
!94 = !{ptr @dev_attr_wakeup_abort_count, !93, !"dev_attr_wakeup_abort_count", i1 false, i1 false}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/base/power/sysfs.c", i32 430, i32 8}
!97 = !{ptr @dev_attr_wakeup_expire_count, !96, !"dev_attr_wakeup_expire_count", i1 false, i1 false}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/base/power/sysfs.c", i32 450, i32 8}
!100 = !{ptr @dev_attr_wakeup_active, !99, !"dev_attr_wakeup_active", i1 false, i1 false}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/base/power/sysfs.c", i32 447, i32 25}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/base/power/sysfs.c", i32 471, i32 8}
!105 = !{ptr @dev_attr_wakeup_total_time_ms, !104, !"dev_attr_wakeup_total_time_ms", i1 false, i1 false}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/base/power/sysfs.c", i32 468, i32 25}
!108 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/base/power/sysfs.c", i32 491, i32 8}
!110 = !{ptr @dev_attr_wakeup_max_time_ms, !109, !"dev_attr_wakeup_max_time_ms", i1 false, i1 false}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/base/power/sysfs.c", i32 520, i32 8}
!113 = !{ptr @dev_attr_wakeup_last_time_ms, !112, !"dev_attr_wakeup_last_time_ms", i1 false, i1 false}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/base/power/sysfs.c", i32 542, i32 8}
!116 = !{ptr @dev_attr_wakeup_prevent_sleep_time_ms, !115, !"dev_attr_wakeup_prevent_sleep_time_ms", i1 false, i1 false}
!117 = !{ptr @pm_qos_latency_tolerance_attr_group, !118, !"pm_qos_latency_tolerance_attr_group", i1 false, i1 false}
!118 = !{!"../drivers/base/power/sysfs.c", i32 680, i32 37}
!119 = !{ptr @pm_qos_latency_tolerance_attrs, !120, !"pm_qos_latency_tolerance_attrs", i1 false, i1 false}
!120 = !{!"../drivers/base/power/sysfs.c", i32 676, i32 26}
!121 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/base/power/sysfs.c", i32 292, i32 8}
!123 = !{ptr @dev_attr_pm_qos_latency_tolerance_us, !122, !"dev_attr_pm_qos_latency_tolerance_us", i1 false, i1 false}
!124 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/base/power/sysfs.c", i32 262, i32 34}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/base/power/sysfs.c", i32 264, i32 34}
!128 = !{ptr @pm_qos_resume_latency_attr_group, !129, !"pm_qos_resume_latency_attr_group", i1 false, i1 false}
!129 = !{!"../drivers/base/power/sysfs.c", i32 671, i32 37}
!130 = !{ptr @pm_qos_resume_latency_attrs, !131, !"pm_qos_resume_latency_attrs", i1 false, i1 false}
!131 = !{!"../drivers/base/power/sysfs.c", i32 667, i32 26}
!132 = !{ptr @.str.40, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/base/power/sysfs.c", i32 253, i32 8}
!134 = !{ptr @dev_attr_pm_qos_resume_latency_us, !133, !"dev_attr_pm_qos_resume_latency_us", i1 false, i1 false}
!135 = !{ptr @.str.41, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/base/power/sysfs.c", i32 218, i32 26}
!137 = !{ptr @.str.42, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/base/power/sysfs.c", i32 242, i32 30}
!139 = !{ptr @pm_qos_flags_attr_group, !140, !"pm_qos_flags_attr_group", i1 false, i1 false}
!140 = !{!"../drivers/base/power/sysfs.c", i32 689, i32 37}
!141 = !{ptr @pm_qos_flags_attrs, !142, !"pm_qos_flags_attrs", i1 false, i1 false}
!142 = !{!"../drivers/base/power/sysfs.c", i32 685, i32 26}
!143 = !{ptr @.str.43, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/base/power/sysfs.c", i32 318, i32 8}
!145 = !{ptr @dev_attr_pm_qos_no_power_off, !144, !"dev_attr_pm_qos_no_power_off", i1 false, i1 false}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{i64 836586, i64 836613}
!156 = !{i64 837281, i64 837308, i64 837341, i64 837362, i64 837389, i64 837415}
!157 = !{!"auto-init"}
