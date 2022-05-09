; ModuleID = '/llk/IR_all_yes/fs/orangefs/orangefs-sysfs.c_pt.bc'
source_filename = "../fs/orangefs/orangefs-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.orangefs_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.orangefs_stats = type { i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.orangefs_kernel_op_s = type { i32, i64, %union.anon.86, %struct.orangefs_upcall_s, %struct.orangefs_downcall_s, %struct.completion, %struct.spinlock, i32, %struct.list_head }
%union.anon.86 = type { i32 }
%struct.orangefs_upcall_s = type { i32, i32, i32, i32, i32, i64, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.orangefs_param_request_s, [6424 x i8] }
%struct.orangefs_param_request_s = type { i32, i32, %union.anon.88, [2048 x i8] }
%union.anon.88 = type { i64 }
%struct.orangefs_downcall_s = type { i32, i32, i64, ptr, %union.anon.89 }
%union.anon.89 = type { %struct.orangefs_listxattr_response, [4016 x i8] }
%struct.orangefs_listxattr_response = type { i32, i32, i64, [4096 x i8], i32, i32, [16 x i32] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@orangefs_gossip_debug_mask = external dso_local local_unnamed_addr global i64, align 8
@orangefs_sysfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017orangefs_sysfs_init: start\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"orangefs_sysfs_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fs/orangefs/orangefs-sysfs.c\00", [35 x i8] zeroinitializer }, align 32
@orangefs_sysfs_init._entry_ptr = internal global ptr @orangefs_sysfs_init._entry, section ".printk_index", align 4
@orangefs_obj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@orangefs_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @orangefs_sysfs_ops, ptr null, ptr @orangefs_default_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"orangefs\00", [23 x i8] zeroinitializer }, align 32
@acache_orangefs_obj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@acache_orangefs_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @orangefs_sysfs_ops, ptr null, ptr @acache_orangefs_default_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"acache\00", [25 x i8] zeroinitializer }, align 32
@capcache_orangefs_obj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@capcache_orangefs_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @orangefs_sysfs_ops, ptr null, ptr @capcache_orangefs_default_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"capcache\00", [23 x i8] zeroinitializer }, align 32
@ccache_orangefs_obj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ccache_orangefs_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @orangefs_sysfs_ops, ptr null, ptr @ccache_orangefs_default_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ccache\00", [25 x i8] zeroinitializer }, align 32
@ncache_orangefs_obj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ncache_orangefs_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @orangefs_sysfs_ops, ptr null, ptr @ncache_orangefs_default_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ncache\00", [25 x i8] zeroinitializer }, align 32
@pc_orangefs_obj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pc_orangefs_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @orangefs_sysfs_ops, ptr null, ptr @pc_orangefs_default_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"perf_counters\00", [18 x i8] zeroinitializer }, align 32
@stats_orangefs_obj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@stats_orangefs_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @orangefs_sysfs_ops, ptr null, ptr @stats_orangefs_default_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@orangefs_sysfs_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017orangefs_sysfs_exit: start\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"orangefs_sysfs_exit\00", [44 x i8] zeroinitializer }, align 32
@orangefs_sysfs_exit._entry_ptr = internal global ptr @orangefs_sysfs_exit._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@orangefs_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @orangefs_attr_show, ptr @orangefs_attr_store }, [24 x i8] zeroinitializer }, align 32
@orangefs_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @orangefs_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pc\00", [29 x i8] zeroinitializer }, align 32
@orangefs_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @orangefs_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@orangefs_default_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @op_timeout_secs_attribute, ptr @slot_timeout_secs_attribute, ptr @cache_timeout_msecs_attribute, ptr @dcache_timeout_msecs_attribute, ptr @getattr_timeout_msecs_attribute, ptr @readahead_count_attribute, ptr @readahead_size_attribute, ptr @readahead_count_size_attribute, ptr @readahead_readcnt_attribute, ptr @perf_counter_reset_attribute, ptr @perf_history_size_attribute, ptr @perf_time_interval_secs_attribute, ptr null], [44 x i8] zeroinitializer }, align 32
@op_timeout_secs_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.13, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_int_show, ptr @sysfs_int_store }, [36 x i8] zeroinitializer }, align 32
@slot_timeout_secs_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.17, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_int_show, ptr @sysfs_int_store }, [36 x i8] zeroinitializer }, align 32
@cache_timeout_msecs_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.18, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_int_show, ptr @sysfs_int_store }, [36 x i8] zeroinitializer }, align 32
@dcache_timeout_msecs_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.19, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_int_show, ptr @sysfs_int_store }, [36 x i8] zeroinitializer }, align 32
@getattr_timeout_msecs_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.20, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_int_show, ptr @sysfs_int_store }, [36 x i8] zeroinitializer }, align 32
@readahead_count_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.26, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@readahead_size_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.33, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@readahead_count_size_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.34, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@readahead_readcnt_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.35, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@perf_counter_reset_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.38, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@perf_history_size_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.36, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@perf_time_interval_secs_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.37, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"op_timeout_secs\00", [16 x i8] zeroinitializer }, align 32
@sysfs_int_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017sysfs_int_show: id:%s:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sysfs_int_show\00", [17 x i8] zeroinitializer }, align 32
@sysfs_int_show._entry_ptr = internal global ptr @sysfs_int_show._entry, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@op_timeout_secs = external dso_local global i32, align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slot_timeout_secs\00", [46 x i8] zeroinitializer }, align 32
@slot_timeout_secs = external dso_local global i32, align 4
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cache_timeout_msecs\00", [44 x i8] zeroinitializer }, align 32
@orangefs_cache_timeout_msecs = external dso_local global i32, align 4
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dcache_timeout_msecs\00", [43 x i8] zeroinitializer }, align 32
@orangefs_dcache_timeout_msecs = external dso_local global i32, align 4
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"getattr_timeout_msecs\00", [42 x i8] zeroinitializer }, align 32
@orangefs_getattr_timeout_msecs = external dso_local global i32, align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reads\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@orangefs_stats = external dso_local local_unnamed_addr global %struct.orangefs_stats, align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"writes\00", [25 x i8] zeroinitializer }, align 32
@sysfs_int_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017sysfs_int_store: start attr->attr.name:%s: buf:%s:\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sysfs_int_store\00", [16 x i8] zeroinitializer }, align 32
@sysfs_int_store._entry_ptr = internal global ptr @sysfs_int_store._entry, section ".printk_index", align 4
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"readahead_count\00", [16 x i8] zeroinitializer }, align 32
@sysfs_service_op_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017sysfs_service_op_show: id:%s:\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sysfs_service_op_show\00", [42 x i8] zeroinitializer }, align 32
@sysfs_service_op_show._entry_ptr = internal global ptr @sysfs_service_op_show._entry, section ".printk_index", align 4
@sysfs_service_op_show._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@sysfs_service_op_show._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Client not running :%d:\0A\00", [33 x i8] zeroinitializer }, align 32
@sysfs_service_op_show._entry_ptr.32 = internal global ptr @sysfs_service_op_show._entry.30, section ".printk_index", align 4
@orangefs_features = external dso_local local_unnamed_addr global i64, align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"readahead_size\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"readahead_count_size\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"readahead_readcnt\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"perf_history_size\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"perf_time_interval_secs\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"perf_counter_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"timeout_msecs\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hard_limit\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"soft_limit\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reclaim_percentage\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timeout_secs\00", [19 x i8] zeroinitializer }, align 32
@sysfs_service_op_show._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.28, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013sysfs_service_op_show: unknown kobj_id:%s:\0A\00", [50 x i8] zeroinitializer }, align 32
@sysfs_service_op_show._entry_ptr.46 = internal global ptr @sysfs_service_op_show._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"orangefs_param\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"orangefs_perf_count\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d %d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@sysfs_service_op_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017sysfs_service_op_store: id:%s:\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sysfs_service_op_store\00", [41 x i8] zeroinitializer }, align 32
@sysfs_service_op_store._entry_ptr = internal global ptr @sysfs_service_op_store._entry, section ".printk_index", align 4
@sysfs_service_op_store._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.52, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sysfs_service_op_store._entry_ptr.54 = internal global ptr @sysfs_service_op_store._entry.53, section ".printk_index", align 4
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d %d\00", [26 x i8] zeroinitializer }, align 32
@sysfs_service_op_store._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.2, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013sysfs_service_op_store: unknown kobj_id:%s:\0A\00", [49 x i8] zeroinitializer }, align 32
@sysfs_service_op_store._entry_ptr.58 = internal global ptr @sysfs_service_op_store._entry.56, section ".printk_index", align 4
@sysfs_service_op_store._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.2, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013sysfs_service_op_store: service op returned:%d:\0A\00", [45 x i8] zeroinitializer }, align 32
@sysfs_service_op_store._entry_ptr.61 = internal global ptr @sysfs_service_op_store._entry.59, section ".printk_index", align 4
@acache_orangefs_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @acache_orangefs_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@acache_orangefs_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @acache_orangefs_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@acache_orangefs_default_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @acache_hard_limit_attribute, ptr @acache_reclaim_percent_attribute, ptr @acache_soft_limit_attribute, ptr @acache_timeout_msecs_attribute, ptr null], [44 x i8] zeroinitializer }, align 32
@acache_hard_limit_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.40, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@acache_reclaim_percent_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.42, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@acache_soft_limit_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.41, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@acache_timeout_msecs_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.39, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@capcache_orangefs_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @capcache_orangefs_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@capcache_orangefs_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @capcache_orangefs_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@capcache_orangefs_default_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @capcache_hard_limit_attribute, ptr @capcache_reclaim_percent_attribute, ptr @capcache_soft_limit_attribute, ptr @capcache_timeout_secs_attribute, ptr null], [44 x i8] zeroinitializer }, align 32
@capcache_hard_limit_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.40, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@capcache_reclaim_percent_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.42, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@capcache_soft_limit_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.41, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@capcache_timeout_secs_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.43, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@ccache_orangefs_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ccache_orangefs_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ccache_orangefs_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ccache_orangefs_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ccache_orangefs_default_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @ccache_hard_limit_attribute, ptr @ccache_reclaim_percent_attribute, ptr @ccache_soft_limit_attribute, ptr @ccache_timeout_secs_attribute, ptr null], [44 x i8] zeroinitializer }, align 32
@ccache_hard_limit_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.40, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@ccache_reclaim_percent_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.42, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@ccache_soft_limit_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.41, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@ccache_timeout_secs_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.43, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@ncache_orangefs_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ncache_orangefs_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ncache_orangefs_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ncache_orangefs_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ncache_orangefs_default_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @ncache_hard_limit_attribute, ptr @ncache_reclaim_percent_attribute, ptr @ncache_soft_limit_attribute, ptr @ncache_timeout_msecs_attribute, ptr null], [44 x i8] zeroinitializer }, align 32
@ncache_hard_limit_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.40, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@ncache_reclaim_percent_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.42, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@ncache_soft_limit_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.41, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@ncache_timeout_msecs_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.39, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr @sysfs_service_op_store }, [36 x i8] zeroinitializer }, align 32
@pc_orangefs_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pc_orangefs_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@pc_orangefs_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pc_orangefs_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pc_orangefs_default_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @pc_acache_attribute, ptr @pc_capcache_attribute, ptr @pc_ncache_attribute, ptr null], [16 x i8] zeroinitializer }, align 32
@pc_acache_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.4, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@pc_capcache_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.5, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@pc_ncache_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.7, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_service_op_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@stats_orangefs_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stats_orangefs_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@stats_orangefs_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @stats_orangefs_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@stats_orangefs_default_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @stats_reads_attribute, ptr @stats_writes_attribute, ptr null], [20 x i8] zeroinitializer }, align 32
@stats_reads_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.21, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_int_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@stats_writes_attribute = internal global { %struct.orangefs_attribute, [36 x i8] } { %struct.orangefs_attribute { %struct.attribute { ptr @.str.23, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_int_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1123, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [13 x i8] c"orangefs_obj\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1111, i32 24 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"orangefs_ktype\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 899, i32 25 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1133, i32 7 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"acache_orangefs_obj\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1112, i32 24 }
@___asan_gen_.86 = private unnamed_addr constant [22 x i8] c"acache_orangefs_ktype\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 937, i32 25 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1150, i32 7 }
@___asan_gen_.92 = private unnamed_addr constant [22 x i8] c"capcache_orangefs_obj\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1113, i32 24 }
@___asan_gen_.95 = private unnamed_addr constant [24 x i8] c"capcache_orangefs_ktype\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 975, i32 25 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1168, i32 7 }
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c"ccache_orangefs_obj\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1114, i32 24 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"ccache_orangefs_ktype\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1013, i32 25 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1185, i32 7 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"ncache_orangefs_obj\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1115, i32 24 }
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"ncache_orangefs_ktype\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1051, i32 25 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1201, i32 7 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"pc_orangefs_obj\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1116, i32 24 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"pc_orangefs_ktype\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1082, i32 25 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1218, i32 7 }
@___asan_gen_.128 = private unnamed_addr constant [19 x i8] c"stats_orangefs_obj\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1117, i32 24 }
@___asan_gen_.131 = private unnamed_addr constant [21 x i8] c"stats_orangefs_ktype\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1106, i32 25 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1235, i32 7 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1263, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [19 x i8] c"orangefs_sysfs_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 205, i32 31 }
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"orangefs_default_groups\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 195, i32 26 }
@___asan_gen_.155 = private unnamed_addr constant [23 x i8] c"orangefs_default_group\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 897, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [23 x i8] c"orangefs_default_attrs\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 882, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant [26 x i8] c"op_timeout_secs_attribute\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 833, i32 34 }
@___asan_gen_.164 = private unnamed_addr constant [28 x i8] c"slot_timeout_secs_attribute\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 836, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant [30 x i8] c"cache_timeout_msecs_attribute\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 839, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant [31 x i8] c"dcache_timeout_msecs_attribute\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 842, i32 34 }
@___asan_gen_.173 = private unnamed_addr constant [32 x i8] c"getattr_timeout_msecs_attribute\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 845, i32 34 }
@___asan_gen_.176 = private unnamed_addr constant [26 x i8] c"readahead_count_attribute\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 848, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant [25 x i8] c"readahead_size_attribute\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 852, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant [31 x i8] c"readahead_count_size_attribute\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 856, i32 34 }
@___asan_gen_.185 = private unnamed_addr constant [28 x i8] c"readahead_readcnt_attribute\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 860, i32 34 }
@___asan_gen_.188 = private unnamed_addr constant [29 x i8] c"perf_counter_reset_attribute\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 864, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant [28 x i8] c"perf_history_size_attribute\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 870, i32 34 }
@___asan_gen_.194 = private unnamed_addr constant [34 x i8] c"perf_time_interval_secs_attribute\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 876, i32 34 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 834, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 215, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 222, i32 12 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 226, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 233, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 240, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 247, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 258, i32 32 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 261, i32 12 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 264, i32 39 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 285, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 849, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 328, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 344, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 357, i32 32 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 358, i32 32 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 359, i32 32 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 364, i32 32 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 368, i32 6 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 372, i32 6 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 396, i32 32 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 400, i32 32 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 404, i32 32 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 408, i32 32 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 413, i32 32 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 477, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 485, i32 17 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 487, i32 17 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 500, i32 36 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 513, i32 5 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 542, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 553, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 630, i32 21 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 801, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 817, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant [31 x i8] c"acache_orangefs_default_groups\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [30 x i8] c"acache_orangefs_default_group\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 935, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant [30 x i8] c"acache_orangefs_default_attrs\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 928, i32 26 }
@___asan_gen_.353 = private unnamed_addr constant [28 x i8] c"acache_hard_limit_attribute\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 904, i32 34 }
@___asan_gen_.356 = private unnamed_addr constant [33 x i8] c"acache_reclaim_percent_attribute\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 910, i32 34 }
@___asan_gen_.359 = private unnamed_addr constant [28 x i8] c"acache_soft_limit_attribute\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 916, i32 34 }
@___asan_gen_.362 = private unnamed_addr constant [31 x i8] c"acache_timeout_msecs_attribute\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 922, i32 34 }
@___asan_gen_.365 = private unnamed_addr constant [33 x i8] c"capcache_orangefs_default_groups\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [32 x i8] c"capcache_orangefs_default_group\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 973, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant [32 x i8] c"capcache_orangefs_default_attrs\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 966, i32 26 }
@___asan_gen_.374 = private unnamed_addr constant [30 x i8] c"capcache_hard_limit_attribute\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 942, i32 34 }
@___asan_gen_.377 = private unnamed_addr constant [35 x i8] c"capcache_reclaim_percent_attribute\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 948, i32 34 }
@___asan_gen_.380 = private unnamed_addr constant [30 x i8] c"capcache_soft_limit_attribute\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 954, i32 34 }
@___asan_gen_.383 = private unnamed_addr constant [32 x i8] c"capcache_timeout_secs_attribute\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 960, i32 34 }
@___asan_gen_.386 = private unnamed_addr constant [31 x i8] c"ccache_orangefs_default_groups\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [30 x i8] c"ccache_orangefs_default_group\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1011, i32 1 }
@___asan_gen_.392 = private unnamed_addr constant [30 x i8] c"ccache_orangefs_default_attrs\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1004, i32 26 }
@___asan_gen_.395 = private unnamed_addr constant [28 x i8] c"ccache_hard_limit_attribute\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 980, i32 34 }
@___asan_gen_.398 = private unnamed_addr constant [33 x i8] c"ccache_reclaim_percent_attribute\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 986, i32 34 }
@___asan_gen_.401 = private unnamed_addr constant [28 x i8] c"ccache_soft_limit_attribute\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 992, i32 34 }
@___asan_gen_.404 = private unnamed_addr constant [30 x i8] c"ccache_timeout_secs_attribute\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 998, i32 34 }
@___asan_gen_.407 = private unnamed_addr constant [31 x i8] c"ncache_orangefs_default_groups\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [30 x i8] c"ncache_orangefs_default_group\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1049, i32 1 }
@___asan_gen_.413 = private unnamed_addr constant [30 x i8] c"ncache_orangefs_default_attrs\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1042, i32 26 }
@___asan_gen_.416 = private unnamed_addr constant [28 x i8] c"ncache_hard_limit_attribute\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1018, i32 34 }
@___asan_gen_.419 = private unnamed_addr constant [33 x i8] c"ncache_reclaim_percent_attribute\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1024, i32 34 }
@___asan_gen_.422 = private unnamed_addr constant [28 x i8] c"ncache_soft_limit_attribute\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1030, i32 34 }
@___asan_gen_.425 = private unnamed_addr constant [31 x i8] c"ncache_timeout_msecs_attribute\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1036, i32 34 }
@___asan_gen_.428 = private unnamed_addr constant [27 x i8] c"pc_orangefs_default_groups\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [26 x i8] c"pc_orangefs_default_group\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1080, i32 1 }
@___asan_gen_.434 = private unnamed_addr constant [26 x i8] c"pc_orangefs_default_attrs\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1074, i32 26 }
@___asan_gen_.437 = private unnamed_addr constant [20 x i8] c"pc_acache_attribute\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1056, i32 34 }
@___asan_gen_.440 = private unnamed_addr constant [22 x i8] c"pc_capcache_attribute\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1062, i32 34 }
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c"pc_ncache_attribute\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1068, i32 34 }
@___asan_gen_.446 = private unnamed_addr constant [30 x i8] c"stats_orangefs_default_groups\00", align 1
@___asan_gen_.449 = private unnamed_addr constant [29 x i8] c"stats_orangefs_default_group\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1104, i32 1 }
@___asan_gen_.452 = private unnamed_addr constant [29 x i8] c"stats_orangefs_default_attrs\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1099, i32 26 }
@___asan_gen_.455 = private unnamed_addr constant [22 x i8] c"stats_reads_attribute\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1087, i32 34 }
@___asan_gen_.458 = private unnamed_addr constant [23 x i8] c"stats_writes_attribute\00", align 1
@___asan_gen_.459 = private constant [32 x i8] c"../fs/orangefs/orangefs-sysfs.c\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1093, i32 34 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @orangefs_sysfs_exit._entry, ptr @orangefs_sysfs_exit._entry_ptr, ptr @orangefs_sysfs_init._entry, ptr @orangefs_sysfs_init._entry_ptr, ptr @sysfs_int_show._entry, ptr @sysfs_int_show._entry_ptr, ptr @sysfs_int_store._entry, ptr @sysfs_int_store._entry_ptr, ptr @sysfs_service_op_show._entry, ptr @sysfs_service_op_show._entry.30, ptr @sysfs_service_op_show._entry.44, ptr @sysfs_service_op_show._entry_ptr, ptr @sysfs_service_op_show._entry_ptr.32, ptr @sysfs_service_op_show._entry_ptr.46, ptr @sysfs_service_op_store._entry, ptr @sysfs_service_op_store._entry.53, ptr @sysfs_service_op_store._entry.56, ptr @sysfs_service_op_store._entry.59, ptr @sysfs_service_op_store._entry_ptr, ptr @sysfs_service_op_store._entry_ptr.54, ptr @sysfs_service_op_store._entry_ptr.58, ptr @sysfs_service_op_store._entry_ptr.61, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @orangefs_obj, ptr @orangefs_ktype, ptr @.str.3, ptr @acache_orangefs_obj, ptr @acache_orangefs_ktype, ptr @.str.4, ptr @capcache_orangefs_obj, ptr @capcache_orangefs_ktype, ptr @.str.5, ptr @ccache_orangefs_obj, ptr @ccache_orangefs_ktype, ptr @.str.6, ptr @ncache_orangefs_obj, ptr @ncache_orangefs_ktype, ptr @.str.7, ptr @pc_orangefs_obj, ptr @pc_orangefs_ktype, ptr @.str.8, ptr @stats_orangefs_obj, ptr @stats_orangefs_ktype, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @orangefs_sysfs_ops, ptr @orangefs_default_groups, ptr @.str.12, ptr @orangefs_default_group, ptr @orangefs_default_attrs, ptr @op_timeout_secs_attribute, ptr @slot_timeout_secs_attribute, ptr @cache_timeout_msecs_attribute, ptr @dcache_timeout_msecs_attribute, ptr @getattr_timeout_msecs_attribute, ptr @readahead_count_attribute, ptr @readahead_size_attribute, ptr @readahead_count_size_attribute, ptr @readahead_readcnt_attribute, ptr @perf_counter_reset_attribute, ptr @perf_history_size_attribute, ptr @perf_time_interval_secs_attribute, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @sysfs_service_op_show._rs, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @acache_orangefs_default_groups, ptr @acache_orangefs_default_group, ptr @acache_orangefs_default_attrs, ptr @acache_hard_limit_attribute, ptr @acache_reclaim_percent_attribute, ptr @acache_soft_limit_attribute, ptr @acache_timeout_msecs_attribute, ptr @capcache_orangefs_default_groups, ptr @capcache_orangefs_default_group, ptr @capcache_orangefs_default_attrs, ptr @capcache_hard_limit_attribute, ptr @capcache_reclaim_percent_attribute, ptr @capcache_soft_limit_attribute, ptr @capcache_timeout_secs_attribute, ptr @ccache_orangefs_default_groups, ptr @ccache_orangefs_default_group, ptr @ccache_orangefs_default_attrs, ptr @ccache_hard_limit_attribute, ptr @ccache_reclaim_percent_attribute, ptr @ccache_soft_limit_attribute, ptr @ccache_timeout_secs_attribute, ptr @ncache_orangefs_default_groups, ptr @ncache_orangefs_default_group, ptr @ncache_orangefs_default_attrs, ptr @ncache_hard_limit_attribute, ptr @ncache_reclaim_percent_attribute, ptr @ncache_soft_limit_attribute, ptr @ncache_timeout_msecs_attribute, ptr @pc_orangefs_default_groups, ptr @pc_orangefs_default_group, ptr @pc_orangefs_default_attrs, ptr @pc_acache_attribute, ptr @pc_capcache_attribute, ptr @pc_ncache_attribute, ptr @stats_orangefs_default_groups, ptr @stats_orangefs_default_group, ptr @stats_orangefs_default_attrs, ptr @stats_reads_attribute, ptr @stats_writes_attribute], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_sysfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_obj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acache_orangefs_obj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acache_orangefs_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capcache_orangefs_obj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capcache_orangefs_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccache_orangefs_obj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccache_orangefs_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncache_orangefs_obj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncache_orangefs_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc_orangefs_obj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc_orangefs_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_orangefs_obj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_orangefs_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_sysfs_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_default_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @op_timeout_secs_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_timeout_secs_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_timeout_msecs_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcache_timeout_msecs_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @getattr_timeout_msecs_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readahead_count_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readahead_size_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readahead_count_size_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readahead_readcnt_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_counter_reset_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_history_size_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_time_interval_secs_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_int_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_int_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_service_op_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_service_op_show._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_service_op_show._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_service_op_show._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_service_op_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_service_op_store._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_service_op_store._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_service_op_store._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acache_orangefs_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acache_orangefs_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acache_orangefs_default_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acache_hard_limit_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acache_reclaim_percent_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acache_soft_limit_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acache_timeout_msecs_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capcache_orangefs_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capcache_orangefs_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capcache_orangefs_default_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capcache_hard_limit_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capcache_reclaim_percent_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capcache_soft_limit_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capcache_timeout_secs_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccache_orangefs_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccache_orangefs_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccache_orangefs_default_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccache_hard_limit_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccache_reclaim_percent_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccache_soft_limit_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccache_timeout_secs_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncache_orangefs_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncache_orangefs_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncache_orangefs_default_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncache_hard_limit_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncache_reclaim_percent_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncache_soft_limit_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncache_timeout_msecs_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc_orangefs_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc_orangefs_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc_orangefs_default_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc_acache_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc_capcache_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc_ncache_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_orangefs_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_orangefs_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_orangefs_default_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_reads_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_writes_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_sysfs_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 136) #11
  store ptr %call7.i.i, ptr @orangefs_obj, align 4
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end3.out_crit_edge, label %if.end7

