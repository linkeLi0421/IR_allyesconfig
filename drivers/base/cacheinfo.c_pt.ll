; ModuleID = '/llk/IR_all_yes/drivers/base/cacheinfo.c_pt.bc'
source_filename = "../drivers/base/cacheinfo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_cacheinfo = type { ptr, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cache_type_info = type { ptr, [2 x ptr], ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cacheinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.cpumask, i32, ptr, i8, ptr }
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
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@ci_cpu_cacheinfo = weak dso_local global %struct.cpu_cacheinfo zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__initcall__kmod_cacheinfo__183_675_cacheinfo_sysfs_init6 = internal global ptr @cacheinfo_sysfs_init, section ".initcall6.init", align 4
@__pcpu_unique_ci_cpu_cacheinfo = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@coherency_max_size = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__pcpu_unique_ci_cache_dev = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@ci_cache_dev = weak dso_local global ptr null, section ".data..percpu", align 4
@__pcpu_unique_ci_index_dev = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@ci_index_dev = weak dso_local global ptr null, section ".data..percpu", align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"base/cacheinfo:online\00", [42 x i8] zeroinitializer }, align 32
@detect_cache_attributes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014cacheinfo: Unable to detect cache hierarchy for CPU %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"detect_cache_attributes\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/base/cacheinfo.c\00", [39 x i8] zeroinitializer }, align 32
@detect_cache_attributes._entry_ptr = internal global ptr @detect_cache_attributes._entry, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@cache_setup_of_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cacheinfo: No cpu device for CPU %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cache_setup_of_node\00", [44 x i8] zeroinitializer }, align 32
@cache_setup_of_node._entry_ptr = internal global ptr @cache_setup_of_node._entry, section ".printk_index", align 4
@cache_setup_of_node._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cacheinfo: Failed to find cpu%d device node\0A\00", [49 x i8] zeroinitializer }, align 32
@cache_setup_of_node._entry_ptr.8 = internal global ptr @cache_setup_of_node._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cache-unified\00", [18 x i8] zeroinitializer }, align 32
@cache_type_info = internal constant { [3 x %struct.cache_type_info], [48 x i8] } { [3 x %struct.cache_type_info] [%struct.cache_type_info { ptr @.str.10, [2 x ptr] [ptr @.str.11, ptr @.str.12], ptr @.str.13 }, %struct.cache_type_info { ptr @.str.14, [2 x ptr] [ptr @.str.15, ptr @.str.16], ptr @.str.17 }, %struct.cache_type_info { ptr @.str.18, [2 x ptr] [ptr @.str.19, ptr @.str.20], ptr @.str.21 }], [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache-size\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cache-line-size\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cache-block-size\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache-sets\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i-cache-size\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i-cache-line-size\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i-cache-block-size\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i-cache-sets\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"d-cache-size\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"d-cache-line-size\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"d-cache-block-size\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"d-cache-sets\00", [19 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"index%1u\00", [23 x i8] zeroinitializer }, align 32
@cache_dev_map = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cache\00", [26 x i8] zeroinitializer }, align 32
@cache_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @cache_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@cache_private_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @cache_default_group, ptr null, ptr null], [20 x i8] zeroinitializer }, align 32
@cache_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @cache_default_attrs_is_visible, ptr null, ptr @cache_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cache_default_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dev_attr_id, ptr @dev_attr_type, ptr @dev_attr_level, ptr @dev_attr_shared_cpu_map, ptr @dev_attr_shared_cpu_list, ptr @dev_attr_coherency_line_size, ptr @dev_attr_ways_of_associativity, ptr @dev_attr_number_of_sets, ptr @dev_attr_size, ptr @dev_attr_allocation_policy, ptr @dev_attr_write_policy, ptr @dev_attr_physical_line_partition, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @level_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_shared_cpu_map = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @shared_cpu_map_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_shared_cpu_list = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @shared_cpu_list_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_coherency_line_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @coherency_line_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ways_of_associativity = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ways_of_associativity_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_number_of_sets = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @number_of_sets_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_write_policy = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @write_policy_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_allocation_policy = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @allocation_policy_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_physical_line_partition = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @physical_line_partition_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Data\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Instruction\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unified\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"level\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shared_cpu_map\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*pb\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shared_cpu_list\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%*pbl\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coherency_line_size\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ways_of_associativity\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"number_of_sets\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%uK\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write_policy\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WriteThrough\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WriteBack\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"allocation_policy\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ReadWriteAllocate\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ReadAllocate\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WriteAllocate\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"physical_line_partition\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"coherency_max_size\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 216, i32 14 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 672, i32 6 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 339, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 170, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 175, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 136, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"cache_type_info\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 48, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 50, i32 22 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 51, i32 24 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 52, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 53, i32 22 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 55, i32 22 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 56, i32 24 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 57, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 58, i32 22 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 60, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 61, i32 24 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 62, i32 10 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 63, i32 22 }
@___asan_gen_.126 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 108, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 633, i32 9 }
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"cache_dev_map\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 354, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 594, i32 62 }
@___asan_gen_.137 = private unnamed_addr constant [21 x i8] c"cache_default_groups\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 535, i32 38 }
@___asan_gen_.140 = private unnamed_addr constant [21 x i8] c"cache_private_groups\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 540, i32 38 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c"cache_default_group\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 530, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant [20 x i8] c"cache_default_attrs\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 471, i32 26 }
@___asan_gen_.149 = private unnamed_addr constant [12 x i8] c"dev_attr_id\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [14 x i8] c"dev_attr_type\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [15 x i8] c"dev_attr_level\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [24 x i8] c"dev_attr_shared_cpu_map\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [25 x i8] c"dev_attr_shared_cpu_list\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [29 x i8] c"dev_attr_coherency_line_size\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [31 x i8] c"dev_attr_ways_of_associativity\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [24 x i8] c"dev_attr_number_of_sets\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [14 x i8] c"dev_attr_size\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [22 x i8] c"dev_attr_write_policy\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"dev_attr_allocation_policy\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [33 x i8] c"dev_attr_physical_line_partition\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 458, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 369, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 460, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 410, i32 12 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 413, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 416, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 422, i32 25 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 459, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 467, i32 8 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 390, i32 25 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 468, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 399, i32 25 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 461, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 462, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 463, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 464, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 381, i32 25 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 466, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 452, i32 23 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 454, i32 23 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 465, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 433, i32 12 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 435, i32 12 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 437, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private constant [28 x i8] c"../drivers/base/cacheinfo.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 469, i32 8 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__initcall__kmod_cacheinfo__183_675_cacheinfo_sysfs_init6, ptr @cache_setup_of_node._entry, ptr @cache_setup_of_node._entry.6, ptr @cache_setup_of_node._entry_ptr, ptr @cache_setup_of_node._entry_ptr.8, ptr @detect_cache_attributes._entry, ptr @detect_cache_attributes._entry_ptr, ptr @coherency_max_size, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @cache_type_info, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @cache_dev_map, ptr @.str.24, ptr @cache_default_groups, ptr @cache_private_groups, ptr @cache_default_group, ptr @cache_default_attrs, ptr @dev_attr_id, ptr @dev_attr_type, ptr @dev_attr_level, ptr @dev_attr_shared_cpu_map, ptr @dev_attr_shared_cpu_list, ptr @dev_attr_coherency_line_size, ptr @dev_attr_ways_of_associativity, ptr @dev_attr_number_of_sets, ptr @dev_attr_size, ptr @dev_attr_write_policy, ptr @dev_attr_allocation_policy, ptr @dev_attr_physical_line_partition, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coherency_max_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_cache_attributes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_setup_of_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_setup_of_node._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_type_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_dev_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_private_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_default_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_shared_cpu_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_shared_cpu_list to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_coherency_line_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ways_of_associativity to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_number_of_sets to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_write_policy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_allocation_policy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_physical_line_partition to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @get_cpu_cacheinfo(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %2 = inttoptr i32 %add to ptr
  ret ptr %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @cache_setup_acpi(i32 noundef %cpu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @init_cache_level(i32 noundef %cpu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @populate_cache_leaves(i32 noundef %cpu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local ptr @cache_get_priv_group(ptr noundef %this_leaf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cacheinfo_sysfs_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 193, ptr noundef nonnull @.str, i1 noundef zeroext true, ptr noundef nonnull @cacheinfo_cpu_online, ptr noundef nonnull @cacheinfo_cpu_pre_down, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cacheinfo_cpu_online(i32 noundef %cpu) #2 align 64 {
entry:
  %line_size.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @init_cache_level(i32 noundef %cpu) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %entry
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %2 = inttoptr i32 %add.i to ptr
  %num_leaves.i = getelementptr inbounds %struct.cpu_cacheinfo, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %num_leaves.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_leaves.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not.i = icmp eq i32 %4, 0
  br i1 %tobool2.not.i, label %do.body.i.cleanup_crit_edge, label %do.body3.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body3.i:                                       ; preds = %do.body.i
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 52) #9
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %do.body3.i.kcalloc.exit.i_crit_edge, label %if.end7.i.i.i, !prof !146

do.body3.i.kcalloc.exit.i_crit_edge:              ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kcalloc.exit.i

if.end7.i.i.i:                                    ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #12
  br label %kcalloc.exit.i

kcalloc.exit.i:                                   ; preds = %if.end7.i.i.i, %do.body3.i.kcalloc.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call8.i.i.i, %if.end7.i.i.i ], [ null, %do.body3.i.kcalloc.exit.i_crit_edge ]
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add22.i = add i32 %9, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %10 = inttoptr i32 %add22.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i.i.i, ptr %10, align 4
  %12 = load i32, ptr %arrayidx.i, align 4
  %add31.i = add i32 %12, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %13 = inttoptr i32 %add31.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %cmp.i = icmp eq ptr %15, null
  br i1 %cmp.i, label %kcalloc.exit.i.cleanup_crit_edge, label %if.end34.i

kcalloc.exit.i.cleanup_crit_edge:                 ; preds = %kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34.i:                                       ; preds = %kcalloc.exit.i
  %call35.i = tail call i32 @populate_cache_leaves(i32 noundef %cpu) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end34.i.free_ci.i_crit_edge

if.end34.i.free_ci.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ci.i

if.end38.i:                                       ; preds = %if.end34.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i.i.i = add i32 %17, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %18 = inttoptr i32 %add.i.i.i to ptr
  %cpu_map_populated.i.i = getelementptr inbounds %struct.cpu_cacheinfo, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu_map_populated.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cpu_map_populated.i.i, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end38.i.if.end_crit_edge

if.end38.i.if.end_crit_edge:                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %if.end38.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %21 = load ptr, ptr @of_root, align 4
  %cmp.i.not.i.i = icmp eq ptr %21, null
  br i1 %cmp.i.not.i.i, label %if.end.i.i.if.end4.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %call.i.i.i = tail call ptr @get_cpu_device(i32 noundef %cpu) #9
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %add.i.i.i.i = add i32 %23, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %24 = inttoptr i32 %add.i.i.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %fw_token.i.i.i = getelementptr inbounds %struct.cacheinfo, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %fw_token.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw_token.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i58.i, label %if.then2.i.i.if.end4.i.i_crit_edge

if.then2.i.i.if.end4.i.i_crit_edge:               ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i

if.end.i.i58.i:                                   ; preds = %if.then2.i.i
  %tobool2.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i58.i.cleanup38.sink.split.i.i_crit_edge, label %if.end5.i.i.i

if.end.i.i58.i.cleanup38.sink.split.i.i_crit_edge: ; preds = %if.end.i.i58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38.sink.split.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i58.i
  %of_node.i.i.i = getelementptr inbounds %struct.device, ptr %call.i.i.i, i32 0, i32 27
  %29 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node.i.i.i, align 8
  %tobool6.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool6.not.i.i.i, label %if.end5.i.i.i.cleanup38.sink.split.i.i_crit_edge, label %while.cond.preheader.i.i.i

if.end5.i.i.i.cleanup38.sink.split.i.i_crit_edge: ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38.sink.split.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.end5.i.i.i
  %num_leaves64.i.i.i = getelementptr inbounds %struct.cpu_cacheinfo, ptr %24, i32 0, i32 2
  %31 = ptrtoint ptr %num_leaves64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_leaves64.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp65.not.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp65.not.i.i.i, label %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %cache_of_set_props.exit.i.i.i.while.body.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge
  %np.069.i.i.i = phi ptr [ %np.1.i.i.i, %cache_of_set_props.exit.i.i.i.while.body.i.i.i_crit_edge ], [ %30, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %index.066.i.i.i = phi i32 [ %inc.i.i.i, %cache_of_set_props.exit.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %24, align 4
  %level.i.i.i = getelementptr %struct.cacheinfo, ptr %34, i32 %index.066.i.i.i, i32 2
  %35 = ptrtoint ptr %level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %level.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp20.not.i.i.i = icmp eq i32 %36, 1
  br i1 %cmp20.not.i.i.i, label %if.else.i.i.i, label %if.then21.i.i.i

if.then21.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i.i.i = call ptr @of_find_next_cache_node(ptr noundef nonnull %np.069.i.i.i) #9
  br label %if.end24.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call23.i.i.i = call ptr @of_node_get(ptr noundef nonnull %np.069.i.i.i) #9
  br label %if.end24.i.i.i

if.end24.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then21.i.i.i
  %np.1.i.i.i = phi ptr [ %call22.i.i.i, %if.then21.i.i.i ], [ %call23.i.i.i, %if.else.i.i.i ]
  %tobool25.not.i.i.i = icmp eq ptr %np.1.i.i.i, null
  br i1 %tobool25.not.i.i.i, label %if.end24.i.i.i.while.end.i.i.i_crit_edge, label %if.end27.i.i.i

if.end24.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

if.end27.i.i.i:                                   ; preds = %if.end24.i.i.i
  %type.i.i.i.i = getelementptr %struct.cacheinfo, ptr %34, i32 %index.066.i.i.i, i32 1
  %37 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i59.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i59.i, label %land.lhs.true.i.i.i.i, label %if.end27.i.i.i.if.end.i.i.i62.i_crit_edge

if.end27.i.i.i.if.end.i.i.i62.i_crit_edge:        ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i62.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end27.i.i.i
  %call.i.i.i.i.i.i = call ptr @of_find_property(ptr noundef nonnull %np.1.i.i.i, ptr noundef nonnull @.str.9, ptr noundef null) #9
  %tobool.i.i.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i.i, null
  br i1 %tobool.i.i.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end.i.i.i62.i_crit_edge, label %if.then.i.i.i60.i

land.lhs.true.i.i.i.i.if.end.i.i.i62.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i62.i

if.then.i.i.i60.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %type.i.i.i.i, align 4
  br label %if.end.i.i.i62.i

if.end.i.i.i62.i:                                 ; preds = %if.then.i.i.i60.i, %land.lhs.true.i.i.i.i.if.end.i.i.i62.i_crit_edge, %if.end27.i.i.i.if.end.i.i.i62.i_crit_edge
  %40 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp.i.i.i.i.i.i = icmp eq i32 %41, 4
  %.type.i.i.i.i.i.i = select i1 %cmp.i.i.i.i.i.i, i32 0, i32 %41
  %arrayidx.i.i.i.i.i = getelementptr [3 x %struct.cache_type_info], ptr @cache_type_info, i32 0, i32 %.type.i.i.i.i.i.i
  %42 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %size.i.i.i.i.i = getelementptr %struct.cacheinfo, ptr %34, i32 %index.066.i.i.i, i32 7
  %call.i.i.i.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.1.i.i.i, ptr noundef %43, ptr noundef %size.i.i.i.i.i, i32 noundef 1, i32 noundef 0) #9
  %44 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp.i.i12.i.i.i.i = icmp eq i32 %45, 4
  %.type.i.i13.i.i.i.i = select i1 %cmp.i.i12.i.i.i.i, i32 0, i32 %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line_size.i.i.i.i.i) #9
  %46 = ptrtoint ptr %line_size.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %line_size.i.i.i.i.i, align 4, !annotation !148
  %arrayidx1.i.i.i.i.i = getelementptr [3 x %struct.cache_type_info], ptr @cache_type_info, i32 0, i32 %.type.i.i13.i.i.i.i, i32 1, i32 0
  %47 = ptrtoint ptr %arrayidx1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx1.i.i.i.i.i, align 4
  %call.i.i.i14.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.1.i.i.i, ptr noundef %48, ptr noundef nonnull %line_size.i.i.i.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i14.i.i.i.i)
  %tobool.not.i.i.i.i61.i = icmp sgt i32 %call.i.i.i14.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i61.i, label %if.end.i.i.i62.i.cleanup.i.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.i

if.end.i.i.i62.i.cleanup.i.i.i.i.i_crit_edge:     ; preds = %if.end.i.i.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i.i.i.i

cleanup.i.i.i.i.i:                                ; preds = %for.inc.i.i.i.i.i.cleanup.i.i.i.i.i_crit_edge, %if.end.i.i.i62.i.cleanup.i.i.i.i.i_crit_edge
  %49 = ptrtoint ptr %line_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %line_size.i.i.i.i.i, align 4
  %coherency_line_size.i.i.i.i.i = getelementptr %struct.cacheinfo, ptr %34, i32 %index.066.i.i.i, i32 3
  %51 = ptrtoint ptr %coherency_line_size.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %coherency_line_size.i.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line_size.i.i.i.i.i) #9
  br label %cache_get_line_size.exit.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %if.end.i.i.i62.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line_size.i.i.i.i.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line_size.i.i.i.i.i) #9
  %52 = ptrtoint ptr %line_size.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %line_size.i.i.i.i.i, align 4, !annotation !148
  %arrayidx1.1.i.i.i.i.i = getelementptr [3 x %struct.cache_type_info], ptr @cache_type_info, i32 0, i32 %.type.i.i13.i.i.i.i, i32 1, i32 1
  %53 = ptrtoint ptr %arrayidx1.1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx1.1.i.i.i.i.i, align 4
  %call.i.i.1.i.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.1.i.i.i, ptr noundef %54, ptr noundef nonnull %line_size.i.i.i.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.1.i.i.i.i.i)
  %tobool.not.1.i.i.i.i.i = icmp sgt i32 %call.i.i.1.i.i.i.i.i, -1
  br i1 %tobool.not.1.i.i.i.i.i, label %for.inc.i.i.i.i.i.cleanup.i.i.i.i.i_crit_edge, label %for.inc.1.i.i.i.i.i

