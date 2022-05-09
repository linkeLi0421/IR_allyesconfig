; ModuleID = '/llk/IR_all_yes/fs/f2fs/sysfs.c_pt.bc'
source_filename = "../fs/f2fs/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.f2fs_attr = type { %struct.attribute, ptr, ptr, i32, i32, i32 }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ckpt_req_control = type { ptr, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.spinlock, i32, i32 }
%struct.llist_head = type { ptr }
%struct.inode_management = type { %struct.xarray, %struct.spinlock, %struct.list_head, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.f2fs_mount_info = type { i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, %struct.f2fs_fault_info, [3 x ptr], i32, i32, i32, i32, i32, i32, i32, %struct.fscrypt_dummy_policy, i32, i32, i8, i8, i8, i8, i8, i8, i32, [16 x [8 x i8]], [16 x [8 x i8]] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.f2fs_fault_info = type { %struct.atomic_t, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.atgc_management = type { i8, %struct.rb_root_cached, %struct.list_head, i32, i32, i32, i32, i64 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.f2fs_super_block = type <{ i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], [512 x i16], i32, [64 x [8 x i8]], i32, [256 x i8], [256 x i8], i32, i8, [16 x i8], [8 x %struct.f2fs_device], [3 x i32], i8, i16, i16, [306 x i8], i32 }>
%struct.f2fs_device = type { [64 x i8], i32 }
%struct.sit_info = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.rw_semaphore, ptr, ptr, i64, i64, i64, i64, i64, i64, [5 x i32] }
%struct.seg_entry = type { i32, ptr, ptr, ptr, ptr, i64 }
%struct.f2fs_sm_info = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.dirty_seglist_info = type { ptr, [8 x ptr], ptr, %struct.mutex, [8 x i32], ptr }
%struct.f2fs_gc_kthread = type { ptr, %struct.wait_queue_head, i32, i32, i32, i32, i32, %struct.wait_queue_head }
%struct.discard_cmd_control = type { ptr, %struct.list_head, [512 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, %struct.mutex, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.rb_root_cached, i8 }
%struct.free_segmap_info = type { i32, i32, i32, %struct.spinlock, ptr, ptr }
%struct.f2fs_stat_info = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i64], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [4 x i32], [2 x i32], [2 x i32], i32, i64, i64, i64 }

@f2fs_kset = internal global { %struct.kset, [32 x i8] } { %struct.kset { %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, %struct.kobject { ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @f2fs_ktype, ptr null, %struct.kref zeroinitializer, %struct.delayed_work zeroinitializer, i8 0 }, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"f2fs\00", [27 x i8] zeroinitializer }, align 32
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@f2fs_feat = internal global { %struct.kobject, [56 x i8] } { %struct.kobject { ptr null, %struct.list_head zeroinitializer, ptr null, ptr @f2fs_kset, ptr null, ptr null, %struct.kref zeroinitializer, %struct.delayed_work zeroinitializer, i8 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_feat_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @f2fs_attr_ops, ptr null, ptr @f2fs_feat_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fs/f2fs\00", [24 x i8] zeroinitializer }, align 32
@f2fs_proc_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f2fs_sb_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @f2fs_sb_release, ptr @f2fs_attr_ops, ptr null, ptr @f2fs_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@f2fs_stat_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @f2fs_stat_kobj_release, ptr @f2fs_stat_attr_ops, ptr null, ptr @f2fs_stat_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stat\00", [27 x i8] zeroinitializer }, align 32
@f2fs_feature_list_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @f2fs_feature_list_kobj_release, ptr @f2fs_feature_list_attr_ops, ptr null, ptr @f2fs_sb_feat_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"feature_list\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"segment_info\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"segment_bits\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iostat_info\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"victim_bits\00", [20 x i8] zeroinitializer }, align 32
@f2fs_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @f2fs_attr_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@f2fs_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @f2fs_attr_show, ptr @f2fs_attr_store }, [24 x i8] zeroinitializer }, align 32
@f2fs_feat_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @f2fs_feat_group, ptr null], [24 x i8] zeroinitializer }, align 32
@f2fs_feat_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @f2fs_feat_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@f2fs_feat_attrs = internal global { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @f2fs_attr_encryption, ptr @f2fs_attr_test_dummy_encryption_v2, ptr @f2fs_attr_encrypted_casefold, ptr @f2fs_attr_block_zoned, ptr @f2fs_attr_atomic_write, ptr @f2fs_attr_extra_attr, ptr @f2fs_attr_project_quota, ptr @f2fs_attr_inode_checksum, ptr @f2fs_attr_flexible_inline_xattr, ptr @f2fs_attr_quota_ino, ptr @f2fs_attr_inode_crtime, ptr @f2fs_attr_lost_found, ptr @f2fs_attr_verity, ptr @f2fs_attr_sb_checksum, ptr @f2fs_attr_casefold, ptr @f2fs_attr_readonly, ptr @f2fs_attr_compression, ptr @f2fs_attr_pin_file, ptr null], [52 x i8] zeroinitializer }, align 32
@f2fs_attr_encryption = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_test_dummy_encryption_v2 = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_encrypted_casefold = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_block_zoned = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_atomic_write = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_extra_attr = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_project_quota = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_inode_checksum = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_flexible_inline_xattr = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_quota_ino = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_inode_crtime = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_lost_found = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_verity = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_checksum = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_casefold = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_readonly = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_compression = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_pin_file = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_feature_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"encryption\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"supported\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_dummy_encryption_v2\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"encrypted_casefold\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"block_zoned\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atomic_write\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"extra_attr\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"project_quota\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inode_checksum\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"flexible_inline_xattr\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"quota_ino\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inode_crtime\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lost_found\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"verity\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sb_checksum\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"casefold\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"readonly\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"compression\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pin_file\00", [23 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@f2fs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @f2fs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@f2fs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @f2fs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@f2fs_attrs = internal global { [71 x ptr], [68 x i8] } { [71 x ptr] [ptr @f2fs_attr_gc_urgent_sleep_time, ptr @f2fs_attr_gc_min_sleep_time, ptr @f2fs_attr_gc_max_sleep_time, ptr @f2fs_attr_gc_no_gc_sleep_time, ptr @f2fs_attr_gc_idle, ptr @f2fs_attr_gc_urgent, ptr @f2fs_attr_reclaim_segments, ptr @f2fs_attr_main_blkaddr, ptr @f2fs_attr_max_small_discards, ptr @f2fs_attr_discard_granularity, ptr @f2fs_attr_pending_discard, ptr @f2fs_attr_batched_trim_sections, ptr @f2fs_attr_ipu_policy, ptr @f2fs_attr_min_ipu_util, ptr @f2fs_attr_min_fsync_blocks, ptr @f2fs_attr_min_seq_blocks, ptr @f2fs_attr_min_hot_blocks, ptr @f2fs_attr_min_ssr_sections, ptr @f2fs_attr_max_victim_search, ptr @f2fs_attr_migration_granularity, ptr @f2fs_attr_dir_level, ptr @f2fs_attr_ram_thresh, ptr @f2fs_attr_ra_nid_pages, ptr @f2fs_attr_dirty_nats_ratio, ptr @f2fs_attr_cp_interval, ptr @f2fs_attr_idle_interval, ptr @f2fs_attr_discard_idle_interval, ptr @f2fs_attr_gc_idle_interval, ptr @f2fs_attr_umount_discard_timeout, ptr @f2fs_attr_iostat_enable, ptr @f2fs_attr_iostat_period_ms, ptr @f2fs_attr_readdir_ra, ptr @f2fs_attr_max_io_bytes, ptr @f2fs_attr_gc_pin_file_thresh, ptr @f2fs_attr_extension_list, ptr @f2fs_attr_inject_rate, ptr @f2fs_attr_inject_type, ptr @f2fs_attr_data_io_flag, ptr @f2fs_attr_node_io_flag, ptr @f2fs_attr_gc_urgent_high_remaining, ptr @f2fs_attr_ckpt_thread_ioprio, ptr @f2fs_attr_dirty_segments, ptr @f2fs_attr_free_segments, ptr @f2fs_attr_ovp_segments, ptr @f2fs_attr_unusable, ptr @f2fs_attr_lifetime_write_kbytes, ptr @f2fs_attr_features, ptr @f2fs_attr_reserved_blocks, ptr @f2fs_attr_current_reserved_blocks, ptr @f2fs_attr_encoding, ptr @f2fs_attr_mounted_time_sec, ptr @f2fs_attr_cp_foreground_calls, ptr @f2fs_attr_cp_background_calls, ptr @f2fs_attr_gc_foreground_calls, ptr @f2fs_attr_gc_background_calls, ptr @f2fs_attr_moved_blocks_foreground, ptr @f2fs_attr_moved_blocks_background, ptr @f2fs_attr_avg_vblocks, ptr @f2fs_attr_compr_written_block, ptr @f2fs_attr_compr_saved_block, ptr @f2fs_attr_compr_new_inode, ptr @f2fs_attr_atgc_candidate_ratio, ptr @f2fs_attr_atgc_candidate_count, ptr @f2fs_attr_atgc_age_weight, ptr @f2fs_attr_atgc_age_threshold, ptr @f2fs_attr_seq_file_ra_mul, ptr @f2fs_attr_gc_segment_mode, ptr @f2fs_attr_gc_reclaimed_segments, ptr @f2fs_attr_max_fragment_chunk, ptr @f2fs_attr_max_fragment_hole, ptr null], [68 x i8] zeroinitializer }, align 32
@f2fs_attr_gc_urgent_sleep_time = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 0, i32 56, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_gc_min_sleep_time = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 0, i32 60, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_gc_max_sleep_time = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 0, i32 64, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_gc_no_gc_sleep_time = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 0, i32 68, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_gc_idle = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 3052, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_gc_urgent = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 3052, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_reclaim_segments = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 1, i32 144, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_main_blkaddr = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @main_blkaddr_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_max_small_discards = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 2, i32 4276, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_discard_granularity = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 2, i32 4280, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_pending_discard = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pending_discard_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_batched_trim_sections = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 1, i32 148, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_ipu_policy = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 1, i32 160, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_min_ipu_util = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.70, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 1, i32 164, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_min_fsync_blocks = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.71, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 1, i32 168, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_min_seq_blocks = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 1, i32 172, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_min_hot_blocks = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 1, i32 176, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_min_ssr_sections = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 1, i32 180, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_max_victim_search = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 3248, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_migration_granularity = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 3252, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_dir_level = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 2180, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_ram_thresh = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 3, i32 16, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_ra_nid_pages = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 3, i32 20, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_dirty_nats_ratio = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 3, i32 24, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_cp_interval = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 856, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_idle_interval = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 860, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_discard_idle_interval = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 864, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_gc_idle_interval = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 868, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_umount_discard_timeout = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 876, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_iostat_enable = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 4704, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_iostat_period_ms = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 4712, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_readdir_ra = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 2184, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_max_io_bytes = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.86, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 2192, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_gc_pin_file_thresh = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 3144, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_extension_list = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 1152, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_inject_rate = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 6, i32 4, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_inject_type = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 7, i32 8, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_data_io_flag = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 3432, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_node_io_flag = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 3436, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_gc_urgent_high_remaining = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 3112, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_ckpt_thread_ioprio = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 9, i32 4, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_dirty_segments = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dirty_segments_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_free_segments = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @free_segments_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_ovp_segments = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ovp_segments_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_unusable = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @unusable_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_lifetime_write_kbytes = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lifetime_write_kbytes_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_features = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @features_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_reserved_blocks = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.103, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 8, i32 2216, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_current_reserved_blocks = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @current_reserved_blocks_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_encoding = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @encoding_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_mounted_time_sec = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mounted_time_sec_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_cp_foreground_calls = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr null, i32 5, i32 384, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_cp_background_calls = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.111, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr null, i32 5, i32 388, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_gc_foreground_calls = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr null, i32 5, i32 380, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_gc_background_calls = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr null, i32 5, i32 172, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_moved_blocks_foreground = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @moved_blocks_foreground_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_moved_blocks_background = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.115, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @moved_blocks_background_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_avg_vblocks = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.116, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @avg_vblocks_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_compr_written_block = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 4272, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_compr_saved_block = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 4280, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_compr_new_inode = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 4288, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_atgc_candidate_ratio = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 10, i32 24, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_atgc_candidate_count = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.117, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 10, i32 28, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_atgc_age_weight = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 10, i32 32, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_atgc_age_threshold = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.118, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 10, i32 40, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_seq_file_ra_mul = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 4248, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_gc_segment_mode = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 4220, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_gc_reclaimed_segments = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 4224, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_max_fragment_chunk = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 4252, i32 0 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_max_fragment_hole = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sbi_show, ptr @f2fs_sbi_store, i32 4, i32 4256, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gc_urgent_sleep_time\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"extension_list\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cold file extension:\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hot file extension:\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ckpt_thread_ioprio\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rt,\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"be,\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"compr_written_block\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"compr_saved_block\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"compr_new_inode\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gc_segment_mode\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gc_reclaimed_segments\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gc_urgent\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"[h]\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"[c]\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"discard_granularity\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"migration_granularity\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"trim_sections\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gc_idle\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gc_urgent_high_remaining\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iostat_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iostat_period_ms\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atgc_candidate_ratio\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atgc_age_weight\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"seq_file_ra_mul\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_fragment_chunk\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_fragment_hole\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gc_min_sleep_time\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gc_max_sleep_time\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gc_no_gc_sleep_time\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reclaim_segments\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"main_blkaddr\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_small_discards\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pending_discard\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"batched_trim_sections\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipu_policy\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"min_ipu_util\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"min_fsync_blocks\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"min_seq_blocks\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"min_hot_blocks\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"min_ssr_sections\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_victim_search\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dir_level\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ram_thresh\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ra_nid_pages\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dirty_nats_ratio\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cp_interval\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idle_interval\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"discard_idle_interval\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gc_idle_interval\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"umount_discard_timeout\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"readdir_ra\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_io_bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gc_pin_file_thresh\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inject_rate\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inject_type\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"data_io_flag\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"node_io_flag\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dirty_segments\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"free_segments\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ovp_segments\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unusable\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lifetime_write_kbytes\00", [42 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"blkzoned\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"projquota\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reserved_blocks\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"current_reserved_blocks\00", [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"encoding\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"UTF-8 (%d.%d.%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mounted_time_sec\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cp_foreground_calls\00", [44 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cp_background_calls\00", [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gc_foreground_calls\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gc_background_calls\00", [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"moved_blocks_foreground\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"moved_blocks_background\00", [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"avg_vblocks\00", [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atgc_candidate_count\00", [43 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atgc_age_threshold\00", [45 x i8] zeroinitializer }, align 32
@f2fs_stat_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @f2fs_stat_attr_show, ptr @f2fs_stat_attr_store }, [24 x i8] zeroinitializer }, align 32
@f2fs_stat_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @f2fs_stat_group, ptr null], [24 x i8] zeroinitializer }, align 32
@f2fs_stat_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @f2fs_stat_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@f2fs_stat_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @f2fs_attr_sb_status, ptr null], [24 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_status = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.119, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sb_status_show, ptr null, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sb_status\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lx\0A\00", [27 x i8] zeroinitializer }, align 32
@f2fs_feature_list_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @f2fs_sb_feat_attr_show, ptr null }, [24 x i8] zeroinitializer }, align 32
@f2fs_sb_feat_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @f2fs_sb_feat_group, ptr null], [24 x i8] zeroinitializer }, align 32
@f2fs_sb_feat_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @f2fs_sb_feat_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@f2fs_sb_feat_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @f2fs_attr_sb_encryption, ptr @f2fs_attr_sb_block_zoned, ptr @f2fs_attr_sb_extra_attr, ptr @f2fs_attr_sb_project_quota, ptr @f2fs_attr_sb_inode_checksum, ptr @f2fs_attr_sb_flexible_inline_xattr, ptr @f2fs_attr_sb_quota_ino, ptr @f2fs_attr_sb_inode_crtime, ptr @f2fs_attr_sb_lost_found, ptr @f2fs_attr_sb_verity, ptr @f2fs_attr_sb_sb_checksum, ptr @f2fs_attr_sb_casefold, ptr @f2fs_attr_sb_compression, ptr @f2fs_attr_sb_readonly, ptr null], [36 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_encryption = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sb_feature_show, ptr null, i32 0, i32 0, i32 1 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_block_zoned = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sb_feature_show, ptr null, i32 0, i32 0, i32 2 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_extra_attr = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sb_feature_show, ptr null, i32 0, i32 0, i32 8 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_project_quota = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sb_feature_show, ptr null, i32 0, i32 0, i32 16 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_inode_checksum = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sb_feature_show, ptr null, i32 0, i32 0, i32 32 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_flexible_inline_xattr = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sb_feature_show, ptr null, i32 0, i32 0, i32 64 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_quota_ino = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sb_feature_show, ptr null, i32 0, i32 0, i32 128 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_inode_crtime = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sb_feature_show, ptr null, i32 0, i32 0, i32 256 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_lost_found = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sb_feature_show, ptr null, i32 0, i32 0, i32 512 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_verity = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sb_feature_show, ptr null, i32 0, i32 0, i32 1024 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_sb_checksum = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sb_feature_show, ptr null, i32 0, i32 0, i32 2048 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_casefold = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sb_feature_show, ptr null, i32 0, i32 0, i32 4096 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_compression = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sb_feature_show, ptr null, i32 0, i32 0, i32 8192 }, [56 x i8] zeroinitializer }, align 32
@f2fs_attr_sb_readonly = internal global { %struct.f2fs_attr, [56 x i8] } { %struct.f2fs_attr { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @f2fs_sb_feature_show, ptr null, i32 0, i32 0, i32 16384 }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsupported\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"format: segment_type|valid_blocks\0Asegment_type(0:HD, 1:WD, 2:CD, 3:HN, 4:WN, 5:CN)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%-10d\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%d|%-3u\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"format: segment_type|valid_blocks|bitmaps\0Asegment_type(0:HD, 1:WD, 2:CD, 3:HN, 4:WN, 5:CN)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d|%-3u|\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %.2x\00", [26 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"format: victim_secmap bitmaps\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.131 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.135 = private unnamed_addr constant [10 x i8] c"f2fs_kset\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1000, i32 20 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1155, i32 36 }
@___asan_gen_.141 = private unnamed_addr constant [10 x i8] c"f2fs_feat\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1009, i32 23 }
@___asan_gen_.144 = private unnamed_addr constant [16 x i8] c"f2fs_feat_ktype\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1004, i32 25 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1162, i32 14 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1167, i32 31 }
@___asan_gen_.153 = private unnamed_addr constant [15 x i8] c"f2fs_proc_root\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 23, i32 31 }
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"f2fs_sb_ktype\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 990, i32 25 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1188, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"f2fs_stat_ktype\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1045, i32 25 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1195, i32 21 }
@___asan_gen_.168 = private unnamed_addr constant [24 x i8] c"f2fs_feature_list_ktype\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1072, i32 25 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1203, i32 20 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1211, i32 27 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1213, i32 27 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1216, i32 27 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1219, i32 27 }
@___asan_gen_.186 = private unnamed_addr constant [11 x i8] c"f2fs_ktype\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 996, i32 25 }
@___asan_gen_.189 = private unnamed_addr constant [14 x i8] c"f2fs_attr_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 985, i32 31 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"f2fs_feat_groups\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [16 x i8] c"f2fs_feat_group\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 942, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"f2fs_feat_attrs\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 909, i32 26 }
@___asan_gen_.201 = private unnamed_addr constant [21 x i8] c"f2fs_attr_encryption\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [35 x i8] c"f2fs_attr_test_dummy_encryption_v2\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [29 x i8] c"f2fs_attr_encrypted_casefold\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [22 x i8] c"f2fs_attr_block_zoned\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [23 x i8] c"f2fs_attr_atomic_write\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [21 x i8] c"f2fs_attr_extra_attr\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [24 x i8] c"f2fs_attr_project_quota\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [25 x i8] c"f2fs_attr_inode_checksum\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [32 x i8] c"f2fs_attr_flexible_inline_xattr\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c"f2fs_attr_quota_ino\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [23 x i8] c"f2fs_attr_inode_crtime\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [21 x i8] c"f2fs_attr_lost_found\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"f2fs_attr_verity\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [22 x i8] c"f2fs_attr_sb_checksum\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [19 x i8] c"f2fs_attr_casefold\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [19 x i8] c"f2fs_attr_readonly\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [22 x i8] c"f2fs_attr_compression\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [19 x i8] c"f2fs_attr_pin_file\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 779, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 661, i32 22 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 780, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 782, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 786, i32 1 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 788, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 789, i32 1 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 790, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 791, i32 1 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 792, i32 1 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 793, i32 1 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 794, i32 1 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 795, i32 1 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 797, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 799, i32 1 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 801, i32 1 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 803, i32 1 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 805, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 810, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 87, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [12 x i8] c"f2fs_groups\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [11 x i8] c"f2fs_group\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 907, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant [11 x i8] c"f2fs_attrs\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 825, i32 26 }
@___asan_gen_.327 = private unnamed_addr constant [31 x i8] c"f2fs_attr_gc_urgent_sleep_time\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [28 x i8] c"f2fs_attr_gc_min_sleep_time\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [28 x i8] c"f2fs_attr_gc_max_sleep_time\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [30 x i8] c"f2fs_attr_gc_no_gc_sleep_time\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [18 x i8] c"f2fs_attr_gc_idle\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 715, i32 1 }
@___asan_gen_.342 = private unnamed_addr constant [20 x i8] c"f2fs_attr_gc_urgent\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 716, i32 1 }
@___asan_gen_.345 = private unnamed_addr constant [27 x i8] c"f2fs_attr_reclaim_segments\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [23 x i8] c"f2fs_attr_main_blkaddr\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [29 x i8] c"f2fs_attr_max_small_discards\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [30 x i8] c"f2fs_attr_discard_granularity\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 719, i32 1 }
@___asan_gen_.357 = private unnamed_addr constant [26 x i8] c"f2fs_attr_pending_discard\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [32 x i8] c"f2fs_attr_batched_trim_sections\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [21 x i8] c"f2fs_attr_ipu_policy\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [23 x i8] c"f2fs_attr_min_ipu_util\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [27 x i8] c"f2fs_attr_min_fsync_blocks\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [25 x i8] c"f2fs_attr_min_seq_blocks\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [25 x i8] c"f2fs_attr_min_hot_blocks\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [27 x i8] c"f2fs_attr_min_ssr_sections\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [28 x i8] c"f2fs_attr_max_victim_search\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [32 x i8] c"f2fs_attr_migration_granularity\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 732, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant [20 x i8] c"f2fs_attr_dir_level\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [21 x i8] c"f2fs_attr_ram_thresh\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [23 x i8] c"f2fs_attr_ra_nid_pages\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [27 x i8] c"f2fs_attr_dirty_nats_ratio\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [22 x i8] c"f2fs_attr_cp_interval\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [24 x i8] c"f2fs_attr_idle_interval\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [32 x i8] c"f2fs_attr_discard_idle_interval\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [27 x i8] c"f2fs_attr_gc_idle_interval\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [33 x i8] c"f2fs_attr_umount_discard_timeout\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [24 x i8] c"f2fs_attr_iostat_enable\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 742, i32 1 }
@___asan_gen_.417 = private unnamed_addr constant [27 x i8] c"f2fs_attr_iostat_period_ms\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 743, i32 1 }
@___asan_gen_.420 = private unnamed_addr constant [21 x i8] c"f2fs_attr_readdir_ra\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [23 x i8] c"f2fs_attr_max_io_bytes\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [29 x i8] c"f2fs_attr_gc_pin_file_thresh\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [25 x i8] c"f2fs_attr_extension_list\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 748, i32 1 }
@___asan_gen_.432 = private unnamed_addr constant [22 x i8] c"f2fs_attr_inject_rate\00", align 1
@___asan_gen_.435 = private unnamed_addr constant [22 x i8] c"f2fs_attr_inject_type\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [23 x i8] c"f2fs_attr_data_io_flag\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [23 x i8] c"f2fs_attr_node_io_flag\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [35 x i8] c"f2fs_attr_gc_urgent_high_remaining\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 755, i32 1 }
@___asan_gen_.447 = private unnamed_addr constant [29 x i8] c"f2fs_attr_ckpt_thread_ioprio\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 756, i32 1 }
@___asan_gen_.450 = private unnamed_addr constant [25 x i8] c"f2fs_attr_dirty_segments\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [24 x i8] c"f2fs_attr_free_segments\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [23 x i8] c"f2fs_attr_ovp_segments\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [19 x i8] c"f2fs_attr_unusable\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [32 x i8] c"f2fs_attr_lifetime_write_kbytes\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [19 x i8] c"f2fs_attr_features\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 761, i32 1 }
@___asan_gen_.468 = private unnamed_addr constant [26 x i8] c"f2fs_attr_reserved_blocks\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [34 x i8] c"f2fs_attr_current_reserved_blocks\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [19 x i8] c"f2fs_attr_encoding\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [27 x i8] c"f2fs_attr_mounted_time_sec\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [30 x i8] c"f2fs_attr_cp_foreground_calls\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [30 x i8] c"f2fs_attr_cp_background_calls\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [30 x i8] c"f2fs_attr_gc_foreground_calls\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [30 x i8] c"f2fs_attr_gc_background_calls\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [34 x i8] c"f2fs_attr_moved_blocks_foreground\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [34 x i8] c"f2fs_attr_moved_blocks_background\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [22 x i8] c"f2fs_attr_avg_vblocks\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [30 x i8] c"f2fs_attr_compr_written_block\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 806, i32 1 }
@___asan_gen_.504 = private unnamed_addr constant [28 x i8] c"f2fs_attr_compr_saved_block\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 807, i32 1 }
@___asan_gen_.507 = private unnamed_addr constant [26 x i8] c"f2fs_attr_compr_new_inode\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 808, i32 1 }
@___asan_gen_.510 = private unnamed_addr constant [31 x i8] c"f2fs_attr_atgc_candidate_ratio\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 813, i32 1 }
@___asan_gen_.513 = private unnamed_addr constant [31 x i8] c"f2fs_attr_atgc_candidate_count\00", align 1
@___asan_gen_.516 = private unnamed_addr constant [26 x i8] c"f2fs_attr_atgc_age_weight\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 815, i32 1 }
@___asan_gen_.519 = private unnamed_addr constant [29 x i8] c"f2fs_attr_atgc_age_threshold\00", align 1
@___asan_gen_.522 = private unnamed_addr constant [26 x i8] c"f2fs_attr_seq_file_ra_mul\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 818, i32 1 }
@___asan_gen_.525 = private unnamed_addr constant [26 x i8] c"f2fs_attr_gc_segment_mode\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 819, i32 1 }
@___asan_gen_.528 = private unnamed_addr constant [32 x i8] c"f2fs_attr_gc_reclaimed_segments\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 820, i32 1 }
@___asan_gen_.531 = private unnamed_addr constant [29 x i8] c"f2fs_attr_max_fragment_chunk\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 821, i32 1 }
@___asan_gen_.534 = private unnamed_addr constant [28 x i8] c"f2fs_attr_max_fragment_hole\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 822, i32 1 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 710, i32 1 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 270, i32 28 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 278, i32 7 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 280, i32 49 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 284, i32 7 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 291, i32 28 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 298, i32 49 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 300, i32 49 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 304, i32 48 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 309, i32 28 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 310, i32 26 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 312, i32 28 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 315, i32 28 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 316, i32 26 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 319, i32 28 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 322, i32 28 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 599, i32 41 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 349, i32 22 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 351, i32 27 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 439, i32 28 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 450, i32 28 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 455, i32 28 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 476, i32 28 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 491, i32 28 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 501, i32 28 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 508, i32 28 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 536, i32 28 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 543, i32 28 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 565, i32 28 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 573, i32 28 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 581, i32 28 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 712, i32 1 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 713, i32 1 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 714, i32 1 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 717, i32 1 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 766, i32 1 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 718, i32 1 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 767, i32 1 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 721, i32 1 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 722, i32 1 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 723, i32 1 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 724, i32 1 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 725, i32 1 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 726, i32 1 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 727, i32 1 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 731, i32 1 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 733, i32 1 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 728, i32 1 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 729, i32 1 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 730, i32 1 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 734, i32 1 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 735, i32 1 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 736, i32 1 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 738, i32 1 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 739, i32 1 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 745, i32 1 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 746, i32 1 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 747, i32 1 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 750, i32 1 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 751, i32 1 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 753, i32 1 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 754, i32 1 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 757, i32 1 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 758, i32 1 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 759, i32 1 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 763, i32 1 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 760, i32 1 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 139, i32 48 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 140, i32 11 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 140, i32 18 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 140, i32 22 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 146, i32 22 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 179, i32 47 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 720, i32 1 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 762, i32 1 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 764, i32 1 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 208, i32 26 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 213, i32 22 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 765, i32 1 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 219, i32 22 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 769, i32 1 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 770, i32 1 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 771, i32 1 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 772, i32 1 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 774, i32 1 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 773, i32 1 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 775, i32 1 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 814, i32 1 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 816, i32 1 }
@___asan_gen_.804 = private unnamed_addr constant [19 x i8] c"f2fs_stat_attr_ops\00", align 1
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1040, i32 31 }
@___asan_gen_.807 = private unnamed_addr constant [17 x i8] c"f2fs_stat_groups\00", align 1
@___asan_gen_.810 = private unnamed_addr constant [16 x i8] c"f2fs_stat_group\00", align 1
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 949, i32 1 }
@___asan_gen_.813 = private unnamed_addr constant [16 x i8] c"f2fs_stat_attrs\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 945, i32 26 }
@___asan_gen_.816 = private unnamed_addr constant [20 x i8] c"f2fs_attr_sb_status\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 944, i32 1 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 118, i32 22 }
@___asan_gen_.825 = private unnamed_addr constant [27 x i8] c"f2fs_feature_list_attr_ops\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1068, i32 31 }
@___asan_gen_.828 = private unnamed_addr constant [20 x i8] c"f2fs_sb_feat_groups\00", align 1
@___asan_gen_.831 = private unnamed_addr constant [19 x i8] c"f2fs_sb_feat_group\00", align 1
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 983, i32 1 }
@___asan_gen_.834 = private unnamed_addr constant [19 x i8] c"f2fs_sb_feat_attrs\00", align 1
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 966, i32 26 }
@___asan_gen_.837 = private unnamed_addr constant [24 x i8] c"f2fs_attr_sb_encryption\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 951, i32 1 }
@___asan_gen_.840 = private unnamed_addr constant [25 x i8] c"f2fs_attr_sb_block_zoned\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 952, i32 1 }
@___asan_gen_.843 = private unnamed_addr constant [24 x i8] c"f2fs_attr_sb_extra_attr\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 953, i32 1 }
@___asan_gen_.846 = private unnamed_addr constant [27 x i8] c"f2fs_attr_sb_project_quota\00", align 1
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 954, i32 1 }
@___asan_gen_.849 = private unnamed_addr constant [28 x i8] c"f2fs_attr_sb_inode_checksum\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 955, i32 1 }
@___asan_gen_.852 = private unnamed_addr constant [35 x i8] c"f2fs_attr_sb_flexible_inline_xattr\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 956, i32 1 }
@___asan_gen_.855 = private unnamed_addr constant [23 x i8] c"f2fs_attr_sb_quota_ino\00", align 1
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 957, i32 1 }
@___asan_gen_.858 = private unnamed_addr constant [26 x i8] c"f2fs_attr_sb_inode_crtime\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 958, i32 1 }
@___asan_gen_.861 = private unnamed_addr constant [24 x i8] c"f2fs_attr_sb_lost_found\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 959, i32 1 }
@___asan_gen_.864 = private unnamed_addr constant [20 x i8] c"f2fs_attr_sb_verity\00", align 1
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 960, i32 1 }
@___asan_gen_.867 = private unnamed_addr constant [25 x i8] c"f2fs_attr_sb_sb_checksum\00", align 1
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 961, i32 1 }
@___asan_gen_.870 = private unnamed_addr constant [22 x i8] c"f2fs_attr_sb_casefold\00", align 1
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 962, i32 1 }
@___asan_gen_.873 = private unnamed_addr constant [25 x i8] c"f2fs_attr_sb_compression\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 963, i32 1 }
@___asan_gen_.876 = private unnamed_addr constant [22 x i8] c"f2fs_attr_sb_readonly\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 964, i32 1 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 675, i32 22 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1087, i32 16 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1094, i32 20 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1095, i32 19 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1114, i32 16 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1121, i32 19 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1123, i32 20 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1137, i32 16 }
@___asan_gen_.903 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.904 = private constant [19 x i8] c"../fs/f2fs/sysfs.c\00", align 1
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1142, i32 19 }
@llvm.compiler.used = appending global [257 x ptr] [ptr @f2fs_kset, ptr @.str, ptr @f2fs_feat, ptr @f2fs_feat_ktype, ptr @.str.1, ptr @.str.2, ptr @f2fs_proc_root, ptr @f2fs_sb_ktype, ptr @.str.3, ptr @f2fs_stat_ktype, ptr @.str.4, ptr @f2fs_feature_list_ktype, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @f2fs_ktype, ptr @f2fs_attr_ops, ptr @f2fs_feat_groups, ptr @f2fs_feat_group, ptr @f2fs_feat_attrs, ptr @f2fs_attr_encryption, ptr @f2fs_attr_test_dummy_encryption_v2, ptr @f2fs_attr_encrypted_casefold, ptr @f2fs_attr_block_zoned, ptr @f2fs_attr_atomic_write, ptr @f2fs_attr_extra_attr, ptr @f2fs_attr_project_quota, ptr @f2fs_attr_inode_checksum, ptr @f2fs_attr_flexible_inline_xattr, ptr @f2fs_attr_quota_ino, ptr @f2fs_attr_inode_crtime, ptr @f2fs_attr_lost_found, ptr @f2fs_attr_verity, ptr @f2fs_attr_sb_checksum, ptr @f2fs_attr_casefold, ptr @f2fs_attr_readonly, ptr @f2fs_attr_compression, ptr @f2fs_attr_pin_file, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @init_completion.__key, ptr @.str.29, ptr @f2fs_groups, ptr @f2fs_group, ptr @f2fs_attrs, ptr @f2fs_attr_gc_urgent_sleep_time, ptr @f2fs_attr_gc_min_sleep_time, ptr @f2fs_attr_gc_max_sleep_time, ptr @f2fs_attr_gc_no_gc_sleep_time, ptr @f2fs_attr_gc_idle, ptr @f2fs_attr_gc_urgent, ptr @f2fs_attr_reclaim_segments, ptr @f2fs_attr_main_blkaddr, ptr @f2fs_attr_max_small_discards, ptr @f2fs_attr_discard_granularity, ptr @f2fs_attr_pending_discard, ptr @f2fs_attr_batched_trim_sections, ptr @f2fs_attr_ipu_policy, ptr @f2fs_attr_min_ipu_util, ptr @f2fs_attr_min_fsync_blocks, ptr @f2fs_attr_min_seq_blocks, ptr @f2fs_attr_min_hot_blocks, ptr @f2fs_attr_min_ssr_sections, ptr @f2fs_attr_max_victim_search, ptr @f2fs_attr_migration_granularity, ptr @f2fs_attr_dir_level, ptr @f2fs_attr_ram_thresh, ptr @f2fs_attr_ra_nid_pages, ptr @f2fs_attr_dirty_nats_ratio, ptr @f2fs_attr_cp_interval, ptr @f2fs_attr_idle_interval, ptr @f2fs_attr_discard_idle_interval, ptr @f2fs_attr_gc_idle_interval, ptr @f2fs_attr_umount_discard_timeout, ptr @f2fs_attr_iostat_enable, ptr @f2fs_attr_iostat_period_ms, ptr @f2fs_attr_readdir_ra, ptr @f2fs_attr_max_io_bytes, ptr @f2fs_attr_gc_pin_file_thresh, ptr @f2fs_attr_extension_list, ptr @f2fs_attr_inject_rate, ptr @f2fs_attr_inject_type, ptr @f2fs_attr_data_io_flag, ptr @f2fs_attr_node_io_flag, ptr @f2fs_attr_gc_urgent_high_remaining, ptr @f2fs_attr_ckpt_thread_ioprio, ptr @f2fs_attr_dirty_segments, ptr @f2fs_attr_free_segments, ptr @f2fs_attr_ovp_segments, ptr @f2fs_attr_unusable, ptr @f2fs_attr_lifetime_write_kbytes, ptr @f2fs_attr_features, ptr @f2fs_attr_reserved_blocks, ptr @f2fs_attr_current_reserved_blocks, ptr @f2fs_attr_encoding, ptr @f2fs_attr_mounted_time_sec, ptr @f2fs_attr_cp_foreground_calls, ptr @f2fs_attr_cp_background_calls, ptr @f2fs_attr_gc_foreground_calls, ptr @f2fs_attr_gc_background_calls, ptr @f2fs_attr_moved_blocks_foreground, ptr @f2fs_attr_moved_blocks_background, ptr @f2fs_attr_avg_vblocks, ptr @f2fs_attr_compr_written_block, ptr @f2fs_attr_compr_saved_block, ptr @f2fs_attr_compr_new_inode, ptr @f2fs_attr_atgc_candidate_ratio, ptr @f2fs_attr_atgc_candidate_count, ptr @f2fs_attr_atgc_age_weight, ptr @f2fs_attr_atgc_age_threshold, ptr @f2fs_attr_seq_file_ra_mul, ptr @f2fs_attr_gc_segment_mode, ptr @f2fs_attr_gc_reclaimed_segments, ptr @f2fs_attr_max_fragment_chunk, ptr @f2fs_attr_max_fragment_hole, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @f2fs_stat_attr_ops, ptr @f2fs_stat_groups, ptr @f2fs_stat_group, ptr @f2fs_stat_attrs, ptr @f2fs_attr_sb_status, ptr @.str.119, ptr @.str.120, ptr @f2fs_feature_list_attr_ops, ptr @f2fs_sb_feat_groups, ptr @f2fs_sb_feat_group, ptr @f2fs_sb_feat_attrs, ptr @f2fs_attr_sb_encryption, ptr @f2fs_attr_sb_block_zoned, ptr @f2fs_attr_sb_extra_attr, ptr @f2fs_attr_sb_project_quota, ptr @f2fs_attr_sb_inode_checksum, ptr @f2fs_attr_sb_flexible_inline_xattr, ptr @f2fs_attr_sb_quota_ino, ptr @f2fs_attr_sb_inode_crtime, ptr @f2fs_attr_sb_lost_found, ptr @f2fs_attr_sb_verity, ptr @f2fs_attr_sb_sb_checksum, ptr @f2fs_attr_sb_casefold, ptr @f2fs_attr_sb_compression, ptr @f2fs_attr_sb_readonly, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129], section "llvm.metadata"
@0 = internal global [257 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kset to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_feat to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_feat_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_proc_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_sb_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_stat_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_feature_list_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_feat_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_feat_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_feat_attrs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_encryption to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_test_dummy_encryption_v2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_encrypted_casefold to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_block_zoned to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_atomic_write to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_extra_attr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_project_quota to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_inode_checksum to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_flexible_inline_xattr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_quota_ino to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_inode_crtime to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_lost_found to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_verity to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_checksum to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_casefold to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_readonly to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_compression to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_pin_file to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attrs to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_gc_urgent_sleep_time to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_gc_min_sleep_time to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_gc_max_sleep_time to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_gc_no_gc_sleep_time to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_gc_idle to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_gc_urgent to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_reclaim_segments to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_main_blkaddr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_max_small_discards to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_discard_granularity to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_pending_discard to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_batched_trim_sections to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_ipu_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_min_ipu_util to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_min_fsync_blocks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_min_seq_blocks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_min_hot_blocks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_min_ssr_sections to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_max_victim_search to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_migration_granularity to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_dir_level to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_ram_thresh to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_ra_nid_pages to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_dirty_nats_ratio to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_cp_interval to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_idle_interval to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_discard_idle_interval to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_gc_idle_interval to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_umount_discard_timeout to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_iostat_enable to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_iostat_period_ms to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_readdir_ra to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_max_io_bytes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_gc_pin_file_thresh to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_extension_list to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_inject_rate to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_inject_type to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_data_io_flag to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_node_io_flag to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_gc_urgent_high_remaining to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_ckpt_thread_ioprio to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_dirty_segments to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_free_segments to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_ovp_segments to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_unusable to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_lifetime_write_kbytes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_features to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_reserved_blocks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_current_reserved_blocks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_encoding to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_mounted_time_sec to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_cp_foreground_calls to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_cp_background_calls to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_gc_foreground_calls to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_gc_background_calls to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_moved_blocks_foreground to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_moved_blocks_background to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_avg_vblocks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_compr_written_block to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_compr_saved_block to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_compr_new_inode to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_atgc_candidate_ratio to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_atgc_candidate_count to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_atgc_age_weight to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_atgc_age_threshold to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_seq_file_ra_mul to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_gc_segment_mode to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_gc_reclaimed_segments to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_max_fragment_chunk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_max_fragment_hole to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_stat_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_stat_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_stat_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_stat_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_status to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_feature_list_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_sb_feat_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_sb_feat_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_sb_feat_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_encryption to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_block_zoned to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_extra_attr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_project_quota to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_inode_checksum to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_flexible_inline_xattr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_quota_ino to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_inode_crtime to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_lost_found to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_verity to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_sb_checksum to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_casefold to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_compression to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_attr_sb_readonly to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_init_sysfs() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef getelementptr inbounds (%struct.kset, ptr @f2fs_kset, i32 0, i32 2), ptr noundef nonnull @.str) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %0 = load ptr, ptr @fs_kobj, align 4
  store ptr %0, ptr getelementptr inbounds (%struct.kset, ptr @f2fs_kset, i32 0, i32 2, i32 2), align 4
  %call1 = tail call i32 @kset_register(ptr noundef nonnull @f2fs_kset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull @f2fs_feat, ptr noundef nonnull @f2fs_feat_ktype, ptr noundef null, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kobject_put(ptr noundef nonnull @f2fs_feat) #10
  tail call void @kset_unregister(ptr noundef nonnull @f2fs_kset) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.2, ptr noundef null) #10
  store ptr %call5, ptr @f2fs_proc_root, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ %call2, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kset_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_exit_sysfs() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kobject_put(ptr noundef nonnull @f2fs_feat) #10
  tail call void @kset_unregister(ptr noundef nonnull @f2fs_kset) #10
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef null) #10
  store ptr null, ptr @f2fs_proc_root, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_register_sysfs(ptr noundef %sbi) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %s_kobj = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 113
  %kset = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 113, i32 3
  %2 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @f2fs_kset, ptr %kset, align 8
  %s_kobj_unregister = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 114
  %3 = ptrtoint ptr %s_kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %s_kobj_unregister, align 4
  %wait.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 114, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_completion.__key) #10
  %s_id = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 39
  %call = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %s_kobj, ptr noundef nonnull @f2fs_sb_ktype, ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef %s_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.put_sb_kobj_crit_edge