do.end3.out_crit_edge:                            ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %2 = load ptr, ptr @fs_kobj, align 4
  %call8 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @orangefs_ktype, ptr noundef %2, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.ofs_obj_bail_crit_edge

if.end7.ofs_obj_bail_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %ofs_obj_bail

if.end11:                                         ; preds = %if.end7
  %3 = load ptr, ptr @orangefs_obj, align 4
  %call12 = tail call i32 @kobject_uevent(ptr noundef %3, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i74 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 136) #11
  store ptr %call7.i.i74, ptr @acache_orangefs_obj, align 4
  %tobool14.not = icmp eq ptr %call7.i.i74, null
  br i1 %tobool14.not, label %if.end11.ofs_obj_bail_crit_edge, label %if.end16

if.end11.ofs_obj_bail_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %ofs_obj_bail

if.end16:                                         ; preds = %if.end11
  %5 = load ptr, ptr @orangefs_obj, align 4
  %call17 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i74, ptr noundef nonnull @acache_orangefs_ktype, ptr noundef %5, ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.acache_obj_bail_crit_edge

if.end16.acache_obj_bail_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %acache_obj_bail

if.end20:                                         ; preds = %if.end16
  %6 = load ptr, ptr @acache_orangefs_obj, align 4
  %call21 = tail call i32 @kobject_uevent(ptr noundef %6, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i75 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 136) #11
  store ptr %call7.i.i75, ptr @capcache_orangefs_obj, align 4
  %tobool23.not = icmp eq ptr %call7.i.i75, null
  br i1 %tobool23.not, label %if.end20.acache_obj_bail_crit_edge, label %if.end25

