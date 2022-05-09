; ModuleID = '/llk/IR_all_yes/drivers/cpuidle/sysfs.c_pt.bc'
source_filename = "../drivers/cpuidle/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sysfs_ops = type { ptr, ptr }
%struct.cpuidle_state_attr = type { %struct.attribute, ptr, ptr }
%struct.cpuidle_driver_attr = type { %struct.attribute, ptr, ptr }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpumask = type { [1 x i32] }
%struct.cpuidle_driver_kobj = type { ptr, %struct.completion, %struct.kobject }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cpuidle_device_kobj = type { ptr, %struct.completion, %struct.kobject }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.cpuidle_state_kobj = type { ptr, ptr, %struct.completion, %struct.kobject, ptr }
%struct.cpuidle_attr = type { %struct.attribute, ptr, ptr }

@cpuidle_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @cpuidle_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ktype_cpuidle = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @cpuidle_sysfs_release, ptr @cpuidle_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpuidle\00", [24 x i8] zeroinitializer }, align 32
@cpuidle_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_available_governors, ptr @dev_attr_current_driver, ptr @dev_attr_current_governor, ptr @dev_attr_current_governor_ro, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_available_governors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_available_governors, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_current_driver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_current_driver, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_current_governor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_current_governor, ptr @store_current_governor }, [36 x i8] zeroinitializer }, align 32
@dev_attr_current_governor_ro = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_current_governor, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"available_governors\00", [44 x i8] zeroinitializer }, align 32
@cpuidle_lock = external dso_local global %struct.mutex, align 4
@cpuidle_governors = external dso_local global %struct.list_head, align 4
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"current_driver\00", [17 x i8] zeroinitializer }, align 32
@cpuidle_driver_lock = external dso_local global %struct.spinlock, align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"current_governor\00", [47 x i8] zeroinitializer }, align 32
@cpuidle_curr_governor = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%16s\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"current_governor_ro\00", [44 x i8] zeroinitializer }, align 32
@ktype_state_cpuidle = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @cpuidle_state_sysfs_release, ptr @cpuidle_state_sysfs_ops, ptr null, ptr @cpuidle_state_default_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"state%d\00", [24 x i8] zeroinitializer }, align 32
@cpuidle_state_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @cpuidle_state_show, ptr @cpuidle_state_store }, [24 x i8] zeroinitializer }, align 32
@cpuidle_state_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @cpuidle_state_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@cpuidle_state_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cpuidle_state_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cpuidle_state_default_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @attr_name, ptr @attr_desc, ptr @attr_latency, ptr @attr_residency, ptr @attr_power, ptr @attr_usage, ptr @attr_rejected, ptr @attr_time, ptr @attr_disable, ptr @attr_above, ptr @attr_below, ptr @attr_default_status, ptr null], [44 x i8] zeroinitializer }, align 32
@attr_name = internal global { %struct.cpuidle_state_attr, [36 x i8] } { %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_name, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_desc = internal global { %struct.cpuidle_state_attr, [36 x i8] } { %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_desc, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_latency = internal global { %struct.cpuidle_state_attr, [36 x i8] } { %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_exit_latency, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_residency = internal global { %struct.cpuidle_state_attr, [36 x i8] } { %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_target_residency, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_power = internal global { %struct.cpuidle_state_attr, [36 x i8] } { %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_power_usage, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_usage = internal global { %struct.cpuidle_state_attr, [36 x i8] } { %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_usage, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_rejected = internal global { %struct.cpuidle_state_attr, [36 x i8] } { %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_rejected, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_time = internal global { %struct.cpuidle_state_attr, [36 x i8] } { %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_time, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_disable = internal global { %struct.cpuidle_state_attr, [36 x i8] } { %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_disable, ptr @store_state_disable }, [36 x i8] zeroinitializer }, align 32
@attr_above = internal global { %struct.cpuidle_state_attr, [36 x i8] } { %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_above, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_below = internal global { %struct.cpuidle_state_attr, [36 x i8] } { %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_below, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_default_status = internal global { %struct.cpuidle_state_attr, [36 x i8] } { %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_default_status, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"desc\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"latency\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"residency\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usage\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rejected\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"time\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"above\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"below\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"default_status\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@cpuidle_state_s2idle_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.32, ptr null, ptr null, ptr @cpuidle_state_s2idle_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cpuidle_add_s2idle_attr_group.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sysfs\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cpuidle_add_s2idle_attr_group\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/cpuidle/sysfs.c\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: sysfs attribute group not created\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s2idle\00", [25 x i8] zeroinitializer }, align 32
@cpuidle_state_s2idle_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @attr_s2idle_usage, ptr @attr_s2idle_time, ptr null], [20 x i8] zeroinitializer }, align 32
@attr_s2idle_usage = internal global { %struct.cpuidle_state_attr, [36 x i8] } { %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_s2idle_usage, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_s2idle_time = internal global { %struct.cpuidle_state_attr, [36 x i8] } { %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_s2idle_time, ptr null }, [36 x i8] zeroinitializer }, align 32
@ktype_driver_cpuidle = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @cpuidle_driver_sysfs_release, ptr @cpuidle_driver_sysfs_ops, ptr null, ptr @cpuidle_driver_default_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"driver\00", [25 x i8] zeroinitializer }, align 32
@cpuidle_driver_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @cpuidle_driver_show, ptr @cpuidle_driver_store }, [24 x i8] zeroinitializer }, align 32
@cpuidle_driver_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @cpuidle_driver_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@cpuidle_driver_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cpuidle_driver_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cpuidle_driver_default_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @attr_driver_name, ptr null], [24 x i8] zeroinitializer }, align 32
@attr_driver_name = internal global { %struct.cpuidle_driver_attr, [36 x i8] } { %struct.cpuidle_driver_attr { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_driver_name, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cpuidle_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @cpuidle_show, ptr @cpuidle_store }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"cpuidle_attr_group\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 115, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"ktype_cpuidle\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 203, i32 25 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 716, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"cpuidle_attrs\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 107, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant [29 x i8] c"dev_attr_available_governors\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"dev_attr_current_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [26 x i8] c"dev_attr_current_governor\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [29 x i8] c"dev_attr_current_governor_ro\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 101, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 33, i32 49 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 102, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 52, i32 22 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 54, i32 22 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 103, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 84, i32 20 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 105, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"ktype_state_cpuidle\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 450, i32 25 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 489, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant [24 x i8] c"cpuidle_state_sysfs_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 438, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant [29 x i8] c"cpuidle_state_default_groups\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [28 x i8] c"cpuidle_state_default_group\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 338, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant [28 x i8] c"cpuidle_state_default_attrs\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 323, i32 26 }
@___asan_gen_.102 = private unnamed_addr constant [10 x i8] c"attr_name\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [10 x i8] c"attr_desc\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [13 x i8] c"attr_latency\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"attr_residency\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"attr_power\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [11 x i8] c"attr_usage\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"attr_rejected\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [10 x i8] c"attr_time\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [13 x i8] c"attr_disable\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [11 x i8] c"attr_above\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [11 x i8] c"attr_below\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c"attr_default_status\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 310, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 311, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 312, i32 1 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 255, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 313, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 314, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 257, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 315, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 316, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 317, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 318, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 319, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 320, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 321, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 307, i32 44 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 307, i32 57 }
@___asan_gen_.186 = private unnamed_addr constant [27 x i8] c"cpuidle_state_s2idle_group\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 373, i32 37 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 387, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 374, i32 10 }
@___asan_gen_.204 = private unnamed_addr constant [27 x i8] c"cpuidle_state_s2idle_attrs\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 367, i32 26 }
@___asan_gen_.207 = private unnamed_addr constant [18 x i8] c"attr_s2idle_usage\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 364, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"attr_s2idle_time\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 365, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant [21 x i8] c"ktype_driver_cpuidle\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 597, i32 25 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 622, i32 21 }
@___asan_gen_.219 = private unnamed_addr constant [25 x i8] c"cpuidle_driver_sysfs_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 586, i32 31 }
@___asan_gen_.222 = private unnamed_addr constant [30 x i8] c"cpuidle_driver_default_groups\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [29 x i8] c"cpuidle_driver_default_group\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 595, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant [29 x i8] c"cpuidle_driver_default_attrs\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 591, i32 26 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"attr_driver_name\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 584, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 546, i32 47 }
@___asan_gen_.237 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 87, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [18 x i8] c"cpuidle_sysfs_ops\00", align 1
@___asan_gen_.244 = private constant [27 x i8] c"../drivers/cpuidle/sysfs.c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 190, i32 31 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @cpuidle_attr_group, ptr @ktype_cpuidle, ptr @.str, ptr @cpuidle_attrs, ptr @dev_attr_available_governors, ptr @dev_attr_current_driver, ptr @dev_attr_current_governor, ptr @dev_attr_current_governor_ro, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ktype_state_cpuidle, ptr @.str.10, ptr @cpuidle_state_sysfs_ops, ptr @cpuidle_state_default_groups, ptr @cpuidle_state_default_group, ptr @cpuidle_state_default_attrs, ptr @attr_name, ptr @attr_desc, ptr @attr_latency, ptr @attr_residency, ptr @attr_power, ptr @attr_usage, ptr @attr_rejected, ptr @attr_time, ptr @attr_disable, ptr @attr_above, ptr @attr_below, ptr @attr_default_status, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @cpuidle_state_s2idle_group, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @cpuidle_state_s2idle_attrs, ptr @attr_s2idle_usage, ptr @attr_s2idle_time, ptr @ktype_driver_cpuidle, ptr @.str.33, ptr @cpuidle_driver_sysfs_ops, ptr @cpuidle_driver_default_groups, ptr @cpuidle_driver_default_group, ptr @cpuidle_driver_default_attrs, ptr @attr_driver_name, ptr @.str.34, ptr @init_completion.__key, ptr @.str.35, ptr @cpuidle_sysfs_ops], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktype_cpuidle to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_governors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_current_driver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_current_governor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_current_governor_ro to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktype_state_cpuidle to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_state_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_state_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_state_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_state_default_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_desc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_latency to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_residency to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_power to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_usage to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_rejected to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_time to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_disable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_above to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_below to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_default_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_state_s2idle_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_state_s2idle_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_s2idle_usage to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_s2idle_time to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktype_driver_cpuidle to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_driver_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_driver_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_driver_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_driver_default_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_driver_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpuidle_add_interface(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @cpuidle_attr_group) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuidle_remove_interface(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @cpuidle_attr_group) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpuidle_add_device_sysfs(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cpuidle_add_state_sysfs(ptr noundef %device)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %kobj_dev.i = getelementptr inbounds %struct.cpuidle_device, ptr %device, i32 0, i32 10
  %0 = ptrtoint ptr %kobj_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kobj_dev.i, align 4
  %call.i = tail call ptr @cpuidle_get_cpu_driver(ptr noundef %device) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 196) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %call7.i.i.i, align 8
  %kobj_unregister.i = getelementptr inbounds %struct.cpuidle_driver_kobj, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %kobj_unregister.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %kobj_unregister.i, align 4
  %wait.i.i = getelementptr inbounds %struct.cpuidle_driver_kobj, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #8
  %kobj.i = getelementptr inbounds %struct.cpuidle_driver_kobj, ptr %call7.i.i.i, i32 0, i32 2
  %kobj3.i = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %1, i32 0, i32 2
  %call4.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj.i, ptr noundef nonnull @ktype_driver_cpuidle, ptr noundef %kobj3.i, ptr noundef nonnull @.str.33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %cpuidle_add_driver_sysfs.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kobject_put(ptr noundef %kobj.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %if.then3

cpuidle_add_driver_sysfs.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i = tail call i32 @kobject_uevent(ptr noundef %kobj.i, i32 noundef 0) #8
  %kobj_driver.i = getelementptr inbounds %struct.cpuidle_device, ptr %device, i32 0, i32 9
  %5 = ptrtoint ptr %kobj_driver.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %kobj_driver.i, align 8
  br label %cleanup

if.then3:                                         ; preds = %if.then6.i, %if.end.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.if.then3_crit_edge ], [ %call4.i, %if.then6.i ]
  tail call fastcc void @cpuidle_remove_state_sysfs(ptr noundef %device)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %cpuidle_add_driver_sysfs.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %if.then3 ], [ 0, %cpuidle_add_driver_sysfs.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpuidle_add_state_sysfs(ptr noundef %device) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj_dev = getelementptr inbounds %struct.cpuidle_device, ptr %device, i32 0, i32 10
  %0 = ptrtoint ptr %kobj_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kobj_dev, align 4
  %call = tail call ptr @cpuidle_get_cpu_driver(ptr noundef %device) #8
  %state_count = getelementptr inbounds %struct.cpuidle_driver, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp54 = icmp sgt i32 %3, 0
  br i1 %cmp54, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %kobj5 = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cpuidle_add_s2idle_attr_group.exit.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cpuidle_add_s2idle_attr_group.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 204) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.error_state_crit_edge, label %if.end