entry.put_sb_kobj_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_sb_kobj

if.end:                                           ; preds = %entry
  %s_stat_kobj = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 115
  %kset3 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 115, i32 3
  %4 = ptrtoint ptr %kset3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @f2fs_kset, ptr %kset3, align 8
  %s_stat_kobj_unregister = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 116
  %5 = ptrtoint ptr %s_stat_kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %s_stat_kobj_unregister, align 4
  %wait.i74 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 116, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i74, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_completion.__key) #10
  %call6 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %s_stat_kobj, ptr noundef nonnull @f2fs_stat_ktype, ptr noundef %s_kobj, ptr noundef nonnull @.str.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.put_stat_kobj_crit_edge

if.end.put_stat_kobj_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_stat_kobj

if.end9:                                          ; preds = %if.end
  %s_feature_list_kobj = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 117
  %kset10 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 117, i32 3
  %6 = ptrtoint ptr %kset10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @f2fs_kset, ptr %kset10, align 8
  %s_feature_list_kobj_unregister = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 118
  %7 = ptrtoint ptr %s_feature_list_kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %s_feature_list_kobj_unregister, align 4
  %wait.i75 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 118, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i75, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_completion.__key) #10
  %call13 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %s_feature_list_kobj, ptr noundef nonnull @f2fs_feature_list_ktype, ptr noundef %s_kobj, ptr noundef nonnull @.str.5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %put_feature_list_kobj