if.end20.acache_obj_bail_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %acache_obj_bail

if.end25:                                         ; preds = %if.end20
  %8 = load ptr, ptr @orangefs_obj, align 4
  %call26 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i75, ptr noundef nonnull @capcache_orangefs_ktype, ptr noundef %8, ptr noundef nonnull @.str.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.capcache_obj_bail_crit_edge

if.end25.capcache_obj_bail_crit_edge:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %capcache_obj_bail

if.end29:                                         ; preds = %if.end25
  %9 = load ptr, ptr @capcache_orangefs_obj, align 4
  %call30 = tail call i32 @kobject_uevent(ptr noundef %9, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i76 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 136) #11
  store ptr %call7.i.i76, ptr @ccache_orangefs_obj, align 4
  %tobool32.not = icmp eq ptr %call7.i.i76, null
  br i1 %tobool32.not, label %if.end29.capcache_obj_bail_crit_edge, label %if.end34

if.end29.capcache_obj_bail_crit_edge:             ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %capcache_obj_bail

if.end34:                                         ; preds = %if.end29
  %11 = load ptr, ptr @orangefs_obj, align 4
  %call35 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i76, ptr noundef nonnull @ccache_orangefs_ktype, ptr noundef %11, ptr noundef nonnull @.str.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.ccache_obj_bail_crit_edge

if.end34.ccache_obj_bail_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %ccache_obj_bail

if.end38:                                         ; preds = %if.end34
  %12 = load ptr, ptr @ccache_orangefs_obj, align 4
  %call39 = tail call i32 @kobject_uevent(ptr noundef %12, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i77 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 136) #11
  store ptr %call7.i.i77, ptr @ncache_orangefs_obj, align 4
  %tobool41.not = icmp eq ptr %call7.i.i77, null
  br i1 %tobool41.not, label %if.end38.ccache_obj_bail_crit_edge, label %if.end43

if.end38.ccache_obj_bail_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %ccache_obj_bail

if.end43:                                         ; preds = %if.end38
  %14 = load ptr, ptr @orangefs_obj, align 4
  %call44 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i77, ptr noundef nonnull @ncache_orangefs_ktype, ptr noundef %14, ptr noundef nonnull @.str.7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.ncache_obj_bail_crit_edge

if.end43.ncache_obj_bail_crit_edge:               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %ncache_obj_bail

if.end47:                                         ; preds = %if.end43
  %15 = load ptr, ptr @ncache_orangefs_obj, align 4
  %call48 = tail call i32 @kobject_uevent(ptr noundef %15, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i78 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 136) #11
  store ptr %call7.i.i78, ptr @pc_orangefs_obj, align 4
  %tobool50.not = icmp eq ptr %call7.i.i78, null
  br i1 %tobool50.not, label %if.end47.ncache_obj_bail_crit_edge, label %if.end52

if.end47.ncache_obj_bail_crit_edge:               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %ncache_obj_bail

if.end52:                                         ; preds = %if.end47
  %17 = load ptr, ptr @orangefs_obj, align 4
  %call53 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i78, ptr noundef nonnull @pc_orangefs_ktype, ptr noundef %17, ptr noundef nonnull @.str.8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.pc_obj_bail_crit_edge

if.end52.pc_obj_bail_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %pc_obj_bail

if.end56:                                         ; preds = %if.end52
  %18 = load ptr, ptr @pc_orangefs_obj, align 4
  %call57 = tail call i32 @kobject_uevent(ptr noundef %18, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i79 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 136) #11
  store ptr %call7.i.i79, ptr @stats_orangefs_obj, align 4
  %tobool59.not = icmp eq ptr %call7.i.i79, null
  br i1 %tobool59.not, label %if.end56.pc_obj_bail_crit_edge, label %if.end61

if.end56.pc_obj_bail_crit_edge:                   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %pc_obj_bail

if.end61:                                         ; preds = %if.end56
  %20 = load ptr, ptr @orangefs_obj, align 4
  %call62 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i79, ptr noundef nonnull @stats_orangefs_ktype, ptr noundef %20, ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  %21 = load ptr, ptr @stats_orangefs_obj, align 4
  br i1 %tobool63.not, label %if.end65, label %stats_obj_bail

if.end65:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = tail call i32 @kobject_uevent(ptr noundef %21, i32 noundef 0) #7
  br label %out

stats_obj_bail:                                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kobject_put(ptr noundef %21) #7
  br label %pc_obj_bail

pc_obj_bail:                                      ; preds = %stats_obj_bail, %if.end56.pc_obj_bail_crit_edge, %if.end52.pc_obj_bail_crit_edge
  %rc.0 = phi i32 [ %call53, %if.end52.pc_obj_bail_crit_edge ], [ %call62, %stats_obj_bail ], [ -22, %if.end56.pc_obj_bail_crit_edge ]
  %22 = load ptr, ptr @pc_orangefs_obj, align 4
  tail call void @kobject_put(ptr noundef %22) #7
  br label %ncache_obj_bail

ncache_obj_bail:                                  ; preds = %pc_obj_bail, %if.end47.ncache_obj_bail_crit_edge, %if.end43.ncache_obj_bail_crit_edge
  %rc.1 = phi i32 [ %call44, %if.end43.ncache_obj_bail_crit_edge ], [ %rc.0, %pc_obj_bail ], [ -22, %if.end47.ncache_obj_bail_crit_edge ]
  %23 = load ptr, ptr @ncache_orangefs_obj, align 4
  tail call void @kobject_put(ptr noundef %23) #7
  br label %ccache_obj_bail

ccache_obj_bail:                                  ; preds = %ncache_obj_bail, %if.end38.ccache_obj_bail_crit_edge, %if.end34.ccache_obj_bail_crit_edge
  %rc.2 = phi i32 [ %call35, %if.end34.ccache_obj_bail_crit_edge ], [ %rc.1, %ncache_obj_bail ], [ -22, %if.end38.ccache_obj_bail_crit_edge ]
  %24 = load ptr, ptr @ccache_orangefs_obj, align 4
  tail call void @kobject_put(ptr noundef %24) #7
  br label %capcache_obj_bail

capcache_obj_bail:                                ; preds = %ccache_obj_bail, %if.end29.capcache_obj_bail_crit_edge, %if.end25.capcache_obj_bail_crit_edge
  %rc.3 = phi i32 [ %call26, %if.end25.capcache_obj_bail_crit_edge ], [ %rc.2, %ccache_obj_bail ], [ -22, %if.end29.capcache_obj_bail_crit_edge ]
  %25 = load ptr, ptr @capcache_orangefs_obj, align 4
  tail call void @kobject_put(ptr noundef %25) #7
  br label %acache_obj_bail

acache_obj_bail:                                  ; preds = %capcache_obj_bail, %if.end20.acache_obj_bail_crit_edge, %if.end16.acache_obj_bail_crit_edge
  %rc.4 = phi i32 [ %call17, %if.end16.acache_obj_bail_crit_edge ], [ %rc.3, %capcache_obj_bail ], [ -22, %if.end20.acache_obj_bail_crit_edge ]
  %26 = load ptr, ptr @acache_orangefs_obj, align 4
  tail call void @kobject_put(ptr noundef %26) #7
  br label %ofs_obj_bail

ofs_obj_bail:                                     ; preds = %acache_obj_bail, %if.end11.ofs_obj_bail_crit_edge, %if.end7.ofs_obj_bail_crit_edge
  %rc.5 = phi i32 [ %call8, %if.end7.ofs_obj_bail_crit_edge ], [ %rc.4, %acache_obj_bail ], [ -22, %if.end11.ofs_obj_bail_crit_edge ]
  %27 = load ptr, ptr @orangefs_obj, align 4
  tail call void @kobject_put(ptr noundef %27) #7
  br label %out