for.body.error_state_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_state

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.cpuidle_driver, ptr %call, i32 0, i32 3, i32 %i.055
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %call7.i.i, align 8
  %arrayidx2 = getelementptr %struct.cpuidle_device, ptr %device, i32 0, i32 7, i32 %i.055
  %state_usage = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %state_usage to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx2, ptr %state_usage, align 4
  %device3 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %device3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %device, ptr %device3, align 8
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %kobj_unregister, align 8
  %wait.i = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #8
  %kobj4 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %call7.i.i, i32 0, i32 3
  %call6 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj4, ptr noundef nonnull @ktype_state_cpuidle, ptr noundef %kobj5, ptr noundef nonnull @.str.10, i32 noundef %i.055) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kobject_put(ptr noundef %kobj4) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %error_state

if.end10:                                         ; preds = %if.end
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i, align 8
  %enter_s2idle.i = getelementptr inbounds %struct.cpuidle_state, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %enter_s2idle.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enter_s2idle.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end10.cpuidle_add_s2idle_attr_group.exit_crit_edge, label %if.end.i

if.end10.cpuidle_add_s2idle_attr_group.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpuidle_add_s2idle_attr_group.exit

if.end.i:                                         ; preds = %if.end10
  %call.i = tail call i32 @sysfs_create_group(ptr noundef %kobj4, ptr noundef nonnull @cpuidle_state_s2idle_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cpuidle_add_s2idle_attr_group.exit_crit_edge, label %do.body.i

if.end.i.cpuidle_add_s2idle_attr_group.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpuidle_add_s2idle_attr_group.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpuidle_add_s2idle_attr_group.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpuidle_add_state_sysfs, %if.then8.i)) #8
          to label %cpuidle_add_s2idle_attr_group.exit [label %if.then8.i], !srcloc !132

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cpuidle_add_s2idle_attr_group.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29) #8
  br label %cpuidle_add_s2idle_attr_group.exit