if.end16:                                         ; preds = %if.end9
  %8 = load ptr, ptr @f2fs_proc_root, align 4
  %tobool17.not = icmp eq ptr %8, null
  br i1 %tobool17.not, label %if.end16.if.end22_crit_edge, label %if.then18

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call ptr @proc_mkdir(ptr noundef %s_id, ptr noundef nonnull %8) #10
  %s_proc = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 1
  %9 = ptrtoint ptr %s_proc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21, ptr %s_proc, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end16.if.end22_crit_edge
  %s_proc23 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 1
  %10 = ptrtoint ptr %s_proc23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_proc23, align 4
  %tobool24.not = icmp eq ptr %11, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.then25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef nonnull %11, ptr noundef nonnull @segment_info_seq_show, ptr noundef %1) #10
  %12 = ptrtoint ptr %s_proc23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_proc23, align 4
  %call29 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %13, ptr noundef nonnull @segment_bits_seq_show, ptr noundef %1) #10
  %14 = ptrtoint ptr %s_proc23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_proc23, align 4
  %call31 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %15, ptr noundef nonnull @iostat_info_seq_show, ptr noundef %1) #10
  %16 = ptrtoint ptr %s_proc23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_proc23, align 4
  %call33 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %17, ptr noundef nonnull @victim_bits_seq_show, ptr noundef %1) #10
  br label %cleanup

put_feature_list_kobj:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kobject_put(ptr noundef %s_feature_list_kobj) #10
  tail call void @wait_for_completion(ptr noundef %s_feature_list_kobj_unregister) #10
  br label %put_stat_kobj

put_stat_kobj:                                    ; preds = %put_feature_list_kobj, %if.end.put_stat_kobj_crit_edge
  %err.0 = phi i32 [ %call6, %if.end.put_stat_kobj_crit_edge ], [ %call13, %put_feature_list_kobj ]
  tail call void @kobject_put(ptr noundef %s_stat_kobj) #10
  tail call void @wait_for_completion(ptr noundef %s_stat_kobj_unregister) #10
  br label %put_sb_kobj

put_sb_kobj:                                      ; preds = %put_stat_kobj, %entry.put_sb_kobj_crit_edge
  %err.1 = phi i32 [ %call, %entry.put_sb_kobj_crit_edge ], [ %err.0, %put_stat_kobj ]
  tail call void @kobject_put(ptr noundef %s_kobj) #10
  tail call void @wait_for_completion(ptr noundef %s_kobj_unregister) #10
  br label %cleanup

cleanup:                                          ; preds = %put_sb_kobj, %if.then25, %if.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %put_sb_kobj ], [ 0, %if.then25 ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @segment_info_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %raw_super = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %raw_super to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %raw_super, align 8
  %segment_count_main = getelementptr inbounds %struct.f2fs_super_block, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %segment_count_main to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %segment_count_main, align 1
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.122) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp24.not = icmp eq i32 %7, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 11
  %sub = add i32 %8, -1
  %umax = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sm_info.i.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %sentries.i = getelementptr inbounds %struct.sit_info, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %sentries.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sentries.i, align 4
  %arrayidx.i = getelementptr %struct.seg_entry, ptr %14, i32 %i.025
  %rem = srem i32 %i.025, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.123, i32 noundef %i.025) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load = load i32, ptr %arrayidx.i, align 8
  %bf.lshr = lshr i32 %bf.load, 26
  %bf.lshr4 = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr4, 1023
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.124, i32 noundef %bf.lshr, i32 noundef %bf.clear) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %rem)
  %cmp6 = icmp eq i32 %rem, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %i.025, i32 %sub)
  %cmp7 = icmp eq i32 %i.025, %sub
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp7
  %. = select i1 %or.cond, i8 10, i8 32
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext %.) #10
  %inc = add nuw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @segment_bits_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %raw_super = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %raw_super to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %raw_super, align 8
  %segment_count_main = getelementptr inbounds %struct.f2fs_super_block, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %segment_count_main to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %segment_count_main, align 1
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.125) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp24.not = icmp eq i32 %7, 0
  br i1 %cmp24.not, label %entry.for.end9_crit_edge, label %for.body.lr.ph

entry.for.end9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end9

for.body.lr.ph:                                   ; preds = %entry
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 11
  %umax = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %for.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sm_info.i.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %sentries.i = getelementptr inbounds %struct.sit_info, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %sentries.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sentries.i, align 4
  %arrayidx.i = getelementptr %struct.seg_entry, ptr %14, i32 %i.025
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.123, i32 noundef %i.025) #10
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load = load i32, ptr %arrayidx.i, align 8
  %bf.lshr = lshr i32 %bf.load, 26
  %bf.lshr3 = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr3, 1023
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.126, i32 noundef %bf.lshr, i32 noundef %bf.clear) #10
  %cur_valid_map = getelementptr %struct.seg_entry, ptr %14, i32 %i.025, i32 1
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body
  %j.023 = phi i32 [ 0, %for.body ], [ %inc, %for.body6.for.body6_crit_edge ]
  %16 = ptrtoint ptr %cur_valid_map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur_valid_map, align 4
  %arrayidx = getelementptr i8, ptr %17, i32 %j.023
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.127, i32 noundef %conv) #10
  %inc = add nuw nsw i32 %j.023, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6

for.end:                                          ; preds = %for.body6
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #10
  %inc8 = add nuw i32 %i.025, 1
  %exitcond26.not = icmp eq i32 %inc8, %umax
  br i1 %exitcond26.not, label %for.end.for.end9_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.for.end9_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end9

for.end9:                                         ; preds = %for.end.for.end9_crit_edge, %entry.for.end9_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iostat_info_seq_show(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @victim_bits_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %sm_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sm_info.i.i, align 8
  %dirty_info.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dirty_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dirty_info.i, align 4
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.128) #10
  %total_sections = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 54
  %8 = ptrtoint ptr %total_sections to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_sections, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp23.not = icmp eq i32 %9, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %victim_secmap = getelementptr inbounds %struct.dirty_seglist_info, ptr %7, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %rem = srem i32 %i.024, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.123, i32 noundef %i.024) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %10 = ptrtoint ptr %victim_secmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %victim_secmap, align 4
  %div3.i = lshr i32 %i.024, 5
  %arrayidx.i = getelementptr i32, ptr %11, i32 %div3.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.024, 31
  %14 = lshr i32 %13, %and.i
  %15 = and i32 %14, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.129, i32 noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %rem)
  %cmp5 = icmp eq i32 %rem, 9
  br i1 %cmp5, label %if.end.for.inc_crit_edge, label %lor.lhs.false

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %total_sections to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_sections, align 8
  %sub = add i32 %17, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.024, i32 %sub)
  %cmp7 = icmp eq i32 %i.024, %sub
  %spec.select = select i1 %cmp7, i8 10, i8 32
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %if.end.for.inc_crit_edge
  %.sink = phi i8 [ 10, %if.end.for.inc_crit_edge ], [ %spec.select, %lor.lhs.false ]
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext %.sink) #10
  %inc = add nuw i32 %i.024, 1
  %18 = ptrtoint ptr %total_sections to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_sections, align 8
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_unregister_sysfs(ptr noundef %sbi) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_proc = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 1
  %0 = ptrtoint ptr %s_proc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_proc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.8, ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %s_proc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_proc, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.6, ptr noundef %3) #10
  %4 = ptrtoint ptr %s_proc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_proc, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.7, ptr noundef %5) #10
  %6 = ptrtoint ptr %s_proc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_proc, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.9, ptr noundef %7) #10
  %8 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sbi, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 39
  %10 = load ptr, ptr @f2fs_proc_root, align 4
  tail call void @remove_proc_entry(ptr noundef %s_id, ptr noundef %10) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s_stat_kobj = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 115
  tail call void @kobject_del(ptr noundef %s_stat_kobj) #10
  tail call void @kobject_put(ptr noundef %s_stat_kobj) #10
  %s_stat_kobj_unregister = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 116
  tail call void @wait_for_completion(ptr noundef %s_stat_kobj_unregister) #10
  %s_feature_list_kobj = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 117
  tail call void @kobject_del(ptr noundef %s_feature_list_kobj) #10
  tail call void @kobject_put(ptr noundef %s_feature_list_kobj) #10
  %s_feature_list_kobj_unregister = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 118
  tail call void @wait_for_completion(ptr noundef %s_feature_list_kobj_unregister) #10
  %s_kobj = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 113
  tail call void @kobject_del(ptr noundef %s_kobj) #10
  tail call void @kobject_put(ptr noundef %s_kobj) #10
  %s_kobj_unregister = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 114
  tail call void @wait_for_completion(ptr noundef %s_kobj_unregister) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.f2fs_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %kobj, i32 -3440
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.f2fs_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %kobj, i32 -3440
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @f2fs_feature_show(ptr nocapture noundef readnone %a, ptr nocapture noundef readnone %sbi, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @.str.11, i32 11)
  ret i32 10
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f2fs_sb_release(ptr noundef %kobj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_kobj_unregister = getelementptr i8, ptr %kobj, i32 136
  tail call void @complete(ptr noundef %s_kobj_unregister) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_sbi_show(ptr nocapture noundef readonly %a, ptr noundef readonly %sbi, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %struct_type = getelementptr inbounds %struct.f2fs_attr, ptr %a, i32 0, i32 3
  %0 = ptrtoint ptr %struct_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %struct_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup104_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then2.i
    i32 2, label %if.then5.i
    i32 3, label %if.then9.i
    i32 4, label %entry.__struct_ptr.exit_crit_edge
    i32 8, label %entry.__struct_ptr.exit_crit_edge178
    i32 6, label %entry.if.then19.i_crit_edge
    i32 7, label %entry.if.then19.i_crit_edge179
    i32 5, label %if.then22.i
    i32 9, label %if.then26.i
    i32 10, label %if.then29.i
  ]

entry.if.then19.i_crit_edge179:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

entry.if.then19.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

entry.__struct_ptr.exit_crit_edge178:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__struct_ptr.exit

entry.__struct_ptr.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__struct_ptr.exit

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %gc_thread.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 75
  %3 = ptrtoint ptr %gc_thread.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gc_thread.i, align 8
  br label %__struct_ptr.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sm_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %5 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sm_info.i.i, align 8
  br label %__struct_ptr.exit

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sm_info.i56.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %7 = ptrtoint ptr %sm_info.i56.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sm_info.i56.i, align 8
  %dcc_info.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %dcc_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dcc_info.i, align 4
  br label %__struct_ptr.exit

if.then9.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nm_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 9
  %11 = ptrtoint ptr %nm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nm_info.i.i, align 8
  br label %__struct_ptr.exit

if.then19.i:                                      ; preds = %entry.if.then19.i_crit_edge, %entry.if.then19.i_crit_edge179
  %fault_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7
  br label %__struct_ptr.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stat_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 90
  %13 = ptrtoint ptr %stat_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stat_info.i.i, align 8
  br label %__struct_ptr.exit

if.then26.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cprc_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26
  br label %__struct_ptr.exit

if.then29.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %am.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76
  br label %__struct_ptr.exit

__struct_ptr.exit:                                ; preds = %if.then29.i, %if.then26.i, %if.then22.i, %if.then19.i, %if.then9.i, %if.then5.i, %if.then2.i, %if.then.i, %entry.__struct_ptr.exit_crit_edge, %entry.__struct_ptr.exit_crit_edge178
  %retval.0.i = phi ptr [ %4, %if.then.i ], [ %6, %if.then2.i ], [ %10, %if.then5.i ], [ %12, %if.then9.i ], [ %fault_info.i, %if.then19.i ], [ %14, %if.then22.i ], [ %cprc_info.i, %if.then26.i ], [ %am.i, %if.then29.i ], [ %sbi, %entry.__struct_ptr.exit_crit_edge ], [ %sbi, %entry.__struct_ptr.exit_crit_edge178 ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__struct_ptr.exit.cleanup104_crit_edge, label %if.end

__struct_ptr.exit.cleanup104_crit_edge:           ; preds = %__struct_ptr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

if.end:                                           ; preds = %__struct_ptr.exit
  %15 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %a, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %16, ptr noundef nonnull dereferenceable(15) @.str.31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end31

if.then3:                                         ; preds = %if.end
  %raw_super = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %17 = ptrtoint ptr %raw_super to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %raw_super, align 8
  %extension_list = getelementptr inbounds %struct.f2fs_super_block, ptr %18, i32 0, i32 30
  %extension_count = getelementptr inbounds %struct.f2fs_super_block, ptr %18, i32 0, i32 29
  %19 = ptrtoint ptr %extension_count to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %extension_count, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %hot_ext_count = getelementptr inbounds %struct.f2fs_super_block, ptr %18, i32 0, i32 39
  %22 = ptrtoint ptr %hot_ext_count to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hot_ext_count, align 1
  %conv = zext i8 %23 to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp170 = icmp sgt i32 %21, 0
  br i1 %cmp170, label %if.then3.for.body_crit_edge, label %if.then3.for.end_crit_edge

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then3.for.body_crit_edge:                      ; preds = %if.then3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then3.for.body_crit_edge
  %i.0172 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then3.for.body_crit_edge ]
  %len.0171 = phi i32 [ %add12, %for.body.for.body_crit_edge ], [ %call6, %if.then3.for.body_crit_edge ]
  %add.ptr8 = getelementptr i8, ptr %buf, i32 %len.0171
  %sub9 = sub i32 4096, %len.0171
  %arrayidx = getelementptr [8 x i8], ptr %extension_list, i32 %i.0172
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.33, ptr noundef %arrayidx) #10
  %add12 = add i32 %call11, %len.0171
  %inc = add nuw nsw i32 %i.0172, 1
  %exitcond.not = icmp eq i32 %inc, %21
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then3.for.end_crit_edge
  %len.0.lcssa = phi i32 [ %call6, %if.then3.for.end_crit_edge ], [ %add12, %for.body.for.end_crit_edge ]
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %len.0.lcssa
  %sub14 = sub i32 4096, %len.0.lcssa
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.34) #10
  %add16 = add i32 %call15, %len.0.lcssa
  %add18 = add i32 %21, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add18)
  %cmp19173 = icmp slt i32 %21, %add18
  br i1 %cmp19173, label %for.end.for.body21_crit_edge, label %for.end.cleanup104_crit_edge

for.end.cleanup104_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %i.1175 = phi i32 [ %inc29, %for.body21.for.body21_crit_edge ], [ %21, %for.end.for.body21_crit_edge ]
  %len.1174 = phi i32 [ %add27, %for.body21.for.body21_crit_edge ], [ %add16, %for.end.for.body21_crit_edge ]
  %add.ptr22 = getelementptr i8, ptr %buf, i32 %len.1174
  %sub23 = sub i32 4096, %len.1174
  %arrayidx24 = getelementptr [8 x i8], ptr %extension_list, i32 %i.1175
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.33, ptr noundef %arrayidx24) #10
  %add27 = add i32 %call26, %len.1174
  %inc29 = add i32 %i.1175, 1
  %exitcond177.not = icmp eq i32 %inc29, %add18
  br i1 %exitcond177.not, label %for.body21.cleanup104_crit_edge, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body21

for.body21.cleanup104_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

if.end31:                                         ; preds = %if.end
  %call34 = tail call i32 @strcmp(ptr noundef %16, ptr noundef nonnull dereferenceable(19) @.str.35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end64

if.then36:                                        ; preds = %if.end31
  %ckpt_thread_ioprio = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 1
  %24 = ptrtoint ptr %ckpt_thread_ioprio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ckpt_thread_ioprio, align 4
  %26 = lshr i32 %25, 13
  %and = and i32 %26, 7
  %and39 = and i32 %25, 8191
  %27 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %and, label %if.then36.cleanup104_crit_edge [
    i32 1, label %if.then36.if.end56_crit_edge
    i32 2, label %if.then49
  ]

if.then36.if.end56_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then36.cleanup104_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

if.then49:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.then36.if.end56_crit_edge
  %.str.37.sink = phi ptr [ @.str.37, %if.then49 ], [ @.str.36, %if.then36.if.end56_crit_edge ]
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %.str.37.sink) #10
  %add.ptr57 = getelementptr i8, ptr %buf, i32 %call52
  %sub58 = sub i32 4096, %call52
  %call59 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr57, i32 noundef %sub58, ptr noundef nonnull @.str.38, i32 noundef %and39) #10
  %add60 = add i32 %call59, %call52
  br label %cleanup104