for.inc.i.i.i.i.i.cleanup.i.i.i.i.i_crit_edge:    ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i.i.i.i

for.inc.1.i.i.i.i.i:                              ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line_size.i.i.i.i.i) #9
  br label %cache_get_line_size.exit.i.i.i.i

cache_get_line_size.exit.i.i.i.i:                 ; preds = %for.inc.1.i.i.i.i.i, %cleanup.i.i.i.i.i
  %55 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %cmp.i.i16.i.i.i.i = icmp eq i32 %56, 4
  %.type.i.i17.i.i.i.i = select i1 %cmp.i.i16.i.i.i.i, i32 0, i32 %56
  %nr_sets_prop.i.i.i.i.i = getelementptr [3 x %struct.cache_type_info], ptr @cache_type_info, i32 0, i32 %.type.i.i17.i.i.i.i, i32 2
  %57 = ptrtoint ptr %nr_sets_prop.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nr_sets_prop.i.i.i.i.i, align 4
  %number_of_sets.i.i.i.i.i = getelementptr %struct.cacheinfo, ptr %34, i32 %index.066.i.i.i, i32 4
  %call.i.i.i18.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.1.i.i.i, ptr noundef %58, ptr noundef %number_of_sets.i.i.i.i.i, i32 noundef 1, i32 noundef 0) #9
  %coherency_line_size.i19.i.i.i.i = getelementptr %struct.cacheinfo, ptr %34, i32 %index.066.i.i.i, i32 3
  %59 = ptrtoint ptr %coherency_line_size.i19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %coherency_line_size.i19.i.i.i.i, align 4
  %61 = ptrtoint ptr %number_of_sets.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %number_of_sets.i.i.i.i.i, align 4
  %63 = ptrtoint ptr %size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %switch.i.i.i.i.i = icmp ult i32 %62, 2
  br i1 %switch.i.i.i.i.i, label %cache_get_line_size.exit.i.i.i.i.cache_of_set_props.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.i