cpuidle_add_s2idle_attr_group.exit:               ; preds = %if.then8.i, %do.body.i, %if.end.i.cpuidle_add_s2idle_attr_group.exit_crit_edge, %if.end10.cpuidle_add_s2idle_attr_group.exit_crit_edge
  %call12 = tail call i32 @kobject_uevent(ptr noundef %kobj4, i32 noundef 0) #8
  %arrayidx13 = getelementptr %struct.cpuidle_device, ptr %device, i32 0, i32 8, i32 %i.055
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %arrayidx13, align 4
  %inc = add nuw nsw i32 %i.055, 1
  %14 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state_count, align 8
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %cpuidle_add_s2idle_attr_group.exit.for.body_crit_edge, label %cpuidle_add_s2idle_attr_group.exit.cleanup_crit_edge

cpuidle_add_s2idle_attr_group.exit.cleanup_crit_edge: ; preds = %cpuidle_add_s2idle_attr_group.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cpuidle_add_s2idle_attr_group.exit.for.body_crit_edge: ; preds = %cpuidle_add_s2idle_attr_group.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

error_state:                                      ; preds = %if.then8, %for.body.error_state_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then8 ], [ -12, %for.body.error_state_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.055)
  %cmp1557.not = icmp eq i32 %i.055, 0
  br i1 %cmp1557.not, label %error_state.cleanup_crit_edge, label %error_state.for.body16_crit_edge