if.end64:                                         ; preds = %if.end31
  %call67 = tail call i32 @strcmp(ptr noundef %16, ptr noundef nonnull dereferenceable(20) @.str.39) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %compr_written_block = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 141
  %28 = ptrtoint ptr %compr_written_block to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %compr_written_block, align 8
  %call70 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.40, i64 noundef %29) #10
  br label %cleanup104

if.end71:                                         ; preds = %if.end64
  %call74 = tail call i32 @strcmp(ptr noundef %16, ptr noundef nonnull dereferenceable(18) @.str.41) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %compr_saved_block = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 142
  %30 = ptrtoint ptr %compr_saved_block to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %compr_saved_block, align 8
  %call77 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.40, i64 noundef %31) #10
  br label %cleanup104

if.end78:                                         ; preds = %if.end71
  %call81 = tail call i32 @strcmp(ptr noundef %16, ptr noundef nonnull dereferenceable(16) @.str.42) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %compr_new_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 143
  %32 = ptrtoint ptr %compr_new_inode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %compr_new_inode, align 8
  %call84 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.43, i32 noundef %33) #10
  br label %cleanup104

if.end85:                                         ; preds = %if.end78
  %call88 = tail call i32 @strcmp(ptr noundef %16, ptr noundef nonnull dereferenceable(16) @.str.44) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %gc_segment_mode = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 134
  %34 = ptrtoint ptr %gc_segment_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gc_segment_mode, align 4
  %call91 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.43, i32 noundef %35) #10
  br label %cleanup104

if.end92:                                         ; preds = %if.end85
  %call95 = tail call i32 @strcmp(ptr noundef %16, ptr noundef nonnull dereferenceable(22) @.str.45) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then97, label %if.end101

if.then97:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  %gc_segment_mode98 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 134
  %36 = ptrtoint ptr %gc_segment_mode98 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gc_segment_mode98, align 4
  %arrayidx99 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 135, i32 %37
  %38 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx99, align 4
  %call100 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.43, i32 noundef %39) #10
  br label %cleanup104

if.end101:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  %offset = getelementptr inbounds %struct.f2fs_attr, ptr %a, i32 0, i32 4
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset, align 4
  %add.ptr102 = getelementptr i8, ptr %retval.0.i, i32 %41
  %42 = ptrtoint ptr %add.ptr102 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr102, align 4
  %call103 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.43, i32 noundef %43)
  br label %cleanup104

cleanup104:                                       ; preds = %if.end101, %if.then97, %if.then90, %if.then83, %if.then76, %if.then69, %if.end56, %if.then36.cleanup104_crit_edge, %for.body21.cleanup104_crit_edge, %for.end.cleanup104_crit_edge, %__struct_ptr.exit.cleanup104_crit_edge, %entry.cleanup104_crit_edge
  %retval.1 = phi i32 [ %call103, %if.end101 ], [ %call100, %if.then97 ], [ %call91, %if.then90 ], [ %call84, %if.then83 ], [ %call77, %if.then76 ], [ %call70, %if.then69 ], [ -22, %__struct_ptr.exit.cleanup104_crit_edge ], [ %add60, %if.end56 ], [ -22, %if.then36.cleanup104_crit_edge ], [ -22, %entry.cleanup104_crit_edge ], [ %add16, %for.end.cleanup104_crit_edge ], [ %add27, %for.body21.cleanup104_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_sbi_store(ptr nocapture noundef readonly %a, ptr noundef %sbi, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %t.i = alloca i32, align 4
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.46) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.end:                                          ; preds = %entry
  %struct_type = getelementptr inbounds %struct.f2fs_attr, ptr %a, i32 0, i32 3
  %2 = ptrtoint ptr %struct_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %struct_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.end.if.then_crit_edge, label %lor.end.if.end5_crit_edge

lor.end.if.end5_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

lor.end.if.then_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.end.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sbi, align 8
  %s_umount = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 14
  %call2 = tail call i32 @down_read_trylock(ptr noundef %s_umount) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %lor.end.if.end5_crit_edge
  %6 = phi i1 [ true, %if.then.if.end5_crit_edge ], [ false, %lor.end.if.end5_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #10
  %7 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %t.i, align 4, !annotation !449
  %struct_type.i = getelementptr inbounds %struct.f2fs_attr, ptr %a, i32 0, i32 3
  %8 = ptrtoint ptr %struct_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %struct_type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %9, label %if.end5.__sbi_store.exit_crit_edge [
    i32 0, label %if.then.i.i
    i32 1, label %if.then2.i.i
    i32 2, label %if.then5.i.i
    i32 3, label %if.then9.i.i
    i32 4, label %if.end5.__struct_ptr.exit.i_crit_edge
    i32 8, label %if.end5.__struct_ptr.exit.i_crit_edge19
    i32 6, label %if.end5.if.then19.i.i_crit_edge
    i32 7, label %if.end5.if.then19.i.i_crit_edge20
    i32 5, label %if.then22.i.i
    i32 9, label %if.then26.i.i
    i32 10, label %if.then29.i.i
  ]

if.end5.if.then19.i.i_crit_edge20:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i.i

if.end5.if.then19.i.i_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i.i

if.end5.__struct_ptr.exit.i_crit_edge19:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %__struct_ptr.exit.i

if.end5.__struct_ptr.exit.i_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %__struct_ptr.exit.i

if.end5.__sbi_store.exit_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %gc_thread.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 75
  %11 = ptrtoint ptr %gc_thread.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gc_thread.i.i, align 8
  br label %__struct_ptr.exit.i

if.then2.i.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %13 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sm_info.i.i.i, align 8
  br label %__struct_ptr.exit.i

if.then5.i.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %sm_info.i56.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %15 = ptrtoint ptr %sm_info.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sm_info.i56.i.i, align 8
  %dcc_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %16, i32 0, i32 23
  %17 = ptrtoint ptr %dcc_info.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dcc_info.i.i, align 4
  br label %__struct_ptr.exit.i

if.then9.i.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %nm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 9
  %19 = ptrtoint ptr %nm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nm_info.i.i.i, align 8
  br label %__struct_ptr.exit.i

if.then19.i.i:                                    ; preds = %if.end5.if.then19.i.i_crit_edge, %if.end5.if.then19.i.i_crit_edge20
  %fault_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7
  br label %__struct_ptr.exit.i

if.then22.i.i:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %stat_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 90
  %21 = ptrtoint ptr %stat_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stat_info.i.i.i, align 8
  br label %__struct_ptr.exit.i

if.then26.i.i:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %cprc_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26
  br label %__struct_ptr.exit.i

if.then29.i.i:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %am.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76
  br label %__struct_ptr.exit.i

__struct_ptr.exit.i:                              ; preds = %if.then29.i.i, %if.then26.i.i, %if.then22.i.i, %if.then19.i.i, %if.then9.i.i, %if.then5.i.i, %if.then2.i.i, %if.then.i.i, %if.end5.__struct_ptr.exit.i_crit_edge, %if.end5.__struct_ptr.exit.i_crit_edge19
  %retval.0.i.i = phi ptr [ %12, %if.then.i.i ], [ %14, %if.then2.i.i ], [ %18, %if.then5.i.i ], [ %20, %if.then9.i.i ], [ %fault_info.i.i, %if.then19.i.i ], [ %22, %if.then22.i.i ], [ %cprc_info.i.i, %if.then26.i.i ], [ %am.i.i, %if.then29.i.i ], [ %sbi, %if.end5.__struct_ptr.exit.i_crit_edge ], [ %sbi, %if.end5.__struct_ptr.exit.i_crit_edge19 ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %__struct_ptr.exit.i.__sbi_store.exit_crit_edge, label %if.end.i

__struct_ptr.exit.i.__sbi_store.exit_crit_edge:   ; preds = %__struct_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end.i:                                         ; preds = %__struct_ptr.exit.i
  %23 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %a, align 4
  %call1.i = tail call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(15) @.str.31) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end42.i

if.then3.i:                                       ; preds = %if.end.i
  %call5.i = tail call ptr @strim(ptr noundef %buf) #10
  %call6.i = tail call i32 @strncmp(ptr noundef %call5.i, ptr noundef nonnull dereferenceable(4) @.str.47, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then3.i.if.end14.i_crit_edge, label %if.else.i

if.then3.i.if.end14.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.else.i:                                        ; preds = %if.then3.i
  %call9.i = tail call i32 @strncmp(ptr noundef %call5.i, ptr noundef nonnull dereferenceable(4) @.str.48, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.else.i.if.end14.i_crit_edge, label %if.else.i.__sbi_store.exit_crit_edge

if.else.i.__sbi_store.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i.if.end14.i_crit_edge, %if.then3.i.if.end14.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call5.i, i32 3
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %26)
  %cmp.i = icmp eq i8 %26, 33
  %incdec.ptr.i = getelementptr i8, ptr %call5.i, i32 4
  %spec.select.i = select i1 %cmp.i, ptr %incdec.ptr.i, ptr %add.ptr.i
  %call18.i = tail call i32 @strlen(ptr noundef %spec.select.i) #14
  %27 = add i32 %call18.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %27)
  %28 = icmp ult i32 %27, -7
  br i1 %28, label %if.end14.i.__sbi_store.exit_crit_edge, label %if.end24.i

if.end14.i.__sbi_store.exit_crit_edge:            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end24.i:                                       ; preds = %if.end14.i
  %29 = xor i1 %cmp.i, true
  %sb_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 3
  tail call void @down_write(ptr noundef %sb_lock.i) #10
  %call27.i = tail call i32 @f2fs_update_extension_list(ptr noundef %sbi, ptr noundef %spec.select.i, i1 noundef zeroext %tobool7.not.i, i1 noundef zeroext %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end24.i.out.thread.i_crit_edge

if.end24.i.out.thread.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread.i

if.end30.i:                                       ; preds = %if.end24.i
  %call31.i = tail call i32 @f2fs_commit_super(ptr noundef %sbi, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %30, label %if.then33.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %call36.i = tail call i32 @f2fs_update_extension_list(ptr noundef %sbi, ptr noundef %spec.select.i, i1 noundef zeroext %tobool7.not.i, i1 noundef zeroext %cmp.i) #10
  br label %out.thread.i

out.thread.i:                                     ; preds = %if.then33.i, %if.end24.i.out.thread.i_crit_edge
  %ret.0.ph.i = phi i32 [ %call31.i, %if.then33.i ], [ %call27.i, %if.end24.i.out.thread.i_crit_edge ]
  tail call void @up_write(ptr noundef %sb_lock.i) #10
  br label %__sbi_store.exit

30:                                               ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_write(ptr noundef %sb_lock.i) #10
  br label %__sbi_store.exit

if.end42.i:                                       ; preds = %if.end.i
  %call45.i = tail call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(19) @.str.35) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end88.i

if.then47.i:                                      ; preds = %if.end42.i
  %call49.i = tail call ptr @strim(ptr noundef %buf) #10
  %cprc_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %data.i, align 4, !annotation !449
  %call51.i = tail call i32 @strncmp(ptr noundef %call49.i, ptr noundef nonnull dereferenceable(4) @.str.36, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.then47.i.if.end60.i_crit_edge, label %if.else54.i

if.then47.i.if.end60.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.else54.i:                                      ; preds = %if.then47.i
  %call55.i = tail call i32 @strncmp(ptr noundef %call49.i, ptr noundef nonnull dereferenceable(4) @.str.37, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.else54.i.if.end60.i_crit_edge, label %if.else54.i.cleanup83.i_crit_edge

if.else54.i.cleanup83.i_crit_edge:                ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup83.i

if.else54.i.if.end60.i_crit_edge:                 ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.else54.i.if.end60.i_crit_edge, %if.then47.i.if.end60.i_crit_edge
  %class.0.i = phi i32 [ 8192, %if.then47.i.if.end60.i_crit_edge ], [ 16384, %if.else54.i.if.end60.i_crit_edge ]
  %add.ptr61.i = getelementptr i8, ptr %call49.i, i32 3
  %call.i.i = call i32 @_kstrtol(ptr noundef %add.ptr61.i, i32 noundef 10, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool63.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool63.not.i, label %if.end65.i, label %if.end60.i.cleanup83.i_crit_edge

if.end60.i.cleanup83.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup83.i

if.end65.i:                                       ; preds = %if.end60.i
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %33)
  %34 = icmp ugt i32 %33, 7
  br i1 %34, label %if.end65.i.cleanup83.i_crit_edge, label %if.end72.i

if.end65.i.cleanup83.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup83.i

if.end72.i:                                       ; preds = %if.end65.i
  %or.i = or i32 %33, %class.0.i
  %ckpt_thread_ioprio.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 1
  %35 = ptrtoint ptr %ckpt_thread_ioprio.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %ckpt_thread_ioprio.i, align 4
  %mount_opt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73
  %36 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mount_opt.i, align 8
  %and74.i = and i32 %37, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.end72.i.if.end82.i_crit_edge, label %if.then76.i

if.end72.i.if.end82.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.i

if.then76.i:                                      ; preds = %if.end72.i
  %38 = ptrtoint ptr %cprc_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cprc_info.i, align 4
  %call78.i = call i32 @set_task_ioprio(ptr noundef %39, i32 noundef %or.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %if.then76.i.if.end82.i_crit_edge, label %if.then76.i.cleanup83.i_crit_edge

if.then76.i.cleanup83.i_crit_edge:                ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup83.i

if.then76.i.if.end82.i_crit_edge:                 ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then76.i.if.end82.i_crit_edge, %if.end72.i.if.end82.i_crit_edge
  br label %cleanup83.i

cleanup83.i:                                      ; preds = %if.end82.i, %if.then76.i.cleanup83.i_crit_edge, %if.end65.i.cleanup83.i_crit_edge, %if.end60.i.cleanup83.i_crit_edge, %if.else54.i.cleanup83.i_crit_edge
  %retval.1.i = phi i32 [ %count, %if.end82.i ], [ -22, %if.else54.i.cleanup83.i_crit_edge ], [ %call.i.i, %if.end60.i.cleanup83.i_crit_edge ], [ -22, %if.end65.i.cleanup83.i_crit_edge ], [ %call78.i, %if.then76.i.cleanup83.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  br label %__sbi_store.exit

if.end88.i:                                       ; preds = %if.end42.i
  %offset.i = getelementptr inbounds %struct.f2fs_attr, ptr %a, i32 0, i32 4
  %40 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset.i, align 4
  %add.ptr89.i = getelementptr i8, ptr %retval.0.i.i, i32 %41
  %call90.i = tail call ptr @skip_spaces(ptr noundef %buf) #10
  %call.i528.i = call i32 @_kstrtoul(ptr noundef %call90.i, i32 noundef 0, ptr noundef nonnull %t.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i528.i)
  %cmp92.i = icmp slt i32 %call.i528.i, 0
  br i1 %cmp92.i, label %if.end88.i.__sbi_store.exit_crit_edge, label %if.end95.i

if.end88.i.__sbi_store.exit_crit_edge:            ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end95.i:                                       ; preds = %if.end88.i
  %42 = ptrtoint ptr %struct_type.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %struct_type.i, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %43, label %if.end95.i.if.end133.i_crit_edge [
    i32 7, label %land.lhs.true.i
    i32 6, label %land.lhs.true106.i
    i32 8, label %if.then114.i
  ]

if.end95.i.if.end133.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133.i

land.lhs.true.i:                                  ; preds = %if.end95.i
  %45 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %46)
  %cmp99.i = icmp ugt i32 %46, 262143
  br i1 %cmp99.i, label %land.lhs.true.i.__sbi_store.exit_crit_edge, label %land.lhs.true.i.if.end133.i_crit_edge

land.lhs.true.i.if.end133.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133.i

land.lhs.true.i.__sbi_store.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

land.lhs.true106.i:                               ; preds = %if.end95.i
  %47 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp107.i = icmp eq i32 %48, -1
  br i1 %cmp107.i, label %land.lhs.true106.i.__sbi_store.exit_crit_edge, label %land.lhs.true106.i.if.end133.i_crit_edge

land.lhs.true106.i.if.end133.i_crit_edge:         ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133.i

land.lhs.true106.i.__sbi_store.exit_crit_edge:    ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.then114.i:                                     ; preds = %if.end95.i
  %stat_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 110
  call void @_raw_spin_lock(ptr noundef %stat_lock.i) #10
  %49 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %t.i, align 4
  %user_block_count.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 60
  %51 = ptrtoint ptr %user_block_count.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %user_block_count.i, align 8
  %root_reserved_blocks.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 2
  %53 = ptrtoint ptr %root_reserved_blocks.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %root_reserved_blocks.i, align 8
  %blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %55 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %blocks_per_seg.i, align 4
  %sm_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %57 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sm_info.i.i, align 8
  %additional_reserved_segments.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %58, i32 0, i32 11
  %59 = ptrtoint ptr %additional_reserved_segments.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %additional_reserved_segments.i, align 4
  %mul.i = mul i32 %60, %56
  %61 = add i32 %54, %mul.i
  %sub117.i = sub i32 %52, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %sub117.i)
  %cmp118.i = icmp ugt i32 %50, %sub117.i
  br i1 %cmp118.i, label %if.then120.i, label %if.end122.i

if.then120.i:                                     ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %stat_lock.i) #10
  br label %__sbi_store.exit

if.end122.i:                                      ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %add.ptr89.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %50, ptr %add.ptr89.i, align 4
  %reserved_blocks.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 64
  %63 = ptrtoint ptr %reserved_blocks.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reserved_blocks.i, align 8
  %65 = ptrtoint ptr %user_block_count.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %user_block_count.i, align 8
  %total_valid_block_count.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 61
  %67 = ptrtoint ptr %total_valid_block_count.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %total_valid_block_count.i.i, align 4
  %sub125.i = sub i32 %66, %68
  %69 = call i32 @llvm.umin.i32(i32 %64, i32 %sub125.i) #10
  %current_reserved_blocks.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 65
  %70 = ptrtoint ptr %current_reserved_blocks.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %current_reserved_blocks.i, align 4
  call void @_raw_spin_unlock(ptr noundef %stat_lock.i) #10
  br label %__sbi_store.exit

if.end133.i:                                      ; preds = %land.lhs.true106.i.if.end133.i_crit_edge, %land.lhs.true.i.if.end133.i_crit_edge, %if.end95.i.if.end133.i_crit_edge
  %71 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %a, align 4
  %call136.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(20) @.str.49) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.i)
  %tobool137.not.i = icmp eq i32 %call136.i, 0
  br i1 %tobool137.not.i, label %if.then138.i, label %if.end153.i

if.then138.i:                                     ; preds = %if.end133.i
  %73 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %t.i, align 4
  %75 = add i32 %74, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %75)
  %76 = icmp ult i32 %75, -512
  br i1 %76, label %if.then138.i.__sbi_store.exit_crit_edge, label %if.end145.i

if.then138.i.__sbi_store.exit_crit_edge:          ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end145.i:                                      ; preds = %if.then138.i
  %discard_unit.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 15
  %77 = ptrtoint ptr %discard_unit.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %discard_unit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i.i = icmp eq i32 %78, 0
  br i1 %cmp.i.i, label %if.end148.i, label %if.end145.i.__sbi_store.exit_crit_edge

if.end145.i.__sbi_store.exit_crit_edge:           ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end148.i:                                      ; preds = %if.end145.i
  %79 = ptrtoint ptr %add.ptr89.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr89.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %80)
  %cmp149.i = icmp eq i32 %74, %80
  br i1 %cmp149.i, label %if.end148.i.__sbi_store.exit_crit_edge, label %if.end152.i

if.end148.i.__sbi_store.exit_crit_edge:           ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end152.i:                                      ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %add.ptr89.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %74, ptr %add.ptr89.i, align 4
  br label %__sbi_store.exit