out:                                              ; preds = %ofs_obj_bail, %if.end65, %do.end3.out_crit_edge
  %rc.6 = phi i32 [ %rc.5, %ofs_obj_bail ], [ 0, %if.end65 ], [ -22, %do.end3.out_crit_edge ]
  ret i32 %rc.6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orangefs_sysfs_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %1 = load ptr, ptr @acache_orangefs_obj, align 4
  tail call void @kobject_put(ptr noundef %1) #7
  %2 = load ptr, ptr @capcache_orangefs_obj, align 4
  tail call void @kobject_put(ptr noundef %2) #7
  %3 = load ptr, ptr @ccache_orangefs_obj, align 4
  tail call void @kobject_put(ptr noundef %3) #7
  %4 = load ptr, ptr @ncache_orangefs_obj, align 4
  tail call void @kobject_put(ptr noundef %4) #7
  %5 = load ptr, ptr @pc_orangefs_obj, align 4
  tail call void @kobject_put(ptr noundef %5) #7
  %6 = load ptr, ptr @stats_orangefs_obj, align 4
  tail call void @kobject_put(ptr noundef %6) #7
  %7 = load ptr, ptr @orangefs_obj, align 4
  tail call void @kobject_put(ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.orangefs_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %1(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kobj, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(3) @.str.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @.str.9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %store = getelementptr inbounds %struct.orangefs_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %store, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 %3(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysfs_int_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kobj, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %2) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kobj, align 4
  %call5 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(9) @.str.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else42

if.then7:                                         ; preds = %do.end3
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr, align 4
  %call10 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(16) @.str.13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then7.out.sink.split_crit_edge, label %if.else

if.then7.out.sink.split_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.else:                                          ; preds = %if.then7
  %call16 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(18) @.str.17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else.out.sink.split_crit_edge, label %if.else20

if.else.out.sink.split_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.else20:                                        ; preds = %if.else
  %call23 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(20) @.str.18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.else20.out.sink.split_crit_edge, label %if.else27

if.else20.out.sink.split_crit_edge:               ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.else27:                                        ; preds = %if.else20
  %call30 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(21) @.str.19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else27.out.sink.split_crit_edge, label %if.else34

if.else27.out.sink.split_crit_edge:               ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.else34:                                        ; preds = %if.else27
  %call37 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(22) @.str.20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.else34.out.sink.split_crit_edge, label %if.else34.out_crit_edge

if.else34.out_crit_edge:                          ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.else34.out.sink.split_crit_edge:               ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.else42:                                        ; preds = %do.end3
  %call44 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(6) @.str.9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.else42.out_crit_edge

if.else42.out_crit_edge:                          ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then46:                                        ; preds = %if.else42
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attr, align 4
  %call49 = tail call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(6) @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then46.out.sink.split_crit_edge, label %if.else53

if.then46.out.sink.split_crit_edge:               ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.else53:                                        ; preds = %if.then46
  %call56 = tail call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(7) @.str.23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.else53.out.sink.split_crit_edge, label %if.else53.out_crit_edge

if.else53.out_crit_edge:                          ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.else53.out.sink.split_crit_edge:               ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.else53.out.sink.split_crit_edge, %if.then46.out.sink.split_crit_edge, %if.else34.out.sink.split_crit_edge, %if.else27.out.sink.split_crit_edge, %if.else20.out.sink.split_crit_edge, %if.else.out.sink.split_crit_edge, %if.then7.out.sink.split_crit_edge
  %.sink77 = phi ptr [ @op_timeout_secs, %if.then7.out.sink.split_crit_edge ], [ @slot_timeout_secs, %if.else.out.sink.split_crit_edge ], [ @orangefs_cache_timeout_msecs, %if.else20.out.sink.split_crit_edge ], [ @orangefs_dcache_timeout_msecs, %if.else27.out.sink.split_crit_edge ], [ @orangefs_getattr_timeout_msecs, %if.else34.out.sink.split_crit_edge ], [ getelementptr inbounds (%struct.orangefs_stats, ptr @orangefs_stats, i32 0, i32 2), %if.then46.out.sink.split_crit_edge ], [ getelementptr inbounds (%struct.orangefs_stats, ptr @orangefs_stats, i32 0, i32 3), %if.else53.out.sink.split_crit_edge ]
  %.str.22.sink = phi ptr [ @.str.16, %if.then7.out.sink.split_crit_edge ], [ @.str.16, %if.else.out.sink.split_crit_edge ], [ @.str.16, %if.else20.out.sink.split_crit_edge ], [ @.str.16, %if.else27.out.sink.split_crit_edge ], [ @.str.16, %if.else34.out.sink.split_crit_edge ], [ @.str.22, %if.then46.out.sink.split_crit_edge ], [ @.str.22, %if.else53.out.sink.split_crit_edge ]
  %9 = ptrtoint ptr %.sink77 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %.sink77, align 4
  %call59 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %.str.22.sink, i32 noundef %10) #7
  br label %out

out:                                              ; preds = %out.sink.split, %if.else53.out_crit_edge, %if.else42.out_crit_edge, %if.else34.out_crit_edge
  %rc.0 = phi i32 [ -5, %if.else42.out_crit_edge ], [ -5, %if.else53.out_crit_edge ], [ -5, %if.else34.out_crit_edge ], [ %call59, %out.sink.split ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysfs_int_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %2, ptr noundef %buf) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr, align 4
  %call7 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(16) @.str.13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end4.out_crit_edge, label %if.else

do.end4.out_crit_edge:                            ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.else:                                          ; preds = %do.end4
  %call13 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(18) @.str.17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else.out_crit_edge, label %if.else17

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.else17:                                        ; preds = %if.else
  %call20 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(20) @.str.18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else17.out_crit_edge, label %if.else24

if.else17.out_crit_edge:                          ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.else24:                                        ; preds = %if.else17
  %call27 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(21) @.str.19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.else24.out_crit_edge, label %if.else31

if.else24.out_crit_edge:                          ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.else31:                                        ; preds = %if.else24
  %call34 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(22) @.str.20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.else31.out_crit_edge, label %if.else31.out.thread_crit_edge

if.else31.out.thread_crit_edge:                   ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.else31.out_crit_edge:                          ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %if.else31.out_crit_edge, %if.else24.out_crit_edge, %if.else17.out_crit_edge, %if.else.out_crit_edge, %do.end4.out_crit_edge
  %orangefs_getattr_timeout_msecs.sink = phi ptr [ @op_timeout_secs, %do.end4.out_crit_edge ], [ @slot_timeout_secs, %if.else.out_crit_edge ], [ @orangefs_cache_timeout_msecs, %if.else17.out_crit_edge ], [ @orangefs_dcache_timeout_msecs, %if.else24.out_crit_edge ], [ @orangefs_getattr_timeout_msecs, %if.else31.out_crit_edge ]
  %call37 = tail call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %orangefs_getattr_timeout_msecs.sink) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool39.not = icmp eq i32 %call37, 0
  br i1 %tobool39.not, label %out.out.thread_crit_edge, label %out._crit_edge

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %5

out.out.thread_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

out.thread:                                       ; preds = %out.out.thread_crit_edge, %if.else31.out.thread_crit_edge
  br label %5

5:                                                ; preds = %out.thread, %out._crit_edge
  %6 = phi i32 [ %count, %out.thread ], [ -22, %out._crit_edge ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysfs_service_op_show(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kobj, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %2) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kobj, align 4
  %call5 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(3) @.str.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %. = select i1 %tobool6.not, i32 -16777195, i32 -16777196
  %call9 = tail call ptr @op_alloc(i32 noundef %.) #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end3.cleanup_crit_edge, label %if.end12

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end3
  %call13 = tail call i32 @is_daemon_in_service() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end26, label %if.then15

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @sysfs_service_op_show._rs, ptr noundef nonnull @.str.28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.if.end368_crit_edge, label %do.end21

if.then15.if.end368_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end368

do.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 @is_daemon_in_service() #7
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, i32 noundef %call23) #10
  br label %if.end368

if.end26:                                         ; preds = %if.end12
  %5 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kobj, align 4
  %call28 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(3) @.str.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end26.if.end31_crit_edge, label %if.then30

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %req, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26.if.end31_crit_edge
  %8 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kobj, align 4
  %call33 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(9) @.str.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %if.else126

if.then35:                                        ; preds = %if.end31
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_features to i32))
  %10 = load i64, ptr @orangefs_features, align 8
  %and36 = and i64 %10, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and36)
  %tobool37.not = icmp eq i64 %and36, 0
  br i1 %tobool37.not, label %land.lhs.true, label %if.then35.if.end57_crit_edge

if.then35.if.end57_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true:                                    ; preds = %if.then35
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attr, align 4
  %call40 = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(16) @.str.26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true.if.end368_crit_edge, label %lor.lhs.false

land.lhs.true.if.end368_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end368

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call44 = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(15) @.str.33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %lor.lhs.false.if.end368_crit_edge, label %lor.lhs.false46

lor.lhs.false.if.end368_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end368

lor.lhs.false46:                                  ; preds = %lor.lhs.false
  %call49 = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(21) @.str.34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %lor.lhs.false46.if.end368_crit_edge, label %lor.lhs.false51

lor.lhs.false46.if.end368_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end368

lor.lhs.false51:                                  ; preds = %lor.lhs.false46
  %call54 = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(18) @.str.35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %lor.lhs.false51.if.end368_crit_edge, label %lor.lhs.false51.if.end57_crit_edge

lor.lhs.false51.if.end57_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

lor.lhs.false51.if.end368_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end368

if.end57:                                         ; preds = %lor.lhs.false51.if.end57_crit_edge, %if.then35.if.end57_crit_edge
  %13 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attr, align 4
  %call60 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(18) @.str.36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then62, label %if.else65

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %op = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %15 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %op, align 4
  br label %out

if.else65:                                        ; preds = %if.end57
  %call68 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(24) @.str.37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %if.else74

if.then70:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  %op73 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %16 = ptrtoint ptr %op73 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %op73, align 4
  br label %out

if.else74:                                        ; preds = %if.else65
  %call77 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(19) @.str.38) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then79, label %if.else83

if.then79:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #9
  %op82 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %17 = ptrtoint ptr %op82 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %op82, align 4
  br label %out

if.else83:                                        ; preds = %if.else74
  %call86 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(16) @.str.26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then88, label %if.else92

if.then88:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #9
  %op91 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %18 = ptrtoint ptr %op91 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 27, ptr %op91, align 4
  br label %out

if.else92:                                        ; preds = %if.else83
  %call95 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(15) @.str.33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then97, label %if.else101

if.then97:                                        ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #9
  %op100 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %19 = ptrtoint ptr %op100 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 26, ptr %op100, align 4
  br label %out

if.else101:                                       ; preds = %if.else92
  %call104 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(21) @.str.34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.then106, label %if.else110

if.then106:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #9
  %op109 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %op109 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 28, ptr %op109, align 4
  br label %out

if.else110:                                       ; preds = %if.else101
  %call113 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(18) @.str.35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then115, label %if.else110.out_crit_edge

if.else110.out_crit_edge:                         ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then115:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #9
  %op118 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %21 = ptrtoint ptr %op118 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 29, ptr %op118, align 4
  br label %out

if.else126:                                       ; preds = %if.end31
  %call128 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(7) @.str.4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.then130, label %if.else167

if.then130:                                       ; preds = %if.else126
  %22 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %attr, align 4
  %call133 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(14) @.str.39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then135, label %if.then130.if.end139_crit_edge