error_state.for.body16_crit_edge:                 ; preds = %error_state
  br label %for.body16

error_state.cleanup_crit_edge:                    ; preds = %error_state
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body16:                                       ; preds = %cpuidle_free_state_kobj.exit.for.body16_crit_edge, %error_state.for.body16_crit_edge
  %i.158.in = phi i32 [ %i.158, %cpuidle_free_state_kobj.exit.for.body16_crit_edge ], [ %i.055, %error_state.for.body16_crit_edge ]
  %i.158 = add nsw i32 %i.158.in, -1
  %arrayidx.i = getelementptr %struct.cpuidle_device, ptr %device, i32 0, i32 8, i32 %i.158
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %enter_s2idle.i.i = getelementptr inbounds %struct.cpuidle_state, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %enter_s2idle.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enter_s2idle.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %for.body16.cpuidle_free_state_kobj.exit_crit_edge, label %if.then.i.i

for.body16.cpuidle_free_state_kobj.exit_crit_edge: ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpuidle_free_state_kobj.exit

if.then.i.i:                                      ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  %kobj1.i.i = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %17, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %kobj1.i.i, ptr noundef nonnull @cpuidle_state_s2idle_group) #8
  br label %cpuidle_free_state_kobj.exit

cpuidle_free_state_kobj.exit:                     ; preds = %if.then.i.i, %for.body16.cpuidle_free_state_kobj.exit_crit_edge
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %kobj.i = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %23, i32 0, i32 3
  tail call void @kobject_put(ptr noundef %kobj.i) #8
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %kobj_unregister.i = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %25, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %kobj_unregister.i) #8
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %27) #8
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx.i, align 4
  %cmp15 = icmp sgt i32 %i.158.in, 1
  br i1 %cmp15, label %cpuidle_free_state_kobj.exit.for.body16_crit_edge, label %cpuidle_free_state_kobj.exit.cleanup_crit_edge

cpuidle_free_state_kobj.exit.cleanup_crit_edge:   ; preds = %cpuidle_free_state_kobj.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cpuidle_free_state_kobj.exit.for.body16_crit_edge: ; preds = %cpuidle_free_state_kobj.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16

cleanup:                                          ; preds = %cpuidle_free_state_kobj.exit.cleanup_crit_edge, %error_state.cleanup_crit_edge, %cpuidle_add_s2idle_attr_group.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_state.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %cpuidle_free_state_kobj.exit.cleanup_crit_edge ], [ 0, %cpuidle_add_s2idle_attr_group.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpuidle_remove_state_sysfs(ptr noundef %device) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cpuidle_get_cpu_driver(ptr noundef %device) #8
  %state_count = getelementptr inbounds %struct.cpuidle_driver, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cpuidle_free_state_kobj.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %cpuidle_free_state_kobj.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.cpuidle_device, ptr %device, i32 0, i32 8, i32 %i.05
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %enter_s2idle.i.i = getelementptr inbounds %struct.cpuidle_state, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %enter_s2idle.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enter_s2idle.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %for.body.cpuidle_free_state_kobj.exit_crit_edge, label %if.then.i.i

for.body.cpuidle_free_state_kobj.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpuidle_free_state_kobj.exit

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %kobj1.i.i = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %3, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %kobj1.i.i, ptr noundef nonnull @cpuidle_state_s2idle_group) #8
  br label %cpuidle_free_state_kobj.exit

cpuidle_free_state_kobj.exit:                     ; preds = %if.then.i.i, %for.body.cpuidle_free_state_kobj.exit_crit_edge
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %kobj.i = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %9, i32 0, i32 3
  tail call void @kobject_put(ptr noundef %kobj.i) #8
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %kobj_unregister.i = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %11, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %kobj_unregister.i) #8
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %13) #8
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.i, align 4
  %inc = add nuw nsw i32 %i.05, 1
  %15 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state_count, align 8
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %cpuidle_free_state_kobj.exit.for.body_crit_edge, label %cpuidle_free_state_kobj.exit.for.end_crit_edge