cache_get_line_size.exit.i.i.i.i.cache_of_set_props.exit.i.i.i_crit_edge: ; preds = %cache_get_line_size.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cache_of_set_props.exit.i.i.i

land.lhs.true3.i.i.i.i.i:                         ; preds = %cache_get_line_size.exit.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp4.not.i.i.i.i.i = icmp eq i32 %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp6.not.i.i.i.i.i = icmp eq i32 %60, 0
  %or.cond.i.i.i.i.i = select i1 %cmp4.not.i.i.i.i.i, i1 true, i1 %cmp6.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %land.lhs.true3.i.i.i.i.i.cache_of_set_props.exit.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true3.i.i.i.i.i.cache_of_set_props.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cache_of_set_props.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div.i.i.i.i.i = udiv i32 %64, %62
  %div7.i.i.i.i.i = udiv i32 %div.i.i.i.i.i, %60
  %ways_of_associativity.i.i.i.i.i = getelementptr %struct.cacheinfo, ptr %34, i32 %index.066.i.i.i, i32 5
  %65 = ptrtoint ptr %ways_of_associativity.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div7.i.i.i.i.i, ptr %ways_of_associativity.i.i.i.i.i, align 4
  br label %cache_of_set_props.exit.i.i.i

cache_of_set_props.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i, %land.lhs.true3.i.i.i.i.i.cache_of_set_props.exit.i.i.i_crit_edge, %cache_get_line_size.exit.i.i.i.i.cache_of_set_props.exit.i.i.i_crit_edge
  %fw_token28.i.i.i = getelementptr %struct.cacheinfo, ptr %34, i32 %index.066.i.i.i, i32 10
  %66 = ptrtoint ptr %fw_token28.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %np.1.i.i.i, ptr %fw_token28.i.i.i, align 4
  %inc.i.i.i = add nuw i32 %index.066.i.i.i, 1
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i, align 4
  %add.i65.i.i = add i32 %68, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %69 = inttoptr i32 %add.i65.i.i to ptr
  %num_leaves.i.i.i = getelementptr inbounds %struct.cpu_cacheinfo, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %num_leaves.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_leaves.i.i.i, align 4
  %cmp.i66.i.i = icmp ult i32 %inc.i.i.i, %71
  br i1 %cmp.i66.i.i, label %cache_of_set_props.exit.i.i.i.while.body.i.i.i_crit_edge, label %cache_of_set_props.exit.i.i.i.while.end.i.i.i_crit_edge

cache_of_set_props.exit.i.i.i.while.end.i.i.i_crit_edge: ; preds = %cache_of_set_props.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

cache_of_set_props.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %cache_of_set_props.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

while.end.i.i.i:                                  ; preds = %cache_of_set_props.exit.i.i.i.while.end.i.i.i_crit_edge, %if.end24.i.i.i.while.end.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge
  %index.0.lcssa.i.i.i = phi i32 [ 0, %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge ], [ %inc.i.i.i, %cache_of_set_props.exit.i.i.i.while.end.i.i.i_crit_edge ], [ %index.066.i.i.i, %if.end24.i.i.i.while.end.i.i.i_crit_edge ]
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i, align 4
  %add37.i.i.i = add i32 %73, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %74 = inttoptr i32 %add37.i.i.i to ptr
  %num_leaves38.i.i.i = getelementptr inbounds %struct.cpu_cacheinfo, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %num_leaves38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_leaves38.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.lcssa.i.i.i, i32 %76)
  %cmp39.not.i.i.i = icmp eq i32 %index.0.lcssa.i.i.i, %76
  br i1 %cmp39.not.i.i.i, label %while.end.i.i.i.if.end4.i.i_crit_edge, label %while.end.i.i.i.do.end44.i_crit_edge

while.end.i.i.i.do.end44.i_crit_edge:             ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44.i

while.end.i.i.i.if.end4.i.i_crit_edge:            ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %while.end.i.i.i.if.end4.i.i_crit_edge, %if.then2.i.i.if.end4.i.i_crit_edge, %if.end.i.i.if.end4.i.i_crit_edge
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i, align 4
  %add89.i.i = add i32 %78, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %79 = inttoptr i32 %add89.i.i to ptr
  %num_leaves90.i.i = getelementptr inbounds %struct.cpu_cacheinfo, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %num_leaves90.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_leaves90.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp91.not.i.i = icmp eq i32 %81, 0
  br i1 %cmp91.not.i.i, label %if.end4.i.i.if.end_crit_edge, label %if.end4.i.i.for.body.i.i_crit_edge

if.end4.i.i.for.body.i.i_crit_edge:               ; preds = %if.end4.i.i
  br label %for.body.i.i

if.end4.i.i.if.end_crit_edge:                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i.i:                                     ; preds = %cleanup34.i.i.for.body.i.i_crit_edge, %if.end4.i.i.for.body.i.i_crit_edge
  %index.092.i.i = phi i32 [ %inc.i.i, %cleanup34.i.i.for.body.i.i_crit_edge ], [ 0, %if.end4.i.i.for.body.i.i_crit_edge ]
  %82 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %18, align 4
  %shared_cpu_map.i.i = getelementptr %struct.cacheinfo, ptr %83, i32 %index.092.i.i, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %84 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i.i = call i32 @_find_first_bit_be(ptr noundef %shared_cpu_map.i.i, i32 noundef %84) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i.i, i32 %84)
  %cmp4.i.i.i.i = icmp eq i32 %call.i.i.i.i, %84
  br i1 %cmp4.i.i.i.i, label %if.end11.i.i, label %for.body.i.i.cleanup34.i.i_crit_edge

for.body.i.i.cleanup34.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup34.i.i

if.end11.i.i:                                     ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %85 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %cpu)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %85, %cpu
  br i1 %cmp.not.i.i.i.i.i, label %if.end11.i.i.cpumask_set_cpu.exit.i.i_crit_edge, label %land.rhs.i.i.i.i.i

if.end11.i.i.cpumask_set_cpu.exit.i.i_crit_edge:  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit.i.i

land.rhs.i.i.i.i.i:                               ; preds = %if.end11.i.i
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %land.rhs.i.i.i.i.i.cpumask_set_cpu.exit.i.i_crit_edge, label %if.then.i.i.i69.i.i, !prof !149

land.rhs.i.i.i.i.i.cpumask_set_cpu.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit.i.i

if.then.i.i.i69.i.i:                              ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_set_cpu.exit.i.i

cpumask_set_cpu.exit.i.i:                         ; preds = %if.then.i.i.i69.i.i, %land.rhs.i.i.i.i.i.cpumask_set_cpu.exit.i.i_crit_edge, %if.end11.i.i.cpumask_set_cpu.exit.i.i_crit_edge
  call void @_set_bit(i32 noundef %cpu, ptr noundef %shared_cpu_map.i.i) #9
  %call1486.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %86 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1486.i.i, i32 %86)
  %cmp1587.i.i = icmp ult i32 %call1486.i.i, %86
  br i1 %cmp1587.i.i, label %for.body16.lr.ph.i.i, label %cpumask_set_cpu.exit.i.i.for.end.i.i_crit_edge

cpumask_set_cpu.exit.i.i.for.end.i.i_crit_edge:   ; preds = %cpumask_set_cpu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body16.lr.ph.i.i:                             ; preds = %cpumask_set_cpu.exit.i.i
  %fw_token1.i.i.i = getelementptr %struct.cacheinfo, ptr %83, i32 %index.092.i.i, i32 10
  br label %for.body16.i.i