if.end153.i:                                      ; preds = %if.end133.i
  %call156.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(22) @.str.50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i)
  %tobool157.not.i = icmp eq i32 %call156.i, 0
  br i1 %tobool157.not.i, label %if.then158.i, label %if.end153.i.if.end166.i_crit_edge

if.end153.i.if.end166.i_crit_edge:                ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166.i

if.then158.i:                                     ; preds = %if.end153.i
  %82 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp159.i = icmp eq i32 %83, 0
  br i1 %cmp159.i, label %if.then158.i.__sbi_store.exit_crit_edge, label %lor.lhs.false161.i

if.then158.i.__sbi_store.exit_crit_edge:          ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

lor.lhs.false161.i:                               ; preds = %if.then158.i
  %segs_per_sec.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %84 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %segs_per_sec.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp162.i = icmp ugt i32 %83, %85
  br i1 %cmp162.i, label %lor.lhs.false161.i.__sbi_store.exit_crit_edge, label %lor.lhs.false161.i.if.end166.i_crit_edge

lor.lhs.false161.i.if.end166.i_crit_edge:         ; preds = %lor.lhs.false161.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166.i

lor.lhs.false161.i.__sbi_store.exit_crit_edge:    ; preds = %lor.lhs.false161.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end166.i:                                      ; preds = %lor.lhs.false161.i.if.end166.i_crit_edge, %if.end153.i.if.end166.i_crit_edge
  %call169.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(14) @.str.51) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169.i)
  %tobool170.not.i = icmp eq i32 %call169.i, 0
  br i1 %tobool170.not.i, label %if.end166.i.__sbi_store.exit_crit_edge, label %if.end172.i

if.end166.i.__sbi_store.exit_crit_edge:           ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end172.i:                                      ; preds = %if.end166.i
  %call175.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(10) @.str.46) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175.i)
  %tobool176.not.i = icmp eq i32 %call175.i, 0
  br i1 %tobool176.not.i, label %if.then177.i, label %if.end200.i

if.then177.i:                                     ; preds = %if.end172.i
  %86 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %t.i, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %87, label %if.then177.i.__sbi_store.exit_crit_edge [
    i32 0, label %if.then180.i
    i32 1, label %if.then184.i
    i32 2, label %if.then194.i
  ]

if.then177.i.__sbi_store.exit_crit_edge:          ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.then180.i:                                     ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #12
  %gc_mode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 78
  %89 = ptrtoint ptr %gc_mode.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %gc_mode.i, align 4
  br label %__sbi_store.exit

if.then184.i:                                     ; preds = %if.then177.i
  %gc_mode185.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 78
  %90 = ptrtoint ptr %gc_mode185.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 4, ptr %gc_mode185.i, align 4
  %gc_thread.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 75
  %91 = ptrtoint ptr %gc_thread.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %gc_thread.i, align 8
  %tobool186.not.i = icmp eq ptr %92, null
  br i1 %tobool186.not.i, label %if.then184.i.__sbi_store.exit_crit_edge, label %if.then187.i

if.then184.i.__sbi_store.exit_crit_edge:          ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.then187.i:                                     ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #12
  %gc_wake.i = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %gc_wake.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %gc_wake.i, align 4
  %94 = ptrtoint ptr %gc_thread.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %gc_thread.i, align 8
  %gc_wait_queue_head.i = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %95, i32 0, i32 1
  call void @__wake_up(ptr noundef %gc_wait_queue_head.i, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  %sm_info.i.i529.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %96 = ptrtoint ptr %sm_info.i.i529.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sm_info.i.i529.i, align 8
  %dcc_info.i530.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %97, i32 0, i32 23
  %98 = ptrtoint ptr %dcc_info.i530.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dcc_info.i530.i, align 4
  %discard_wake.i.i = getelementptr inbounds %struct.discard_cmd_control, ptr %99, i32 0, i32 6
  %100 = ptrtoint ptr %discard_wake.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %discard_wake.i.i, align 4
  %discard_wait_queue.i.i = getelementptr inbounds %struct.discard_cmd_control, ptr %99, i32 0, i32 5
  call void @__wake_up(ptr noundef %discard_wait_queue.i.i, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  br label %__sbi_store.exit

if.then194.i:                                     ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #12
  %gc_mode195.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 78
  %101 = ptrtoint ptr %gc_mode195.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 5, ptr %gc_mode195.i, align 4
  br label %__sbi_store.exit

if.end200.i:                                      ; preds = %if.end172.i
  %call203.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(8) @.str.52) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203.i)
  %tobool204.not.i = icmp eq i32 %call203.i, 0
  br i1 %tobool204.not.i, label %if.then205.i, label %if.end228.i

if.then205.i:                                     ; preds = %if.end200.i
  %102 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %t.i, align 4
  %104 = zext i32 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %103, label %if.else223.i [
    i32 1, label %if.then208.i
    i32 2, label %if.then213.i
    i32 3, label %if.then218.i
  ]

if.then208.i:                                     ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #12
  %gc_mode209.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 78
  %105 = ptrtoint ptr %gc_mode209.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %gc_mode209.i, align 4
  br label %__sbi_store.exit

if.then213.i:                                     ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #12
  %gc_mode214.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 78
  %106 = ptrtoint ptr %gc_mode214.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 2, ptr %gc_mode214.i, align 4
  br label %__sbi_store.exit

if.then218.i:                                     ; preds = %if.then205.i
  %am.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76
  %107 = ptrtoint ptr %am.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %am.i, align 8, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool219.not.i = icmp eq i8 %108, 0
  br i1 %tobool219.not.i, label %if.then218.i.__sbi_store.exit_crit_edge, label %if.end221.i

if.then218.i.__sbi_store.exit_crit_edge:          ; preds = %if.then218.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end221.i:                                      ; preds = %if.then218.i
  call void @__sanitizer_cov_trace_pc() #12
  %gc_mode222.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 78
  %109 = ptrtoint ptr %gc_mode222.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 2, ptr %gc_mode222.i, align 4
  br label %__sbi_store.exit

if.else223.i:                                     ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #12
  %gc_mode224.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 78
  %110 = ptrtoint ptr %gc_mode224.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %gc_mode224.i, align 4
  br label %__sbi_store.exit

if.end228.i:                                      ; preds = %if.end200.i
  %call231.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(25) @.str.53) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231.i)
  %tobool232.not.i = icmp eq i32 %call231.i, 0
  br i1 %tobool232.not.i, label %if.then233.i, label %if.end237.i

if.then233.i:                                     ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #12
  %gc_urgent_high_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 80
  call void @_raw_spin_lock(ptr noundef %gc_urgent_high_lock.i) #10
  %111 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp234.i = icmp ne i32 %112, 0
  %gc_urgent_high_limited.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 81
  %frombool.i = zext i1 %cmp234.i to i8
  %113 = ptrtoint ptr %gc_urgent_high_limited.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %frombool.i, ptr %gc_urgent_high_limited.i, align 4
  %gc_urgent_high_remaining.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 82
  %114 = ptrtoint ptr %gc_urgent_high_remaining.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %112, ptr %gc_urgent_high_remaining.i, align 8
  call void @_raw_spin_unlock(ptr noundef %gc_urgent_high_lock.i) #10
  br label %__sbi_store.exit

if.end237.i:                                      ; preds = %if.end228.i
  %call240.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(14) @.str.54) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240.i)
  %tobool241.not.i = icmp eq i32 %call240.i, 0
  br i1 %tobool241.not.i, label %if.then242.i, label %if.end251.i

if.then242.i:                                     ; preds = %if.end237.i
  %115 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool243.i = icmp ne i32 %116, 0
  %iostat_enable.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 151
  %frombool246.i = zext i1 %tobool243.i to i8
  %117 = ptrtoint ptr %iostat_enable.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %frombool246.i, ptr %iostat_enable.i, align 8
  br i1 %tobool243.i, label %if.then242.i.__sbi_store.exit_crit_edge, label %if.then249.i

if.then242.i.__sbi_store.exit_crit_edge:          ; preds = %if.then242.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.then249.i:                                     ; preds = %if.then242.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @f2fs_reset_iostat(ptr noundef %sbi) #10
  br label %__sbi_store.exit

if.end251.i:                                      ; preds = %if.end237.i
  %call254.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(17) @.str.55) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254.i)
  %tobool255.not.i = icmp eq i32 %call254.i, 0
  br i1 %tobool255.not.i, label %if.then256.i, label %if.end265.i

if.then256.i:                                     ; preds = %if.end251.i
  %118 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %t.i, align 4
  %120 = add i32 %119, -8640001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8639901, i32 %120)
  %121 = icmp ult i32 %120, -8639901
  br i1 %121, label %if.then256.i.__sbi_store.exit_crit_edge, label %if.end263.i

if.then256.i.__sbi_store.exit_crit_edge:          ; preds = %if.then256.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end263.i:                                      ; preds = %if.then256.i
  call void @__sanitizer_cov_trace_pc() #12
  %iostat_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 148
  call void @_raw_spin_lock(ptr noundef %iostat_lock.i) #10
  %122 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %t.i, align 4
  %iostat_period_ms.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 153
  %124 = ptrtoint ptr %iostat_period_ms.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %iostat_period_ms.i, align 8
  call void @_raw_spin_unlock(ptr noundef %iostat_lock.i) #10
  br label %__sbi_store.exit

if.end265.i:                                      ; preds = %if.end251.i
  %call268.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(20) @.str.39) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268.i)
  %tobool269.not.i = icmp eq i32 %call268.i, 0
  br i1 %tobool269.not.i, label %if.end265.i.if.then275.i_crit_edge, label %lor.lhs.false270.i

if.end265.i.if.then275.i_crit_edge:               ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then275.i

lor.lhs.false270.i:                               ; preds = %if.end265.i
  %call273.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(18) @.str.41) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273.i)
  %tobool274.not.i = icmp eq i32 %call273.i, 0
  br i1 %tobool274.not.i, label %lor.lhs.false270.i.if.then275.i_crit_edge, label %if.end280.i

lor.lhs.false270.i.if.then275.i_crit_edge:        ; preds = %lor.lhs.false270.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then275.i

if.then275.i:                                     ; preds = %lor.lhs.false270.i.if.then275.i_crit_edge, %if.end265.i.if.then275.i_crit_edge
  %125 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp276.not.i = icmp eq i32 %126, 0
  br i1 %cmp276.not.i, label %if.end279.i, label %if.then275.i.__sbi_store.exit_crit_edge

if.then275.i.__sbi_store.exit_crit_edge:          ; preds = %if.then275.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end279.i:                                      ; preds = %if.then275.i
  call void @__sanitizer_cov_trace_pc() #12
  %compr_written_block.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 141
  %127 = call ptr @memset(ptr %compr_written_block.i, i32 0, i32 16)
  br label %__sbi_store.exit

if.end280.i:                                      ; preds = %lor.lhs.false270.i
  %call283.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(16) @.str.42) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call283.i)
  %tobool284.not.i = icmp eq i32 %call283.i, 0
  br i1 %tobool284.not.i, label %if.then285.i, label %if.end290.i

if.then285.i:                                     ; preds = %if.end280.i
  %128 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp286.not.i = icmp eq i32 %129, 0
  br i1 %cmp286.not.i, label %if.end289.i, label %if.then285.i.__sbi_store.exit_crit_edge

if.then285.i.__sbi_store.exit_crit_edge:          ; preds = %if.then285.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end289.i:                                      ; preds = %if.then285.i
  call void @__sanitizer_cov_trace_pc() #12
  %compr_new_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 143
  %130 = ptrtoint ptr %compr_new_inode.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %compr_new_inode.i, align 8
  br label %__sbi_store.exit

if.end290.i:                                      ; preds = %if.end280.i
  %call293.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(21) @.str.56) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call293.i)
  %tobool294.not.i = icmp eq i32 %call293.i, 0
  br i1 %tobool294.not.i, label %if.then295.i, label %if.end301.i

if.then295.i:                                     ; preds = %if.end290.i
  %131 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %132)
  %cmp296.i = icmp ugt i32 %132, 100
  br i1 %cmp296.i, label %if.then295.i.__sbi_store.exit_crit_edge, label %if.end299.i

if.then295.i.__sbi_store.exit_crit_edge:          ; preds = %if.then295.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end299.i:                                      ; preds = %if.then295.i
  call void @__sanitizer_cov_trace_pc() #12
  %candidate_ratio.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 4
  %133 = ptrtoint ptr %candidate_ratio.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %candidate_ratio.i, align 8
  br label %__sbi_store.exit

if.end301.i:                                      ; preds = %if.end290.i
  %call304.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(16) @.str.57) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304.i)
  %tobool305.not.i = icmp eq i32 %call304.i, 0
  br i1 %tobool305.not.i, label %if.then306.i, label %if.end312.i

if.then306.i:                                     ; preds = %if.end301.i
  %134 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %135)
  %cmp307.i = icmp ugt i32 %135, 100
  br i1 %cmp307.i, label %if.then306.i.__sbi_store.exit_crit_edge, label %if.end310.i

if.then306.i.__sbi_store.exit_crit_edge:          ; preds = %if.then306.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end310.i:                                      ; preds = %if.then306.i
  call void @__sanitizer_cov_trace_pc() #12
  %age_weight.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 6
  %136 = ptrtoint ptr %age_weight.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %age_weight.i, align 8
  br label %__sbi_store.exit

if.end312.i:                                      ; preds = %if.end301.i
  %call315.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(16) @.str.44) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315.i)
  %tobool316.not.i = icmp eq i32 %call315.i, 0
  br i1 %tobool316.not.i, label %if.then317.i, label %if.end323.i

if.then317.i:                                     ; preds = %if.end312.i
  %137 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %138)
  %cmp318.i = icmp ult i32 %138, 6
  br i1 %cmp318.i, label %if.then320.i, label %if.then317.i.__sbi_store.exit_crit_edge

if.then317.i.__sbi_store.exit_crit_edge:          ; preds = %if.then317.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.then320.i:                                     ; preds = %if.then317.i
  call void @__sanitizer_cov_trace_pc() #12
  %gc_segment_mode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 134
  %139 = ptrtoint ptr %gc_segment_mode.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %gc_segment_mode.i, align 4
  br label %__sbi_store.exit

if.end323.i:                                      ; preds = %if.end312.i
  %call326.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(22) @.str.45) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call326.i)
  %tobool327.not.i = icmp eq i32 %call326.i, 0
  br i1 %tobool327.not.i, label %if.then328.i, label %if.end334.i

if.then328.i:                                     ; preds = %if.end323.i
  %140 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp329.not.i = icmp eq i32 %141, 0
  br i1 %cmp329.not.i, label %if.end332.i, label %if.then328.i.__sbi_store.exit_crit_edge

if.then328.i.__sbi_store.exit_crit_edge:          ; preds = %if.then328.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.end332.i:                                      ; preds = %if.then328.i
  call void @__sanitizer_cov_trace_pc() #12
  %gc_segment_mode333.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 134
  %142 = ptrtoint ptr %gc_segment_mode333.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %gc_segment_mode333.i, align 4
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 135, i32 %143
  %144 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %arrayidx.i, align 4
  br label %__sbi_store.exit

if.end334.i:                                      ; preds = %if.end323.i
  %call337.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(16) @.str.58) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call337.i)
  %tobool338.not.i = icmp eq i32 %call337.i, 0
  br i1 %tobool338.not.i, label %if.then339.i, label %if.end348.i

if.then339.i:                                     ; preds = %if.end334.i
  %145 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %t.i, align 4
  %147 = add i32 %146, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %147)
  %148 = icmp ult i32 %147, 255
  br i1 %148, label %if.then345.i, label %if.then339.i.__sbi_store.exit_crit_edge

if.then339.i.__sbi_store.exit_crit_edge:          ; preds = %if.then339.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.then345.i:                                     ; preds = %if.then339.i
  call void @__sanitizer_cov_trace_pc() #12
  %seq_file_ra_mul.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 136
  %149 = ptrtoint ptr %seq_file_ra_mul.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %146, ptr %seq_file_ra_mul.i, align 8
  br label %__sbi_store.exit

if.end348.i:                                      ; preds = %if.end334.i
  %call351.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(19) @.str.59) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call351.i)
  %tobool352.not.i = icmp eq i32 %call351.i, 0
  br i1 %tobool352.not.i, label %if.then353.i, label %if.end362.i

if.then353.i:                                     ; preds = %if.end348.i
  %150 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %t.i, align 4
  %152 = add i32 %151, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %152)
  %153 = icmp ult i32 %152, 512
  br i1 %153, label %if.then359.i, label %if.then353.i.__sbi_store.exit_crit_edge

if.then353.i.__sbi_store.exit_crit_edge:          ; preds = %if.then353.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.then359.i:                                     ; preds = %if.then353.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_fragment_chunk.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 137
  %154 = ptrtoint ptr %max_fragment_chunk.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %151, ptr %max_fragment_chunk.i, align 4
  br label %__sbi_store.exit

if.end362.i:                                      ; preds = %if.end348.i
  %call365.i = call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(18) @.str.60) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call365.i)
  %tobool366.not.i = icmp eq i32 %call365.i, 0
  %155 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %t.i, align 4
  br i1 %tobool366.not.i, label %if.then367.i, label %if.end376.i

if.then367.i:                                     ; preds = %if.end362.i
  %157 = add i32 %156, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %157)
  %158 = icmp ult i32 %157, 512
  br i1 %158, label %if.then373.i, label %if.then367.i.__sbi_store.exit_crit_edge

if.then367.i.__sbi_store.exit_crit_edge:          ; preds = %if.then367.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sbi_store.exit

if.then373.i:                                     ; preds = %if.then367.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_fragment_hole.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 138
  %159 = ptrtoint ptr %max_fragment_hole.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %156, ptr %max_fragment_hole.i, align 8
  br label %__sbi_store.exit

if.end376.i:                                      ; preds = %if.end362.i
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %add.ptr89.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %156, ptr %add.ptr89.i, align 4
  br label %__sbi_store.exit