cpuidle_free_state_kobj.exit.for.end_crit_edge:   ; preds = %cpuidle_free_state_kobj.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cpuidle_free_state_kobj.exit.for.body_crit_edge:  ; preds = %cpuidle_free_state_kobj.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cpuidle_free_state_kobj.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuidle_remove_device_sysfs(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj_driver.i = getelementptr inbounds %struct.cpuidle_device, ptr %device, i32 0, i32 9
  %0 = ptrtoint ptr %kobj_driver.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kobj_driver.i, align 8
  %kobj.i = getelementptr inbounds %struct.cpuidle_driver_kobj, ptr %1, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %kobj.i) #8
  %kobj_unregister.i = getelementptr inbounds %struct.cpuidle_driver_kobj, ptr %1, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %kobj_unregister.i) #8
  tail call void @kfree(ptr noundef %1) #8
  tail call fastcc void @cpuidle_remove_state_sysfs(ptr noundef %device)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpuidle_add_sysfs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %call = tail call ptr @get_cpu_device(i32 noundef %1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 196) #11
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call7.i.i, align 8
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %kobj_unregister, align 4
  %wait.i = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #8
  %kobj = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %call7.i.i, i32 0, i32 2
  %call7 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef nonnull @ktype_cpuidle, ptr noundef nonnull %call, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kobject_put(ptr noundef %kobj) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %kobj_dev = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 10
  %5 = ptrtoint ptr %kobj_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %kobj_dev, align 4
  %call13 = tail call i32 @kobject_uevent(ptr noundef %kobj, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ 0, %if.end11 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuidle_remove_sysfs(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj_dev = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %kobj_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kobj_dev, align 4
  %kobj = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %1, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %kobj) #8
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %1, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %kobj_unregister) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_available_governors(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuidle_lock, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpuidle_governors to i32))
  %.pn18 = load ptr, ptr @cpuidle_governors, align 4
  %cmp.not19 = icmp eq ptr %.pn18, @cpuidle_governors
  br i1 %cmp.not19, label %entry.out_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %.pn21 = phi ptr [ %.pn, %if.end.if.end_crit_edge ], [ %.pn18, %entry.if.end_crit_edge ]
  %i.020 = phi i32 [ %add, %if.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %tmp.0 = getelementptr i8, ptr %.pn21, i32 -16
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.020
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef 17, ptr noundef nonnull @.str.2, ptr noundef %tmp.0) #8
  %add = add i32 %call, %i.020
  %0 = ptrtoint ptr %.pn21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn21, align 4
  %cmp.not = icmp eq ptr %.pn, @cpuidle_governors
  call void @__sanitizer_cov_trace_const_cmp4(i32 4077, i32 %add)
  %cmp2 = icmp sgt i32 %add, 4077
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp2
  br i1 %or.cond, label %if.end.out_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %if.end.out_crit_edge, %entry.out_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.out_crit_edge ], [ %add, %if.end.out_crit_edge ]
  %arrayidx7 = getelementptr i8, ptr %buf, i32 %i.0.lcssa
  %1 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 2560, ptr %arrayidx7, align 1
  %add9 = add i32 %i.0.lcssa, 1
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #8
  ret i32 %add9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_current_driver(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpuidle_driver_lock) #8
  %call = tail call ptr @cpuidle_get_driver() #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef %1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = call ptr @memcpy(ptr %buf, ptr @.str.6, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ 5, %if.else ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cpuidle_driver_lock) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpuidle_get_driver() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_current_governor(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuidle_lock, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpuidle_curr_governor to i32))
  %0 = load ptr, ptr @cpuidle_curr_governor, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %0)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = call ptr @memcpy(ptr %buf, ptr @.str.6, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ 5, %if.else ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_current_governor(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %gov_name = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %gov_name) #8
  %0 = call ptr @memset(ptr %gov_name, i32 255, i32 17)
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.8, ptr noundef nonnull %gov_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef nonnull @cpuidle_lock, i32 noundef 0) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ @cpuidle_governors, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp1.not = icmp eq ptr %.pn, @cpuidle_governors
  br i1 %cmp1.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %gov.0 = getelementptr i8, ptr %.pn, i32 -16
  %call4 = call i32 @strncmp(ptr noundef %gov.0, ptr noundef nonnull %gov_name, i32 noundef 16)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call i32 @cpuidle_switch_governor(ptr noundef %gov.0) #8
  call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool12.not = icmp eq i32 %call6, 0
  %spec.select = select i1 %tobool12.not, i32 %count, i32 %call6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.end.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.thread ], [ %spec.select, %for.end ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %gov_name) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_switch_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpuidle_get_cpu_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuidle_state_sysfs_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj_unregister = getelementptr i8, ptr %kobj, i32 -56
  tail call void @complete(ptr noundef %kobj_unregister) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuidle_state_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.cpuidle_state_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state_usage5 = getelementptr i8, ptr %kobj, i32 -60
  %2 = ptrtoint ptr %state_usage5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state_usage5, align 4
  %add.ptr = getelementptr i8, ptr %kobj, i32 -64
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 %1(ptr noundef %5, ptr noundef %3, ptr noundef %buf) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -5, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuidle_state_store(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %kobj, i32 136
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %store = getelementptr inbounds %struct.cpuidle_state_attr, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %kobj, i32 -64
  %state_usage5 = getelementptr i8, ptr %kobj, i32 -60
  %4 = ptrtoint ptr %state_usage5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state_usage5, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 %3(ptr noundef %7, ptr noundef %5, ptr noundef %buf, i32 noundef %size) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -5, %entry.if.end_crit_edge ]
  %poll_limit_ns = getelementptr inbounds %struct.cpuidle_device, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %poll_limit_ns to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %poll_limit_ns, align 8
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_name(ptr noundef %state, ptr nocapture noundef readnone %state_usage, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 4354546998246771200, ptr %buf, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef %state)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 7, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_desc(ptr noundef %state, ptr nocapture noundef readnone %state_usage, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.cpuidle_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %desc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 4354546998246771200, ptr %buf, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef %desc)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 7, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_exit_latency(ptr nocapture noundef readonly %state, ptr nocapture noundef readnone %state_usage, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exit_latency_ns = getelementptr inbounds %struct.cpuidle_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %exit_latency_ns to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %exit_latency_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp8.i.i = icmp slt i64 %1, 0
  %2 = tail call i64 @llvm.abs.i64(i64 %1, i1 false) #8
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %2, i32 0) #12, !srcloc !133
  %asmresult.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %2, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !134
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %cond213.i.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_target_residency(ptr nocapture noundef readonly %state, ptr nocapture noundef readnone %state_usage, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %target_residency_ns = getelementptr inbounds %struct.cpuidle_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %target_residency_ns to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %target_residency_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp8.i.i = icmp slt i64 %1, 0
  %2 = tail call i64 @llvm.abs.i64(i64 %1, i1 false) #8
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %2, i32 0) #12, !srcloc !133
  %asmresult.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %2, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !134
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %cond213.i.i)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_power_usage(ptr nocapture noundef readonly %state, ptr nocapture noundef readnone %state_usage, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %power_usage = getelementptr inbounds %struct.cpuidle_state, ptr %state, i32 0, i32 6
  %0 = ptrtoint ptr %power_usage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_usage, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_usage(ptr nocapture noundef readnone %state, ptr nocapture noundef readonly %state_usage, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usage = getelementptr inbounds %struct.cpuidle_state_usage, ptr %state_usage, i32 0, i32 1
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %usage, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_rejected(ptr nocapture noundef readnone %state, ptr nocapture noundef readonly %state_usage, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rejected = getelementptr inbounds %struct.cpuidle_state_usage, ptr %state_usage, i32 0, i32 5
  %0 = ptrtoint ptr %rejected to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rejected, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_time(ptr nocapture noundef readnone %state, ptr nocapture noundef readonly %state_usage, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %time_ns = getelementptr inbounds %struct.cpuidle_state_usage, ptr %state_usage, i32 0, i32 2
  %0 = ptrtoint ptr %time_ns to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %time_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp8.i.i = icmp slt i64 %1, 0
  %2 = tail call i64 @llvm.abs.i64(i64 %1, i1 false) #8
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %2, i32 0) #12, !srcloc !133
  %asmresult.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %2, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !134
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %cond213.i.i)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_disable(ptr nocapture noundef readnone %state, ptr nocapture noundef readonly %state_usage, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state_usage to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %state_usage, align 8
  %and = and i64 %1, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %and)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_state_disable(ptr nocapture noundef readnone %state, ptr nocapture noundef %state_usage, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !135
  %call = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  %3 = ptrtoint ptr %state_usage to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %state_usage, align 8
  %and = and i64 %4, 4294967294
  %or = or i64 %4, 1
  %storemerge = select i1 %tobool4.not, i64 %and, i64 %or
  store i64 %storemerge, ptr %state_usage, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end3 ], [ -1, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_above(ptr nocapture noundef readnone %state, ptr nocapture noundef readonly %state_usage, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %above = getelementptr inbounds %struct.cpuidle_state_usage, ptr %state_usage, i32 0, i32 3
  %0 = ptrtoint ptr %above to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %above, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_below(ptr nocapture noundef readnone %state, ptr nocapture noundef readonly %state_usage, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %below = getelementptr inbounds %struct.cpuidle_state_usage, ptr %state_usage, i32 0, i32 4
  %0 = ptrtoint ptr %below to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %below, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_default_status(ptr nocapture noundef readonly %state, ptr nocapture noundef readnone %state_usage, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.cpuidle_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.27, ptr @.str.26
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_s2idle_usage(ptr nocapture noundef readnone %state, ptr nocapture noundef readonly %state_usage, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s2idle_usage = getelementptr inbounds %struct.cpuidle_state_usage, ptr %state_usage, i32 0, i32 6
  %0 = ptrtoint ptr %s2idle_usage to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %s2idle_usage, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_s2idle_time(ptr nocapture noundef readnone %state, ptr nocapture noundef readonly %state_usage, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s2idle_time = getelementptr inbounds %struct.cpuidle_state_usage, ptr %state_usage, i32 0, i32 7
  %0 = ptrtoint ptr %s2idle_time to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %s2idle_time, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuidle_driver_sysfs_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj_unregister = getelementptr i8, ptr %kobj, i32 -56
  tail call void @complete(ptr noundef %kobj_unregister) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuidle_driver_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.cpuidle_driver_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %kobj, i32 -60
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 %1(ptr noundef %3, ptr noundef %buf) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -5, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuidle_driver_store(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.cpuidle_driver_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %kobj, i32 -60
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 %1(ptr noundef %3, ptr noundef %buf, i32 noundef %size) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -5, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_driver_name(ptr noundef readonly %drv, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpuidle_driver_lock) #8
  %tobool.not = icmp eq ptr %drv, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ @.str.34, %entry.cond.end_crit_edge ]
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef %cond)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cpuidle_driver_lock) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuidle_sysfs_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj_unregister = getelementptr i8, ptr %kobj, i32 -56
  tail call void @complete(ptr noundef %kobj_unregister) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuidle_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.cpuidle_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -60
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuidle_lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %show, align 4
  %call2 = tail call i32 %5(ptr noundef %3, ptr noundef %buf) #8
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ -5, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuidle_store(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.cpuidle_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -60
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuidle_lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %store, align 4
  %call2 = tail call i32 %5(ptr noundef %3, ptr noundef %buf, i32 noundef %count) #8
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ -5, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !36, !37, !39, !41, !42, !44, !46, !47, !49, !50, !52, !54, !55, !57, !58, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !85, !87, !88, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !112, !114, !116, !118, !119, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/cpuidle/sysfs.c", i32 716, i32 8}
!2 = !{ptr @cpuidle_attr_group, !3, !"cpuidle_attr_group", i1 false, i1 false}
!3 = !{!"../drivers/cpuidle/sysfs.c", i32 115, i32 31}
!4 = !{ptr @cpuidle_attrs, !5, !"cpuidle_attrs", i1 false, i1 false}
!5 = !{!"../drivers/cpuidle/sysfs.c", i32 107, i32 26}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/cpuidle/sysfs.c", i32 101, i32 8}
!8 = !{ptr @dev_attr_available_governors, !7, !"dev_attr_available_governors", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/cpuidle/sysfs.c", i32 33, i32 49}
!11 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/cpuidle/sysfs.c", i32 37, i32 23}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/cpuidle/sysfs.c", i32 102, i32 8}
!15 = !{ptr @dev_attr_current_driver, !14, !"dev_attr_current_driver", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/cpuidle/sysfs.c", i32 52, i32 22}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/cpuidle/sysfs.c", i32 54, i32 22}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/cpuidle/sysfs.c", i32 103, i32 8}
!22 = !{ptr @dev_attr_current_governor, !21, !"dev_attr_current_governor", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/cpuidle/sysfs.c", i32 84, i32 20}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/cpuidle/sysfs.c", i32 105, i32 8}
!27 = !{ptr @dev_attr_current_governor_ro, !26, !"dev_attr_current_governor_ro", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/cpuidle/sysfs.c", i32 489, i32 22}
!30 = !{ptr @ktype_state_cpuidle, !31, !"ktype_state_cpuidle", i1 false, i1 false}
!31 = !{!"../drivers/cpuidle/sysfs.c", i32 450, i32 25}
!32 = !{ptr @cpuidle_state_sysfs_ops, !33, !"cpuidle_state_sysfs_ops", i1 false, i1 false}
!33 = !{!"../drivers/cpuidle/sysfs.c", i32 438, i32 31}
!34 = !{ptr @cpuidle_state_default_groups, !35, !"cpuidle_state_default_groups", i1 false, i1 false}
!35 = !{!"../drivers/cpuidle/sysfs.c", i32 338, i32 1}
!36 = !{ptr @cpuidle_state_default_group, !35, !"cpuidle_state_default_group", i1 false, i1 false}
!37 = !{ptr @cpuidle_state_default_attrs, !38, !"cpuidle_state_default_attrs", i1 false, i1 false}
!38 = !{!"../drivers/cpuidle/sysfs.c", i32 323, i32 26}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/cpuidle/sysfs.c", i32 310, i32 1}
!41 = !{ptr @attr_name, !40, !"attr_name", i1 false, i1 false}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/cpuidle/sysfs.c", i32 260, i32 1}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/cpuidle/sysfs.c", i32 311, i32 1}
!46 = !{ptr @attr_desc, !45, !"attr_desc", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/cpuidle/sysfs.c", i32 312, i32 1}
!49 = !{ptr @attr_latency, !48, !"attr_latency", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/cpuidle/sysfs.c", i32 255, i32 1}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/cpuidle/sysfs.c", i32 313, i32 1}
!54 = !{ptr @attr_residency, !53, !"attr_residency", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/cpuidle/sysfs.c", i32 314, i32 1}
!57 = !{ptr @attr_power, !56, !"attr_power", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/cpuidle/sysfs.c", i32 257, i32 1}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/cpuidle/sysfs.c", i32 315, i32 1}
!62 = !{ptr @attr_usage, !61, !"attr_usage", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/cpuidle/sysfs.c", i32 316, i32 1}
!65 = !{ptr @attr_rejected, !64, !"attr_rejected", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/cpuidle/sysfs.c", i32 317, i32 1}
!68 = !{ptr @attr_time, !67, !"attr_time", i1 false, i1 false}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/cpuidle/sysfs.c", i32 318, i32 1}
!71 = !{ptr @attr_disable, !70, !"attr_disable", i1 false, i1 false}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/cpuidle/sysfs.c", i32 319, i32 1}
!74 = !{ptr @attr_above, !73, !"attr_above", i1 false, i1 false}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/cpuidle/sysfs.c", i32 320, i32 1}
!77 = !{ptr @attr_below, !76, !"attr_below", i1 false, i1 false}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/cpuidle/sysfs.c", i32 321, i32 1}
!80 = !{ptr @attr_default_status, !79, !"attr_default_status", i1 false, i1 false}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/cpuidle/sysfs.c", i32 307, i32 44}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/cpuidle/sysfs.c", i32 307, i32 57}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/cpuidle/sysfs.c", i32 387, i32 3}
!87 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @cpuidle_add_s2idle_attr_group.__UNIQUE_ID_ddebug183, !86, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/cpuidle/sysfs.c", i32 374, i32 10}
!93 = !{ptr @cpuidle_state_s2idle_group, !94, !"cpuidle_state_s2idle_group", i1 false, i1 false}
!94 = !{!"../drivers/cpuidle/sysfs.c", i32 373, i32 37}
!95 = !{ptr @cpuidle_state_s2idle_attrs, !96, !"cpuidle_state_s2idle_attrs", i1 false, i1 false}
!96 = !{!"../drivers/cpuidle/sysfs.c", i32 367, i32 26}
!97 = !{ptr @attr_s2idle_usage, !98, !"attr_s2idle_usage", i1 false, i1 false}
!98 = !{!"../drivers/cpuidle/sysfs.c", i32 364, i32 1}
!99 = !{ptr @attr_s2idle_time, !100, !"attr_s2idle_time", i1 false, i1 false}
!100 = !{!"../drivers/cpuidle/sysfs.c", i32 365, i32 1}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/cpuidle/sysfs.c", i32 622, i32 21}
!103 = !{ptr @ktype_driver_cpuidle, !104, !"ktype_driver_cpuidle", i1 false, i1 false}
!104 = !{!"../drivers/cpuidle/sysfs.c", i32 597, i32 25}
!105 = !{ptr @cpuidle_driver_sysfs_ops, !106, !"cpuidle_driver_sysfs_ops", i1 false, i1 false}
!106 = !{!"../drivers/cpuidle/sysfs.c", i32 586, i32 31}
!107 = !{ptr @cpuidle_driver_default_groups, !108, !"cpuidle_driver_default_groups", i1 false, i1 false}
!108 = !{!"../drivers/cpuidle/sysfs.c", i32 595, i32 1}
!109 = !{ptr @cpuidle_driver_default_group, !108, !"cpuidle_driver_default_group", i1 false, i1 false}
!110 = !{ptr @cpuidle_driver_default_attrs, !111, !"cpuidle_driver_default_attrs", i1 false, i1 false}
!111 = !{!"../drivers/cpuidle/sysfs.c", i32 591, i32 26}
!112 = !{ptr @attr_driver_name, !113, !"attr_driver_name", i1 false, i1 false}
!113 = !{!"../drivers/cpuidle/sysfs.c", i32 584, i32 1}
!114 = !{ptr @.str.34, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/cpuidle/sysfs.c", i32 546, i32 47}
!116 = !{ptr @init_completion.__key, !117, !"__key", i1 false, i1 false}
!117 = !{!"../include/linux/completion.h", i32 87, i32 2}
!118 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ktype_cpuidle, !120, !"ktype_cpuidle", i1 false, i1 false}
!120 = !{!"../drivers/cpuidle/sysfs.c", i32 203, i32 25}
!121 = !{ptr @cpuidle_sysfs_ops, !122, !"cpuidle_sysfs_ops", i1 false, i1 false}
!122 = !{!"../drivers/cpuidle/sysfs.c", i32 190, i32 31}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i64 2148709071, i64 2148709076, i64 2148709089, i64 2148709133, i64 2148709167, i64 2148709188}
!133 = !{i64 1132246, i64 1132273, i64 1132295, i64 1132323}
!134 = !{i64 1132654, i64 1132681, i64 1132714, i64 1132735, i64 1132762, i64 1132788}
!135 = !{!"auto-init"}