for.body16.i.i:                                   ; preds = %cleanup.i.i.for.body16.i.i_crit_edge, %for.body16.lr.ph.i.i
  %87 = phi i32 [ %86, %for.body16.lr.ph.i.i ], [ %98, %cleanup.i.i.for.body16.i.i_crit_edge ]
  %call1488.i.i = phi i32 [ %call1486.i.i, %for.body16.lr.ph.i.i ], [ %call14.i.i, %cleanup.i.i.for.body16.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call1488.i.i, i32 %cpu)
  %cmp18.i.i = icmp eq i32 %call1488.i.i, %cpu
  br i1 %cmp18.i.i, label %for.body16.i.i.cleanup.i.i_crit_edge, label %lor.lhs.false.i.i

for.body16.i.i.cleanup.i.i_crit_edge:             ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

lor.lhs.false.i.i:                                ; preds = %for.body16.i.i
  %arrayidx.i70.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1488.i.i
  %88 = ptrtoint ptr %arrayidx.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i70.i.i, align 4
  %add.i71.i.i = add i32 %89, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %90 = inttoptr i32 %add.i71.i.i to ptr
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %tobool20.not.i.i = icmp eq ptr %92, null
  br i1 %tobool20.not.i.i, label %lor.lhs.false.i.i.cleanup.i.i_crit_edge, label %if.end22.i.i

lor.lhs.false.i.i.cleanup.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end22.i.i:                                     ; preds = %lor.lhs.false.i.i
  %fw_token.i72.i.i = getelementptr %struct.cacheinfo, ptr %92, i32 %index.092.i.i, i32 10
  %93 = ptrtoint ptr %fw_token.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fw_token.i72.i.i, align 4
  %95 = ptrtoint ptr %fw_token1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fw_token1.i.i.i, align 4
  %cmp.i73.i.i = icmp eq ptr %94, %96
  br i1 %cmp.i73.i.i, label %if.then26.i.i, label %if.end22.i.i.cleanup.i.i_crit_edge

if.end22.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.then26.i.i:                                    ; preds = %if.end22.i.i
  %shared_cpu_map27.i.i = getelementptr %struct.cacheinfo, ptr %92, i32 %index.092.i.i, i32 8
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %cpu)
  %cmp.not.i.i.i74.i.i = icmp ugt i32 %87, %cpu
  br i1 %cmp.not.i.i.i74.i.i, label %if.then26.i.i.cpumask_set_cpu.exit78.i.i_crit_edge, label %land.rhs.i.i.i76.i.i

if.then26.i.i.cpumask_set_cpu.exit78.i.i_crit_edge: ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit78.i.i

land.rhs.i.i.i76.i.i:                             ; preds = %if.then26.i.i
  %.b37.i.i.i75.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i75.i.i, label %land.rhs.i.i.i76.i.i.cpumask_set_cpu.exit78.i.i_crit_edge, label %if.then.i.i.i77.i.i, !prof !149

land.rhs.i.i.i76.i.i.cpumask_set_cpu.exit78.i.i_crit_edge: ; preds = %land.rhs.i.i.i76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit78.i.i

if.then.i.i.i77.i.i:                              ; preds = %land.rhs.i.i.i76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_set_cpu.exit78.i.i

cpumask_set_cpu.exit78.i.i:                       ; preds = %if.then.i.i.i77.i.i, %land.rhs.i.i.i76.i.i.cpumask_set_cpu.exit78.i.i_crit_edge, %if.then26.i.i.cpumask_set_cpu.exit78.i.i_crit_edge
  call void @_set_bit(i32 noundef %cpu, ptr noundef %shared_cpu_map27.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %97 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %call1488.i.i)
  %cmp.not.i.i.i79.i.i = icmp ugt i32 %97, %call1488.i.i
  br i1 %cmp.not.i.i.i79.i.i, label %cpumask_set_cpu.exit78.i.i.cpumask_set_cpu.exit83.i.i_crit_edge, label %land.rhs.i.i.i81.i.i

cpumask_set_cpu.exit78.i.i.cpumask_set_cpu.exit83.i.i_crit_edge: ; preds = %cpumask_set_cpu.exit78.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit83.i.i

land.rhs.i.i.i81.i.i:                             ; preds = %cpumask_set_cpu.exit78.i.i
  %.b37.i.i.i80.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i80.i.i, label %land.rhs.i.i.i81.i.i.cpumask_set_cpu.exit83.i.i_crit_edge, label %if.then.i.i.i82.i.i, !prof !149

land.rhs.i.i.i81.i.i.cpumask_set_cpu.exit83.i.i_crit_edge: ; preds = %land.rhs.i.i.i81.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit83.i.i

if.then.i.i.i82.i.i:                              ; preds = %land.rhs.i.i.i81.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_set_cpu.exit83.i.i

cpumask_set_cpu.exit83.i.i:                       ; preds = %if.then.i.i.i82.i.i, %land.rhs.i.i.i81.i.i.cpumask_set_cpu.exit83.i.i_crit_edge, %cpumask_set_cpu.exit78.i.i.cpumask_set_cpu.exit83.i.i_crit_edge
  call void @_set_bit(i32 noundef %call1488.i.i, ptr noundef %shared_cpu_map.i.i) #9
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cpumask_set_cpu.exit83.i.i, %if.end22.i.i.cleanup.i.i_crit_edge, %lor.lhs.false.i.i.cleanup.i.i_crit_edge, %for.body16.i.i.cleanup.i.i_crit_edge
  %call14.i.i = call i32 @cpumask_next(i32 noundef %call1488.i.i, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %98 = load i32, ptr @nr_cpu_ids, align 4
  %cmp15.i.i = icmp ult i32 %call14.i.i, %98
  br i1 %cmp15.i.i, label %cleanup.i.i.for.body16.i.i_crit_edge, label %cleanup.i.i.for.end.i.i_crit_edge

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

cleanup.i.i.for.body16.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %cpumask_set_cpu.exit.i.i.for.end.i.i_crit_edge
  %coherency_line_size.i.i = getelementptr %struct.cacheinfo, ptr %83, i32 %index.092.i.i, i32 3
  %99 = ptrtoint ptr %coherency_line_size.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %coherency_line_size.i.i, align 4
  %101 = load i32, ptr @coherency_max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %101)
  %cmp30.i.i = icmp ugt i32 %100, %101
  br i1 %cmp30.i.i, label %if.then31.i.i, label %for.end.i.i.cleanup34.i.i_crit_edge

for.end.i.i.cleanup34.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup34.i.i

if.then31.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i32 %100, ptr @coherency_max_size, align 4
  br label %cleanup34.i.i

cleanup34.i.i:                                    ; preds = %if.then31.i.i, %for.end.i.i.cleanup34.i.i_crit_edge, %for.body.i.i.cleanup34.i.i_crit_edge
  %inc.i.i = add nuw i32 %index.092.i.i, 1
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i, align 4
  %add.i.i = add i32 %103, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %104 = inttoptr i32 %add.i.i to ptr
  %num_leaves.i.i = getelementptr inbounds %struct.cpu_cacheinfo, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %num_leaves.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_leaves.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %106
  br i1 %cmp.i.i, label %cleanup34.i.i.for.body.i.i_crit_edge, label %cleanup34.i.i.if.end_crit_edge

cleanup34.i.i.if.end_crit_edge:                   ; preds = %cleanup34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cleanup34.i.i.for.body.i.i_crit_edge:             ; preds = %cleanup34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

cleanup38.sink.split.i.i:                         ; preds = %if.end5.i.i.i.cleanup38.sink.split.i.i_crit_edge, %if.end.i.i58.i.cleanup38.sink.split.i.i_crit_edge
  %.str.4.sink.i.i = phi ptr [ @.str.4, %if.end.i.i58.i.cleanup38.sink.split.i.i_crit_edge ], [ @.str.7, %if.end5.i.i.i.cleanup38.sink.split.i.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ -19, %if.end.i.i58.i.cleanup38.sink.split.i.i_crit_edge ], [ -2, %if.end5.i.i.i.cleanup38.sink.split.i.i_crit_edge ]
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i.i, i32 noundef %cpu) #14
  br label %do.end44.i

do.end44.i:                                       ; preds = %cleanup38.sink.split.i.i, %while.end.i.i.i.do.end44.i_crit_edge
  %retval.0.i.i = phi i32 [ -2, %while.end.i.i.i.do.end44.i_crit_edge ], [ %retval.0.ph.i.i, %cleanup38.sink.split.i.i ]
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %cpu) #14
  br label %free_ci.i

free_ci.i:                                        ; preds = %do.end44.i, %if.end34.i.free_ci.i_crit_edge
  %ret.0.i = phi i32 [ %call35.i, %if.end34.i.free_ci.i_crit_edge ], [ %retval.0.i.i, %do.end44.i ]
  call fastcc void @free_cache_attributes(i32 noundef %cpu) #9
  br label %cleanup