if.then130.if.end139_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then135:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #9
  %op138 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %24 = ptrtoint ptr %op138 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %op138, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then135, %if.then130.if.end139_crit_edge
  %25 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %attr, align 4
  %call142 = tail call i32 @strcmp(ptr noundef %26, ptr noundef nonnull dereferenceable(11) @.str.40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.then144, label %if.end139.if.end148_crit_edge

if.end139.if.end148_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.then144:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  %op147 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %27 = ptrtoint ptr %op147 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %op147, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then144, %if.end139.if.end148_crit_edge
  %28 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %attr, align 4
  %call151 = tail call i32 @strcmp(ptr noundef %29, ptr noundef nonnull dereferenceable(11) @.str.41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then153, label %if.end148.if.end157_crit_edge

if.end148.if.end157_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.then153:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  %op156 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %30 = ptrtoint ptr %op156 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %op156, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then153, %if.end148.if.end157_crit_edge
  %31 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %attr, align 4
  %call160 = tail call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(19) @.str.42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.then162, label %if.end157.out_crit_edge

if.end157.out_crit_edge:                          ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then162:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  %op165 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %33 = ptrtoint ptr %op165 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %op165, align 4
  br label %out

if.else167:                                       ; preds = %if.else126
  %call169 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(9) @.str.5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.then171, label %if.else208

if.then171:                                       ; preds = %if.else167
  %34 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %attr, align 4
  %call174 = tail call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(13) @.str.43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.then176, label %if.then171.if.end180_crit_edge

if.then171.if.end180_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end180

if.then176:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #9
  %op179 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %36 = ptrtoint ptr %op179 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 21, ptr %op179, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then176, %if.then171.if.end180_crit_edge
  %37 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %attr, align 4
  %call183 = tail call i32 @strcmp(ptr noundef %38, ptr noundef nonnull dereferenceable(11) @.str.40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.then185, label %if.end180.if.end189_crit_edge

if.end180.if.end189_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

if.then185:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  %op188 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %39 = ptrtoint ptr %op188 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 22, ptr %op188, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then185, %if.end180.if.end189_crit_edge
  %40 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %attr, align 4
  %call192 = tail call i32 @strcmp(ptr noundef %41, ptr noundef nonnull dereferenceable(11) @.str.41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.then194, label %if.end189.if.end198_crit_edge

if.end189.if.end198_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end198

if.then194:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  %op197 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %42 = ptrtoint ptr %op197 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 23, ptr %op197, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.then194, %if.end189.if.end198_crit_edge
  %43 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %attr, align 4
  %call201 = tail call i32 @strcmp(ptr noundef %44, ptr noundef nonnull dereferenceable(19) @.str.42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.then203, label %if.end198.out_crit_edge

if.end198.out_crit_edge:                          ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then203:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  %op206 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %45 = ptrtoint ptr %op206 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 24, ptr %op206, align 4
  br label %out

if.else208:                                       ; preds = %if.else167
  %call210 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(7) @.str.6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.then212, label %if.else249

if.then212:                                       ; preds = %if.else208
  %46 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %attr, align 4
  %call215 = tail call i32 @strcmp(ptr noundef %47, ptr noundef nonnull dereferenceable(13) @.str.43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.then217, label %if.then212.if.end221_crit_edge

if.then212.if.end221_crit_edge:                   ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end221

if.then217:                                       ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #9
  %op220 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %48 = ptrtoint ptr %op220 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 17, ptr %op220, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.then217, %if.then212.if.end221_crit_edge
  %49 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %attr, align 4
  %call224 = tail call i32 @strcmp(ptr noundef %50, ptr noundef nonnull dereferenceable(11) @.str.40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.then226, label %if.end221.if.end230_crit_edge

if.end221.if.end230_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end230

if.then226:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  %op229 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %51 = ptrtoint ptr %op229 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 18, ptr %op229, align 4
  br label %if.end230

if.end230:                                        ; preds = %if.then226, %if.end221.if.end230_crit_edge
  %52 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %attr, align 4
  %call233 = tail call i32 @strcmp(ptr noundef %53, ptr noundef nonnull dereferenceable(11) @.str.41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.then235, label %if.end230.if.end239_crit_edge

if.end230.if.end239_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end239

if.then235:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #9
  %op238 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %54 = ptrtoint ptr %op238 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 19, ptr %op238, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.then235, %if.end230.if.end239_crit_edge
  %55 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %attr, align 4
  %call242 = tail call i32 @strcmp(ptr noundef %56, ptr noundef nonnull dereferenceable(19) @.str.42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242)
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %if.then244, label %if.end239.out_crit_edge

if.end239.out_crit_edge:                          ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then244:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #9
  %op247 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %57 = ptrtoint ptr %op247 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 20, ptr %op247, align 4
  br label %out

if.else249:                                       ; preds = %if.else208
  %call251 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(7) @.str.7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.then253, label %if.else290

if.then253:                                       ; preds = %if.else249
  %58 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %attr, align 4
  %call256 = tail call i32 @strcmp(ptr noundef %59, ptr noundef nonnull dereferenceable(14) @.str.39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call256)
  %tobool257.not = icmp eq i32 %call256, 0
  br i1 %tobool257.not, label %if.then258, label %if.then253.if.end262_crit_edge

if.then253.if.end262_crit_edge:                   ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end262

if.then258:                                       ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #9
  %op261 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %60 = ptrtoint ptr %op261 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 8, ptr %op261, align 4
  br label %if.end262

if.end262:                                        ; preds = %if.then258, %if.then253.if.end262_crit_edge
  %61 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %attr, align 4
  %call265 = tail call i32 @strcmp(ptr noundef %62, ptr noundef nonnull dereferenceable(11) @.str.40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.then267, label %if.end262.if.end271_crit_edge

if.end262.if.end271_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end271

if.then267:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #9
  %op270 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %63 = ptrtoint ptr %op270 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 9, ptr %op270, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.then267, %if.end262.if.end271_crit_edge
  %64 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %attr, align 4
  %call274 = tail call i32 @strcmp(ptr noundef %65, ptr noundef nonnull dereferenceable(11) @.str.41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %if.then276, label %if.end271.if.end280_crit_edge

if.end271.if.end280_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end280

if.then276:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #9
  %op279 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %66 = ptrtoint ptr %op279 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 10, ptr %op279, align 4
  br label %if.end280

if.end280:                                        ; preds = %if.then276, %if.end271.if.end280_crit_edge
  %67 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %attr, align 4
  %call283 = tail call i32 @strcmp(ptr noundef %68, ptr noundef nonnull dereferenceable(19) @.str.42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call283)
  %tobool284.not = icmp eq i32 %call283, 0
  br i1 %tobool284.not, label %if.then285, label %if.end280.out_crit_edge

if.end280.out_crit_edge:                          ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then285:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #9
  %op288 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %69 = ptrtoint ptr %op288 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 11, ptr %op288, align 4
  br label %out

if.else290:                                       ; preds = %if.else249
  %call292 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(3) @.str.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %if.then294, label %do.end325

if.then294:                                       ; preds = %if.else290
  %70 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %attr, align 4
  %call297 = tail call i32 @strcmp(ptr noundef %71, ptr noundef nonnull dereferenceable(7) @.str.4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call297)
  %tobool298.not = icmp eq i32 %call297, 0
  br i1 %tobool298.not, label %if.then299, label %if.then294.if.end303_crit_edge

if.then294.if.end303_crit_edge:                   ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end303

if.then299:                                       ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #9
  %req301 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7
  %72 = ptrtoint ptr %req301 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %req301, align 8
  br label %if.end303

if.end303:                                        ; preds = %if.then299, %if.then294.if.end303_crit_edge
  %73 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %attr, align 4
  %call306 = tail call i32 @strcmp(ptr noundef %74, ptr noundef nonnull dereferenceable(9) @.str.5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306)
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %if.then308, label %if.end303.if.end312_crit_edge

if.end303.if.end312_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end312

if.then308:                                       ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #9
  %req310 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7
  %75 = ptrtoint ptr %req310 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 3, ptr %req310, align 8
  br label %if.end312

if.end312:                                        ; preds = %if.then308, %if.end303.if.end312_crit_edge
  %76 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %attr, align 4
  %call315 = tail call i32 @strcmp(ptr noundef %77, ptr noundef nonnull dereferenceable(7) @.str.7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315)
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %if.then317, label %if.end312.out_crit_edge

if.end312.out_crit_edge:                          ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then317:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #9
  %req319 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7
  %78 = ptrtoint ptr %req319 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %req319, align 8
  br label %out

do.end325:                                        ; preds = %if.else290
  call void @__sanitizer_cov_trace_pc() #9
  %call328 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %9) #10
  br label %if.end368

out:                                              ; preds = %if.then317, %if.end312.out_crit_edge, %if.then285, %if.end280.out_crit_edge, %if.then244, %if.end239.out_crit_edge, %if.then203, %if.end198.out_crit_edge, %if.then162, %if.end157.out_crit_edge, %if.then115, %if.else110.out_crit_edge, %if.then106, %if.then97, %if.then88, %if.then79, %if.then70, %if.then62
  %79 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %kobj, align 4
  %call336 = tail call i32 @strcmp(ptr noundef %80, ptr noundef nonnull dereferenceable(3) @.str.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call336)
  %tobool337.not = icmp eq i32 %call336, 0
  %.str.48..str.47 = select i1 %tobool337.not, ptr @.str.48, ptr @.str.47
  %call341 = tail call i32 @service_operation(ptr noundef nonnull %call9, ptr noundef nonnull %.str.48..str.47, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call341)
  %tobool342.not = icmp eq i32 %call341, 0
  br i1 %tobool342.not, label %if.then343, label %out.if.end368_crit_edge

out.if.end368_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end368

if.then343:                                       ; preds = %out
  %81 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %kobj, align 4
  %call345 = tail call i32 @strcmp(ptr noundef %82, ptr noundef nonnull dereferenceable(3) @.str.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345)
  %tobool346.not = icmp eq i32 %call345, 0
  br i1 %tobool346.not, label %if.else363, label %if.then347

if.then347:                                       ; preds = %if.then343
  %op350 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 3, i32 7, i32 0, i32 1
  %83 = ptrtoint ptr %op350 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %op350, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %84)
  %cmp = icmp eq i32 %84, 28
  %resp = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 4, i32 4
  br i1 %cmp, label %if.then351, label %if.else357

if.then351:                                       ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %resp, align 8
  %arrayidx355 = getelementptr %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 4, i32 4, i32 0, i32 1
  %87 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx355, align 4
  %call356 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.49, i32 noundef %86, i32 noundef %88) #7
  br label %if.end368

if.else357:                                       ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %resp to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %resp, align 8
  %conv = trunc i64 %90 to i32
  %call361 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.16, i32 noundef %conv) #7
  br label %if.end368

if.else363:                                       ; preds = %if.then343
  call void @__sanitizer_cov_trace_pc() #9
  %resp365 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call9, i32 0, i32 4, i32 4
  %call366 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.50, ptr noundef %resp365) #7
  br label %if.end368

if.end368:                                        ; preds = %if.else363, %if.else357, %if.then351, %out.if.end368_crit_edge, %do.end325, %lor.lhs.false51.if.end368_crit_edge, %lor.lhs.false46.if.end368_crit_edge, %lor.lhs.false.if.end368_crit_edge, %land.lhs.true.if.end368_crit_edge, %do.end21, %if.then15.if.end368_crit_edge
  %rc.1 = phi i32 [ %call341, %out.if.end368_crit_edge ], [ %call356, %if.then351 ], [ %call361, %if.else357 ], [ %call366, %if.else363 ], [ -22, %land.lhs.true.if.end368_crit_edge ], [ -22, %lor.lhs.false.if.end368_crit_edge ], [ -22, %lor.lhs.false46.if.end368_crit_edge ], [ -22, %lor.lhs.false51.if.end368_crit_edge ], [ -22, %do.end325 ], [ %call13, %if.then15.if.end368_crit_edge ], [ %call13, %do.end21 ]
  tail call void @op_release(ptr noundef nonnull %call9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end368, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %if.end368 ], [ -12, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysfs_service_op_store(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %val1 = alloca i32, align 4
  %val2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %1 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kobj, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %3) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call ptr @op_alloc(i32 noundef -16777196) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end3.cleanup448_crit_edge, label %if.end7

do.end3.cleanup448_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup448

if.end7:                                          ; preds = %do.end3
  %call8 = tail call i32 @is_daemon_in_service() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end17, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 @is_daemon_in_service() #7
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.52, i32 noundef %call15) #10
  br label %out

if.end17:                                         ; preds = %if.end7
  %4 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kobj, align 4
  %call19 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(9) @.str.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %if.end17.if.then25_crit_edge

if.end17.if.then25_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

lor.lhs.false:                                    ; preds = %if.end17
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr, align 4
  %call23 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(21) @.str.34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %lor.lhs.false.if.end30_crit_edge, label %lor.lhs.false.if.then25_crit_edge

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %if.end17.if.then25_crit_edge
  %call26 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.if.end30_crit_edge, label %if.then25.out_crit_edge

if.then25.out_crit_edge:                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end30:                                         ; preds = %if.then25.if.end30_crit_edge, %lor.lhs.false.if.end30_crit_edge
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call4, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %req, align 8
  %9 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kobj, align 4
  %call32 = call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(9) @.str.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.else167

if.then34:                                        ; preds = %if.end30
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_features to i32))
  %11 = load i64, ptr @orangefs_features, align 8
  %and35 = and i64 %11, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35)
  %tobool36.not = icmp eq i64 %and35, 0
  br i1 %tobool36.not, label %land.lhs.true, label %if.then34.if.end57_crit_edge

if.then34.if.end57_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true:                                    ; preds = %if.then34
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %attr, align 4
  %call39 = call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(16) @.str.26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true.out.thread537_crit_edge, label %lor.lhs.false41

land.lhs.true.out.thread537_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread537

lor.lhs.false41:                                  ; preds = %land.lhs.true
  %call44 = call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(15) @.str.33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %lor.lhs.false41.out.thread537_crit_edge, label %lor.lhs.false46

lor.lhs.false41.out.thread537_crit_edge:          ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread537

lor.lhs.false46:                                  ; preds = %lor.lhs.false41
  %call49 = call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(21) @.str.34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %lor.lhs.false46.out.thread537_crit_edge, label %lor.lhs.false51

lor.lhs.false46.out.thread537_crit_edge:          ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread537

lor.lhs.false51:                                  ; preds = %lor.lhs.false46
  %call54 = call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(18) @.str.35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %lor.lhs.false51.out.thread537_crit_edge, label %lor.lhs.false51.if.end57_crit_edge

lor.lhs.false51.if.end57_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

lor.lhs.false51.out.thread537_crit_edge:          ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread537

if.end57:                                         ; preds = %lor.lhs.false51.if.end57_crit_edge, %if.then34.if.end57_crit_edge
  %14 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attr, align 4
  %call60 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(18) @.str.36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then62, label %if.else67

if.then62:                                        ; preds = %if.end57
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp sgt i32 %17, 0
  br i1 %cmp, label %if.then62.if.end426.sink.split_crit_edge, label %if.then62.out.thread_crit_edge

if.then62.out.thread_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then62.if.end426.sink.split_crit_edge:         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else67:                                        ; preds = %if.end57
  %call70 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(24) @.str.37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %if.else80

if.then72:                                        ; preds = %if.else67
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp73 = icmp sgt i32 %19, 0
  br i1 %cmp73, label %if.then72.if.end426.sink.split_crit_edge, label %if.then72.out.thread_crit_edge

if.then72.out.thread_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then72.if.end426.sink.split_crit_edge:         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else80:                                        ; preds = %if.else67
  %call83 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(19) @.str.38) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then85, label %if.else95

if.then85:                                        ; preds = %if.else80
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %switch530 = icmp ult i32 %21, 2
  br i1 %switch530, label %if.then85.if.end426.sink.split_crit_edge, label %if.then85.out.thread_crit_edge

if.then85.out.thread_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then85.if.end426.sink.split_crit_edge:         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else95:                                        ; preds = %if.else80
  %call98 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(16) @.str.26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then100, label %if.else108

if.then100:                                       ; preds = %if.else95
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp101 = icmp sgt i32 %23, -1
  br i1 %cmp101, label %if.then100.if.end426.sink.split_crit_edge, label %if.then100.out.thread_crit_edge

if.then100.out.thread_crit_edge:                  ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then100.if.end426.sink.split_crit_edge:        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else108:                                       ; preds = %if.else95
  %call111 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(15) @.str.33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.then113, label %if.else121

if.then113:                                       ; preds = %if.else108
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp114 = icmp sgt i32 %25, -1
  br i1 %cmp114, label %if.then113.if.end426.sink.split_crit_edge, label %if.then113.out.thread_crit_edge

if.then113.out.thread_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then113.if.end426.sink.split_crit_edge:        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else121:                                       ; preds = %if.else108
  %call124 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(21) @.str.34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.then126, label %if.else147

if.then126:                                       ; preds = %if.else121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val1) #7
  %26 = ptrtoint ptr %val1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %val1, align 4, !annotation !260
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val2) #7
  %27 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val2, align 4, !annotation !260
  %call127 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.55, ptr noundef nonnull %val1, ptr noundef nonnull %val2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 2
  br i1 %cmp128, label %if.then126.cleanup.thread_crit_edge, label %if.end130