__sbi_store.exit:                                 ; preds = %if.end376.i, %if.then373.i, %if.then367.i.__sbi_store.exit_crit_edge, %if.then359.i, %if.then353.i.__sbi_store.exit_crit_edge, %if.then345.i, %if.then339.i.__sbi_store.exit_crit_edge, %if.end332.i, %if.then328.i.__sbi_store.exit_crit_edge, %if.then320.i, %if.then317.i.__sbi_store.exit_crit_edge, %if.end310.i, %if.then306.i.__sbi_store.exit_crit_edge, %if.end299.i, %if.then295.i.__sbi_store.exit_crit_edge, %if.end289.i, %if.then285.i.__sbi_store.exit_crit_edge, %if.end279.i, %if.then275.i.__sbi_store.exit_crit_edge, %if.end263.i, %if.then256.i.__sbi_store.exit_crit_edge, %if.then249.i, %if.then242.i.__sbi_store.exit_crit_edge, %if.then233.i, %if.else223.i, %if.end221.i, %if.then218.i.__sbi_store.exit_crit_edge, %if.then213.i, %if.then208.i, %if.then194.i, %if.then187.i, %if.then184.i.__sbi_store.exit_crit_edge, %if.then180.i, %if.then177.i.__sbi_store.exit_crit_edge, %if.end166.i.__sbi_store.exit_crit_edge, %lor.lhs.false161.i.__sbi_store.exit_crit_edge, %if.then158.i.__sbi_store.exit_crit_edge, %if.end152.i, %if.end148.i.__sbi_store.exit_crit_edge, %if.end145.i.__sbi_store.exit_crit_edge, %if.then138.i.__sbi_store.exit_crit_edge, %if.end122.i, %if.then120.i, %land.lhs.true106.i.__sbi_store.exit_crit_edge, %land.lhs.true.i.__sbi_store.exit_crit_edge, %if.end88.i.__sbi_store.exit_crit_edge, %cleanup83.i, %30, %out.thread.i, %if.end14.i.__sbi_store.exit_crit_edge, %if.else.i.__sbi_store.exit_crit_edge, %__struct_ptr.exit.i.__sbi_store.exit_crit_edge, %if.end5.__sbi_store.exit_crit_edge
  %retval.2.i = phi i32 [ -22, %if.then120.i ], [ %count, %if.end122.i ], [ %count, %if.end376.i ], [ %count, %if.then373.i ], [ %count, %if.then359.i ], [ %count, %if.then345.i ], [ %count, %if.end332.i ], [ %count, %if.then320.i ], [ %count, %if.end310.i ], [ %count, %if.end299.i ], [ %count, %if.end289.i ], [ %count, %if.end279.i ], [ %count, %if.end263.i ], [ %count, %if.then233.i ], [ %count, %if.end152.i ], [ %retval.1.i, %cleanup83.i ], [ -22, %__struct_ptr.exit.i.__sbi_store.exit_crit_edge ], [ -22, %if.else.i.__sbi_store.exit_crit_edge ], [ -22, %if.end14.i.__sbi_store.exit_crit_edge ], [ %call.i528.i, %if.end88.i.__sbi_store.exit_crit_edge ], [ -22, %land.lhs.true.i.__sbi_store.exit_crit_edge ], [ -22, %land.lhs.true106.i.__sbi_store.exit_crit_edge ], [ -22, %if.then138.i.__sbi_store.exit_crit_edge ], [ -22, %if.end145.i.__sbi_store.exit_crit_edge ], [ %count, %if.end148.i.__sbi_store.exit_crit_edge ], [ -22, %lor.lhs.false161.i.__sbi_store.exit_crit_edge ], [ -22, %if.then158.i.__sbi_store.exit_crit_edge ], [ -22, %if.end166.i.__sbi_store.exit_crit_edge ], [ -22, %if.then177.i.__sbi_store.exit_crit_edge ], [ %count, %if.then194.i ], [ %count, %if.then187.i ], [ %count, %if.then184.i.__sbi_store.exit_crit_edge ], [ %count, %if.then180.i ], [ -22, %if.then218.i.__sbi_store.exit_crit_edge ], [ %count, %if.then213.i ], [ %count, %if.else223.i ], [ %count, %if.end221.i ], [ %count, %if.then208.i ], [ %count, %if.then249.i ], [ %count, %if.then242.i.__sbi_store.exit_crit_edge ], [ -22, %if.then256.i.__sbi_store.exit_crit_edge ], [ -22, %if.then275.i.__sbi_store.exit_crit_edge ], [ -22, %if.then285.i.__sbi_store.exit_crit_edge ], [ -22, %if.then295.i.__sbi_store.exit_crit_edge ], [ -22, %if.then306.i.__sbi_store.exit_crit_edge ], [ -22, %if.then317.i.__sbi_store.exit_crit_edge ], [ -22, %if.then328.i.__sbi_store.exit_crit_edge ], [ -22, %if.then339.i.__sbi_store.exit_crit_edge ], [ -22, %if.then353.i.__sbi_store.exit_crit_edge ], [ -22, %if.then367.i.__sbi_store.exit_crit_edge ], [ %count, %30 ], [ %ret.0.ph.i, %out.thread.i ], [ -22, %if.end5.__sbi_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #10
  br i1 %6, label %if.then8, label %__sbi_store.exit.cleanup_crit_edge

__sbi_store.exit.cleanup_crit_edge:               ; preds = %__sbi_store.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %__sbi_store.exit
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %sbi, align 8
  %s_umount10 = getelementptr inbounds %struct.super_block, ptr %162, i32 0, i32 14
  call void @up_read(ptr noundef %s_umount10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %__sbi_store.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then.cleanup_crit_edge ], [ %retval.2.i, %if.then8 ], [ %retval.2.i, %__sbi_store.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_update_extension_list(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_commit_super(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_task_ioprio(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_reset_iostat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @main_blkaddr_show(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %sbi, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %0 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_info.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %main_blkaddr = getelementptr inbounds %struct.f2fs_sm_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %main_blkaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %main_blkaddr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %4 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %raw_super.i, align 8
  %main_blkaddr3 = getelementptr inbounds %struct.f2fs_super_block, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %main_blkaddr3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %main_blkaddr3, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %8, %cond.false ]
  %conv = zext i32 %cond to i64
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.40, i64 noundef %conv) #10
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pending_discard_show(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %sbi, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %0 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_info.i, align 8
  %dcc_info = getelementptr inbounds %struct.f2fs_sm_info, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %dcc_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcc_info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %discard_cmd_cnt = getelementptr inbounds %struct.discard_cmd_control, ptr %3, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %discard_cmd_cnt, i32 noundef 4) #10
  %4 = ptrtoint ptr %discard_cmd_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %discard_cmd_cnt, align 4
  %conv = sext i32 %5 to i64
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i64 noundef %conv)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dirty_segments_show(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %sbi, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %0 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_info.i.i.i, align 8
  %dirty_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dirty_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dirty_info.i.i, align 4
  %nr_dirty.i = getelementptr inbounds %struct.dirty_seglist_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %nr_dirty.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_dirty.i, align 4
  %arrayidx3.i = getelementptr %struct.dirty_seglist_info, ptr %3, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3.i, align 4
  %add.i = add i32 %7, %5
  %arrayidx6.i = getelementptr %struct.dirty_seglist_info, ptr %3, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6.i, align 4
  %add7.i = add i32 %add.i, %9
  %arrayidx10.i = getelementptr %struct.dirty_seglist_info, ptr %3, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10.i, align 4
  %add11.i = add i32 %add7.i, %11
  %arrayidx14.i = getelementptr %struct.dirty_seglist_info, ptr %3, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14.i, align 4
  %add15.i = add i32 %add11.i, %13
  %arrayidx18.i = getelementptr %struct.dirty_seglist_info, ptr %3, i32 0, i32 4, i32 5
  %14 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx18.i, align 4
  %add19.i = add i32 %add15.i, %15
  %conv = zext i32 %add19.i to i64
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i64 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @free_segments_show(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %sbi, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %0 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_info.i.i.i, align 8
  %free_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %free_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free_info.i.i, align 4
  %free_segments.i = getelementptr inbounds %struct.free_segmap_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %free_segments.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %free_segments.i, align 4
  %conv = zext i32 %5 to i64
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i64 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovp_segments_show(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %sbi, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %0 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_info.i.i, align 8
  %ovp_segments.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ovp_segments.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ovp_segments.i, align 4
  %conv = sext i32 %3 to i64
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i64 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unusable_show(ptr nocapture noundef readnone %a, ptr noundef %sbi, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73
  %0 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mount_opt, align 8
  %and = and i32 %1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %unusable_block_count = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 66
  %2 = ptrtoint ptr %unusable_block_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unusable_block_count, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @f2fs_get_unusable_blocks(ptr noundef %sbi) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %unusable.0 = phi i32 [ %3, %if.then ], [ %call, %if.else ]
  %conv = zext i32 %unusable.0 to i64
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i64 noundef %conv)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_get_unusable_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lifetime_write_kbytes_show(ptr nocapture noundef readnone %a, ptr noundef %sbi, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %kbytes_written = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 128
  %0 = ptrtoint ptr %kbytes_written to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %kbytes_written, align 8
  %call = tail call i64 @f2fs_get_sectors_written(ptr noundef %sbi) #10
  %sectors_written_start = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 127
  %2 = ptrtoint ptr %sectors_written_start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sectors_written_start, align 8
  %sub = sub i64 %call, %3
  %shr = lshr i64 %sub, 1
  %add = add i64 %shr, %1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i64 noundef %add)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @f2fs_get_sectors_written(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @features_show(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %sbi, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %0 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw_super.i, align 8
  %feature.i = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %feature.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %feature.i, align 1
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %5 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %raw_super.i, align 8
  %feature.i230 = getelementptr inbounds %struct.f2fs_super_block, ptr %6, i32 0, i32 34
  %7 = ptrtoint ptr %feature.i230 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %feature.i230, align 1
  %9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.0
  %sub5 = sub i32 4096, %len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool6.not = icmp eq i32 %len.0, 0
  %cond = select i1 %tobool6.not, ptr @.str.99, ptr @.str.98
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub5, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond, ptr noundef nonnull @.str.100) #10
  %add8 = add i32 %call7, %len.0
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %len.1 = phi i32 [ %add8, %if.then4 ], [ %len.0, %if.end.if.end9_crit_edge ]
  %10 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %raw_super.i, align 8
  %feature.i234 = getelementptr inbounds %struct.f2fs_super_block, ptr %11, i32 0, i32 34
  %12 = ptrtoint ptr %feature.i234 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %feature.i234, align 1
  %14 = and i32 %13, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %if.end9.if.end19_crit_edge, label %if.then12

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %len.1
  %sub14 = sub i32 4096, %len.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %tobool15.not = icmp eq i32 %len.1, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.99, ptr @.str.98
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond16, ptr noundef nonnull @.str.16) #10
  %add18 = add i32 %call17, %len.1
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.end9.if.end19_crit_edge
  %len.2 = phi i32 [ %add18, %if.then12 ], [ %len.1, %if.end9.if.end19_crit_edge ]
  %15 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %raw_super.i, align 8
  %feature.i238 = getelementptr inbounds %struct.f2fs_super_block, ptr %16, i32 0, i32 34
  %17 = ptrtoint ptr %feature.i238 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %feature.i238, align 1
  %19 = and i32 %18, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %if.end19.if.end29_crit_edge, label %if.then22

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr23 = getelementptr i8, ptr %buf, i32 %len.2
  %sub24 = sub i32 4096, %len.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.2)
  %tobool25.not = icmp eq i32 %len.2, 0
  %cond26 = select i1 %tobool25.not, ptr @.str.99, ptr @.str.98
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond26, ptr noundef nonnull @.str.101) #10
  %add28 = add i32 %call27, %len.2
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.end19.if.end29_crit_edge
  %len.3 = phi i32 [ %add28, %if.then22 ], [ %len.2, %if.end19.if.end29_crit_edge ]
  %20 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %raw_super.i, align 8
  %feature.i242 = getelementptr inbounds %struct.f2fs_super_block, ptr %21, i32 0, i32 34
  %22 = ptrtoint ptr %feature.i242 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %feature.i242, align 1
  %24 = and i32 %23, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool31.not = icmp eq i32 %24, 0
  br i1 %tobool31.not, label %if.end29.if.end39_crit_edge, label %if.then32

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr33 = getelementptr i8, ptr %buf, i32 %len.3
  %sub34 = sub i32 4096, %len.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.3)
  %tobool35.not = icmp eq i32 %len.3, 0
  %cond36 = select i1 %tobool35.not, ptr @.str.99, ptr @.str.98
  %call37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond36, ptr noundef nonnull @.str.18) #10
  %add38 = add i32 %call37, %len.3
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.end29.if.end39_crit_edge
  %len.4 = phi i32 [ %add38, %if.then32 ], [ %len.3, %if.end29.if.end39_crit_edge ]
  %25 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %raw_super.i, align 8
  %feature.i246 = getelementptr inbounds %struct.f2fs_super_block, ptr %26, i32 0, i32 34
  %27 = ptrtoint ptr %feature.i246 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %feature.i246, align 1
  %29 = and i32 %28, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool41.not = icmp eq i32 %29, 0
  br i1 %tobool41.not, label %if.end39.if.end49_crit_edge, label %if.then42

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr43 = getelementptr i8, ptr %buf, i32 %len.4
  %sub44 = sub i32 4096, %len.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.4)
  %tobool45.not = icmp eq i32 %len.4, 0
  %cond46 = select i1 %tobool45.not, ptr @.str.99, ptr @.str.98
  %call47 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr43, i32 noundef %sub44, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond46, ptr noundef nonnull @.str.19) #10
  %add48 = add i32 %call47, %len.4
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %if.end39.if.end49_crit_edge
  %len.5 = phi i32 [ %add48, %if.then42 ], [ %len.4, %if.end39.if.end49_crit_edge ]
  %30 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %raw_super.i, align 8
  %feature.i250 = getelementptr inbounds %struct.f2fs_super_block, ptr %31, i32 0, i32 34
  %32 = ptrtoint ptr %feature.i250 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %feature.i250, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool51.not = icmp sgt i32 %33, -1
  br i1 %tobool51.not, label %if.end49.if.end59_crit_edge, label %if.then52

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr53 = getelementptr i8, ptr %buf, i32 %len.5
  %sub54 = sub i32 4096, %len.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.5)
  %tobool55.not = icmp eq i32 %len.5, 0
  %cond56 = select i1 %tobool55.not, ptr @.str.99, ptr @.str.98
  %call57 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond56, ptr noundef nonnull @.str.20) #10
  %add58 = add i32 %call57, %len.5
  br label %if.end59

if.end59:                                         ; preds = %if.then52, %if.end49.if.end59_crit_edge
  %len.6 = phi i32 [ %add58, %if.then52 ], [ %len.5, %if.end49.if.end59_crit_edge ]
  %34 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %raw_super.i, align 8
  %feature.i252 = getelementptr inbounds %struct.f2fs_super_block, ptr %35, i32 0, i32 34
  %36 = ptrtoint ptr %feature.i252 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %feature.i252, align 1
  %38 = and i32 %37, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool61.not = icmp eq i32 %38, 0
  br i1 %tobool61.not, label %if.end59.if.end69_crit_edge, label %if.then62

if.end59.if.end69_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr63 = getelementptr i8, ptr %buf, i32 %len.6
  %sub64 = sub i32 4096, %len.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.6)
  %tobool65.not = icmp eq i32 %len.6, 0
  %cond66 = select i1 %tobool65.not, ptr @.str.99, ptr @.str.98
  %call67 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr63, i32 noundef %sub64, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond66, ptr noundef nonnull @.str.21) #10
  %add68 = add i32 %call67, %len.6
  br label %if.end69

if.end69:                                         ; preds = %if.then62, %if.end59.if.end69_crit_edge
  %len.7 = phi i32 [ %add68, %if.then62 ], [ %len.6, %if.end59.if.end69_crit_edge ]
  %39 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %raw_super.i, align 8
  %feature.i256 = getelementptr inbounds %struct.f2fs_super_block, ptr %40, i32 0, i32 34
  %41 = ptrtoint ptr %feature.i256 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %feature.i256, align 1
  %43 = and i32 %42, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool71.not = icmp eq i32 %43, 0
  br i1 %tobool71.not, label %if.end69.if.end79_crit_edge, label %if.then72

if.end69.if.end79_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr73 = getelementptr i8, ptr %buf, i32 %len.7
  %sub74 = sub i32 4096, %len.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.7)
  %tobool75.not = icmp eq i32 %len.7, 0
  %cond76 = select i1 %tobool75.not, ptr @.str.99, ptr @.str.98
  %call77 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr73, i32 noundef %sub74, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond76, ptr noundef nonnull @.str.22) #10
  %add78 = add i32 %call77, %len.7
  br label %if.end79

if.end79:                                         ; preds = %if.then72, %if.end69.if.end79_crit_edge
  %len.8 = phi i32 [ %add78, %if.then72 ], [ %len.7, %if.end69.if.end79_crit_edge ]
  %44 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %raw_super.i, align 8
  %feature.i260 = getelementptr inbounds %struct.f2fs_super_block, ptr %45, i32 0, i32 34
  %46 = ptrtoint ptr %feature.i260 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %feature.i260, align 1
  %48 = and i32 %47, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool81.not = icmp eq i32 %48, 0
  br i1 %tobool81.not, label %if.end79.if.end89_crit_edge, label %if.then82

if.end79.if.end89_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr83 = getelementptr i8, ptr %buf, i32 %len.8
  %sub84 = sub i32 4096, %len.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.8)
  %tobool85.not = icmp eq i32 %len.8, 0
  %cond86 = select i1 %tobool85.not, ptr @.str.99, ptr @.str.98
  %call87 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr83, i32 noundef %sub84, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond86, ptr noundef nonnull @.str.23) #10
  %add88 = add i32 %call87, %len.8
  br label %if.end89

if.end89:                                         ; preds = %if.then82, %if.end79.if.end89_crit_edge
  %len.9 = phi i32 [ %add88, %if.then82 ], [ %len.8, %if.end79.if.end89_crit_edge ]
  %49 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %raw_super.i, align 8
  %feature.i264 = getelementptr inbounds %struct.f2fs_super_block, ptr %50, i32 0, i32 34
  %51 = ptrtoint ptr %feature.i264 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %feature.i264, align 1
  %53 = and i32 %52, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool91.not = icmp eq i32 %53, 0
  br i1 %tobool91.not, label %if.end89.if.end99_crit_edge, label %if.then92

if.end89.if.end99_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr93 = getelementptr i8, ptr %buf, i32 %len.9
  %sub94 = sub i32 4096, %len.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.9)
  %tobool95.not = icmp eq i32 %len.9, 0
  %cond96 = select i1 %tobool95.not, ptr @.str.99, ptr @.str.98
  %call97 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr93, i32 noundef %sub94, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond96, ptr noundef nonnull @.str.24) #10
  %add98 = add i32 %call97, %len.9
  br label %if.end99

if.end99:                                         ; preds = %if.then92, %if.end89.if.end99_crit_edge
  %len.10 = phi i32 [ %add98, %if.then92 ], [ %len.9, %if.end89.if.end99_crit_edge ]
  %54 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %raw_super.i, align 8
  %feature.i268 = getelementptr inbounds %struct.f2fs_super_block, ptr %55, i32 0, i32 34
  %56 = ptrtoint ptr %feature.i268 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %feature.i268, align 1
  %58 = and i32 %57, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool101.not = icmp eq i32 %58, 0
  br i1 %tobool101.not, label %if.end99.if.end109_crit_edge, label %if.then102

if.end99.if.end109_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr103 = getelementptr i8, ptr %buf, i32 %len.10
  %sub104 = sub i32 4096, %len.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.10)
  %tobool105.not = icmp eq i32 %len.10, 0
  %cond106 = select i1 %tobool105.not, ptr @.str.99, ptr @.str.98
  %call107 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr103, i32 noundef %sub104, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond106, ptr noundef nonnull @.str.25) #10
  %add108 = add i32 %call107, %len.10
  br label %if.end109

if.end109:                                        ; preds = %if.then102, %if.end99.if.end109_crit_edge
  %len.11 = phi i32 [ %add108, %if.then102 ], [ %len.10, %if.end99.if.end109_crit_edge ]
  %59 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %raw_super.i, align 8
  %feature.i272 = getelementptr inbounds %struct.f2fs_super_block, ptr %60, i32 0, i32 34
  %61 = ptrtoint ptr %feature.i272 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %feature.i272, align 1
  %63 = and i32 %62, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool111.not = icmp eq i32 %63, 0
  br i1 %tobool111.not, label %if.end109.if.end119_crit_edge, label %if.then112

if.end109.if.end119_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr113 = getelementptr i8, ptr %buf, i32 %len.11
  %sub114 = sub i32 4096, %len.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.11)
  %tobool115.not = icmp eq i32 %len.11, 0
  %cond116 = select i1 %tobool115.not, ptr @.str.99, ptr @.str.98
  %call117 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113, i32 noundef %sub114, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond116, ptr noundef nonnull @.str.26) #10
  %add118 = add i32 %call117, %len.11
  br label %if.end119

if.end119:                                        ; preds = %if.then112, %if.end109.if.end119_crit_edge
  %len.12 = phi i32 [ %add118, %if.then112 ], [ %len.11, %if.end109.if.end119_crit_edge ]
  %64 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %raw_super.i, align 8
  %feature.i276 = getelementptr inbounds %struct.f2fs_super_block, ptr %65, i32 0, i32 34
  %66 = ptrtoint ptr %feature.i276 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %feature.i276, align 1
  %68 = and i32 %67, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool121.not = icmp eq i32 %68, 0
  br i1 %tobool121.not, label %if.end119.if.end129_crit_edge, label %if.then122

if.end119.if.end129_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr123 = getelementptr i8, ptr %buf, i32 %len.12
  %sub124 = sub i32 4096, %len.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.12)
  %tobool125.not = icmp eq i32 %len.12, 0
  %cond126 = select i1 %tobool125.not, ptr @.str.99, ptr @.str.98
  %call127 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr123, i32 noundef %sub124, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond126, ptr noundef nonnull @.str.27) #10
  %add128 = add i32 %call127, %len.12
  br label %if.end129