if.end:                                           ; preds = %cleanup34.i.i.if.end_crit_edge, %if.end4.i.i.if.end_crit_edge, %if.end38.i.if.end_crit_edge
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i, align 4
  %add.i.i10 = add i32 %108, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %109 = inttoptr i32 %add.i.i10 to ptr
  %call.i.i = call ptr @get_cpu_device(i32 noundef %cpu) #9
  %110 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i, align 4
  %add.i60.i = add i32 %111, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %112 = inttoptr i32 %add.i60.i to ptr
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %cmp.i.i11 = icmp eq ptr %114, null
  br i1 %cmp.i.i11, label %if.end.if.then3_crit_edge, label %if.end.i.i12

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.i.i12:                                     ; preds = %if.end
  %call2.i.i = call ptr (ptr, ptr, ptr, ptr, ...) @cpu_device_create(ptr noundef %call.i.i, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24) #9
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i, align 4
  %add11.i.i = add i32 %116, ptrtoint (ptr @ci_cache_dev to i32)
  %117 = inttoptr i32 %add11.i.i to ptr
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call2.i.i, ptr %117, align 4
  %119 = load i32, ptr %arrayidx.i, align 4
  %add20.i.i = add i32 %119, ptrtoint (ptr @ci_cache_dev to i32)
  %120 = inttoptr i32 %add20.i.i to ptr
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %cmp.i.i.i = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %cpu_cache_sysfs_init.exit.i, label %do.body34.i.i

do.body34.i.i:                                    ; preds = %if.end.i.i12
  %add42.i.i = add i32 %119, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %123 = inttoptr i32 %add42.i.i to ptr
  %num_leaves.i.i13 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %num_leaves.i.i13 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_leaves.i.i13, align 4
  %126 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %125, i32 4) #9
  %127 = extractvalue { i32, i1 } %126, 1
  br i1 %127, label %do.body34.i.i.kcalloc.exit.i.i_crit_edge, label %if.end7.i.i.i.i, !prof !146

do.body34.i.i.kcalloc.exit.i.i_crit_edge:         ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kcalloc.exit.i.i

if.end7.i.i.i.i:                                  ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %128 = extractvalue { i32, i1 } %126, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %128, i32 noundef 3520) #12
  br label %kcalloc.exit.i.i

kcalloc.exit.i.i:                                 ; preds = %if.end7.i.i.i.i, %do.body34.i.i.kcalloc.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %call8.i.i.i.i, %if.end7.i.i.i.i ], [ null, %do.body34.i.i.kcalloc.exit.i.i_crit_edge ]
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i, align 4
  %add52.i.i = add i32 %130, ptrtoint (ptr @ci_index_dev to i32)
  %131 = inttoptr i32 %add52.i.i to ptr
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %retval.0.i.i.i.i, ptr %131, align 4
  %133 = load i32, ptr %arrayidx.i, align 4
  %add61.i.i = add i32 %133, ptrtoint (ptr @ci_index_dev to i32)
  %134 = inttoptr i32 %add61.i.i to ptr
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %cmp62.i.i = icmp eq ptr %136, null
  br i1 %cmp62.i.i, label %err_out.i.i, label %kcalloc.exit.i.i.do.body.i23_crit_edge, !prof !146

kcalloc.exit.i.i.do.body.i23_crit_edge:           ; preds = %kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i23

err_out.i.i:                                      ; preds = %kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @cpu_cache_sysfs_exit(i32 noundef %cpu) #9
  br label %if.then3

cpu_cache_sysfs_init.exit.i:                      ; preds = %if.end.i.i12
  %cmp.i21 = icmp slt ptr %122, null
  br i1 %cmp.i21, label %cpu_cache_sysfs_init.exit.i.cache_add_dev.exit_crit_edge, label %cpu_cache_sysfs_init.exit.i.do.body.i23_crit_edge, !prof !146

cpu_cache_sysfs_init.exit.i.do.body.i23_crit_edge: ; preds = %cpu_cache_sysfs_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i23

cpu_cache_sysfs_init.exit.i.cache_add_dev.exit_crit_edge: ; preds = %cpu_cache_sysfs_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cache_add_dev.exit

do.body.i23:                                      ; preds = %cpu_cache_sysfs_init.exit.i.do.body.i23_crit_edge, %kcalloc.exit.i.i.do.body.i23_crit_edge
  %137 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.i, align 4
  %add.i22 = add i32 %138, ptrtoint (ptr @ci_cache_dev to i32)
  %139 = inttoptr i32 %add.i22 to ptr
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %add1270.i = add i32 %138, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %142 = inttoptr i32 %add1270.i to ptr
  %num_leaves71.i = getelementptr inbounds %struct.cpu_cacheinfo, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %num_leaves71.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %num_leaves71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp1372.not.i = icmp eq i32 %144, 0
  br i1 %cmp1372.not.i, label %do.body.i23.for.end.i_crit_edge, label %do.body.i23.for.body.i_crit_edge

do.body.i23.for.body.i_crit_edge:                 ; preds = %do.body.i23
  br label %for.body.i

do.body.i23.for.end.i_crit_edge:                  ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body.i23.for.body.i_crit_edge
  %i.073.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.body.i23.for.body.i_crit_edge ]
  %145 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %109, align 4
  %add.ptr.i = getelementptr %struct.cacheinfo, ptr %146, i32 %i.073.i
  %disable_sysfs.i = getelementptr %struct.cacheinfo, ptr %146, i32 %i.073.i, i32 11
  %147 = ptrtoint ptr %disable_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %disable_sysfs.i, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool14.not.i = icmp eq i8 %148, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end16.i:                                       ; preds = %for.body.i
  %type.i = getelementptr %struct.cacheinfo, ptr %146, i32 %i.073.i, i32 1
  %149 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp17.i = icmp eq i32 %150, 0
  br i1 %cmp17.i, label %if.end16.i.for.end.i_crit_edge, label %if.end19.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end19.i:                                       ; preds = %if.end16.i
  %call.i61.i = call ptr @cache_get_priv_group(ptr noundef %add.ptr.i) #9
  %tobool.not.i.i24 = icmp eq ptr %call.i61.i, null
  br i1 %tobool.not.i.i24, label %if.end19.i.cache_get_attribute_groups.exit.i_crit_edge, label %if.end.i62.i

if.end19.i.cache_get_attribute_groups.exit.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cache_get_attribute_groups.exit.i

if.end.i62.i:                                     ; preds = %if.end19.i
  %151 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @cache_private_groups, i32 0, i32 1), align 4
  %tobool1.not.i.i = icmp eq ptr %151, null
  br i1 %tobool1.not.i.i, label %if.then2.i.i25, label %if.end.i62.i.cache_get_attribute_groups.exit.i_crit_edge

if.end.i62.i.cache_get_attribute_groups.exit.i_crit_edge: ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cache_get_attribute_groups.exit.i

if.then2.i.i25:                                   ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call.i61.i, ptr getelementptr inbounds ([3 x ptr], ptr @cache_private_groups, i32 0, i32 1), align 4
  br label %cache_get_attribute_groups.exit.i

cache_get_attribute_groups.exit.i:                ; preds = %if.then2.i.i25, %if.end.i62.i.cache_get_attribute_groups.exit.i_crit_edge, %if.end19.i.cache_get_attribute_groups.exit.i_crit_edge
  %retval.0.i63.i = phi ptr [ @cache_default_groups, %if.end19.i.cache_get_attribute_groups.exit.i_crit_edge ], [ @cache_private_groups, %if.then2.i.i25 ], [ @cache_private_groups, %if.end.i62.i.cache_get_attribute_groups.exit.i_crit_edge ]
  %call21.i = call ptr (ptr, ptr, ptr, ptr, ...) @cpu_device_create(ptr noundef %141, ptr noundef %add.ptr.i, ptr noundef nonnull %retval.0.i63.i, ptr noundef nonnull @.str.23, i32 noundef %i.073.i) #9
  %cmp.i64.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64.i, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %cache_get_attribute_groups.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @cpu_cache_sysfs_exit(i32 noundef %cpu) #9
  br label %cache_add_dev.exit

if.end25.i:                                       ; preds = %cache_get_attribute_groups.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i, align 4
  %add34.i = add i32 %153, ptrtoint (ptr @ci_index_dev to i32)
  %154 = inttoptr i32 %add34.i to ptr
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %arrayidx35.i = getelementptr ptr, ptr %156, i32 %i.073.i
  %157 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call21.i, ptr %arrayidx35.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end25.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.073.i, 1
  %158 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx.i, align 4
  %add12.i = add i32 %159, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %160 = inttoptr i32 %add12.i to ptr
  %num_leaves.i26 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %num_leaves.i26 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %num_leaves.i26, align 4
  %cmp13.i = icmp ult i32 %inc.i, %162
  br i1 %cmp13.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end16.i.for.end.i_crit_edge, %do.body.i23.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %163 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %163, %cpu
  br i1 %cmp.not.i.i.i.i, label %for.end.i.cache_add_dev.exit.thread34_crit_edge, label %land.rhs.i.i.i.i

for.end.i.cache_add_dev.exit.thread34_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cache_add_dev.exit.thread34

land.rhs.i.i.i.i:                                 ; preds = %for.end.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cache_add_dev.exit.thread34_crit_edge, label %if.then.i.i.i.i27, !prof !149

land.rhs.i.i.i.i.cache_add_dev.exit.thread34_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cache_add_dev.exit.thread34

if.then.i.i.i.i27:                                ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cache_add_dev.exit.thread34