if.then126.cleanup.thread_crit_edge:              ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end130:                                        ; preds = %if.then126
  %28 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp131 = icmp sgt i32 %29, -1
  br i1 %cmp131, label %land.lhs.true132, label %if.end130.cleanup.thread_crit_edge

if.end130.cleanup.thread_crit_edge:               ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

land.lhs.true132:                                 ; preds = %if.end130
  %30 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp133 = icmp sgt i32 %31, -1
  br i1 %cmp133, label %cleanup, label %land.lhs.true132.cleanup.thread_crit_edge

land.lhs.true132.cleanup.thread_crit_edge:        ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %land.lhs.true132.cleanup.thread_crit_edge, %if.end130.cleanup.thread_crit_edge, %if.then126.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val1) #7
  br label %out.thread

cleanup:                                          ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #9
  %op137 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call4, i32 0, i32 3, i32 7, i32 0, i32 1
  %32 = ptrtoint ptr %op137 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 28, ptr %op137, align 4
  %u = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call4, i32 0, i32 3, i32 7, i32 0, i32 2
  %33 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %29, ptr %u, align 8
  %arrayidx145 = getelementptr [2 x i32], ptr %u, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %arrayidx145, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val1) #7
  br label %value_set

if.else147:                                       ; preds = %if.else121
  %call150 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(18) @.str.35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.then152, label %if.else147.if.end426_crit_edge

if.else147.if.end426_crit_edge:                   ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426

if.then152:                                       ; preds = %if.else147
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp153 = icmp sgt i32 %36, -1
  br i1 %cmp153, label %if.then152.if.end426.sink.split_crit_edge, label %if.then152.out.thread_crit_edge

if.then152.out.thread_crit_edge:                  ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then152.if.end426.sink.split_crit_edge:        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else167:                                       ; preds = %if.end30
  %call169 = call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(7) @.str.4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.then171, label %if.else229

if.then171:                                       ; preds = %if.else167
  %37 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %attr, align 4
  %call174 = call i32 @strcmp(ptr noundef %38, ptr noundef nonnull dereferenceable(11) @.str.40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.then176, label %if.else184

if.then176:                                       ; preds = %if.then171
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp177 = icmp sgt i32 %40, -1
  br i1 %cmp177, label %if.then176.if.end426.sink.split_crit_edge, label %if.then176.out.thread_crit_edge

if.then176.out.thread_crit_edge:                  ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then176.if.end426.sink.split_crit_edge:        ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else184:                                       ; preds = %if.then171
  %call187 = call i32 @strcmp(ptr noundef %38, ptr noundef nonnull dereferenceable(11) @.str.41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.then189, label %if.else197

if.then189:                                       ; preds = %if.else184
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp190 = icmp sgt i32 %42, -1
  br i1 %cmp190, label %if.then189.if.end426.sink.split_crit_edge, label %if.then189.out.thread_crit_edge

if.then189.out.thread_crit_edge:                  ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then189.if.end426.sink.split_crit_edge:        ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else197:                                       ; preds = %if.else184
  %call200 = call i32 @strcmp(ptr noundef %38, ptr noundef nonnull dereferenceable(19) @.str.42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.then202, label %if.else212

if.then202:                                       ; preds = %if.else197
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %44)
  %45 = icmp ult i32 %44, 101
  br i1 %45, label %if.then202.if.end426.sink.split_crit_edge, label %if.then202.out.thread_crit_edge

if.then202.out.thread_crit_edge:                  ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then202.if.end426.sink.split_crit_edge:        ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else212:                                       ; preds = %if.else197
  %call215 = call i32 @strcmp(ptr noundef %38, ptr noundef nonnull dereferenceable(14) @.str.39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.then217, label %if.else212.if.end426_crit_edge

if.else212.if.end426_crit_edge:                   ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426

if.then217:                                       ; preds = %if.else212
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp218 = icmp sgt i32 %47, -1
  br i1 %cmp218, label %if.then217.if.end426.sink.split_crit_edge, label %if.then217.out.thread_crit_edge

if.then217.out.thread_crit_edge:                  ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then217.if.end426.sink.split_crit_edge:        ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else229:                                       ; preds = %if.else167
  %call231 = call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(9) @.str.5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %if.then233, label %if.else291

if.then233:                                       ; preds = %if.else229
  %48 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %attr, align 4
  %call236 = call i32 @strcmp(ptr noundef %49, ptr noundef nonnull dereferenceable(11) @.str.40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %if.then238, label %if.else246

if.then238:                                       ; preds = %if.then233
  %50 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp239 = icmp sgt i32 %51, -1
  br i1 %cmp239, label %if.then238.if.end426.sink.split_crit_edge, label %if.then238.out.thread_crit_edge

if.then238.out.thread_crit_edge:                  ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then238.if.end426.sink.split_crit_edge:        ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else246:                                       ; preds = %if.then233
  %call249 = call i32 @strcmp(ptr noundef %49, ptr noundef nonnull dereferenceable(11) @.str.41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %if.then251, label %if.else259

if.then251:                                       ; preds = %if.else246
  %52 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp252 = icmp sgt i32 %53, -1
  br i1 %cmp252, label %if.then251.if.end426.sink.split_crit_edge, label %if.then251.out.thread_crit_edge

if.then251.out.thread_crit_edge:                  ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then251.if.end426.sink.split_crit_edge:        ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else259:                                       ; preds = %if.else246
  %call262 = call i32 @strcmp(ptr noundef %49, ptr noundef nonnull dereferenceable(19) @.str.42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call262)
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %if.then264, label %if.else274

if.then264:                                       ; preds = %if.else259
  %54 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %55)
  %56 = icmp ult i32 %55, 101
  br i1 %56, label %if.then264.if.end426.sink.split_crit_edge, label %if.then264.out.thread_crit_edge

if.then264.out.thread_crit_edge:                  ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then264.if.end426.sink.split_crit_edge:        ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else274:                                       ; preds = %if.else259
  %call277 = call i32 @strcmp(ptr noundef %49, ptr noundef nonnull dereferenceable(13) @.str.43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %if.then279, label %if.else274.if.end426_crit_edge

if.else274.if.end426_crit_edge:                   ; preds = %if.else274
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426

if.then279:                                       ; preds = %if.else274
  %57 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp280 = icmp sgt i32 %58, -1
  br i1 %cmp280, label %if.then279.if.end426.sink.split_crit_edge, label %if.then279.out.thread_crit_edge

if.then279.out.thread_crit_edge:                  ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then279.if.end426.sink.split_crit_edge:        ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else291:                                       ; preds = %if.else229
  %call293 = call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(7) @.str.6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call293)
  %tobool294.not = icmp eq i32 %call293, 0
  br i1 %tobool294.not, label %if.then295, label %if.else353

if.then295:                                       ; preds = %if.else291
  %59 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %attr, align 4
  %call298 = call i32 @strcmp(ptr noundef %60, ptr noundef nonnull dereferenceable(11) @.str.40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call298)
  %tobool299.not = icmp eq i32 %call298, 0
  br i1 %tobool299.not, label %if.then300, label %if.else308

if.then300:                                       ; preds = %if.then295
  %61 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp301 = icmp sgt i32 %62, -1
  br i1 %cmp301, label %if.then300.if.end426.sink.split_crit_edge, label %if.then300.out.thread_crit_edge

if.then300.out.thread_crit_edge:                  ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then300.if.end426.sink.split_crit_edge:        ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else308:                                       ; preds = %if.then295
  %call311 = call i32 @strcmp(ptr noundef %60, ptr noundef nonnull dereferenceable(11) @.str.41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call311)
  %tobool312.not = icmp eq i32 %call311, 0
  br i1 %tobool312.not, label %if.then313, label %if.else321

if.then313:                                       ; preds = %if.else308
  %63 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp314 = icmp sgt i32 %64, -1
  br i1 %cmp314, label %if.then313.if.end426.sink.split_crit_edge, label %if.then313.out.thread_crit_edge

if.then313.out.thread_crit_edge:                  ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then313.if.end426.sink.split_crit_edge:        ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else321:                                       ; preds = %if.else308
  %call324 = call i32 @strcmp(ptr noundef %60, ptr noundef nonnull dereferenceable(19) @.str.42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call324)
  %tobool325.not = icmp eq i32 %call324, 0
  br i1 %tobool325.not, label %if.then326, label %if.else336

if.then326:                                       ; preds = %if.else321
  %65 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %66)
  %67 = icmp ult i32 %66, 101
  br i1 %67, label %if.then326.if.end426.sink.split_crit_edge, label %if.then326.out.thread_crit_edge

if.then326.out.thread_crit_edge:                  ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then326.if.end426.sink.split_crit_edge:        ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else336:                                       ; preds = %if.else321
  %call339 = call i32 @strcmp(ptr noundef %60, ptr noundef nonnull dereferenceable(13) @.str.43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call339)
  %tobool340.not = icmp eq i32 %call339, 0
  br i1 %tobool340.not, label %if.then341, label %if.else336.if.end426_crit_edge

if.else336.if.end426_crit_edge:                   ; preds = %if.else336
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426

if.then341:                                       ; preds = %if.else336
  %68 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp342 = icmp sgt i32 %69, -1
  br i1 %cmp342, label %if.then341.if.end426.sink.split_crit_edge, label %if.then341.out.thread_crit_edge

if.then341.out.thread_crit_edge:                  ; preds = %if.then341
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then341.if.end426.sink.split_crit_edge:        ; preds = %if.then341
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else353:                                       ; preds = %if.else291
  %call355 = call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(7) @.str.7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call355)
  %tobool356.not = icmp eq i32 %call355, 0
  br i1 %tobool356.not, label %if.then357, label %do.end418

if.then357:                                       ; preds = %if.else353
  %70 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %attr, align 4
  %call360 = call i32 @strcmp(ptr noundef %71, ptr noundef nonnull dereferenceable(11) @.str.40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call360)
  %tobool361.not = icmp eq i32 %call360, 0
  br i1 %tobool361.not, label %if.then362, label %if.else370

if.then362:                                       ; preds = %if.then357
  %72 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp363 = icmp sgt i32 %73, -1
  br i1 %cmp363, label %if.then362.if.end426.sink.split_crit_edge, label %if.then362.out.thread_crit_edge

if.then362.out.thread_crit_edge:                  ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then362.if.end426.sink.split_crit_edge:        ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else370:                                       ; preds = %if.then357
  %call373 = call i32 @strcmp(ptr noundef %71, ptr noundef nonnull dereferenceable(11) @.str.41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call373)
  %tobool374.not = icmp eq i32 %call373, 0
  br i1 %tobool374.not, label %if.then375, label %if.else383

if.then375:                                       ; preds = %if.else370
  %74 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp376 = icmp sgt i32 %75, -1
  br i1 %cmp376, label %if.then375.if.end426.sink.split_crit_edge, label %if.then375.out.thread_crit_edge

if.then375.out.thread_crit_edge:                  ; preds = %if.then375
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then375.if.end426.sink.split_crit_edge:        ; preds = %if.then375
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else383:                                       ; preds = %if.else370
  %call386 = call i32 @strcmp(ptr noundef %71, ptr noundef nonnull dereferenceable(19) @.str.42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call386)
  %tobool387.not = icmp eq i32 %call386, 0
  br i1 %tobool387.not, label %if.then388, label %if.else398

if.then388:                                       ; preds = %if.else383
  %76 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %77)
  %78 = icmp ult i32 %77, 101
  br i1 %78, label %if.then388.if.end426.sink.split_crit_edge, label %if.then388.out.thread_crit_edge

if.then388.out.thread_crit_edge:                  ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then388.if.end426.sink.split_crit_edge:        ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.else398:                                       ; preds = %if.else383
  %call401 = call i32 @strcmp(ptr noundef %71, ptr noundef nonnull dereferenceable(14) @.str.39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call401)
  %tobool402.not = icmp eq i32 %call401, 0
  br i1 %tobool402.not, label %if.then403, label %if.else398.if.end426_crit_edge

if.else398.if.end426_crit_edge:                   ; preds = %if.else398
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426

if.then403:                                       ; preds = %if.else398
  %79 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp404 = icmp sgt i32 %80, -1
  br i1 %cmp404, label %if.then403.if.end426.sink.split_crit_edge, label %if.then403.out.thread_crit_edge

if.then403.out.thread_crit_edge:                  ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then403.if.end426.sink.split_crit_edge:        ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

do.end418:                                        ; preds = %if.else353
  call void @__sanitizer_cov_trace_pc() #9
  %call421 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %10) #10
  br label %out.thread537