if.end129:                                        ; preds = %if.then122, %if.end119.if.end129_crit_edge
  %len.13 = phi i32 [ %add128, %if.then122 ], [ %len.12, %if.end119.if.end129_crit_edge ]
  %add.ptr130 = getelementptr i8, ptr %buf, i32 %len.13
  %sub131 = sub i32 4096, %len.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.13)
  %tobool132.not = icmp eq i32 %len.13, 0
  %cond133 = select i1 %tobool132.not, ptr @.str.99, ptr @.str.98
  %call134 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr130, i32 noundef %sub131, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond133, ptr noundef nonnull @.str.28) #10
  %add135 = add i32 %call134, %len.13
  %add.ptr136 = getelementptr i8, ptr %buf, i32 %add135
  %sub137 = sub i32 4096, %add135
  %call138 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr136, i32 noundef %sub137, ptr noundef nonnull @.str.102) #10
  %add139 = add i32 %add135, %call138
  ret i32 %add139
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @current_reserved_blocks_show(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %sbi, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %current_reserved_blocks = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 65
  %0 = ptrtoint ptr %current_reserved_blocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_reserved_blocks, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.43, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encoding_show(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %sbi, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %0 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw_super.i, align 8
  %feature.i = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %feature.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %feature.i, align 1
  %4 = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sbi, align 8
  %s_encoding = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %s_encoding to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_encoding, align 64
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %shr = lshr i32 %10, 16
  %and = and i32 %shr, 255
  %shr4 = lshr i32 %10, 8
  %and5 = and i32 %shr4, 255
  %and8 = and i32 %10, 255
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.106, i32 noundef %and, i32 noundef %and5, i32 noundef %and8) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = call ptr @memcpy(ptr %buf, ptr @.str.107, i32 7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call9, %if.then ], [ 6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mounted_time_sec_show(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %sbi, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %0 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_info.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mounted_time = getelementptr inbounds %struct.sit_info, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %mounted_time to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mounted_time, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.109, i64 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moved_blocks_foreground_show(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %sbi, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stat_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 90
  %0 = ptrtoint ptr %stat_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stat_info.i, align 8
  %tot_blks = getelementptr inbounds %struct.f2fs_stat_info, ptr %1, i32 0, i32 98
  %2 = ptrtoint ptr %tot_blks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tot_blks, align 4
  %bg_data_blks = getelementptr inbounds %struct.f2fs_stat_info, ptr %1, i32 0, i32 101
  %4 = ptrtoint ptr %bg_data_blks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bg_data_blks, align 8
  %bg_node_blks = getelementptr inbounds %struct.f2fs_stat_info, ptr %1, i32 0, i32 102
  %6 = ptrtoint ptr %bg_node_blks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bg_node_blks, align 4
  %8 = add i32 %5, %7
  %sub = sub i32 %3, %8
  %conv = sext i32 %sub to i64
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i64 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moved_blocks_background_show(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %sbi, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stat_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 90
  %0 = ptrtoint ptr %stat_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stat_info.i, align 8
  %bg_data_blks = getelementptr inbounds %struct.f2fs_stat_info, ptr %1, i32 0, i32 101
  %2 = ptrtoint ptr %bg_data_blks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bg_data_blks, align 8
  %bg_node_blks = getelementptr inbounds %struct.f2fs_stat_info, ptr %1, i32 0, i32 102
  %4 = ptrtoint ptr %bg_node_blks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bg_node_blks, align 4
  %add = add i32 %5, %3
  %conv = sext i32 %add to i64
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i64 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @avg_vblocks_show(ptr nocapture noundef readnone %a, ptr noundef %sbi, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stat_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 90
  %0 = ptrtoint ptr %stat_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stat_info.i, align 8
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %2 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm_info.i.i.i, align 8
  %dirty_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dirty_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dirty_info.i.i, align 4
  %nr_dirty.i = getelementptr inbounds %struct.dirty_seglist_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %nr_dirty.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_dirty.i, align 4
  %arrayidx3.i = getelementptr %struct.dirty_seglist_info, ptr %5, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %add.i = add i32 %9, %7
  %arrayidx6.i = getelementptr %struct.dirty_seglist_info, ptr %5, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6.i, align 4
  %add7.i = add i32 %add.i, %11
  %arrayidx10.i = getelementptr %struct.dirty_seglist_info, ptr %5, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10.i, align 4
  %add11.i = add i32 %add7.i, %13
  %arrayidx14.i = getelementptr %struct.dirty_seglist_info, ptr %5, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14.i, align 4
  %add15.i = add i32 %add11.i, %15
  %arrayidx18.i = getelementptr %struct.dirty_seglist_info, ptr %5, i32 0, i32 4, i32 5
  %16 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx18.i, align 4
  %add19.i = add i32 %add15.i, %17
  %dirty_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %1, i32 0, i32 82
  %18 = ptrtoint ptr %dirty_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add19.i, ptr %dirty_count, align 4
  tail call void @f2fs_update_sit_info(ptr noundef %sbi) #10
  %avg_vblocks = getelementptr inbounds %struct.f2fs_stat_info, ptr %1, i32 0, i32 76
  %19 = ptrtoint ptr %avg_vblocks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %avg_vblocks, align 4
  %conv = zext i32 %20 to i64
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i64 noundef %conv)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_update_sit_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f2fs_stat_kobj_release(ptr noundef %kobj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_stat_kobj_unregister = getelementptr i8, ptr %kobj, i32 136
  tail call void @complete(ptr noundef %s_stat_kobj_unregister) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_stat_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.f2fs_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %kobj, i32 -3632
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_stat_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.f2fs_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %kobj, i32 -3632
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sb_status_show(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %sbi, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flag = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  %0 = ptrtoint ptr %s_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flag, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.120, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f2fs_feature_list_kobj_release(ptr noundef %kobj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_feature_list_kobj_unregister = getelementptr i8, ptr %kobj, i32 136
  tail call void @complete(ptr noundef %s_feature_list_kobj_unregister) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_sb_feat_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.f2fs_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %kobj, i32 -3824
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @f2fs_sb_feature_show(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %sbi, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_super = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %0 = ptrtoint ptr %raw_super to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw_super, align 8
  %feature = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %feature to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %feature, align 1
  %id = getelementptr inbounds %struct.f2fs_attr, ptr %a, i32 0, i32 5
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and = and i32 %6, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.11, i32 11)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.121, i32 13)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 10, %if.then ], [ 12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 257)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 257)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !100, !101, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !169, !171, !172, !174, !175, !177, !179, !181, !182, !184, !185, !187, !188, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !250, !252, !253, !255, !256, !258, !259, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !277, !279, !280, !282, !283, !285, !286, !288, !289, !291, !292, !294, !296, !298, !300, !302, !304, !306, !308, !309, !311, !312, !314, !315, !317, !319, !321, !322, !324, !326, !327, !329, !330, !332, !333, !335, !336, !338, !339, !341, !342, !344, !345, !347, !349, !351, !353, !355, !356, !358, !360, !361, !363, !365, !367, !369, !371, !373, !375, !377, !378, !380, !382, !383, !385, !387, !389, !391, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438}
!llvm.module.flags = !{!440, !441, !442, !443, !444, !445, !446, !447}
!llvm.ident = !{!448}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/f2fs/sysfs.c", i32 1155, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/f2fs/sysfs.c", i32 1162, i32 14}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/f2fs/sysfs.c", i32 1167, i32 31}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/f2fs/sysfs.c", i32 1188, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/f2fs/sysfs.c", i32 1195, i32 21}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/f2fs/sysfs.c", i32 1203, i32 20}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/f2fs/sysfs.c", i32 1211, i32 27}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/f2fs/sysfs.c", i32 1213, i32 27}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/f2fs/sysfs.c", i32 1216, i32 27}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/f2fs/sysfs.c", i32 1219, i32 27}
!20 = !{ptr @f2fs_proc_root, !21, !"f2fs_proc_root", i1 false, i1 false}
!21 = !{!"../fs/f2fs/sysfs.c", i32 23, i32 31}
!22 = !{ptr @f2fs_kset, !23, !"f2fs_kset", i1 false, i1 false}
!23 = !{!"../fs/f2fs/sysfs.c", i32 1000, i32 20}
!24 = !{ptr @f2fs_ktype, !25, !"f2fs_ktype", i1 false, i1 false}
!25 = !{!"../fs/f2fs/sysfs.c", i32 996, i32 25}
!26 = !{ptr @f2fs_attr_ops, !27, !"f2fs_attr_ops", i1 false, i1 false}
!27 = !{!"../fs/f2fs/sysfs.c", i32 985, i32 31}
!28 = !{ptr @f2fs_feat, !29, !"f2fs_feat", i1 false, i1 false}
!29 = !{!"../fs/f2fs/sysfs.c", i32 1009, i32 23}
!30 = !{ptr @f2fs_feat_ktype, !31, !"f2fs_feat_ktype", i1 false, i1 false}
!31 = !{!"../fs/f2fs/sysfs.c", i32 1004, i32 25}
!32 = !{ptr @f2fs_feat_groups, !33, !"f2fs_feat_groups", i1 false, i1 false}
!33 = !{!"../fs/f2fs/sysfs.c", i32 942, i32 1}
!34 = !{ptr @f2fs_feat_group, !33, !"f2fs_feat_group", i1 false, i1 false}
!35 = !{ptr @f2fs_feat_attrs, !36, !"f2fs_feat_attrs", i1 false, i1 false}
!36 = !{!"../fs/f2fs/sysfs.c", i32 909, i32 26}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/f2fs/sysfs.c", i32 779, i32 1}
!39 = !{ptr @f2fs_attr_encryption, !38, !"f2fs_attr_encryption", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/f2fs/sysfs.c", i32 661, i32 22}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/f2fs/sysfs.c", i32 780, i32 1}
!44 = !{ptr @f2fs_attr_test_dummy_encryption_v2, !43, !"f2fs_attr_test_dummy_encryption_v2", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/f2fs/sysfs.c", i32 782, i32 1}
!47 = !{ptr @f2fs_attr_encrypted_casefold, !46, !"f2fs_attr_encrypted_casefold", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/f2fs/sysfs.c", i32 786, i32 1}
!50 = !{ptr @f2fs_attr_block_zoned, !49, !"f2fs_attr_block_zoned", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/f2fs/sysfs.c", i32 788, i32 1}
!53 = !{ptr @f2fs_attr_atomic_write, !52, !"f2fs_attr_atomic_write", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/f2fs/sysfs.c", i32 789, i32 1}
!56 = !{ptr @f2fs_attr_extra_attr, !55, !"f2fs_attr_extra_attr", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/f2fs/sysfs.c", i32 790, i32 1}
!59 = !{ptr @f2fs_attr_project_quota, !58, !"f2fs_attr_project_quota", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/f2fs/sysfs.c", i32 791, i32 1}
!62 = !{ptr @f2fs_attr_inode_checksum, !61, !"f2fs_attr_inode_checksum", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/f2fs/sysfs.c", i32 792, i32 1}
!65 = !{ptr @f2fs_attr_flexible_inline_xattr, !64, !"f2fs_attr_flexible_inline_xattr", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/f2fs/sysfs.c", i32 793, i32 1}
!68 = !{ptr @f2fs_attr_quota_ino, !67, !"f2fs_attr_quota_ino", i1 false, i1 false}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/f2fs/sysfs.c", i32 794, i32 1}
!71 = !{ptr @f2fs_attr_inode_crtime, !70, !"f2fs_attr_inode_crtime", i1 false, i1 false}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/f2fs/sysfs.c", i32 795, i32 1}
!74 = !{ptr @f2fs_attr_lost_found, !73, !"f2fs_attr_lost_found", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/f2fs/sysfs.c", i32 797, i32 1}
!77 = !{ptr @f2fs_attr_verity, !76, !"f2fs_attr_verity", i1 false, i1 false}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/f2fs/sysfs.c", i32 799, i32 1}
!80 = !{ptr @f2fs_attr_sb_checksum, !79, !"f2fs_attr_sb_checksum", i1 false, i1 false}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/f2fs/sysfs.c", i32 801, i32 1}
!83 = !{ptr @f2fs_attr_casefold, !82, !"f2fs_attr_casefold", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/f2fs/sysfs.c", i32 803, i32 1}
!86 = !{ptr @f2fs_attr_readonly, !85, !"f2fs_attr_readonly", i1 false, i1 false}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/f2fs/sysfs.c", i32 805, i32 1}
!89 = !{ptr @f2fs_attr_compression, !88, !"f2fs_attr_compression", i1 false, i1 false}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/f2fs/sysfs.c", i32 810, i32 1}
!92 = !{ptr @f2fs_attr_pin_file, !91, !"f2fs_attr_pin_file", i1 false, i1 false}
!93 = !{ptr @init_completion.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../include/linux/completion.h", i32 87, i32 2}
!95 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @f2fs_sb_ktype, !97, !"f2fs_sb_ktype", i1 false, i1 false}
!97 = !{!"../fs/f2fs/sysfs.c", i32 990, i32 25}
!98 = !{ptr @f2fs_groups, !99, !"f2fs_groups", i1 false, i1 false}
!99 = !{!"../fs/f2fs/sysfs.c", i32 907, i32 1}
!100 = !{ptr @f2fs_group, !99, !"f2fs_group", i1 false, i1 false}
!101 = !{ptr @f2fs_attrs, !102, !"f2fs_attrs", i1 false, i1 false}
!102 = !{!"../fs/f2fs/sysfs.c", i32 825, i32 26}
!103 = !{ptr @.str.30, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/f2fs/sysfs.c", i32 710, i32 1}
!105 = !{ptr @f2fs_attr_gc_urgent_sleep_time, !104, !"f2fs_attr_gc_urgent_sleep_time", i1 false, i1 false}
!106 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/f2fs/sysfs.c", i32 270, i32 28}
!108 = !{ptr @.str.32, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/f2fs/sysfs.c", i32 278, i32 7}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/f2fs/sysfs.c", i32 280, i32 49}
!112 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/f2fs/sysfs.c", i32 284, i32 7}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/f2fs/sysfs.c", i32 291, i32 28}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/f2fs/sysfs.c", i32 298, i32 49}
!118 = !{ptr @.str.37, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/f2fs/sysfs.c", i32 300, i32 49}
!120 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/f2fs/sysfs.c", i32 304, i32 48}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/f2fs/sysfs.c", i32 309, i32 28}
!124 = !{ptr @.str.40, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/f2fs/sysfs.c", i32 310, i32 26}
!126 = !{ptr @.str.41, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/f2fs/sysfs.c", i32 312, i32 28}
!128 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/f2fs/sysfs.c", i32 315, i32 28}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/f2fs/sysfs.c", i32 316, i32 26}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/f2fs/sysfs.c", i32 319, i32 28}
!134 = !{ptr @.str.45, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/f2fs/sysfs.c", i32 322, i32 28}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/f2fs/sysfs.c", i32 599, i32 41}
!138 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/f2fs/sysfs.c", i32 349, i32 22}
!140 = !{ptr @.str.48, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/f2fs/sysfs.c", i32 351, i32 27}
!142 = !{ptr @.str.49, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/f2fs/sysfs.c", i32 439, i32 28}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/f2fs/sysfs.c", i32 450, i32 28}
!146 = !{ptr @.str.51, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/f2fs/sysfs.c", i32 455, i32 28}
!148 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/f2fs/sysfs.c", i32 476, i32 28}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/f2fs/sysfs.c", i32 491, i32 28}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/f2fs/sysfs.c", i32 501, i32 28}
!154 = !{ptr @.str.55, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/f2fs/sysfs.c", i32 508, i32 28}
!156 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/f2fs/sysfs.c", i32 536, i32 28}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/f2fs/sysfs.c", i32 543, i32 28}
!160 = !{ptr @.str.58, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/f2fs/sysfs.c", i32 565, i32 28}
!162 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/f2fs/sysfs.c", i32 573, i32 28}
!164 = !{ptr @.str.60, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/f2fs/sysfs.c", i32 581, i32 28}
!166 = !{ptr @.str.61, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/f2fs/sysfs.c", i32 712, i32 1}
!168 = !{ptr @f2fs_attr_gc_min_sleep_time, !167, !"f2fs_attr_gc_min_sleep_time", i1 false, i1 false}
!169 = !{ptr @.str.62, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/f2fs/sysfs.c", i32 713, i32 1}
!171 = !{ptr @f2fs_attr_gc_max_sleep_time, !170, !"f2fs_attr_gc_max_sleep_time", i1 false, i1 false}
!172 = !{ptr @.str.63, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/f2fs/sysfs.c", i32 714, i32 1}
!174 = !{ptr @f2fs_attr_gc_no_gc_sleep_time, !173, !"f2fs_attr_gc_no_gc_sleep_time", i1 false, i1 false}
!175 = !{ptr @f2fs_attr_gc_idle, !176, !"f2fs_attr_gc_idle", i1 false, i1 false}
!176 = !{!"../fs/f2fs/sysfs.c", i32 715, i32 1}
!177 = !{ptr @f2fs_attr_gc_urgent, !178, !"f2fs_attr_gc_urgent", i1 false, i1 false}
!178 = !{!"../fs/f2fs/sysfs.c", i32 716, i32 1}
!179 = !{ptr @.str.64, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/f2fs/sysfs.c", i32 717, i32 1}
!181 = !{ptr @f2fs_attr_reclaim_segments, !180, !"f2fs_attr_reclaim_segments", i1 false, i1 false}
!182 = !{ptr @.str.65, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/f2fs/sysfs.c", i32 766, i32 1}
!184 = !{ptr @f2fs_attr_main_blkaddr, !183, !"f2fs_attr_main_blkaddr", i1 false, i1 false}
!185 = !{ptr @.str.66, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/f2fs/sysfs.c", i32 718, i32 1}
!187 = !{ptr @f2fs_attr_max_small_discards, !186, !"f2fs_attr_max_small_discards", i1 false, i1 false}
!188 = !{ptr @f2fs_attr_discard_granularity, !189, !"f2fs_attr_discard_granularity", i1 false, i1 false}
!189 = !{!"../fs/f2fs/sysfs.c", i32 719, i32 1}
!190 = !{ptr @.str.67, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/f2fs/sysfs.c", i32 767, i32 1}
!192 = !{ptr @f2fs_attr_pending_discard, !191, !"f2fs_attr_pending_discard", i1 false, i1 false}
!193 = !{ptr @.str.68, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/f2fs/sysfs.c", i32 721, i32 1}
!195 = !{ptr @f2fs_attr_batched_trim_sections, !194, !"f2fs_attr_batched_trim_sections", i1 false, i1 false}
!196 = !{ptr @.str.69, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/f2fs/sysfs.c", i32 722, i32 1}
!198 = !{ptr @f2fs_attr_ipu_policy, !197, !"f2fs_attr_ipu_policy", i1 false, i1 false}
!199 = !{ptr @.str.70, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/f2fs/sysfs.c", i32 723, i32 1}
!201 = !{ptr @f2fs_attr_min_ipu_util, !200, !"f2fs_attr_min_ipu_util", i1 false, i1 false}
!202 = !{ptr @.str.71, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/f2fs/sysfs.c", i32 724, i32 1}
!204 = !{ptr @f2fs_attr_min_fsync_blocks, !203, !"f2fs_attr_min_fsync_blocks", i1 false, i1 false}
!205 = !{ptr @.str.72, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/f2fs/sysfs.c", i32 725, i32 1}
!207 = !{ptr @f2fs_attr_min_seq_blocks, !206, !"f2fs_attr_min_seq_blocks", i1 false, i1 false}
!208 = !{ptr @.str.73, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/f2fs/sysfs.c", i32 726, i32 1}
!210 = !{ptr @f2fs_attr_min_hot_blocks, !209, !"f2fs_attr_min_hot_blocks", i1 false, i1 false}
!211 = !{ptr @.str.74, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/f2fs/sysfs.c", i32 727, i32 1}
!213 = !{ptr @f2fs_attr_min_ssr_sections, !212, !"f2fs_attr_min_ssr_sections", i1 false, i1 false}
!214 = !{ptr @.str.75, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/f2fs/sysfs.c", i32 731, i32 1}
!216 = !{ptr @f2fs_attr_max_victim_search, !215, !"f2fs_attr_max_victim_search", i1 false, i1 false}
!217 = !{ptr @f2fs_attr_migration_granularity, !218, !"f2fs_attr_migration_granularity", i1 false, i1 false}
!218 = !{!"../fs/f2fs/sysfs.c", i32 732, i32 1}
!219 = !{ptr @.str.76, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/f2fs/sysfs.c", i32 733, i32 1}
!221 = !{ptr @f2fs_attr_dir_level, !220, !"f2fs_attr_dir_level", i1 false, i1 false}
!222 = !{ptr @.str.77, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/f2fs/sysfs.c", i32 728, i32 1}
!224 = !{ptr @f2fs_attr_ram_thresh, !223, !"f2fs_attr_ram_thresh", i1 false, i1 false}
!225 = !{ptr @.str.78, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/f2fs/sysfs.c", i32 729, i32 1}
!227 = !{ptr @f2fs_attr_ra_nid_pages, !226, !"f2fs_attr_ra_nid_pages", i1 false, i1 false}
!228 = !{ptr @.str.79, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/f2fs/sysfs.c", i32 730, i32 1}
!230 = !{ptr @f2fs_attr_dirty_nats_ratio, !229, !"f2fs_attr_dirty_nats_ratio", i1 false, i1 false}
!231 = !{ptr @.str.80, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/f2fs/sysfs.c", i32 734, i32 1}
!233 = !{ptr @f2fs_attr_cp_interval, !232, !"f2fs_attr_cp_interval", i1 false, i1 false}
!234 = !{ptr @.str.81, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/f2fs/sysfs.c", i32 735, i32 1}
!236 = !{ptr @f2fs_attr_idle_interval, !235, !"f2fs_attr_idle_interval", i1 false, i1 false}
!237 = !{ptr @.str.82, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/f2fs/sysfs.c", i32 736, i32 1}
!239 = !{ptr @f2fs_attr_discard_idle_interval, !238, !"f2fs_attr_discard_idle_interval", i1 false, i1 false}
!240 = !{ptr @.str.83, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/f2fs/sysfs.c", i32 738, i32 1}
!242 = !{ptr @f2fs_attr_gc_idle_interval, !241, !"f2fs_attr_gc_idle_interval", i1 false, i1 false}
!243 = !{ptr @.str.84, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/f2fs/sysfs.c", i32 739, i32 1}
!245 = !{ptr @f2fs_attr_umount_discard_timeout, !244, !"f2fs_attr_umount_discard_timeout", i1 false, i1 false}
!246 = !{ptr @f2fs_attr_iostat_enable, !247, !"f2fs_attr_iostat_enable", i1 false, i1 false}
!247 = !{!"../fs/f2fs/sysfs.c", i32 742, i32 1}
!248 = !{ptr @f2fs_attr_iostat_period_ms, !249, !"f2fs_attr_iostat_period_ms", i1 false, i1 false}
!249 = !{!"../fs/f2fs/sysfs.c", i32 743, i32 1}
!250 = !{ptr @.str.85, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/f2fs/sysfs.c", i32 745, i32 1}
!252 = !{ptr @f2fs_attr_readdir_ra, !251, !"f2fs_attr_readdir_ra", i1 false, i1 false}
!253 = !{ptr @.str.86, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/f2fs/sysfs.c", i32 746, i32 1}
!255 = !{ptr @f2fs_attr_max_io_bytes, !254, !"f2fs_attr_max_io_bytes", i1 false, i1 false}
!256 = !{ptr @.str.87, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../fs/f2fs/sysfs.c", i32 747, i32 1}
!258 = !{ptr @f2fs_attr_gc_pin_file_thresh, !257, !"f2fs_attr_gc_pin_file_thresh", i1 false, i1 false}
!259 = !{ptr @f2fs_attr_extension_list, !260, !"f2fs_attr_extension_list", i1 false, i1 false}
!260 = !{!"../fs/f2fs/sysfs.c", i32 748, i32 1}
!261 = !{ptr @.str.88, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/f2fs/sysfs.c", i32 750, i32 1}
!263 = !{ptr @f2fs_attr_inject_rate, !262, !"f2fs_attr_inject_rate", i1 false, i1 false}
!264 = !{ptr @.str.89, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../fs/f2fs/sysfs.c", i32 751, i32 1}
!266 = !{ptr @f2fs_attr_inject_type, !265, !"f2fs_attr_inject_type", i1 false, i1 false}
!267 = !{ptr @.str.90, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/f2fs/sysfs.c", i32 753, i32 1}
!269 = !{ptr @f2fs_attr_data_io_flag, !268, !"f2fs_attr_data_io_flag", i1 false, i1 false}
!270 = !{ptr @.str.91, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/f2fs/sysfs.c", i32 754, i32 1}
!272 = !{ptr @f2fs_attr_node_io_flag, !271, !"f2fs_attr_node_io_flag", i1 false, i1 false}
!273 = !{ptr @f2fs_attr_gc_urgent_high_remaining, !274, !"f2fs_attr_gc_urgent_high_remaining", i1 false, i1 false}
!274 = !{!"../fs/f2fs/sysfs.c", i32 755, i32 1}
!275 = !{ptr @f2fs_attr_ckpt_thread_ioprio, !276, !"f2fs_attr_ckpt_thread_ioprio", i1 false, i1 false}
!276 = !{!"../fs/f2fs/sysfs.c", i32 756, i32 1}
!277 = !{ptr @.str.92, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/f2fs/sysfs.c", i32 757, i32 1}
!279 = !{ptr @f2fs_attr_dirty_segments, !278, !"f2fs_attr_dirty_segments", i1 false, i1 false}
!280 = !{ptr @.str.93, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../fs/f2fs/sysfs.c", i32 758, i32 1}
!282 = !{ptr @f2fs_attr_free_segments, !281, !"f2fs_attr_free_segments", i1 false, i1 false}
!283 = !{ptr @.str.94, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../fs/f2fs/sysfs.c", i32 759, i32 1}
!285 = !{ptr @f2fs_attr_ovp_segments, !284, !"f2fs_attr_ovp_segments", i1 false, i1 false}
!286 = !{ptr @.str.95, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/f2fs/sysfs.c", i32 763, i32 1}
!288 = !{ptr @f2fs_attr_unusable, !287, !"f2fs_attr_unusable", i1 false, i1 false}
!289 = !{ptr @.str.96, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../fs/f2fs/sysfs.c", i32 760, i32 1}
!291 = !{ptr @f2fs_attr_lifetime_write_kbytes, !290, !"f2fs_attr_lifetime_write_kbytes", i1 false, i1 false}
!292 = !{ptr @f2fs_attr_features, !293, !"f2fs_attr_features", i1 false, i1 false}
!293 = !{!"../fs/f2fs/sysfs.c", i32 761, i32 1}
!294 = !{ptr @.str.97, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/f2fs/sysfs.c", i32 139, i32 48}
!296 = !{ptr @.str.98, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../fs/f2fs/sysfs.c", i32 140, i32 11}
!298 = !{ptr @.str.99, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../fs/f2fs/sysfs.c", i32 140, i32 18}
!300 = !{ptr @.str.100, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../fs/f2fs/sysfs.c", i32 140, i32 22}
!302 = !{ptr @.str.101, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../fs/f2fs/sysfs.c", i32 146, i32 22}
!304 = !{ptr @.str.102, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../fs/f2fs/sysfs.c", i32 179, i32 47}
!306 = !{ptr @.str.103, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../fs/f2fs/sysfs.c", i32 720, i32 1}
!308 = !{ptr @f2fs_attr_reserved_blocks, !307, !"f2fs_attr_reserved_blocks", i1 false, i1 false}
!309 = !{ptr @.str.104, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../fs/f2fs/sysfs.c", i32 762, i32 1}
!311 = !{ptr @f2fs_attr_current_reserved_blocks, !310, !"f2fs_attr_current_reserved_blocks", i1 false, i1 false}
!312 = !{ptr @.str.105, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../fs/f2fs/sysfs.c", i32 764, i32 1}
!314 = !{ptr @f2fs_attr_encoding, !313, !"f2fs_attr_encoding", i1 false, i1 false}
!315 = !{ptr @.str.106, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../fs/f2fs/sysfs.c", i32 208, i32 26}
!317 = !{ptr @.str.107, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../fs/f2fs/sysfs.c", i32 213, i32 22}
!319 = !{ptr @.str.108, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../fs/f2fs/sysfs.c", i32 765, i32 1}
!321 = !{ptr @f2fs_attr_mounted_time_sec, !320, !"f2fs_attr_mounted_time_sec", i1 false, i1 false}
!322 = !{ptr @.str.109, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../fs/f2fs/sysfs.c", i32 219, i32 22}
!324 = !{ptr @.str.110, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../fs/f2fs/sysfs.c", i32 769, i32 1}
!326 = !{ptr @f2fs_attr_cp_foreground_calls, !325, !"f2fs_attr_cp_foreground_calls", i1 false, i1 false}
!327 = !{ptr @.str.111, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../fs/f2fs/sysfs.c", i32 770, i32 1}
!329 = !{ptr @f2fs_attr_cp_background_calls, !328, !"f2fs_attr_cp_background_calls", i1 false, i1 false}
!330 = !{ptr @.str.112, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../fs/f2fs/sysfs.c", i32 771, i32 1}
!332 = !{ptr @f2fs_attr_gc_foreground_calls, !331, !"f2fs_attr_gc_foreground_calls", i1 false, i1 false}
!333 = !{ptr @.str.113, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../fs/f2fs/sysfs.c", i32 772, i32 1}
!335 = !{ptr @f2fs_attr_gc_background_calls, !334, !"f2fs_attr_gc_background_calls", i1 false, i1 false}
!336 = !{ptr @.str.114, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../fs/f2fs/sysfs.c", i32 774, i32 1}
!338 = !{ptr @f2fs_attr_moved_blocks_foreground, !337, !"f2fs_attr_moved_blocks_foreground", i1 false, i1 false}
!339 = !{ptr @.str.115, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../fs/f2fs/sysfs.c", i32 773, i32 1}
!341 = !{ptr @f2fs_attr_moved_blocks_background, !340, !"f2fs_attr_moved_blocks_background", i1 false, i1 false}
!342 = !{ptr @.str.116, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../fs/f2fs/sysfs.c", i32 775, i32 1}
!344 = !{ptr @f2fs_attr_avg_vblocks, !343, !"f2fs_attr_avg_vblocks", i1 false, i1 false}
!345 = !{ptr @f2fs_attr_compr_written_block, !346, !"f2fs_attr_compr_written_block", i1 false, i1 false}
!346 = !{!"../fs/f2fs/sysfs.c", i32 806, i32 1}
!347 = !{ptr @f2fs_attr_compr_saved_block, !348, !"f2fs_attr_compr_saved_block", i1 false, i1 false}
!348 = !{!"../fs/f2fs/sysfs.c", i32 807, i32 1}
!349 = !{ptr @f2fs_attr_compr_new_inode, !350, !"f2fs_attr_compr_new_inode", i1 false, i1 false}
!350 = !{!"../fs/f2fs/sysfs.c", i32 808, i32 1}
!351 = !{ptr @f2fs_attr_atgc_candidate_ratio, !352, !"f2fs_attr_atgc_candidate_ratio", i1 false, i1 false}
!352 = !{!"../fs/f2fs/sysfs.c", i32 813, i32 1}
!353 = !{ptr @.str.117, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../fs/f2fs/sysfs.c", i32 814, i32 1}
!355 = !{ptr @f2fs_attr_atgc_candidate_count, !354, !"f2fs_attr_atgc_candidate_count", i1 false, i1 false}
!356 = !{ptr @f2fs_attr_atgc_age_weight, !357, !"f2fs_attr_atgc_age_weight", i1 false, i1 false}
!357 = !{!"../fs/f2fs/sysfs.c", i32 815, i32 1}
!358 = !{ptr @.str.118, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../fs/f2fs/sysfs.c", i32 816, i32 1}
!360 = !{ptr @f2fs_attr_atgc_age_threshold, !359, !"f2fs_attr_atgc_age_threshold", i1 false, i1 false}
!361 = !{ptr @f2fs_attr_seq_file_ra_mul, !362, !"f2fs_attr_seq_file_ra_mul", i1 false, i1 false}
!362 = !{!"../fs/f2fs/sysfs.c", i32 818, i32 1}
!363 = !{ptr @f2fs_attr_gc_segment_mode, !364, !"f2fs_attr_gc_segment_mode", i1 false, i1 false}
!364 = !{!"../fs/f2fs/sysfs.c", i32 819, i32 1}
!365 = !{ptr @f2fs_attr_gc_reclaimed_segments, !366, !"f2fs_attr_gc_reclaimed_segments", i1 false, i1 false}
!366 = !{!"../fs/f2fs/sysfs.c", i32 820, i32 1}
!367 = !{ptr @f2fs_attr_max_fragment_chunk, !368, !"f2fs_attr_max_fragment_chunk", i1 false, i1 false}
!368 = !{!"../fs/f2fs/sysfs.c", i32 821, i32 1}
!369 = !{ptr @f2fs_attr_max_fragment_hole, !370, !"f2fs_attr_max_fragment_hole", i1 false, i1 false}
!370 = !{!"../fs/f2fs/sysfs.c", i32 822, i32 1}
!371 = !{ptr @f2fs_stat_ktype, !372, !"f2fs_stat_ktype", i1 false, i1 false}
!372 = !{!"../fs/f2fs/sysfs.c", i32 1045, i32 25}
!373 = !{ptr @f2fs_stat_attr_ops, !374, !"f2fs_stat_attr_ops", i1 false, i1 false}
!374 = !{!"../fs/f2fs/sysfs.c", i32 1040, i32 31}
!375 = !{ptr @f2fs_stat_groups, !376, !"f2fs_stat_groups", i1 false, i1 false}
!376 = !{!"../fs/f2fs/sysfs.c", i32 949, i32 1}
!377 = !{ptr @f2fs_stat_group, !376, !"f2fs_stat_group", i1 false, i1 false}
!378 = !{ptr @f2fs_stat_attrs, !379, !"f2fs_stat_attrs", i1 false, i1 false}
!379 = !{!"../fs/f2fs/sysfs.c", i32 945, i32 26}
!380 = !{ptr @.str.119, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../fs/f2fs/sysfs.c", i32 944, i32 1}
!382 = !{ptr @f2fs_attr_sb_status, !381, !"f2fs_attr_sb_status", i1 false, i1 false}
!383 = !{ptr @.str.120, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../fs/f2fs/sysfs.c", i32 118, i32 22}
!385 = !{ptr @f2fs_feature_list_ktype, !386, !"f2fs_feature_list_ktype", i1 false, i1 false}
!386 = !{!"../fs/f2fs/sysfs.c", i32 1072, i32 25}
!387 = !{ptr @f2fs_feature_list_attr_ops, !388, !"f2fs_feature_list_attr_ops", i1 false, i1 false}
!388 = !{!"../fs/f2fs/sysfs.c", i32 1068, i32 31}
!389 = !{ptr @f2fs_sb_feat_groups, !390, !"f2fs_sb_feat_groups", i1 false, i1 false}
!390 = !{!"../fs/f2fs/sysfs.c", i32 983, i32 1}
!391 = !{ptr @f2fs_sb_feat_group, !390, !"f2fs_sb_feat_group", i1 false, i1 false}
!392 = !{ptr @f2fs_sb_feat_attrs, !393, !"f2fs_sb_feat_attrs", i1 false, i1 false}
!393 = !{!"../fs/f2fs/sysfs.c", i32 966, i32 26}
!394 = !{ptr @f2fs_attr_sb_encryption, !395, !"f2fs_attr_sb_encryption", i1 false, i1 false}
!395 = !{!"../fs/f2fs/sysfs.c", i32 951, i32 1}
!396 = !{ptr @.str.121, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../fs/f2fs/sysfs.c", i32 675, i32 22}
!398 = !{ptr @f2fs_attr_sb_block_zoned, !399, !"f2fs_attr_sb_block_zoned", i1 false, i1 false}
!399 = !{!"../fs/f2fs/sysfs.c", i32 952, i32 1}
!400 = !{ptr @f2fs_attr_sb_extra_attr, !401, !"f2fs_attr_sb_extra_attr", i1 false, i1 false}
!401 = !{!"../fs/f2fs/sysfs.c", i32 953, i32 1}
!402 = !{ptr @f2fs_attr_sb_project_quota, !403, !"f2fs_attr_sb_project_quota", i1 false, i1 false}
!403 = !{!"../fs/f2fs/sysfs.c", i32 954, i32 1}
!404 = !{ptr @f2fs_attr_sb_inode_checksum, !405, !"f2fs_attr_sb_inode_checksum", i1 false, i1 false}
!405 = !{!"../fs/f2fs/sysfs.c", i32 955, i32 1}
!406 = !{ptr @f2fs_attr_sb_flexible_inline_xattr, !407, !"f2fs_attr_sb_flexible_inline_xattr", i1 false, i1 false}
!407 = !{!"../fs/f2fs/sysfs.c", i32 956, i32 1}
!408 = !{ptr @f2fs_attr_sb_quota_ino, !409, !"f2fs_attr_sb_quota_ino", i1 false, i1 false}
!409 = !{!"../fs/f2fs/sysfs.c", i32 957, i32 1}
!410 = !{ptr @f2fs_attr_sb_inode_crtime, !411, !"f2fs_attr_sb_inode_crtime", i1 false, i1 false}
!411 = !{!"../fs/f2fs/sysfs.c", i32 958, i32 1}
!412 = !{ptr @f2fs_attr_sb_lost_found, !413, !"f2fs_attr_sb_lost_found", i1 false, i1 false}
!413 = !{!"../fs/f2fs/sysfs.c", i32 959, i32 1}
!414 = !{ptr @f2fs_attr_sb_verity, !415, !"f2fs_attr_sb_verity", i1 false, i1 false}
!415 = !{!"../fs/f2fs/sysfs.c", i32 960, i32 1}
!416 = !{ptr @f2fs_attr_sb_sb_checksum, !417, !"f2fs_attr_sb_sb_checksum", i1 false, i1 false}
!417 = !{!"../fs/f2fs/sysfs.c", i32 961, i32 1}
!418 = !{ptr @f2fs_attr_sb_casefold, !419, !"f2fs_attr_sb_casefold", i1 false, i1 false}
!419 = !{!"../fs/f2fs/sysfs.c", i32 962, i32 1}
!420 = !{ptr @f2fs_attr_sb_compression, !421, !"f2fs_attr_sb_compression", i1 false, i1 false}
!421 = !{!"../fs/f2fs/sysfs.c", i32 963, i32 1}
!422 = !{ptr @f2fs_attr_sb_readonly, !423, !"f2fs_attr_sb_readonly", i1 false, i1 false}
!423 = !{!"../fs/f2fs/sysfs.c", i32 964, i32 1}
!424 = !{ptr @.str.122, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../fs/f2fs/sysfs.c", i32 1087, i32 16}
!426 = !{ptr @.str.123, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../fs/f2fs/sysfs.c", i32 1094, i32 20}
!428 = !{ptr @.str.124, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../fs/f2fs/sysfs.c", i32 1095, i32 19}
!430 = !{ptr @.str.125, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../fs/f2fs/sysfs.c", i32 1114, i32 16}
!432 = !{ptr @.str.126, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../fs/f2fs/sysfs.c", i32 1121, i32 19}
!434 = !{ptr @.str.127, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../fs/f2fs/sysfs.c", i32 1123, i32 20}
!436 = !{ptr @.str.128, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../fs/f2fs/sysfs.c", i32 1137, i32 16}
!438 = !{ptr @.str.129, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../fs/f2fs/sysfs.c", i32 1142, i32 19}
!440 = !{i32 1, !"wchar_size", i32 2}
!441 = !{i32 1, !"min_enum_size", i32 4}
!442 = !{i32 8, !"branch-target-enforcement", i32 0}
!443 = !{i32 8, !"sign-return-address", i32 0}
!444 = !{i32 8, !"sign-return-address-all", i32 0}
!445 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!446 = !{i32 7, !"uwtable", i32 1}
!447 = !{i32 7, !"frame-pointer", i32 2}
!448 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!449 = !{!"auto-init"}
!450 = !{i8 0, i8 2}