cache_add_dev.exit.thread34:                      ; preds = %if.then.i.i.i.i27, %land.rhs.i.i.i.i.cache_add_dev.exit.thread34_crit_edge, %for.end.i.cache_add_dev.exit.thread34_crit_edge
  call void @_set_bit(i32 noundef %cpu, ptr noundef nonnull @cache_dev_map) #9
  br label %cleanup

cache_add_dev.exit:                               ; preds = %if.then23.i, %cpu_cache_sysfs_init.exit.i.cache_add_dev.exit_crit_edge
  %retval.0.i28.in = phi ptr [ %call21.i, %if.then23.i ], [ %122, %cpu_cache_sysfs_init.exit.i.cache_add_dev.exit_crit_edge ]
  %retval.0.i28 = ptrtoint ptr %retval.0.i28.in to i32
  br label %if.then3

if.then3:                                         ; preds = %cache_add_dev.exit, %err_out.i.i, %if.end.if.then3_crit_edge
  %retval.0.i2833 = phi i32 [ %retval.0.i28, %cache_add_dev.exit ], [ -12, %err_out.i.i ], [ -2, %if.end.if.then3_crit_edge ]
  call fastcc void @free_cache_attributes(i32 noundef %cpu)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %cache_add_dev.exit.thread34, %free_ci.i, %kcalloc.exit.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i2833, %if.then3 ], [ 0, %cache_add_dev.exit.thread34 ], [ -12, %kcalloc.exit.i.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %do.body.i.cleanup_crit_edge ], [ %ret.0.i, %free_ci.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cacheinfo_cpu_pre_down(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_and_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_and_clear_cpu.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_and_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_and_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !149

land.rhs.i.i.i.cpumask_test_and_clear_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_and_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_test_and_clear_cpu.exit

cpumask_test_and_clear_cpu.exit:                  ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_and_clear_cpu.exit_crit_edge, %entry.cpumask_test_and_clear_cpu.exit_crit_edge
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef %cpu, ptr noundef nonnull @cache_dev_map) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %cpumask_test_and_clear_cpu.exit.if.end_crit_edge, label %if.then

cpumask_test_and_clear_cpu.exit.if.end_crit_edge: ; preds = %cpumask_test_and_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cpumask_test_and_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cpu_cache_sysfs_exit(i32 noundef %cpu)
  br label %if.end

if.end:                                           ; preds = %if.then, %cpumask_test_and_clear_cpu.exit.if.end_crit_edge
  tail call fastcc void @free_cache_attributes(i32 noundef %cpu)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_cache_attributes(i32 noundef %cpu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %num_leaves43.i = getelementptr inbounds %struct.cpu_cacheinfo, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %num_leaves43.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_leaves43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp44.not.i = icmp eq i32 %6, 0
  br i1 %cmp44.not.i, label %if.end.cache_shared_cpu_map_remove.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cache_shared_cpu_map_remove.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cache_shared_cpu_map_remove.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %index.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %shared_cpu_map.i = getelementptr %struct.cacheinfo, ptr %8, i32 %index.045.i, i32 8
  %call339.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %shared_cpu_map.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call339.i, i32 %9)
  %cmp440.i = icmp ult i32 %call339.i, %9
  br i1 %cmp440.i, label %for.body.i.for.body5.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %cleanup.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %10 = phi i32 [ %17, %cleanup.i.for.body5.i_crit_edge ], [ %9, %for.body.i.for.body5.i_crit_edge ]
  %call341.i = phi i32 [ %call3.i, %cleanup.i.for.body5.i_crit_edge ], [ %call339.i, %for.body.i.for.body5.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call341.i, i32 %cpu)
  %cmp6.i = icmp eq i32 %call341.i, %cpu
  br i1 %cmp6.i, label %for.body5.i.cleanup.i_crit_edge, label %if.end.i

for.body5.i.cleanup.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body5.i
  %arrayidx.i32.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call341.i
  %11 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i32.i, align 4
  %add.i33.i = add i32 %12, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %13 = inttoptr i32 %add.i33.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i.cleanup.i_crit_edge, label %if.end10.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end10.i:                                       ; preds = %if.end.i
  %shared_cpu_map13.i = getelementptr %struct.cacheinfo, ptr %15, i32 %index.045.i, i32 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %10, %cpu
  br i1 %cmp.not.i.i.i.i, label %if.end10.i.cpumask_clear_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.end10.i.cpumask_clear_cpu.exit.i_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.end10.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !149

land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit.i

cpumask_clear_cpu.exit.i:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge, %if.end10.i.cpumask_clear_cpu.exit.i_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %shared_cpu_map13.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %call341.i)
  %cmp.not.i.i.i34.i = icmp ugt i32 %16, %call341.i
  br i1 %cmp.not.i.i.i34.i, label %cpumask_clear_cpu.exit.i.cpumask_clear_cpu.exit38.i_crit_edge, label %land.rhs.i.i.i36.i

cpumask_clear_cpu.exit.i.cpumask_clear_cpu.exit38.i_crit_edge: ; preds = %cpumask_clear_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit38.i

land.rhs.i.i.i36.i:                               ; preds = %cpumask_clear_cpu.exit.i
  %.b37.i.i.i35.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i35.i, label %land.rhs.i.i.i36.i.cpumask_clear_cpu.exit38.i_crit_edge, label %if.then.i.i.i37.i, !prof !149

land.rhs.i.i.i36.i.cpumask_clear_cpu.exit38.i_crit_edge: ; preds = %land.rhs.i.i.i36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit38.i

if.then.i.i.i37.i:                                ; preds = %land.rhs.i.i.i36.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit38.i

cpumask_clear_cpu.exit38.i:                       ; preds = %if.then.i.i.i37.i, %land.rhs.i.i.i36.i.cpumask_clear_cpu.exit38.i_crit_edge, %cpumask_clear_cpu.exit.i.cpumask_clear_cpu.exit38.i_crit_edge
  tail call void @_clear_bit(i32 noundef %call341.i, ptr noundef %shared_cpu_map.i) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %cpumask_clear_cpu.exit38.i, %if.end.i.cleanup.i_crit_edge, %for.body5.i.cleanup.i_crit_edge
  %call3.i = tail call i32 @cpumask_next(i32 noundef %call341.i, ptr noundef %shared_cpu_map.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp4.i = icmp ult i32 %call3.i, %17
  br i1 %cmp4.i, label %cleanup.i.for.body5.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

cleanup.i.for.body5.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %18 = load ptr, ptr @of_root, align 4
  %cmp.i.not.i = icmp eq ptr %18, null
  br i1 %cmp.i.not.i, label %for.end.i.for.inc.i_crit_edge, label %if.then16.i

for.end.i.for.inc.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %fw_token.i = getelementptr %struct.cacheinfo, ptr %8, i32 %index.045.i, i32 10
  %19 = ptrtoint ptr %fw_token.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw_token.i, align 4
  tail call void @of_node_put(ptr noundef %20) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then16.i, %for.end.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %index.045.i, 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %22, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %23 = inttoptr i32 %add.i to ptr
  %num_leaves.i = getelementptr inbounds %struct.cpu_cacheinfo, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %num_leaves.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_leaves.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cache_shared_cpu_map_remove.exit_crit_edge

for.inc.i.cache_shared_cpu_map_remove.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cache_shared_cpu_map_remove.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cache_shared_cpu_map_remove.exit:                 ; preds = %for.inc.i.cache_shared_cpu_map_remove.exit_crit_edge, %if.end.cache_shared_cpu_map_remove.exit_crit_edge
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %add9 = add i32 %27, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %28 = inttoptr i32 %add9 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %30) #9
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %add18 = add i32 %32, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %33 = inttoptr i32 %add18 to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %33, align 4
  %35 = load i32, ptr %arrayidx, align 4
  %add27 = add i32 %35, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %36 = inttoptr i32 %add27 to ptr
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %num_leaves to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %num_leaves, align 4
  br label %return

return:                                           ; preds = %cache_shared_cpu_map_remove.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_next_cache_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpu_device_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpu_cache_sysfs_exit(i32 noundef %cpu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @ci_index_dev to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.do.body42_crit_edge, label %for.cond.preheader

entry.do.body42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body42

for.cond.preheader:                               ; preds = %entry
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add1069 = add i32 %6, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %7 = inttoptr i32 %add1069 to ptr
  %num_leaves70 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %num_leaves70 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_leaves70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp71.not = icmp eq i32 %9, 0
  br i1 %cmp71.not, label %for.cond.preheader.do.body23_crit_edge, label %for.cond.preheader.do.body11_crit_edge

for.cond.preheader.do.body11_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body11

for.cond.preheader.do.body23_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

do.body11:                                        ; preds = %for.inc.do.body11_crit_edge, %for.cond.preheader.do.body11_crit_edge
  %10 = phi i32 [ %17, %for.inc.do.body11_crit_edge ], [ %6, %for.cond.preheader.do.body11_crit_edge ]
  %i.072 = phi i32 [ %inc, %for.inc.do.body11_crit_edge ], [ 0, %for.cond.preheader.do.body11_crit_edge ]
  %add19 = add i32 %10, ptrtoint (ptr @ci_index_dev to i32)
  %11 = inttoptr i32 %add19 to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %arrayidx20 = getelementptr ptr, ptr %13, i32 %i.072
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %do.body11.for.inc_crit_edge, label %if.end

do.body11.for.inc_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_unregister(ptr noundef nonnull %15) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %do.body11.for.inc_crit_edge
  %inc = add nuw i32 %i.072, 1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add10 = add i32 %17, ptrtoint (ptr @ci_cpu_cacheinfo to i32)
  %18 = inttoptr i32 %add10 to ptr
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %num_leaves to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_leaves, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.do.body11_crit_edge, label %for.inc.do.body23_crit_edge

for.inc.do.body23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

for.inc.do.body11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

do.body23:                                        ; preds = %for.inc.do.body23_crit_edge, %for.cond.preheader.do.body23_crit_edge
  %.lcssa = phi i32 [ %6, %for.cond.preheader.do.body23_crit_edge ], [ %17, %for.inc.do.body23_crit_edge ]
  %add31 = add i32 %.lcssa, ptrtoint (ptr @ci_index_dev to i32)
  %21 = inttoptr i32 %add31 to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %23) #9
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %add40 = add i32 %25, ptrtoint (ptr @ci_index_dev to i32)
  %26 = inttoptr i32 %add40 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %26, align 4
  br label %do.body42