if.end426.sink.split:                             ; preds = %if.then403.if.end426.sink.split_crit_edge, %if.then388.if.end426.sink.split_crit_edge, %if.then375.if.end426.sink.split_crit_edge, %if.then362.if.end426.sink.split_crit_edge, %if.then341.if.end426.sink.split_crit_edge, %if.then326.if.end426.sink.split_crit_edge, %if.then313.if.end426.sink.split_crit_edge, %if.then300.if.end426.sink.split_crit_edge, %if.then279.if.end426.sink.split_crit_edge, %if.then264.if.end426.sink.split_crit_edge, %if.then251.if.end426.sink.split_crit_edge, %if.then238.if.end426.sink.split_crit_edge, %if.then217.if.end426.sink.split_crit_edge, %if.then202.if.end426.sink.split_crit_edge, %if.then189.if.end426.sink.split_crit_edge, %if.then176.if.end426.sink.split_crit_edge, %if.then152.if.end426.sink.split_crit_edge, %if.then113.if.end426.sink.split_crit_edge, %if.then100.if.end426.sink.split_crit_edge, %if.then85.if.end426.sink.split_crit_edge, %if.then72.if.end426.sink.split_crit_edge, %if.then62.if.end426.sink.split_crit_edge
  %.sink = phi i32 [ 6, %if.then62.if.end426.sink.split_crit_edge ], [ 5, %if.then72.if.end426.sink.split_crit_edge ], [ 7, %if.then85.if.end426.sink.split_crit_edge ], [ 27, %if.then100.if.end426.sink.split_crit_edge ], [ 26, %if.then113.if.end426.sink.split_crit_edge ], [ 29, %if.then152.if.end426.sink.split_crit_edge ], [ 2, %if.then176.if.end426.sink.split_crit_edge ], [ 3, %if.then189.if.end426.sink.split_crit_edge ], [ 4, %if.then202.if.end426.sink.split_crit_edge ], [ 1, %if.then217.if.end426.sink.split_crit_edge ], [ 22, %if.then238.if.end426.sink.split_crit_edge ], [ 23, %if.then251.if.end426.sink.split_crit_edge ], [ 24, %if.then264.if.end426.sink.split_crit_edge ], [ 21, %if.then279.if.end426.sink.split_crit_edge ], [ 18, %if.then300.if.end426.sink.split_crit_edge ], [ 19, %if.then313.if.end426.sink.split_crit_edge ], [ 20, %if.then326.if.end426.sink.split_crit_edge ], [ 17, %if.then341.if.end426.sink.split_crit_edge ], [ 9, %if.then362.if.end426.sink.split_crit_edge ], [ 10, %if.then375.if.end426.sink.split_crit_edge ], [ 11, %if.then388.if.end426.sink.split_crit_edge ], [ 8, %if.then403.if.end426.sink.split_crit_edge ]
  %op194 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call4, i32 0, i32 3, i32 7, i32 0, i32 1
  %81 = ptrtoint ptr %op194 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %.sink, ptr %op194, align 4
  br label %if.end426

if.end426:                                        ; preds = %if.end426.sink.split, %if.else398.if.end426_crit_edge, %if.else336.if.end426_crit_edge, %if.else274.if.end426_crit_edge, %if.else212.if.end426_crit_edge, %if.else147.if.end426_crit_edge
  %82 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val, align 4
  %conv = sext i32 %83 to i64
  %u429 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call4, i32 0, i32 3, i32 7, i32 0, i32 2
  %84 = ptrtoint ptr %u429 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv, ptr %u429, align 8
  br label %value_set

value_set:                                        ; preds = %if.end426, %cleanup
  %call430 = call i32 @service_operation(ptr noundef nonnull %call4, ptr noundef nonnull @.str.47, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call430)
  %cmp431 = icmp slt i32 %call430, 0
  br i1 %cmp431, label %do.end436, label %value_set.out_crit_edge

value_set.out_crit_edge:                          ; preds = %value_set
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end436:                                        ; preds = %value_set
  call void @__sanitizer_cov_trace_pc() #9
  %call438 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %call430) #10
  br label %out.thread

out.thread:                                       ; preds = %do.end436, %if.then403.out.thread_crit_edge, %if.then388.out.thread_crit_edge, %if.then375.out.thread_crit_edge, %if.then362.out.thread_crit_edge, %if.then341.out.thread_crit_edge, %if.then326.out.thread_crit_edge, %if.then313.out.thread_crit_edge, %if.then300.out.thread_crit_edge, %if.then279.out.thread_crit_edge, %if.then264.out.thread_crit_edge, %if.then251.out.thread_crit_edge, %if.then238.out.thread_crit_edge, %if.then217.out.thread_crit_edge, %if.then202.out.thread_crit_edge, %if.then189.out.thread_crit_edge, %if.then176.out.thread_crit_edge, %if.then152.out.thread_crit_edge, %cleanup.thread, %if.then113.out.thread_crit_edge, %if.then100.out.thread_crit_edge, %if.then85.out.thread_crit_edge, %if.then72.out.thread_crit_edge, %if.then62.out.thread_crit_edge
  call void @op_release(ptr noundef nonnull %call4) #7
  br label %if.then446

out.thread537:                                    ; preds = %do.end418, %lor.lhs.false51.out.thread537_crit_edge, %lor.lhs.false46.out.thread537_crit_edge, %lor.lhs.false41.out.thread537_crit_edge, %land.lhs.true.out.thread537_crit_edge
  call void @op_release(ptr noundef nonnull %call4) #7
  br label %cleanup448

out:                                              ; preds = %value_set.out_crit_edge, %if.then25.out_crit_edge, %do.end13
  %rc.1 = phi i32 [ %call8, %do.end13 ], [ %call26, %if.then25.out_crit_edge ], [ %count, %value_set.out_crit_edge ]
  call void @op_release(ptr noundef nonnull %call4) #7
  %85 = zext i32 %rc.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rc.1, label %out.cleanup448_crit_edge [
    i32 -12, label %out.if.then446_crit_edge
    i32 0, label %out.if.then446_crit_edge539
  ]

out.if.then446_crit_edge539:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then446

out.if.then446_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then446

out.cleanup448_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup448

if.then446:                                       ; preds = %out.if.then446_crit_edge, %out.if.then446_crit_edge539, %out.thread
  br label %cleanup448

cleanup448:                                       ; preds = %if.then446, %out.cleanup448_crit_edge, %out.thread537, %do.end3.cleanup448_crit_edge
  %retval.0 = phi i32 [ -22, %do.end3.cleanup448_crit_edge ], [ -22, %if.then446 ], [ %rc.1, %out.cleanup448_crit_edge ], [ -22, %out.thread537 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @op_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_daemon_in_service() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @service_operation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @op_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !131, !133, !135, !137, !139, !140, !141, !142, !144, !145, !147, !149, !150, !151, !153, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !172, !174, !176, !178, !180, !182, !184, !186, !187, !189, !191, !193, !195, !197, !199, !201, !202, !204, !206, !208, !210, !212, !214, !216, !217, !219, !221, !223, !225, !227, !229, !231, !232, !234, !236, !238, !240, !242, !244, !245, !247, !249}
