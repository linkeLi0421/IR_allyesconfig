; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_sysfs.c_pt.bc'
source_filename = "../fs/xfs/xfs_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sysfs_ops = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_sysfs_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_init = type { ptr, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.xfs_globals = type { i32, i32, i32, i8, i8 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@xfs_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @xfs_sysfs_object_show, ptr @xfs_sysfs_object_store }, [24 x i8] zeroinitializer }, align 32
@xfs_mp_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @xfs_mp_group, ptr null], [24 x i8] zeroinitializer }, align 32
@xfs_mp_ktype = dso_local global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @xfs_sysfs_release, ptr @xfs_sysfs_ops, ptr null, ptr @xfs_mp_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xfs_dbg_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @xfs_dbg_group, ptr null], [24 x i8] zeroinitializer }, align 32
@xfs_dbg_ktype = dso_local global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @xfs_sysfs_release, ptr @xfs_sysfs_ops, ptr null, ptr @xfs_dbg_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xfs_stats_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @xfs_stats_group, ptr null], [24 x i8] zeroinitializer }, align 32
@xfs_stats_ktype = dso_local global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @xfs_sysfs_release, ptr @xfs_sysfs_ops, ptr null, ptr @xfs_stats_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xfs_log_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @xfs_log_group, ptr null], [24 x i8] zeroinitializer }, align 32
@xfs_log_ktype = dso_local global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @xfs_sysfs_release, ptr @xfs_sysfs_ops, ptr null, ptr @xfs_log_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xfs_error_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @xfs_sysfs_release, ptr @xfs_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@xfs_sysfs_attr_fail_at_unmount = internal global { %struct.xfs_sysfs_attr, [36 x i8] } { %struct.xfs_sysfs_attr { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fail_at_unmount_show, ptr @fail_at_unmount_store }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"metadata\00", [23 x i8] zeroinitializer }, align 32
@xfs_error_meta_init = internal constant { [4 x %struct.xfs_error_init], [48 x i8] } { [4 x %struct.xfs_error_init] [%struct.xfs_error_init { ptr @.str.23, i32 -1, i32 -1 }, %struct.xfs_error_init { ptr @.str.24, i32 -1, i32 -1 }, %struct.xfs_error_init { ptr @.str.25, i32 -1, i32 -1 }, %struct.xfs_error_init { ptr @.str.26, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@xfs_mp_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @xfs_mp_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@xfs_mp_attrs = internal global { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@xfs_dbg_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @xfs_dbg_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@xfs_dbg_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @xfs_sysfs_attr_bug_on_assert, ptr @xfs_sysfs_attr_log_recovery_delay, ptr @xfs_sysfs_attr_mount_delay, ptr @xfs_sysfs_attr_always_cow, ptr @xfs_sysfs_attr_pwork_threads, ptr null], [40 x i8] zeroinitializer }, align 32
@xfs_sysfs_attr_bug_on_assert = internal global { %struct.xfs_sysfs_attr, [36 x i8] } { %struct.xfs_sysfs_attr { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bug_on_assert_show, ptr @bug_on_assert_store }, [36 x i8] zeroinitializer }, align 32
@xfs_sysfs_attr_log_recovery_delay = internal global { %struct.xfs_sysfs_attr, [36 x i8] } { %struct.xfs_sysfs_attr { %struct.attribute { ptr @.str.4, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @log_recovery_delay_show, ptr @log_recovery_delay_store }, [36 x i8] zeroinitializer }, align 32
@xfs_sysfs_attr_mount_delay = internal global { %struct.xfs_sysfs_attr, [36 x i8] } { %struct.xfs_sysfs_attr { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mount_delay_show, ptr @mount_delay_store }, [36 x i8] zeroinitializer }, align 32
@xfs_sysfs_attr_always_cow = internal global { %struct.xfs_sysfs_attr, [36 x i8] } { %struct.xfs_sysfs_attr { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @always_cow_show, ptr @always_cow_store }, [36 x i8] zeroinitializer }, align 32
@xfs_sysfs_attr_pwork_threads = internal global { %struct.xfs_sysfs_attr, [36 x i8] } { %struct.xfs_sysfs_attr { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwork_threads_show, ptr @pwork_threads_store }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bug_on_assert\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@xfs_globals = external dso_local global %struct.xfs_globals, align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"log_recovery_delay\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mount_delay\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"always_cow\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwork_threads\00", [18 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@xfs_stats_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @xfs_stats_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@xfs_stats_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @xfs_sysfs_attr_stats, ptr @xfs_sysfs_attr_stats_clear, ptr null], [20 x i8] zeroinitializer }, align 32
@xfs_sysfs_attr_stats = internal global { %struct.xfs_sysfs_attr, [36 x i8] } { %struct.xfs_sysfs_attr { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stats_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@xfs_sysfs_attr_stats_clear = internal global { %struct.xfs_sysfs_attr, [36 x i8] } { %struct.xfs_sysfs_attr { %struct.attribute { ptr @.str.9, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @stats_clear_store }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stats_clear\00", [20 x i8] zeroinitializer }, align 32
@xfs_log_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @xfs_log_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@xfs_log_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @xfs_sysfs_attr_log_head_lsn, ptr @xfs_sysfs_attr_log_tail_lsn, ptr @xfs_sysfs_attr_reserve_grant_head, ptr @xfs_sysfs_attr_write_grant_head, ptr null], [44 x i8] zeroinitializer }, align 32
@xfs_sysfs_attr_log_head_lsn = internal global { %struct.xfs_sysfs_attr, [36 x i8] } { %struct.xfs_sysfs_attr { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @log_head_lsn_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@xfs_sysfs_attr_log_tail_lsn = internal global { %struct.xfs_sysfs_attr, [36 x i8] } { %struct.xfs_sysfs_attr { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @log_tail_lsn_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@xfs_sysfs_attr_reserve_grant_head = internal global { %struct.xfs_sysfs_attr, [36 x i8] } { %struct.xfs_sysfs_attr { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @reserve_grant_head_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@xfs_sysfs_attr_write_grant_head = internal global { %struct.xfs_sysfs_attr, [36 x i8] } { %struct.xfs_sysfs_attr { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @write_grant_head_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"log_head_lsn\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d:%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"log_tail_lsn\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reserve_grant_head\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write_grant_head\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fail_at_unmount\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_sysfs.c\00", [45 x i8] zeroinitializer }, align 32
@xfs_error_cfg_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @xfs_sysfs_release, ptr @xfs_sysfs_ops, ptr null, ptr @xfs_error_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xfs_error_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @xfs_error_group, ptr null], [24 x i8] zeroinitializer }, align 32
@xfs_error_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @xfs_error_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@xfs_error_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @xfs_sysfs_attr_max_retries, ptr @xfs_sysfs_attr_retry_timeout_seconds, ptr null], [20 x i8] zeroinitializer }, align 32
@xfs_sysfs_attr_max_retries = internal global { %struct.xfs_sysfs_attr, [36 x i8] } { %struct.xfs_sysfs_attr { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_retries_show, ptr @max_retries_store }, [36 x i8] zeroinitializer }, align 32
@xfs_sysfs_attr_retry_timeout_seconds = internal global { %struct.xfs_sysfs_attr, [36 x i8] } { %struct.xfs_sysfs_attr { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @retry_timeout_seconds_show, ptr @retry_timeout_seconds_store }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_retries\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"retry_timeout_seconds\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"msecs_to_jiffies(val * MSEC_PER_SEC) < LONG_MAX\00", [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EIO\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ENOSPC\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ENODEV\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 19, i64 28]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"xfs_sysfs_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 62, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"xfs_mp_groups\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"xfs_mp_ktype\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 72, i32 18 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"xfs_dbg_groups\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"xfs_dbg_ktype\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 245, i32 18 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"xfs_stats_groups\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"xfs_stats_ktype\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 303, i32 18 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"xfs_log_groups\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"xfs_log_ktype\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 389, i32 18 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"xfs_error_ktype\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 549, i32 25 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 638, i32 18 }
@___asan_gen_.61 = private unnamed_addr constant [31 x i8] c"xfs_sysfs_attr_fail_at_unmount\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 650, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"xfs_error_meta_init\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 566, i32 36 }
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"xfs_mp_group\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 70, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"xfs_mp_attrs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 67, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"xfs_dbg_group\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 243, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"xfs_dbg_attrs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 233, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant [29 x i8] c"xfs_sysfs_attr_bug_on_assert\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [34 x i8] c"xfs_sysfs_attr_log_recovery_delay\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [27 x i8] c"xfs_sysfs_attr_mount_delay\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [26 x i8] c"xfs_sysfs_attr_always_cow\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [29 x i8] c"xfs_sysfs_attr_pwork_threads\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 111, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 109, i32 25 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 141, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 171, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 194, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 230, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"xfs_stats_group\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 301, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"xfs_stats_attrs\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 296, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant [21 x i8] c"xfs_sysfs_attr_stats\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [27 x i8] c"xfs_sysfs_attr_stats_clear\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 272, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 294, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"xfs_log_group\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 387, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant [14 x i8] c"xfs_log_attrs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 380, i32 26 }
@___asan_gen_.139 = private unnamed_addr constant [28 x i8] c"xfs_sysfs_attr_log_head_lsn\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [28 x i8] c"xfs_sysfs_attr_log_tail_lsn\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [34 x i8] c"xfs_sysfs_attr_reserve_grant_head\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [32 x i8] c"xfs_sysfs_attr_write_grant_head\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 335, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 333, i32 25 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 349, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 364, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 378, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_sysfs.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 39, i32 61 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 87, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 534, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 597, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c"xfs_error_cfg_ktype\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 543, i32 25 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"xfs_error_groups\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"xfs_error_group\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 541, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant [16 x i8] c"xfs_error_attrs\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 536, i32 26 }
@___asan_gen_.193 = private unnamed_addr constant [27 x i8] c"xfs_sysfs_attr_max_retries\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [37 x i8] c"xfs_sysfs_attr_retry_timeout_seconds\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 458, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 502, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 498, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 567, i32 12 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 571, i32 12 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 575, i32 12 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [22 x i8] c"../fs/xfs/xfs_sysfs.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 579, i32 12 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @xfs_sysfs_ops, ptr @xfs_mp_groups, ptr @xfs_mp_ktype, ptr @xfs_dbg_groups, ptr @xfs_dbg_ktype, ptr @xfs_stats_groups, ptr @xfs_stats_ktype, ptr @xfs_log_groups, ptr @xfs_log_ktype, ptr @xfs_error_ktype, ptr @.str, ptr @xfs_sysfs_attr_fail_at_unmount, ptr @.str.1, ptr @xfs_error_meta_init, ptr @xfs_mp_group, ptr @xfs_mp_attrs, ptr @xfs_dbg_group, ptr @xfs_dbg_attrs, ptr @xfs_sysfs_attr_bug_on_assert, ptr @xfs_sysfs_attr_log_recovery_delay, ptr @xfs_sysfs_attr_mount_delay, ptr @xfs_sysfs_attr_always_cow, ptr @xfs_sysfs_attr_pwork_threads, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @xfs_stats_group, ptr @xfs_stats_attrs, ptr @xfs_sysfs_attr_stats, ptr @xfs_sysfs_attr_stats_clear, ptr @.str.8, ptr @.str.9, ptr @xfs_log_group, ptr @xfs_log_attrs, ptr @xfs_sysfs_attr_log_head_lsn, ptr @xfs_sysfs_attr_log_tail_lsn, ptr @xfs_sysfs_attr_reserve_grant_head, ptr @xfs_sysfs_attr_write_grant_head, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @init_completion.__key, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @xfs_error_cfg_ktype, ptr @xfs_error_groups, ptr @xfs_error_group, ptr @xfs_error_attrs, ptr @xfs_sysfs_attr_max_retries, ptr @xfs_sysfs_attr_retry_timeout_seconds, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_mp_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_mp_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dbg_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dbg_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_stats_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_stats_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_log_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_log_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_error_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_attr_fail_at_unmount to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_error_meta_init to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_mp_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_mp_attrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dbg_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dbg_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_attr_bug_on_assert to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_attr_log_recovery_delay to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_attr_mount_delay to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_attr_always_cow to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_attr_pwork_threads to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_stats_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_stats_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_attr_stats to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_attr_stats_clear to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_log_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_log_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_attr_log_head_lsn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_attr_log_tail_lsn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_attr_reserve_grant_head to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_attr_write_grant_head to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_error_cfg_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_error_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_error_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_error_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_attr_max_retries to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_sysfs_attr_retry_timeout_seconds to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_sysfs_release(ptr noundef %kobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %complete = getelementptr inbounds %struct.xfs_kobj, ptr %kobject, i32 0, i32 1
  tail call void @complete(ptr noundef %complete) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_error_sysfs_init(ptr noundef %mp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %m_error_kobj = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 89
  %m_kobj = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 88
  %complete.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 89, i32 1
  %0 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 89, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #7
  %call.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %m_error_kobj, ptr noundef nonnull @xfs_error_ktype, ptr noundef %m_kobj, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i20 = tail call i32 @sysfs_create_file_ns(ptr noundef %m_error_kobj, ptr noundef nonnull @xfs_sysfs_attr_fail_at_unmount, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool3.not = icmp eq i32 %call.i20, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_error_crit_edge

if.end.out_error_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_error

if.end5:                                          ; preds = %if.end
  %m_error_meta_kobj = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 90
  %complete.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 90, i32 1
  %1 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %complete.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 90, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #7
  %call.i.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %m_error_meta_kobj, ptr noundef nonnull @xfs_error_ktype, ptr noundef %m_error_kobj, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader.i, label %if.end5.out_error_crit_edge

if.end5.out_error_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_error

for.cond.preheader.i:                             ; preds = %if.end5
  %m_error_cfg.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 91
  %complete.i1.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %complete.i1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %complete.i1.i, align 4
  %wait.i.i2.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 0, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i2.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #7
  %call.i3.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %m_error_cfg.i, ptr noundef nonnull @xfs_error_cfg_ktype, ptr noundef %m_error_meta_kobj, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool7.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %for.cond.preheader.i.for.cond21.preheader.i_crit_edge

for.cond.preheader.i.for.cond21.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond21.preheader.i

for.cond21.preheader.i:                           ; preds = %if.end9.i.2.for.cond21.preheader.i_crit_edge, %if.end9.i.1.for.cond21.preheader.i_crit_edge, %if.end9.i.for.cond21.preheader.i_crit_edge, %for.cond.preheader.i.for.cond21.preheader.i_crit_edge
  %cmp22.i = phi i1 [ true, %if.end9.i.2.for.cond21.preheader.i_crit_edge ], [ true, %if.end9.i.1.for.cond21.preheader.i_crit_edge ], [ false, %if.end9.i.for.cond21.preheader.i_crit_edge ], [ false, %for.cond.preheader.i.for.cond21.preheader.i_crit_edge ]
  %cmp22.i.1 = phi i1 [ true, %if.end9.i.2.for.cond21.preheader.i_crit_edge ], [ false, %if.end9.i.1.for.cond21.preheader.i_crit_edge ], [ false, %if.end9.i.for.cond21.preheader.i_crit_edge ], [ false, %for.cond.preheader.i.for.cond21.preheader.i_crit_edge ]
  %i.07.i.lcssa = phi i32 [ 3, %if.end9.i.2.for.cond21.preheader.i_crit_edge ], [ 2, %if.end9.i.1.for.cond21.preheader.i_crit_edge ], [ 1, %if.end9.i.for.cond21.preheader.i_crit_edge ], [ 0, %for.cond.preheader.i.for.cond21.preheader.i_crit_edge ]
  %call.i3.i.lcssa = phi i32 [ %call.i3.i.3, %if.end9.i.2.for.cond21.preheader.i_crit_edge ], [ %call.i3.i.2, %if.end9.i.1.for.cond21.preheader.i_crit_edge ], [ %call.i3.i.1, %if.end9.i.for.cond21.preheader.i_crit_edge ], [ %call.i3.i, %for.cond.preheader.i.for.cond21.preheader.i_crit_edge ]
  br i1 %tobool7.not.i, label %for.body23.i, label %for.cond21.preheader.i.xfs_error_sysfs_init_class.exit_crit_edge

for.cond21.preheader.i.xfs_error_sysfs_init_class.exit_crit_edge: ; preds = %for.cond21.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_error_sysfs_init_class.exit

if.end9.i:                                        ; preds = %for.cond.preheader.i
  %max_retries11.i = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %max_retries11.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %max_retries11.i, align 4
  %retry_timeout15.i = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %retry_timeout15.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %retry_timeout15.i, align 4
  %arrayidx4.i.1 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 1
  %complete.i1.i.1 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %complete.i1.i.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %complete.i1.i.1, align 4
  %wait.i.i2.i.1 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 1, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i2.i.1, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #7
  %call.i3.i.1 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %arrayidx4.i.1, ptr noundef nonnull @xfs_error_cfg_ktype, ptr noundef %m_error_meta_kobj, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i.1)
  %tobool7.not.i.1 = icmp eq i32 %call.i3.i.1, 0
  br i1 %tobool7.not.i.1, label %if.end9.i.1, label %if.end9.i.for.cond21.preheader.i_crit_edge

if.end9.i.for.cond21.preheader.i_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond21.preheader.i

if.end9.i.1:                                      ; preds = %if.end9.i
  %max_retries11.i.1 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %max_retries11.i.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %max_retries11.i.1, align 4
  %retry_timeout15.i.1 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %retry_timeout15.i.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %retry_timeout15.i.1, align 4
  %arrayidx4.i.2 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 2
  %complete.i1.i.2 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %complete.i1.i.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %complete.i1.i.2, align 4
  %wait.i.i2.i.2 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 2, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i2.i.2, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #7
  %call.i3.i.2 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %arrayidx4.i.2, ptr noundef nonnull @xfs_error_cfg_ktype, ptr noundef %m_error_meta_kobj, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i.2)
  %tobool7.not.i.2 = icmp eq i32 %call.i3.i.2, 0
  br i1 %tobool7.not.i.2, label %if.end9.i.2, label %if.end9.i.1.for.cond21.preheader.i_crit_edge

if.end9.i.1.for.cond21.preheader.i_crit_edge:     ; preds = %if.end9.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond21.preheader.i

if.end9.i.2:                                      ; preds = %if.end9.i.1
  %max_retries11.i.2 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %max_retries11.i.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %max_retries11.i.2, align 4
  %retry_timeout15.i.2 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %retry_timeout15.i.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %retry_timeout15.i.2, align 4
  %arrayidx4.i.3 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 3
  %complete.i1.i.3 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %complete.i1.i.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %complete.i1.i.3, align 4
  %wait.i.i2.i.3 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 3, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i2.i.3, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #7
  %call.i3.i.3 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %arrayidx4.i.3, ptr noundef nonnull @xfs_error_cfg_ktype, ptr noundef %m_error_meta_kobj, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i.3)
  %tobool7.not.i.3 = icmp eq i32 %call.i3.i.3, 0
  br i1 %tobool7.not.i.3, label %if.end9.i.3, label %if.end9.i.2.for.cond21.preheader.i_crit_edge

if.end9.i.2.for.cond21.preheader.i_crit_edge:     ; preds = %if.end9.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond21.preheader.i

if.end9.i.3:                                      ; preds = %if.end9.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %max_retries11.i.3 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %max_retries11.i.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %max_retries11.i.3, align 4
  %call2.i.i.3 = tail call i32 @__msecs_to_jiffies(i32 noundef 0) #7
  %retry_timeout15.i.3 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %retry_timeout15.i.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2.i.i.3, ptr %retry_timeout15.i.3, align 4
  br label %cleanup

for.body23.i:                                     ; preds = %for.cond21.preheader.i
  %i.111.i = add nsw i32 %i.07.i.lcssa, -1
  %arrayidx26.i = getelementptr [4 x %struct.xfs_error_cfg], ptr %m_error_cfg.i, i32 0, i32 %i.111.i
  tail call void @kobject_del(ptr noundef %arrayidx26.i) #7
  tail call void @kobject_put(ptr noundef %arrayidx26.i) #7
  %complete.i4.i = getelementptr inbounds %struct.xfs_kobj, ptr %arrayidx26.i, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %complete.i4.i) #7
  br i1 %cmp22.i, label %for.body23.i.1, label %for.body23.i.xfs_error_sysfs_init_class.exit_crit_edge

for.body23.i.xfs_error_sysfs_init_class.exit_crit_edge: ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_error_sysfs_init_class.exit

for.body23.i.1:                                   ; preds = %for.body23.i
  %i.111.i.1 = add nsw i32 %i.07.i.lcssa, -2
  %arrayidx26.i.1 = getelementptr [4 x %struct.xfs_error_cfg], ptr %m_error_cfg.i, i32 0, i32 %i.111.i.1
  tail call void @kobject_del(ptr noundef %arrayidx26.i.1) #7
  tail call void @kobject_put(ptr noundef %arrayidx26.i.1) #7
  %complete.i4.i.1 = getelementptr inbounds %struct.xfs_kobj, ptr %arrayidx26.i.1, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %complete.i4.i.1) #7
  br i1 %cmp22.i.1, label %for.body23.i.2, label %for.body23.i.1.xfs_error_sysfs_init_class.exit_crit_edge

for.body23.i.1.xfs_error_sysfs_init_class.exit_crit_edge: ; preds = %for.body23.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_error_sysfs_init_class.exit

for.body23.i.2:                                   ; preds = %for.body23.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %i.111.i.2 = add nsw i32 %i.07.i.lcssa, -3
  %arrayidx26.i.2 = getelementptr [4 x %struct.xfs_error_cfg], ptr %m_error_cfg.i, i32 0, i32 %i.111.i.2
  tail call void @kobject_del(ptr noundef %arrayidx26.i.2) #7
  tail call void @kobject_put(ptr noundef %arrayidx26.i.2) #7
  %complete.i4.i.2 = getelementptr inbounds %struct.xfs_kobj, ptr %arrayidx26.i.2, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %complete.i4.i.2) #7
  br label %xfs_error_sysfs_init_class.exit

xfs_error_sysfs_init_class.exit:                  ; preds = %for.body23.i.2, %for.body23.i.1.xfs_error_sysfs_init_class.exit_crit_edge, %for.body23.i.xfs_error_sysfs_init_class.exit_crit_edge, %for.cond21.preheader.i.xfs_error_sysfs_init_class.exit_crit_edge
  tail call void @kobject_del(ptr noundef %m_error_meta_kobj) #7
  tail call void @kobject_put(ptr noundef %m_error_meta_kobj) #7
  tail call void @wait_for_completion(ptr noundef %complete.i.i) #7
  br label %out_error

out_error:                                        ; preds = %xfs_error_sysfs_init_class.exit, %if.end5.out_error_crit_edge, %if.end.out_error_crit_edge
  %error.0 = phi i32 [ %call.i20, %if.end.out_error_crit_edge ], [ %call.i3.i.lcssa, %xfs_error_sysfs_init_class.exit ], [ %call.i.i, %if.end5.out_error_crit_edge ]
  tail call void @kobject_del(ptr noundef %m_error_kobj) #7
  tail call void @kobject_put(ptr noundef %m_error_kobj) #7
  tail call void @wait_for_completion(ptr noundef %complete.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_error, %if.end9.i.3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_error ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end9.i.3 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_error_sysfs_del(ptr noundef %mp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %m_error_cfg = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 91
  tail call void @kobject_del(ptr noundef %m_error_cfg) #7
  tail call void @kobject_put(ptr noundef %m_error_cfg) #7
  %complete.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 0, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %complete.i) #7
  %arrayidx4.1 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 1
  tail call void @kobject_del(ptr noundef %arrayidx4.1) #7
  tail call void @kobject_put(ptr noundef %arrayidx4.1) #7
  %complete.i.1 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 1, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %complete.i.1) #7
  %arrayidx4.2 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 2
  tail call void @kobject_del(ptr noundef %arrayidx4.2) #7
  tail call void @kobject_put(ptr noundef %arrayidx4.2) #7
  %complete.i.2 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 2, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %complete.i.2) #7
  %arrayidx4.3 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 3
  tail call void @kobject_del(ptr noundef %arrayidx4.3) #7
  tail call void @kobject_put(ptr noundef %arrayidx4.3) #7
  %complete.i.3 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 0, i32 3, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %complete.i.3) #7
  %m_error_meta_kobj = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 90
  tail call void @kobject_del(ptr noundef %m_error_meta_kobj) #7
  tail call void @kobject_put(ptr noundef %m_error_meta_kobj) #7
  %complete.i14 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 90, i32 1
  tail call void @wait_for_completion(ptr noundef %complete.i14) #7
  %m_error_kobj = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 89
  tail call void @kobject_del(ptr noundef %m_error_kobj) #7
  tail call void @kobject_put(ptr noundef %m_error_kobj) #7
  %complete.i15 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 89, i32 1
  tail call void @wait_for_completion(ptr noundef %complete.i15) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xfs_error_get_cfg(ptr noundef readnone %mp, i32 noundef %error_class, i32 noundef %error) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.abs.i32(i32 %error, i1 false)
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %sw.default [
    i32 5, label %sw.bb
    i32 28, label %sw.bb2
    i32 19, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx1 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 %error_class, i32 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 %error_class, i32 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 %error_class, i32 3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx11 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 91, i32 %error_class
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb2, %sw.bb
  %cfg.0 = phi ptr [ %arrayidx11, %sw.default ], [ %arrayidx9, %sw.bb6 ], [ %arrayidx5, %sw.bb2 ], [ %arrayidx1, %sw.bb ]
  ret ptr %cfg.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_sysfs_object_show(ptr noundef %kobject, ptr nocapture noundef readonly %attr, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.xfs_sysfs_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 %1(ptr noundef %kobject, ptr noundef %buf) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call2, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_sysfs_object_store(ptr noundef %kobject, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.xfs_sysfs_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 %1(ptr noundef %kobject, ptr noundef %buf, i32 noundef %count) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call2, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bug_on_assert_show(ptr nocapture noundef readnone %kobject, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 3) to i32))
  %0 = load i8, ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 3), align 4, !range !118
  %1 = zext i8 %0 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bug_on_assert_store(ptr nocapture noundef readnone %kobject, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !119
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %2, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end6_crit_edge
    i32 0, label %if.then3
  ]

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %storemerge = phi i8 [ 0, %if.then3 ], [ 1, %if.end.if.end6_crit_edge ]
  call void @__asan_store1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 3) to i32))
  store i8 %storemerge, ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 3), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @log_recovery_delay_show(ptr nocapture noundef readnone %kobject, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 1), align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %0) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @log_recovery_delay_store(ptr nocapture noundef readnone %kobject, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !119
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %2)
  %3 = icmp ugt i32 %2, 60
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 1) to i32))
  store i32 %2, ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 1), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mount_delay_show(ptr nocapture noundef readnone %kobject, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 2), align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %0) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mount_delay_store(ptr nocapture noundef readnone %kobject, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !119
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %2)
  %3 = icmp ugt i32 %2, 60
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 2) to i32))
  store i32 %2, ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 2), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @always_cow_show(ptr nocapture noundef readnone %kobject, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 4) to i32))
  %0 = load i8, ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 4), align 1, !range !118
  %1 = zext i8 %0 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @always_cow_store(ptr nocapture noundef readnone %kobject, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtobool(ptr noundef %buf, ptr noundef getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 4)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %call.count = select i1 %cmp, i32 %call, i32 %count
  ret i32 %call.count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwork_threads_show(ptr nocapture noundef readnone %kobject, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_globals to i32))
  %0 = load i32, ptr @xfs_globals, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %0) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwork_threads_store(ptr nocapture noundef readnone %kobject, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !119
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp slt i32 %2, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %call4.i.i)
  %cmp2 = icmp ugt i32 %2, %call4.i.i
  br i1 %cmp2, label %if.end.i.i.cleanup_crit_edge, label %if.end4

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @xfs_globals to i32))
  store i32 %5, ptr @xfs_globals, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_show(ptr nocapture noundef readonly %kobject, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %kobject, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @xfs_stats_format(ptr noundef %1, ptr noundef %buf) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_stats_format(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_clear_store(ptr nocapture noundef readonly %kobject, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !119
  %add.ptr.i = getelementptr i8, ptr %kobject, i32 -4
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  call void @xfs_stats_clearall(ptr noundef %4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_stats_clearall(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @log_head_lsn_show(ptr noundef %kobject, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %l_icloglock = getelementptr i8, ptr %kobject, i32 -580
  tail call void @_raw_spin_lock(ptr noundef %l_icloglock) #7
  %l_curr_cycle = getelementptr i8, ptr %kobject, i32 -536
  %0 = ptrtoint ptr %l_curr_cycle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l_curr_cycle, align 8
  %l_curr_block = getelementptr i8, ptr %kobject, i32 -528
  %2 = ptrtoint ptr %l_curr_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l_curr_block, align 16
  tail call void @_raw_spin_unlock(ptr noundef %l_icloglock) #7
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %1, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @log_tail_lsn_show(ptr noundef %kobject, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %l_tail_lsn = getelementptr i8, ptr %kobject, i32 -384
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %l_tail_lsn, i32 noundef 8) #7
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %l_tail_lsn) #7
  %0 = lshr i64 %call.i.i, 32
  %conv.i = trunc i64 %0 to i32
  %conv1.i = trunc i64 %call.i.i to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %conv.i, i32 noundef %conv1.i) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reserve_grant_head_show(ptr noundef %kobject, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %grant = getelementptr i8, ptr %kobject, i32 -200
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %grant, i32 noundef 8) #7
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %grant) #7
  %0 = lshr i64 %call.i.i, 32
  %conv.i.i = trunc i64 %0 to i32
  %conv1.i.i = trunc i64 %call.i.i to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_grant_head_show(ptr noundef %kobject, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %grant = getelementptr i8, ptr %kobject, i32 -72
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %grant, i32 noundef 8) #7
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %grant) #7
  %0 = lshr i64 %call.i.i, 32
  %conv.i.i = trunc i64 %0 to i32
  %conv1.i.i = trunc i64 %call.i.i to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fail_at_unmount_show(ptr nocapture noundef readonly %kobject, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %m_fail_unmount = getelementptr i8, ptr %kobject, i32 -879
  %0 = ptrtoint ptr %m_fail_unmount to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %m_fail_unmount, align 1, !range !118
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %2) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fail_at_unmount_store(ptr nocapture noundef writeonly %kobject, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !119
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool5 = icmp ne i32 %2, 0
  %m_fail_unmount = getelementptr i8, ptr %kobject, i32 -879
  %frombool = zext i1 %tobool5 to i8
  %4 = ptrtoint ptr %m_fail_unmount to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %m_fail_unmount, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_retries_show(ptr nocapture noundef readonly %kobject, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_retries = getelementptr inbounds %struct.xfs_error_cfg, ptr %kobject, i32 0, i32 1
  %0 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_retries, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %1) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_retries_store(ptr nocapture noundef writeonly %kobject, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !119
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp slt i32 %2, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %max_retries = getelementptr inbounds %struct.xfs_error_cfg, ptr %kobject, i32 0, i32 1
  %3 = ptrtoint ptr %max_retries to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %max_retries, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @retry_timeout_seconds_show(ptr nocapture noundef readonly %kobject, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %retry_timeout = getelementptr inbounds %struct.xfs_error_cfg, ptr %kobject, i32 0, i32 2
  %0 = ptrtoint ptr %retry_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %retry_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @jiffies_to_msecs(i32 noundef %1) #7
  %div = udiv i32 %call2, 1000
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %timeout.0 = phi i32 [ %div, %if.else ], [ -1, %entry.if.end_crit_edge ]
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %timeout.0) #7
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @retry_timeout_seconds_store(ptr nocapture noundef writeonly %kobject, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !119
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = add i32 %2, -86401
  call void @__sanitizer_cov_trace_const_cmp4(i32 -86402, i32 %3)
  %4 = icmp ult i32 %3, -86402
  br i1 %4, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp5 = icmp eq i32 %2, -1
  br i1 %cmp5, label %if.then6, label %if.else.i

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %retry_timeout = getelementptr inbounds %struct.xfs_error_cfg, ptr %kobject, i32 0, i32 2
  %5 = ptrtoint ptr %retry_timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %retry_timeout, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.end4
  %mul = mul nuw nsw i32 %2, 1000
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %mul) #7
  %retry_timeout8 = getelementptr inbounds %struct.xfs_error_cfg, ptr %kobject, i32 0, i32 2
  %6 = ptrtoint ptr %retry_timeout8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2.i, ptr %retry_timeout8, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %mul9 = mul i32 %8, 1000
  %call2.i24 = call i32 @__msecs_to_jiffies(i32 noundef %mul9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call2.i24)
  %cmp11 = icmp ult i32 %call2.i24, 2147483647
  br i1 %cmp11, label %if.else.i.cleanup_crit_edge, label %cond.false, !prof !120

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.false:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19, i32 noundef 498) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.else.i.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %cond.false ], [ %count, %if.else.i.cleanup_crit_edge ], [ %count, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !48, !49, !51, !52, !54, !55, !57, !59, !60, !62, !64, !65, !67, !68, !70, !71, !73, !75, !76, !78, !80, !81, !83, !84, !86, !88, !89, !91, !93, !94, !96, !97, !99, !101, !103, !105, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @xfs_mp_ktype, !1, !"xfs_mp_ktype", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_sysfs.c", i32 72, i32 18}
!2 = !{ptr @xfs_dbg_ktype, !3, !"xfs_dbg_ktype", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_sysfs.c", i32 245, i32 18}
!4 = !{ptr @xfs_stats_ktype, !5, !"xfs_stats_ktype", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_sysfs.c", i32 303, i32 18}
!6 = !{ptr @xfs_log_ktype, !7, !"xfs_log_ktype", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_sysfs.c", i32 389, i32 18}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_sysfs.c", i32 638, i32 18}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_sysfs.c", i32 650, i32 5}
!12 = !{ptr @xfs_sysfs_ops, !13, !"xfs_sysfs_ops", i1 false, i1 false}
!13 = !{!"../fs/xfs/xfs_sysfs.c", i32 62, i32 31}
!14 = !{ptr @xfs_mp_groups, !15, !"xfs_mp_groups", i1 false, i1 false}
!15 = !{!"../fs/xfs/xfs_sysfs.c", i32 70, i32 1}
!16 = !{ptr @xfs_mp_group, !15, !"xfs_mp_group", i1 false, i1 false}
!17 = !{ptr @xfs_mp_attrs, !18, !"xfs_mp_attrs", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_sysfs.c", i32 67, i32 26}
!19 = !{ptr @xfs_dbg_groups, !20, !"xfs_dbg_groups", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_sysfs.c", i32 243, i32 1}
!21 = !{ptr @xfs_dbg_group, !20, !"xfs_dbg_group", i1 false, i1 false}
!22 = !{ptr @xfs_dbg_attrs, !23, !"xfs_dbg_attrs", i1 false, i1 false}
!23 = !{!"../fs/xfs/xfs_sysfs.c", i32 233, i32 26}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_sysfs.c", i32 111, i32 1}
!26 = !{ptr @xfs_sysfs_attr_bug_on_assert, !25, !"xfs_sysfs_attr_bug_on_assert", i1 false, i1 false}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_sysfs.c", i32 109, i32 25}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_sysfs.c", i32 141, i32 1}
!31 = !{ptr @xfs_sysfs_attr_log_recovery_delay, !30, !"xfs_sysfs_attr_log_recovery_delay", i1 false, i1 false}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/xfs/xfs_sysfs.c", i32 171, i32 1}
!34 = !{ptr @xfs_sysfs_attr_mount_delay, !33, !"xfs_sysfs_attr_mount_delay", i1 false, i1 false}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_sysfs.c", i32 194, i32 1}
!37 = !{ptr @xfs_sysfs_attr_always_cow, !36, !"xfs_sysfs_attr_always_cow", i1 false, i1 false}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/xfs/xfs_sysfs.c", i32 230, i32 1}
!40 = !{ptr @xfs_sysfs_attr_pwork_threads, !39, !"xfs_sysfs_attr_pwork_threads", i1 false, i1 false}
!41 = !{ptr @xfs_stats_groups, !42, !"xfs_stats_groups", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_sysfs.c", i32 301, i32 1}
!43 = !{ptr @xfs_stats_group, !42, !"xfs_stats_group", i1 false, i1 false}
!44 = !{ptr @xfs_stats_attrs, !45, !"xfs_stats_attrs", i1 false, i1 false}
!45 = !{!"../fs/xfs/xfs_sysfs.c", i32 296, i32 26}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/xfs/xfs_sysfs.c", i32 272, i32 1}
!48 = !{ptr @xfs_sysfs_attr_stats, !47, !"xfs_sysfs_attr_stats", i1 false, i1 false}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/xfs_sysfs.c", i32 294, i32 1}
!51 = !{ptr @xfs_sysfs_attr_stats_clear, !50, !"xfs_sysfs_attr_stats_clear", i1 false, i1 false}
!52 = !{ptr @xfs_log_groups, !53, !"xfs_log_groups", i1 false, i1 false}
!53 = !{!"../fs/xfs/xfs_sysfs.c", i32 387, i32 1}
!54 = !{ptr @xfs_log_group, !53, !"xfs_log_group", i1 false, i1 false}
!55 = !{ptr @xfs_log_attrs, !56, !"xfs_log_attrs", i1 false, i1 false}
!56 = !{!"../fs/xfs/xfs_sysfs.c", i32 380, i32 26}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/xfs_sysfs.c", i32 335, i32 1}
!59 = !{ptr @xfs_sysfs_attr_log_head_lsn, !58, !"xfs_sysfs_attr_log_head_lsn", i1 false, i1 false}
!60 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/xfs/xfs_sysfs.c", i32 333, i32 25}
!62 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/xfs/xfs_sysfs.c", i32 349, i32 1}
!64 = !{ptr @xfs_sysfs_attr_log_tail_lsn, !63, !"xfs_sysfs_attr_log_tail_lsn", i1 false, i1 false}
!65 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/xfs/xfs_sysfs.c", i32 364, i32 1}
!67 = !{ptr @xfs_sysfs_attr_reserve_grant_head, !66, !"xfs_sysfs_attr_reserve_grant_head", i1 false, i1 false}
!68 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/xfs/xfs_sysfs.c", i32 378, i32 1}
!70 = !{ptr @xfs_sysfs_attr_write_grant_head, !69, !"xfs_sysfs_attr_write_grant_head", i1 false, i1 false}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/xfs/xfs_sysfs.h", i32 39, i32 61}
!73 = !{ptr @init_completion.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../include/linux/completion.h", i32 87, i32 2}
!75 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @xfs_error_ktype, !77, !"xfs_error_ktype", i1 false, i1 false}
!77 = !{!"../fs/xfs/xfs_sysfs.c", i32 549, i32 25}
!78 = !{ptr @.str.17, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/xfs/xfs_sysfs.c", i32 534, i32 1}
!80 = !{ptr @xfs_sysfs_attr_fail_at_unmount, !79, !"xfs_sysfs_attr_fail_at_unmount", i1 false, i1 false}
!81 = distinct !{null, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/xfs/xfs_sysfs.c", i32 597, i32 2}
!83 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @xfs_error_cfg_ktype, !85, !"xfs_error_cfg_ktype", i1 false, i1 false}
!85 = !{!"../fs/xfs/xfs_sysfs.c", i32 543, i32 25}
!86 = !{ptr @xfs_error_groups, !87, !"xfs_error_groups", i1 false, i1 false}
!87 = !{!"../fs/xfs/xfs_sysfs.c", i32 541, i32 1}
!88 = !{ptr @xfs_error_group, !87, !"xfs_error_group", i1 false, i1 false}
!89 = !{ptr @xfs_error_attrs, !90, !"xfs_error_attrs", i1 false, i1 false}
!90 = !{!"../fs/xfs/xfs_sysfs.c", i32 536, i32 26}
!91 = !{ptr @.str.20, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/xfs/xfs_sysfs.c", i32 458, i32 1}
!93 = !{ptr @xfs_sysfs_attr_max_retries, !92, !"xfs_sysfs_attr_max_retries", i1 false, i1 false}
!94 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/xfs/xfs_sysfs.c", i32 502, i32 1}
!96 = !{ptr @xfs_sysfs_attr_retry_timeout_seconds, !95, !"xfs_sysfs_attr_retry_timeout_seconds", i1 false, i1 false}
!97 = !{ptr @.str.22, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/xfs/xfs_sysfs.c", i32 498, i32 3}
!99 = !{ptr @.str.23, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/xfs/xfs_sysfs.c", i32 567, i32 12}
!101 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/xfs/xfs_sysfs.c", i32 571, i32 12}
!103 = !{ptr @.str.25, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/xfs/xfs_sysfs.c", i32 575, i32 12}
!105 = !{ptr @.str.26, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/xfs/xfs_sysfs.c", i32 579, i32 12}
!107 = !{ptr @xfs_error_meta_init, !108, !"xfs_error_meta_init", i1 false, i1 false}
!108 = !{!"../fs/xfs/xfs_sysfs.c", i32 566, i32 36}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i8 0, i8 2}
!119 = !{!"auto-init"}
!120 = !{!"branch_weights", i32 2000, i32 1}