do.body42:                                        ; preds = %do.body23, %entry.do.body42_crit_edge
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %add50 = add i32 %29, ptrtoint (ptr @ci_cache_dev to i32)
  %30 = inttoptr i32 %add50 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  tail call void @device_unregister(ptr noundef %32) #9
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %add59 = add i32 %34, ptrtoint (ptr @ci_cache_dev to i32)
  %35 = inttoptr i32 %add59 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %35, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @cache_default_attrs_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %shared_cpu_map = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 8
  %mode2 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %mode2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode2, align 4
  %cmp = icmp eq ptr %attr, @dev_attr_id
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %attributes = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attributes, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end62_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq ptr %attr, @dev_attr_type
  br i1 %cmp3, label %land.lhs.true4, label %if.end7

land.lhs.true4:                                   ; preds = %if.end
  %type = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %land.lhs.true4.if.end62_crit_edge, label %land.lhs.true4.cleanup_crit_edge

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true4.if.end62_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp eq ptr %attr, @dev_attr_level
  br i1 %cmp8, label %land.lhs.true9, label %if.end12

land.lhs.true9:                                   ; preds = %if.end7
  %level = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %land.lhs.true9.if.end62_crit_edge, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true9.if.end62_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end12:                                         ; preds = %if.end7
  %cmp13 = icmp eq ptr %attr, @dev_attr_shared_cpu_map
  br i1 %cmp13, label %cpumask_empty.exit, label %if.end17

cpumask_empty.exit:                               ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %shared_cpu_map, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %10)
  %cmp4.i.i = icmp eq i32 %call.i.i, %10
  br i1 %cmp4.i.i, label %cpumask_empty.exit.if.end62_crit_edge, label %cpumask_empty.exit.cleanup_crit_edge

cpumask_empty.exit.cleanup_crit_edge:             ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cpumask_empty.exit.if.end62_crit_edge:            ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end17:                                         ; preds = %if.end12
  %cmp18 = icmp eq ptr %attr, @dev_attr_shared_cpu_list
  br i1 %cmp18, label %cpumask_empty.exit110, label %if.end22

cpumask_empty.exit110:                            ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i106 = tail call i32 @_find_first_bit_be(ptr noundef %shared_cpu_map, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i106, i32 %11)
  %cmp4.i.i107 = icmp eq i32 %call.i.i106, %11
  br i1 %cmp4.i.i107, label %cpumask_empty.exit110.if.end62_crit_edge, label %cpumask_empty.exit110.cleanup_crit_edge

cpumask_empty.exit110.cleanup_crit_edge:          ; preds = %cpumask_empty.exit110
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cpumask_empty.exit110.if.end62_crit_edge:         ; preds = %cpumask_empty.exit110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end22:                                         ; preds = %if.end17
  %cmp23 = icmp eq ptr %attr, @dev_attr_coherency_line_size
  br i1 %cmp23, label %land.lhs.true24, label %if.end27

land.lhs.true24:                                  ; preds = %if.end22
  %coherency_line_size = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %coherency_line_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %coherency_line_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool25.not = icmp eq i32 %13, 0
  br i1 %tobool25.not, label %land.lhs.true24.if.end62_crit_edge, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true24.if.end62_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end27:                                         ; preds = %if.end22
  %cmp28 = icmp eq ptr %attr, @dev_attr_ways_of_associativity
  br i1 %cmp28, label %land.lhs.true29, label %if.end32

land.lhs.true29:                                  ; preds = %if.end27
  %size = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool30.not = icmp eq i32 %15, 0
  br i1 %tobool30.not, label %land.lhs.true29.if.end62_crit_edge, label %land.lhs.true29.cleanup_crit_edge

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true29.if.end62_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end32:                                         ; preds = %if.end27
  %cmp33 = icmp eq ptr %attr, @dev_attr_number_of_sets
  br i1 %cmp33, label %land.lhs.true34, label %if.end37

land.lhs.true34:                                  ; preds = %if.end32
  %number_of_sets = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %number_of_sets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %number_of_sets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool35.not = icmp eq i32 %17, 0
  br i1 %tobool35.not, label %land.lhs.true34.if.end62_crit_edge, label %land.lhs.true34.cleanup_crit_edge

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true34.if.end62_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end37:                                         ; preds = %if.end32
  %cmp38 = icmp eq ptr %attr, @dev_attr_size
  br i1 %cmp38, label %land.lhs.true39, label %if.end43

land.lhs.true39:                                  ; preds = %if.end37
  %size40 = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %size40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool41.not = icmp eq i32 %19, 0
  br i1 %tobool41.not, label %land.lhs.true39.if.end62_crit_edge, label %land.lhs.true39.cleanup_crit_edge

land.lhs.true39.cleanup_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true39.if.end62_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end43:                                         ; preds = %if.end37
  %cmp44 = icmp eq ptr %attr, @dev_attr_write_policy
  br i1 %cmp44, label %land.lhs.true45, label %if.end50

land.lhs.true45:                                  ; preds = %if.end43
  %attributes46 = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %attributes46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %attributes46, align 4
  %and47 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %land.lhs.true45.if.end62_crit_edge, label %land.lhs.true45.cleanup_crit_edge

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true45.if.end62_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end50:                                         ; preds = %if.end43
  %cmp51 = icmp eq ptr %attr, @dev_attr_allocation_policy
  br i1 %cmp51, label %land.lhs.true52, label %if.end57

land.lhs.true52:                                  ; preds = %if.end50
  %attributes53 = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %attributes53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %attributes53, align 4
  %and54 = and i32 %23, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %land.lhs.true52.if.end62_crit_edge, label %land.lhs.true52.cleanup_crit_edge

land.lhs.true52.cleanup_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true52.if.end62_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end57:                                         ; preds = %if.end50
  %cmp58 = icmp eq ptr %attr, @dev_attr_physical_line_partition
  br i1 %cmp58, label %land.lhs.true59, label %if.end57.if.end62_crit_edge

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

land.lhs.true59:                                  ; preds = %if.end57
  %physical_line_partition = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %physical_line_partition to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %physical_line_partition, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool60.not = icmp eq i32 %25, 0
  br i1 %tobool60.not, label %land.lhs.true59.if.end62_crit_edge, label %land.lhs.true59.cleanup_crit_edge

land.lhs.true59.cleanup_crit_edge:                ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true59.if.end62_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true59.if.end62_crit_edge, %if.end57.if.end62_crit_edge, %land.lhs.true52.if.end62_crit_edge, %land.lhs.true45.if.end62_crit_edge, %land.lhs.true39.if.end62_crit_edge, %land.lhs.true34.if.end62_crit_edge, %land.lhs.true29.if.end62_crit_edge, %land.lhs.true24.if.end62_crit_edge, %cpumask_empty.exit110.if.end62_crit_edge, %cpumask_empty.exit.if.end62_crit_edge, %land.lhs.true9.if.end62_crit_edge, %land.lhs.true4.if.end62_crit_edge, %land.lhs.true.if.end62_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %land.lhs.true59.cleanup_crit_edge, %land.lhs.true52.cleanup_crit_edge, %land.lhs.true45.cleanup_crit_edge, %land.lhs.true39.cleanup_crit_edge, %land.lhs.true34.cleanup_crit_edge, %land.lhs.true29.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %cpumask_empty.exit110.cleanup_crit_edge, %cpumask_empty.exit.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %if.end62 ], [ %3, %land.lhs.true.cleanup_crit_edge ], [ %3, %land.lhs.true4.cleanup_crit_edge ], [ %3, %land.lhs.true9.cleanup_crit_edge ], [ %3, %cpumask_empty.exit.cleanup_crit_edge ], [ %3, %cpumask_empty.exit110.cleanup_crit_edge ], [ %3, %land.lhs.true24.cleanup_crit_edge ], [ %3, %land.lhs.true29.cleanup_crit_edge ], [ %3, %land.lhs.true34.cleanup_crit_edge ], [ %3, %land.lhs.true39.cleanup_crit_edge ], [ %3, %land.lhs.true45.cleanup_crit_edge ], [ %3, %land.lhs.true52.cleanup_crit_edge ], [ %3, %land.lhs.true59.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
    i32 4, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %output.0 = phi ptr [ @.str.30, %sw.bb2 ], [ @.str.29, %sw.bb1 ], [ @.str.28, %entry.sw.epilog_crit_edge ]
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, ptr noundef nonnull %output.0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @level_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %level = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shared_cpu_map_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %shared_cpu_map = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %2, ptr noundef %shared_cpu_map) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shared_cpu_list_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %shared_cpu_map = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %2, ptr noundef %shared_cpu_map) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coherency_line_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %coherency_line_size = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %coherency_line_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %coherency_line_size, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ways_of_associativity_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ways_of_associativity = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ways_of_associativity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ways_of_associativity, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @number_of_sets_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %number_of_sets = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %number_of_sets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number_of_sets, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %size = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %shr = lshr i32 %3, 10
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %shr) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_policy_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %attributes = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attributes, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end6.sink.split_crit_edge