!llvm.module.flags = !{!251, !252, !253, !254, !255, !256, !257, !258}
!llvm.ident = !{!259}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1123, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @orangefs_sysfs_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @orangefs_sysfs_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1133, i32 7}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1150, i32 7}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1168, i32 7}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1185, i32 7}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1201, i32 7}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1218, i32 7}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1235, i32 7}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1263, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @orangefs_sysfs_exit._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @orangefs_sysfs_exit._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @orangefs_obj, !26, !"orangefs_obj", i1 false, i1 false}
!26 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1111, i32 24}
!27 = !{ptr @acache_orangefs_obj, !28, !"acache_orangefs_obj", i1 false, i1 false}
!28 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1112, i32 24}
!29 = !{ptr @capcache_orangefs_obj, !30, !"capcache_orangefs_obj", i1 false, i1 false}
!30 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1113, i32 24}
!31 = !{ptr @ccache_orangefs_obj, !32, !"ccache_orangefs_obj", i1 false, i1 false}
!32 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1114, i32 24}
!33 = !{ptr @ncache_orangefs_obj, !34, !"ncache_orangefs_obj", i1 false, i1 false}
!34 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1115, i32 24}
!35 = !{ptr @pc_orangefs_obj, !36, !"pc_orangefs_obj", i1 false, i1 false}
!36 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1116, i32 24}
!37 = !{ptr @stats_orangefs_obj, !38, !"stats_orangefs_obj", i1 false, i1 false}
!38 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1117, i32 24}
!39 = !{ptr @orangefs_ktype, !40, !"orangefs_ktype", i1 false, i1 false}
!40 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 899, i32 25}
!41 = !{ptr @orangefs_sysfs_ops, !42, !"orangefs_sysfs_ops", i1 false, i1 false}
!42 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 205, i32 31}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 195, i32 26}
!45 = !{ptr @orangefs_default_groups, !46, !"orangefs_default_groups", i1 false, i1 false}
!46 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 897, i32 1}
!47 = !{ptr @orangefs_default_group, !46, !"orangefs_default_group", i1 false, i1 false}
!48 = !{ptr @orangefs_default_attrs, !49, !"orangefs_default_attrs", i1 false, i1 false}
!49 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 882, i32 26}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 834, i32 2}
!52 = !{ptr @op_timeout_secs_attribute, !53, !"op_timeout_secs_attribute", i1 false, i1 false}
!53 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 833, i32 34}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 215, i32 2}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sysfs_int_show._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sysfs_int_show._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 222, i32 12}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 226, i32 8}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 233, i32 8}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 240, i32 8}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 247, i32 8}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 258, i32 32}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 261, i32 12}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 264, i32 39}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 285, i32 2}
!77 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @sysfs_int_store._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @sysfs_int_store._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @slot_timeout_secs_attribute, !81, !"slot_timeout_secs_attribute", i1 false, i1 false}
!81 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 836, i32 34}
!82 = !{ptr @cache_timeout_msecs_attribute, !83, !"cache_timeout_msecs_attribute", i1 false, i1 false}
!83 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 839, i32 34}
!84 = !{ptr @dcache_timeout_msecs_attribute, !85, !"dcache_timeout_msecs_attribute", i1 false, i1 false}
!85 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 842, i32 34}
!86 = !{ptr @getattr_timeout_msecs_attribute, !87, !"getattr_timeout_msecs_attribute", i1 false, i1 false}
!87 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 845, i32 34}
!88 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 849, i32 2}
!90 = !{ptr @readahead_count_attribute, !91, !"readahead_count_attribute", i1 false, i1 false}
!91 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 848, i32 34}
!92 = !{ptr @.str.27, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 328, i32 2}
!94 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sysfs_service_op_show._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @sysfs_service_op_show._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 344, i32 3}
!99 = !{ptr @sysfs_service_op_show._rs, !98, !"_rs", i1 false, i1 false}
!100 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sysfs_service_op_show._entry.30, !98, !"_entry", i1 false, i1 false}
!102 = !{ptr @sysfs_service_op_show._entry_ptr.32, !98, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 357, i32 32}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 358, i32 32}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 359, i32 32}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 364, i32 32}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 368, i32 6}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 372, i32 6}
!115 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 396, i32 32}
!117 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 400, i32 32}
!119 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 404, i32 32}
!121 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 408, i32 32}
!123 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 413, i32 32}
!125 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 477, i32 3}
!127 = !{ptr @sysfs_service_op_show._entry.44, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @sysfs_service_op_show._entry_ptr.46, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 485, i32 17}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 487, i32 17}
!133 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 500, i32 36}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 513, i32 5}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 542, i32 2}
!139 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @sysfs_service_op_store._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @sysfs_service_op_store._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @sysfs_service_op_store._entry.53, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 553, i32 3}
!144 = !{ptr @sysfs_service_op_store._entry_ptr.54, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 630, i32 21}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 801, i32 3}
!149 = !{ptr @sysfs_service_op_store._entry.56, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @sysfs_service_op_store._entry_ptr.58, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 817, i32 3}
!153 = !{ptr @sysfs_service_op_store._entry.59, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @sysfs_service_op_store._entry_ptr.61, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @readahead_size_attribute, !156, !"readahead_size_attribute", i1 false, i1 false}
!156 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 852, i32 34}
!157 = !{ptr @readahead_count_size_attribute, !158, !"readahead_count_size_attribute", i1 false, i1 false}
!158 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 856, i32 34}
!159 = !{ptr @readahead_readcnt_attribute, !160, !"readahead_readcnt_attribute", i1 false, i1 false}
!160 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 860, i32 34}
!161 = !{ptr @perf_counter_reset_attribute, !162, !"perf_counter_reset_attribute", i1 false, i1 false}
!162 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 864, i32 34}
!163 = !{ptr @perf_history_size_attribute, !164, !"perf_history_size_attribute", i1 false, i1 false}
!164 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 870, i32 34}
!165 = !{ptr @perf_time_interval_secs_attribute, !166, !"perf_time_interval_secs_attribute", i1 false, i1 false}
!166 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 876, i32 34}
!167 = !{ptr @acache_orangefs_ktype, !168, !"acache_orangefs_ktype", i1 false, i1 false}
!168 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 937, i32 25}
!169 = !{ptr @acache_orangefs_default_groups, !170, !"acache_orangefs_default_groups", i1 false, i1 false}
!170 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 935, i32 1}
!171 = !{ptr @acache_orangefs_default_group, !170, !"acache_orangefs_default_group", i1 false, i1 false}
!172 = !{ptr @acache_orangefs_default_attrs, !173, !"acache_orangefs_default_attrs", i1 false, i1 false}
!173 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 928, i32 26}
!174 = !{ptr @acache_hard_limit_attribute, !175, !"acache_hard_limit_attribute", i1 false, i1 false}
!175 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 904, i32 34}
!176 = !{ptr @acache_reclaim_percent_attribute, !177, !"acache_reclaim_percent_attribute", i1 false, i1 false}
!177 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 910, i32 34}
!178 = !{ptr @acache_soft_limit_attribute, !179, !"acache_soft_limit_attribute", i1 false, i1 false}
!179 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 916, i32 34}
!180 = !{ptr @acache_timeout_msecs_attribute, !181, !"acache_timeout_msecs_attribute", i1 false, i1 false}
!181 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 922, i32 34}
!182 = !{ptr @capcache_orangefs_ktype, !183, !"capcache_orangefs_ktype", i1 false, i1 false}
!183 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 975, i32 25}
!184 = !{ptr @capcache_orangefs_default_groups, !185, !"capcache_orangefs_default_groups", i1 false, i1 false}
!185 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 973, i32 1}
!186 = !{ptr @capcache_orangefs_default_group, !185, !"capcache_orangefs_default_group", i1 false, i1 false}
!187 = !{ptr @capcache_orangefs_default_attrs, !188, !"capcache_orangefs_default_attrs", i1 false, i1 false}
!188 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 966, i32 26}
!189 = !{ptr @capcache_hard_limit_attribute, !190, !"capcache_hard_limit_attribute", i1 false, i1 false}
!190 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 942, i32 34}
!191 = !{ptr @capcache_reclaim_percent_attribute, !192, !"capcache_reclaim_percent_attribute", i1 false, i1 false}
!192 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 948, i32 34}
!193 = !{ptr @capcache_soft_limit_attribute, !194, !"capcache_soft_limit_attribute", i1 false, i1 false}
!194 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 954, i32 34}
!195 = !{ptr @capcache_timeout_secs_attribute, !196, !"capcache_timeout_secs_attribute", i1 false, i1 false}
!196 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 960, i32 34}
!197 = !{ptr @ccache_orangefs_ktype, !198, !"ccache_orangefs_ktype", i1 false, i1 false}
!198 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1013, i32 25}
!199 = !{ptr @ccache_orangefs_default_groups, !200, !"ccache_orangefs_default_groups", i1 false, i1 false}
!200 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1011, i32 1}
!201 = !{ptr @ccache_orangefs_default_group, !200, !"ccache_orangefs_default_group", i1 false, i1 false}
!202 = !{ptr @ccache_orangefs_default_attrs, !203, !"ccache_orangefs_default_attrs", i1 false, i1 false}
!203 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1004, i32 26}
!204 = !{ptr @ccache_hard_limit_attribute, !205, !"ccache_hard_limit_attribute", i1 false, i1 false}
!205 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 980, i32 34}
!206 = !{ptr @ccache_reclaim_percent_attribute, !207, !"ccache_reclaim_percent_attribute", i1 false, i1 false}
!207 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 986, i32 34}
!208 = !{ptr @ccache_soft_limit_attribute, !209, !"ccache_soft_limit_attribute", i1 false, i1 false}
!209 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 992, i32 34}
!210 = !{ptr @ccache_timeout_secs_attribute, !211, !"ccache_timeout_secs_attribute", i1 false, i1 false}
!211 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 998, i32 34}
!212 = !{ptr @ncache_orangefs_ktype, !213, !"ncache_orangefs_ktype", i1 false, i1 false}
!213 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1051, i32 25}
!214 = !{ptr @ncache_orangefs_default_groups, !215, !"ncache_orangefs_default_groups", i1 false, i1 false}
!215 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1049, i32 1}
!216 = !{ptr @ncache_orangefs_default_group, !215, !"ncache_orangefs_default_group", i1 false, i1 false}
!217 = !{ptr @ncache_orangefs_default_attrs, !218, !"ncache_orangefs_default_attrs", i1 false, i1 false}
!218 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1042, i32 26}
!219 = !{ptr @ncache_hard_limit_attribute, !220, !"ncache_hard_limit_attribute", i1 false, i1 false}
!220 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1018, i32 34}
!221 = !{ptr @ncache_reclaim_percent_attribute, !222, !"ncache_reclaim_percent_attribute", i1 false, i1 false}
!222 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1024, i32 34}
!223 = !{ptr @ncache_soft_limit_attribute, !224, !"ncache_soft_limit_attribute", i1 false, i1 false}
!224 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1030, i32 34}
!225 = !{ptr @ncache_timeout_msecs_attribute, !226, !"ncache_timeout_msecs_attribute", i1 false, i1 false}
!226 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1036, i32 34}
!227 = !{ptr @pc_orangefs_ktype, !228, !"pc_orangefs_ktype", i1 false, i1 false}
!228 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1082, i32 25}
!229 = !{ptr @pc_orangefs_default_groups, !230, !"pc_orangefs_default_groups", i1 false, i1 false}
!230 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1080, i32 1}
!231 = !{ptr @pc_orangefs_default_group, !230, !"pc_orangefs_default_group", i1 false, i1 false}
!232 = !{ptr @pc_orangefs_default_attrs, !233, !"pc_orangefs_default_attrs", i1 false, i1 false}
!233 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1074, i32 26}
!234 = !{ptr @pc_acache_attribute, !235, !"pc_acache_attribute", i1 false, i1 false}
!235 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1056, i32 34}
!236 = !{ptr @pc_capcache_attribute, !237, !"pc_capcache_attribute", i1 false, i1 false}
!237 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1062, i32 34}
!238 = !{ptr @pc_ncache_attribute, !239, !"pc_ncache_attribute", i1 false, i1 false}
!239 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1068, i32 34}
!240 = !{ptr @stats_orangefs_ktype, !241, !"stats_orangefs_ktype", i1 false, i1 false}
!241 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1106, i32 25}
!242 = !{ptr @stats_orangefs_default_groups, !243, !"stats_orangefs_default_groups", i1 false, i1 false}
!243 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1104, i32 1}
!244 = !{ptr @stats_orangefs_default_group, !243, !"stats_orangefs_default_group", i1 false, i1 false}
!245 = !{ptr @stats_orangefs_default_attrs, !246, !"stats_orangefs_default_attrs", i1 false, i1 false}
!246 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1099, i32 26}
!247 = !{ptr @stats_reads_attribute, !248, !"stats_reads_attribute", i1 false, i1 false}
!248 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1087, i32 34}
!249 = !{ptr @stats_writes_attribute, !250, !"stats_writes_attribute", i1 false, i1 false}
!250 = !{!"../fs/orangefs/orangefs-sysfs.c", i32 1093, i32 34}
!251 = !{i32 1, !"wchar_size", i32 2}
!252 = !{i32 1, !"min_enum_size", i32 4}
!253 = !{i32 8, !"branch-target-enforcement", i32 0}
!254 = !{i32 8, !"sign-return-address", i32 0}
!255 = !{i32 8, !"sign-return-address-all", i32 0}
!256 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!257 = !{i32 7, !"uwtable", i32 1}
!258 = !{i32 7, !"frame-pointer", i32 2}
!259 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!260 = !{!"auto-init"}