entry.if.end6.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split

if.else:                                          ; preds = %entry
  %and2 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else.if.end6_crit_edge, label %if.else.if.end6.sink.split_crit_edge

if.else.if.end6.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6.sink.split:                               ; preds = %if.else.if.end6.sink.split_crit_edge, %entry.if.end6.sink.split_crit_edge
  %.str.44.sink = phi ptr [ @.str.43, %entry.if.end6.sink.split_crit_edge ], [ @.str.44, %if.else.if.end6.sink.split_crit_edge ]
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull %.str.44.sink) #9
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge
  %n.0 = phi i32 [ 0, %if.else.if.end6_crit_edge ], [ %call5, %if.end6.sink.split ]
  ret i32 %n.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allocation_policy_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %attributes = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attributes, align 4
  %4 = and i32 %3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not20 = icmp eq i32 %4, 0
  br i1 %.not20, label %entry.cleanup_crit_edge, label %if.end12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %4)
  %.not = icmp eq i32 %4, 12
  %.str.46.mux = select i1 %.not, ptr @.str.46, ptr @.str.47
  %.str.46.mux.mux = select i1 %tobool.not.not, ptr @.str.48, ptr %.str.46.mux
  %call13 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, ptr noundef nonnull %.str.46.mux.mux) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @physical_line_partition_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %physical_line_partition = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %physical_line_partition to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %physical_line_partition, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !69, !71, !72, !74, !76, !77, !79, !81, !83, !85, !87, !88, !90, !91, !93, !95, !96, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !114, !115, !117, !119, !121, !122, !124, !126, !128, !130, !131, !133, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__initcall__kmod_cacheinfo__183_675_cacheinfo_sysfs_init6, !1, !"__initcall__kmod_cacheinfo__183_675_cacheinfo_sysfs_init6", i1 false, i1 false}
!1 = !{!"../drivers/base/cacheinfo.c", i32 675, i32 1}
!2 = !{ptr @__pcpu_unique_ci_cpu_cacheinfo, !3, !"__pcpu_unique_ci_cpu_cacheinfo", i1 false, i1 false}
!3 = !{!"../drivers/base/cacheinfo.c", i32 24, i32 8}
!4 = !{ptr @ci_cpu_cacheinfo, !3, !"ci_cpu_cacheinfo", i1 false, i1 false}
!5 = !{ptr @coherency_max_size, !6, !"coherency_max_size", i1 false, i1 false}
!6 = !{!"../drivers/base/cacheinfo.c", i32 216, i32 14}
!7 = !{ptr @__pcpu_unique_ci_cache_dev, !8, !"__pcpu_unique_ci_cache_dev", i1 false, i1 false}
!8 = !{!"../drivers/base/cacheinfo.c", i32 351, i32 8}
!9 = !{ptr @ci_cache_dev, !8, !"ci_cache_dev", i1 false, i1 false}
!10 = !{ptr @__pcpu_unique_ci_index_dev, !11, !"__pcpu_unique_ci_index_dev", i1 false, i1 false}
!11 = !{!"../drivers/base/cacheinfo.c", i32 357, i32 8}
!12 = !{ptr @ci_index_dev, !11, !"ci_index_dev", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/base/cacheinfo.c", i32 672, i32 6}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/base/cacheinfo.c", i32 339, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @detect_cache_attributes._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @detect_cache_attributes._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/base/cacheinfo.c", i32 170, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cache_setup_of_node._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @cache_setup_of_node._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/base/cacheinfo.c", i32 175, i32 3}
!28 = !{ptr @cache_setup_of_node._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cache_setup_of_node._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/base/cacheinfo.c", i32 136, i32 35}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/base/cacheinfo.c", i32 50, i32 22}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/base/cacheinfo.c", i32 51, i32 24}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/base/cacheinfo.c", i32 52, i32 10}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/base/cacheinfo.c", i32 53, i32 22}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/base/cacheinfo.c", i32 55, i32 22}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/base/cacheinfo.c", i32 56, i32 24}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/base/cacheinfo.c", i32 57, i32 10}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/base/cacheinfo.c", i32 58, i32 22}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/base/cacheinfo.c", i32 60, i32 22}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/base/cacheinfo.c", i32 61, i32 24}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/base/cacheinfo.c", i32 62, i32 10}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/base/cacheinfo.c", i32 63, i32 22}
!56 = !{ptr @cache_type_info, !57, !"cache_type_info", i1 false, i1 false}
!57 = !{!"../drivers/base/cacheinfo.c", i32 48, i32 37}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/base/cacheinfo.c", i32 633, i32 9}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/base/cacheinfo.c", i32 594, i32 62}
!65 = !{ptr @cache_default_groups, !66, !"cache_default_groups", i1 false, i1 false}
!66 = !{!"../drivers/base/cacheinfo.c", i32 535, i32 38}
!67 = !{ptr @cache_default_group, !68, !"cache_default_group", i1 false, i1 false}
!68 = !{!"../drivers/base/cacheinfo.c", i32 530, i32 37}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/base/cacheinfo.c", i32 458, i32 8}
!71 = !{ptr @dev_attr_id, !70, !"dev_attr_id", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/base/cacheinfo.c", i32 369, i32 1}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/base/cacheinfo.c", i32 460, i32 8}
!76 = !{ptr @dev_attr_type, !75, !"dev_attr_type", i1 false, i1 false}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/base/cacheinfo.c", i32 410, i32 12}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/base/cacheinfo.c", i32 413, i32 12}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/base/cacheinfo.c", i32 416, i32 12}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/base/cacheinfo.c", i32 422, i32 25}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/base/cacheinfo.c", i32 459, i32 8}
!87 = !{ptr @dev_attr_level, !86, !"dev_attr_level", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/base/cacheinfo.c", i32 467, i32 8}
!90 = !{ptr @dev_attr_shared_cpu_map, !89, !"dev_attr_shared_cpu_map", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/base/cacheinfo.c", i32 390, i32 25}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/base/cacheinfo.c", i32 468, i32 8}
!95 = !{ptr @dev_attr_shared_cpu_list, !94, !"dev_attr_shared_cpu_list", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/base/cacheinfo.c", i32 399, i32 25}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/base/cacheinfo.c", i32 461, i32 8}
!100 = !{ptr @dev_attr_coherency_line_size, !99, !"dev_attr_coherency_line_size", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/base/cacheinfo.c", i32 462, i32 8}
!103 = !{ptr @dev_attr_ways_of_associativity, !102, !"dev_attr_ways_of_associativity", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/base/cacheinfo.c", i32 463, i32 8}
!106 = !{ptr @dev_attr_number_of_sets, !105, !"dev_attr_number_of_sets", i1 false, i1 false}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/base/cacheinfo.c", i32 464, i32 8}
!109 = !{ptr @dev_attr_size, !108, !"dev_attr_size", i1 false, i1 false}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/base/cacheinfo.c", i32 381, i32 25}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/base/cacheinfo.c", i32 466, i32 8}
!114 = !{ptr @dev_attr_write_policy, !113, !"dev_attr_write_policy", i1 false, i1 false}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/base/cacheinfo.c", i32 452, i32 23}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/base/cacheinfo.c", i32 454, i32 23}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/base/cacheinfo.c", i32 465, i32 8}
!121 = !{ptr @dev_attr_allocation_policy, !120, !"dev_attr_allocation_policy", i1 false, i1 false}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/base/cacheinfo.c", i32 433, i32 12}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/base/cacheinfo.c", i32 435, i32 12}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/base/cacheinfo.c", i32 437, i32 12}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/base/cacheinfo.c", i32 469, i32 8}
!130 = !{ptr @dev_attr_physical_line_partition, !129, !"dev_attr_physical_line_partition", i1 false, i1 false}
!131 = !{ptr @cache_default_attrs, !132, !"cache_default_attrs", i1 false, i1 false}
!132 = !{!"../drivers/base/cacheinfo.c", i32 471, i32 26}
!133 = !{ptr @cache_private_groups, !134, !"cache_private_groups", i1 false, i1 false}
!134 = !{!"../drivers/base/cacheinfo.c", i32 540, i32 38}
!135 = !{ptr @cache_dev_map, !136, !"cache_dev_map", i1 false, i1 false}
!136 = !{!"../drivers/base/cacheinfo.c", i32 354, i32 18}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"branch_weights", i32 1, i32 2000}
!147 = !{i8 0, i8 2}
!148 = !{!"auto-init"}
!149 = !{!"branch_weights", i32 2000, i32 1}
