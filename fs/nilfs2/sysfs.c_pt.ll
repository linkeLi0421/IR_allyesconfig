; ModuleID = '/llk/IR_all_yes/fs/nilfs2/sysfs.c_pt.bc'
source_filename = "../fs/nilfs2/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.nilfs_snapshot_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.nilfs_dev_attr = type { %struct.attribute, ptr, ptr }
%struct.nilfs_mounted_snapshots_attr = type { %struct.attribute, ptr, ptr }
%struct.nilfs_checkpoints_attr = type { %struct.attribute, ptr, ptr }
%struct.nilfs_segments_attr = type { %struct.attribute, ptr, ptr }
%struct.nilfs_superblock_attr = type { %struct.attribute, ptr, ptr }
%struct.nilfs_segctor_attr = type { %struct.attribute, ptr, ptr }
%struct.nilfs_feature_attr = type { %struct.attribute, ptr, ptr }
%struct.nilfs_root = type { i64, %struct.rb_node, %struct.refcount_struct, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, %struct.kobject, %struct.completion }
%struct.rb_node = type { i32, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nilfs_sysfs_dev_subgroups = type { %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.nilfs_super_block = type { i32, i16, i16, i16, i16, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i64, i32, i32, i16, i16, i32, i16, i16, i16, i16, [16 x i8], [80 x i8], i32, i32, i64, i64, i64, [186 x i32] }
%struct.nilfs_cpstat = type { i64, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.76 = type { ptr }
%struct.nilfs_sustat = type { i64, i64, i64, i64, i64, i64 }

@nilfs_kset = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nilfs_snapshot_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @nilfs_snapshot_attr_release, ptr @nilfs_snapshot_attr_ops, ptr null, ptr @nilfs_snapshot_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"current_checkpoint\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013unable to allocate memory for device group\00", [51 x i8] zeroinitializer }, align 32
@nilfs_dev_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @nilfs_dev_attr_release, ptr @nilfs_dev_attr_ops, ptr null, ptr @nilfs_dev_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nilfs2\00", [25 x i8] zeroinitializer }, align 32
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013unable to create sysfs entry: err=%d\00", [57 x i8] zeroinitializer }, align 32
@nilfs_feature_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.56, ptr null, ptr null, ptr @nilfs_feature_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013unable to create feature group: err=%d\00", [55 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@nilfs_snapshot_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @nilfs_snapshot_attr_show, ptr @nilfs_snapshot_attr_store }, [24 x i8] zeroinitializer }, align 32
@nilfs_snapshot_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @nilfs_snapshot_group, ptr null], [24 x i8] zeroinitializer }, align 32
@nilfs_snapshot_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nilfs_snapshot_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nilfs_snapshot_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @nilfs_snapshot_attr_inodes_count, ptr @nilfs_snapshot_attr_blocks_count, ptr @nilfs_snapshot_attr_README, ptr null], [16 x i8] zeroinitializer }, align 32
@nilfs_snapshot_attr_inodes_count = internal global { %struct.nilfs_snapshot_attr, [36 x i8] } { %struct.nilfs_snapshot_attr { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_snapshot_inodes_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_snapshot_attr_blocks_count = internal global { %struct.nilfs_snapshot_attr, [36 x i8] } { %struct.nilfs_snapshot_attr { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_snapshot_blocks_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_snapshot_attr_README = internal global { %struct.nilfs_snapshot_attr, [36 x i8] } { %struct.nilfs_snapshot_attr { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_snapshot_README_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inodes_count\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"blocks_count\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"README\00", [25 x i8] zeroinitializer }, align 32
@snapshot_readme_str = internal constant { [163 x i8], [61 x i8] } { [163 x i8] c"The group contains details about mounted snapshot.\0A\0A(1) inodes_count\0A\09show number of inodes for snapshot.\0A\0A(2) blocks_count\0A\09show number of blocks for snapshot.\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nilfs_dev_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @nilfs_dev_attr_show, ptr @nilfs_dev_attr_store }, [24 x i8] zeroinitializer }, align 32
@nilfs_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @nilfs_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@nilfs_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nilfs_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nilfs_dev_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @nilfs_dev_attr_revision, ptr @nilfs_dev_attr_blocksize, ptr @nilfs_dev_attr_device_size, ptr @nilfs_dev_attr_free_blocks, ptr @nilfs_dev_attr_uuid, ptr @nilfs_dev_attr_volume_name, ptr @nilfs_dev_attr_README, ptr null], [32 x i8] zeroinitializer }, align 32
@nilfs_dev_attr_revision = internal global { %struct.nilfs_dev_attr, [36 x i8] } { %struct.nilfs_dev_attr { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_dev_revision_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_dev_attr_blocksize = internal global { %struct.nilfs_dev_attr, [36 x i8] } { %struct.nilfs_dev_attr { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_dev_blocksize_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_dev_attr_device_size = internal global { %struct.nilfs_dev_attr, [36 x i8] } { %struct.nilfs_dev_attr { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_dev_device_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_dev_attr_free_blocks = internal global { %struct.nilfs_dev_attr, [36 x i8] } { %struct.nilfs_dev_attr { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_dev_free_blocks_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_dev_attr_uuid = internal global { %struct.nilfs_dev_attr, [36 x i8] } { %struct.nilfs_dev_attr { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_dev_uuid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_dev_attr_volume_name = internal global { %struct.nilfs_dev_attr, [36 x i8] } { %struct.nilfs_dev_attr { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_dev_volume_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_dev_attr_README = internal global { %struct.nilfs_dev_attr, [36 x i8] } { %struct.nilfs_dev_attr { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_dev_README_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"revision\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d.%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"blocksize\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_size\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"free_blocks\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uuid\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pUb\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"volume_name\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@dev_readme_str = internal constant { [354 x i8], [94 x i8] } { [354 x i8] c"The <device> group contains attributes that describe file system\0Apartition's details.\0A\0A(1) revision\0A\09show NILFS file system revision.\0A\0A(2) blocksize\0A\09show volume block size in bytes.\0A\0A(3) device_size\0A\09show volume size in bytes.\0A\0A(4) free_blocks\0A\09show count of free blocks on volume.\0A\0A(5) uuid\0A\09show volume's UUID.\0A\0A(6) volume_name\0A\09show volume's name.\0A\0A\00", [94 x i8] zeroinitializer }, align 32
@nilfs_mounted_snapshots_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @nilfs_mounted_snapshots_attr_release, ptr @nilfs_mounted_snapshots_attr_ops, ptr null, ptr @nilfs_mounted_snapshots_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mounted_snapshots\00", [46 x i8] zeroinitializer }, align 32
@nilfs_mounted_snapshots_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @nilfs_mounted_snapshots_attr_show, ptr @nilfs_mounted_snapshots_attr_store }, [24 x i8] zeroinitializer }, align 32
@nilfs_mounted_snapshots_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @nilfs_mounted_snapshots_group, ptr null], [24 x i8] zeroinitializer }, align 32
@nilfs_mounted_snapshots_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nilfs_mounted_snapshots_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nilfs_mounted_snapshots_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @nilfs_mounted_snapshots_attr_README, ptr null], [24 x i8] zeroinitializer }, align 32
@nilfs_mounted_snapshots_attr_README = internal global { %struct.nilfs_mounted_snapshots_attr, [36 x i8] } { %struct.nilfs_mounted_snapshots_attr { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_mounted_snapshots_README_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mounted_snapshots_readme_str = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"The mounted_snapshots group contains group for\0Aevery mounted snapshot.\0A\00", [56 x i8] zeroinitializer }, align 32
@nilfs_checkpoints_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @nilfs_checkpoints_attr_release, ptr @nilfs_checkpoints_attr_ops, ptr null, ptr @nilfs_checkpoints_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"checkpoints\00", [20 x i8] zeroinitializer }, align 32
@nilfs_checkpoints_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @nilfs_checkpoints_attr_show, ptr @nilfs_checkpoints_attr_store }, [24 x i8] zeroinitializer }, align 32
@nilfs_checkpoints_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @nilfs_checkpoints_group, ptr null], [24 x i8] zeroinitializer }, align 32
@nilfs_checkpoints_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nilfs_checkpoints_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nilfs_checkpoints_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @nilfs_checkpoints_attr_checkpoints_number, ptr @nilfs_checkpoints_attr_snapshots_number, ptr @nilfs_checkpoints_attr_last_seg_checkpoint, ptr @nilfs_checkpoints_attr_next_checkpoint, ptr @nilfs_checkpoints_attr_README, ptr null], [40 x i8] zeroinitializer }, align 32
@nilfs_checkpoints_attr_checkpoints_number = internal global { %struct.nilfs_checkpoints_attr, [36 x i8] } { %struct.nilfs_checkpoints_attr { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_checkpoints_checkpoints_number_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_checkpoints_attr_snapshots_number = internal global { %struct.nilfs_checkpoints_attr, [36 x i8] } { %struct.nilfs_checkpoints_attr { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_checkpoints_snapshots_number_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_checkpoints_attr_last_seg_checkpoint = internal global { %struct.nilfs_checkpoints_attr, [36 x i8] } { %struct.nilfs_checkpoints_attr { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_checkpoints_last_seg_checkpoint_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_checkpoints_attr_next_checkpoint = internal global { %struct.nilfs_checkpoints_attr, [36 x i8] } { %struct.nilfs_checkpoints_attr { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_checkpoints_next_checkpoint_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_checkpoints_attr_README = internal global { %struct.nilfs_checkpoints_attr, [36 x i8] } { %struct.nilfs_checkpoints_attr { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_checkpoints_README_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"checkpoints_number\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013unable to get checkpoint stat: err=%d\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snapshots_number\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"last_seg_checkpoint\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"next_checkpoint\00", [16 x i8] zeroinitializer }, align 32
@checkpoints_readme_str = internal constant { [339 x i8], [77 x i8] } { [339 x i8] c"The checkpoints group contains attributes that describe\0Adetails about volume's checkpoints.\0A\0A(1) checkpoints_number\0A\09show number of checkpoints on volume.\0A\0A(2) snapshots_number\0A\09show number of snapshots on volume.\0A\0A(3) last_seg_checkpoint\0A\09show checkpoint number of the latest segment.\0A\0A(4) next_checkpoint\0A\09show next checkpoint number.\0A\0A\00", [77 x i8] zeroinitializer }, align 32
@nilfs_segments_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @nilfs_segments_attr_release, ptr @nilfs_segments_attr_ops, ptr null, ptr @nilfs_segments_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"segments\00", [23 x i8] zeroinitializer }, align 32
@nilfs_segments_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @nilfs_segments_attr_show, ptr @nilfs_segments_attr_store }, [24 x i8] zeroinitializer }, align 32
@nilfs_segments_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @nilfs_segments_group, ptr null], [24 x i8] zeroinitializer }, align 32
@nilfs_segments_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nilfs_segments_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nilfs_segments_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @nilfs_segments_attr_segments_number, ptr @nilfs_segments_attr_blocks_per_segment, ptr @nilfs_segments_attr_clean_segments, ptr @nilfs_segments_attr_dirty_segments, ptr @nilfs_segments_attr_README, ptr null], [40 x i8] zeroinitializer }, align 32
@nilfs_segments_attr_segments_number = internal global { %struct.nilfs_segments_attr, [36 x i8] } { %struct.nilfs_segments_attr { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segments_segments_number_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segments_attr_blocks_per_segment = internal global { %struct.nilfs_segments_attr, [36 x i8] } { %struct.nilfs_segments_attr { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segments_blocks_per_segment_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segments_attr_clean_segments = internal global { %struct.nilfs_segments_attr, [36 x i8] } { %struct.nilfs_segments_attr { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segments_clean_segments_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segments_attr_dirty_segments = internal global { %struct.nilfs_segments_attr, [36 x i8] } { %struct.nilfs_segments_attr { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segments_dirty_segments_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segments_attr_README = internal global { %struct.nilfs_segments_attr, [36 x i8] } { %struct.nilfs_segments_attr { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segments_README_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segments_number\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"blocks_per_segment\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clean_segments\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dirty_segments\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013unable to get segment stat: err=%d\00", [59 x i8] zeroinitializer }, align 32
@segments_readme_str = internal constant { [306 x i8], [78 x i8] } { [306 x i8] c"The segments group contains attributes that describe\0Adetails about volume's segments.\0A\0A(1) segments_number\0A\09show number of segments on volume.\0A\0A(2) blocks_per_segment\0A\09show number of blocks in segment.\0A\0A(3) clean_segments\0A\09show count of clean segments.\0A\0A(4) dirty_segments\0A\09show count of dirty segments.\0A\0A\00", [78 x i8] zeroinitializer }, align 32
@nilfs_superblock_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @nilfs_superblock_attr_release, ptr @nilfs_superblock_attr_ops, ptr null, ptr @nilfs_superblock_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"superblock\00", [21 x i8] zeroinitializer }, align 32
@nilfs_superblock_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @nilfs_superblock_attr_show, ptr @nilfs_superblock_attr_store }, [24 x i8] zeroinitializer }, align 32
@nilfs_superblock_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @nilfs_superblock_group, ptr null], [24 x i8] zeroinitializer }, align 32
@nilfs_superblock_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nilfs_superblock_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nilfs_superblock_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @nilfs_superblock_attr_sb_write_time, ptr @nilfs_superblock_attr_sb_write_time_secs, ptr @nilfs_superblock_attr_sb_write_count, ptr @nilfs_superblock_attr_sb_update_frequency, ptr @nilfs_superblock_attr_README, ptr null], [40 x i8] zeroinitializer }, align 32
@nilfs_superblock_attr_sb_write_time = internal global { %struct.nilfs_superblock_attr, [36 x i8] } { %struct.nilfs_superblock_attr { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_superblock_sb_write_time_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_superblock_attr_sb_write_time_secs = internal global { %struct.nilfs_superblock_attr, [36 x i8] } { %struct.nilfs_superblock_attr { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_superblock_sb_write_time_secs_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_superblock_attr_sb_write_count = internal global { %struct.nilfs_superblock_attr, [36 x i8] } { %struct.nilfs_superblock_attr { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_superblock_sb_write_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_superblock_attr_sb_update_frequency = internal global { %struct.nilfs_superblock_attr, [36 x i8] } { %struct.nilfs_superblock_attr { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_superblock_sb_update_frequency_show, ptr @nilfs_superblock_sb_update_frequency_store }, [36 x i8] zeroinitializer }, align 32
@nilfs_superblock_attr_README = internal global { %struct.nilfs_superblock_attr, [36 x i8] } { %struct.nilfs_superblock_attr { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_superblock_README_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sb_write_time\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%ptTs\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sb_write_time_secs\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sb_write_count\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sb_update_frequency\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013unable to convert string: err=%d\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014superblock update frequency cannot be lesser than 10 seconds\00", [33 x i8] zeroinitializer }, align 32
@sb_readme_str = internal constant { [526 x i8], [146 x i8] } { [526 x i8] c"The superblock group contains attributes that describe\0Asuperblock's details.\0A\0A(1) sb_write_time\0A\09show previous write time of super block in human-readable format.\0A\0A(2) sb_write_time_secs\0A\09show previous write time of super block in seconds.\0A\0A(3) sb_write_count\0A\09show write count of super block.\0A\0A(4) sb_update_frequency\0A\09show/set interval of periodical update of superblock (in seconds).\0A\0A\09You can set preferable frequency of superblock update by command:\0A\0A\09'echo <val> > /sys/fs/<nilfs>/<dev>/superblock/sb_update_frequency'\0A\00", [146 x i8] zeroinitializer }, align 32
@nilfs_segctor_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @nilfs_segctor_attr_release, ptr @nilfs_segctor_attr_ops, ptr null, ptr @nilfs_segctor_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"segctor\00", [24 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @nilfs_segctor_attr_show, ptr @nilfs_segctor_attr_store }, [24 x i8] zeroinitializer }, align 32
@nilfs_segctor_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @nilfs_segctor_group, ptr null], [24 x i8] zeroinitializer }, align 32
@nilfs_segctor_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nilfs_segctor_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nilfs_segctor_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @nilfs_segctor_attr_last_pseg_block, ptr @nilfs_segctor_attr_last_seg_sequence, ptr @nilfs_segctor_attr_last_seg_checkpoint, ptr @nilfs_segctor_attr_current_seg_sequence, ptr @nilfs_segctor_attr_current_last_full_seg, ptr @nilfs_segctor_attr_next_full_seg, ptr @nilfs_segctor_attr_next_pseg_offset, ptr @nilfs_segctor_attr_next_checkpoint, ptr @nilfs_segctor_attr_last_seg_write_time, ptr @nilfs_segctor_attr_last_seg_write_time_secs, ptr @nilfs_segctor_attr_last_nongc_write_time, ptr @nilfs_segctor_attr_last_nongc_write_time_secs, ptr @nilfs_segctor_attr_dirty_data_blocks_count, ptr @nilfs_segctor_attr_README, ptr null], [36 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_last_pseg_block = internal global { %struct.nilfs_segctor_attr, [36 x i8] } { %struct.nilfs_segctor_attr { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segctor_last_pseg_block_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_last_seg_sequence = internal global { %struct.nilfs_segctor_attr, [36 x i8] } { %struct.nilfs_segctor_attr { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segctor_last_seg_sequence_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_last_seg_checkpoint = internal global { %struct.nilfs_segctor_attr, [36 x i8] } { %struct.nilfs_segctor_attr { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segctor_last_seg_checkpoint_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_current_seg_sequence = internal global { %struct.nilfs_segctor_attr, [36 x i8] } { %struct.nilfs_segctor_attr { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segctor_current_seg_sequence_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_current_last_full_seg = internal global { %struct.nilfs_segctor_attr, [36 x i8] } { %struct.nilfs_segctor_attr { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segctor_current_last_full_seg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_next_full_seg = internal global { %struct.nilfs_segctor_attr, [36 x i8] } { %struct.nilfs_segctor_attr { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segctor_next_full_seg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_next_pseg_offset = internal global { %struct.nilfs_segctor_attr, [36 x i8] } { %struct.nilfs_segctor_attr { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segctor_next_pseg_offset_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_next_checkpoint = internal global { %struct.nilfs_segctor_attr, [36 x i8] } { %struct.nilfs_segctor_attr { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segctor_next_checkpoint_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_last_seg_write_time = internal global { %struct.nilfs_segctor_attr, [36 x i8] } { %struct.nilfs_segctor_attr { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segctor_last_seg_write_time_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_last_seg_write_time_secs = internal global { %struct.nilfs_segctor_attr, [36 x i8] } { %struct.nilfs_segctor_attr { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segctor_last_seg_write_time_secs_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_last_nongc_write_time = internal global { %struct.nilfs_segctor_attr, [36 x i8] } { %struct.nilfs_segctor_attr { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segctor_last_nongc_write_time_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_last_nongc_write_time_secs = internal global { %struct.nilfs_segctor_attr, [36 x i8] } { %struct.nilfs_segctor_attr { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segctor_last_nongc_write_time_secs_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_dirty_data_blocks_count = internal global { %struct.nilfs_segctor_attr, [36 x i8] } { %struct.nilfs_segctor_attr { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segctor_dirty_data_blocks_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_segctor_attr_README = internal global { %struct.nilfs_segctor_attr, [36 x i8] } { %struct.nilfs_segctor_attr { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_segctor_README_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"last_pseg_block\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"last_seg_sequence\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"current_seg_sequence\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"current_last_full_seg\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"next_full_seg\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"next_pseg_offset\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"last_seg_write_time\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"last_seg_write_time_secs\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"last_nongc_write_time\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"last_nongc_write_time_secs\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dirty_data_blocks_count\00", [40 x i8] zeroinitializer }, align 32
@segctor_readme_str = internal constant { [1105 x i8], [271 x i8] } { [1105 x i8] c"The segctor group contains attributes that describe\0Asegctor thread activity details.\0A\0A(1) last_pseg_block\0A\09show start block number of the latest segment.\0A\0A(2) last_seg_sequence\0A\09show sequence value of the latest segment.\0A\0A(3) last_seg_checkpoint\0A\09show checkpoint number of the latest segment.\0A\0A(4) current_seg_sequence\0A\09show segment sequence counter.\0A\0A(5) current_last_full_seg\0A\09show index number of the latest full segment.\0A\0A(6) next_full_seg\0A\09show index number of the full segment index to be used next.\0A\0A(7) next_pseg_offset\0A\09show offset of next partial segment in the current full segment.\0A\0A(8) next_checkpoint\0A\09show next checkpoint number.\0A\0A(9) last_seg_write_time\0A\09show write time of the last segment in human-readable format.\0A\0A(10) last_seg_write_time_secs\0A\09show write time of the last segment in seconds.\0A\0A(11) last_nongc_write_time\0A\09show write time of the last segment not for cleaner operation in human-readable format.\0A\0A(12) last_nongc_write_time_secs\0A\09show write time of the last segment not for cleaner operation in seconds.\0A\0A(13) dirty_data_blocks_count\0A\09show number of dirty data blocks.\0A\0A\00", [271 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@nilfs_feature_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @nilfs_feature_attr_revision, ptr @nilfs_feature_attr_README, ptr null], [20 x i8] zeroinitializer }, align 32
@nilfs_feature_attr_revision = internal global { %struct.nilfs_feature_attr, [36 x i8] } { %struct.nilfs_feature_attr { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_feature_revision_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nilfs_feature_attr_README = internal global { %struct.nilfs_feature_attr, [36 x i8] } { %struct.nilfs_feature_attr { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nilfs_feature_README_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@features_readme_str = internal constant { [155 x i8], [37 x i8] } { [155 x i8] c"The features group contains attributes that describe NILFS file\0Asystem driver features.\0A\0A(1) revision\0A\09show current revision of NILFS file system driver.\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"nilfs_kset\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 20, i32 21 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"nilfs_snapshot_ktype\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 169, i32 25 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 190, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 195, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 985, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"nilfs_dev_ktype\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 970, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 992, i32 9 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1091, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1094, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [25 x i8] c"nilfs_feature_attr_group\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1082, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1100, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 87, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [24 x i8] c"nilfs_snapshot_attr_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 164, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant [22 x i8] c"nilfs_snapshot_groups\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [21 x i8] c"nilfs_snapshot_group\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 132, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant [21 x i8] c"nilfs_snapshot_attrs\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 126, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant [33 x i8] c"nilfs_snapshot_attr_inodes_count\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [33 x i8] c"nilfs_snapshot_attr_blocks_count\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [27 x i8] c"nilfs_snapshot_attr_README\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 122, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 98, i32 25 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 123, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 124, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"snapshot_readme_str\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 110, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant [19 x i8] c"nilfs_dev_attr_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 965, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"nilfs_dev_groups\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"nilfs_dev_group\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 933, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant [16 x i8] c"nilfs_dev_attrs\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 923, i32 26 }
@___asan_gen_.144 = private unnamed_addr constant [24 x i8] c"nilfs_dev_attr_revision\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [25 x i8] c"nilfs_dev_attr_blocksize\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [27 x i8] c"nilfs_dev_attr_device_size\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [27 x i8] c"nilfs_dev_attr_free_blocks\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [20 x i8] c"nilfs_dev_attr_uuid\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [27 x i8] c"nilfs_dev_attr_volume_name\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [22 x i8] c"nilfs_dev_attr_README\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 921, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 915, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 843, i32 25 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 916, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 851, i32 25 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 917, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 918, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 919, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 884, i32 25 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 920, i32 1 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 894, i32 55 }
@___asan_gen_.195 = private unnamed_addr constant [15 x i8] c"dev_readme_str\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 898, i32 19 }
@___asan_gen_.198 = private unnamed_addr constant [30 x i8] c"nilfs_mounted_snapshots_ktype\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 233, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 234, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant [33 x i8] c"nilfs_mounted_snapshots_attr_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 232, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant [31 x i8] c"nilfs_mounted_snapshots_groups\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [30 x i8] c"nilfs_mounted_snapshots_group\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 230, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant [30 x i8] c"nilfs_mounted_snapshots_attrs\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 226, i32 26 }
@___asan_gen_.216 = private unnamed_addr constant [36 x i8] c"nilfs_mounted_snapshots_attr_README\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 224, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant [29 x i8] c"mounted_snapshots_readme_str\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 213, i32 19 }
@___asan_gen_.222 = private unnamed_addr constant [24 x i8] c"nilfs_checkpoints_ktype\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 347, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 348, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant [27 x i8] c"nilfs_checkpoints_attr_ops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 346, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant [25 x i8] c"nilfs_checkpoints_groups\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [24 x i8] c"nilfs_checkpoints_group\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 344, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant [24 x i8] c"nilfs_checkpoints_attrs\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 336, i32 26 }
@___asan_gen_.240 = private unnamed_addr constant [42 x i8] c"nilfs_checkpoints_attr_checkpoints_number\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [40 x i8] c"nilfs_checkpoints_attr_snapshots_number\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [43 x i8] c"nilfs_checkpoints_attr_last_seg_checkpoint\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [39 x i8] c"nilfs_checkpoints_attr_next_checkpoint\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [30 x i8] c"nilfs_checkpoints_attr_README\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 334, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 330, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 253, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 331, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 332, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 333, i32 1 }
@___asan_gen_.270 = private unnamed_addr constant [23 x i8] c"checkpoints_readme_str\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 314, i32 19 }
@___asan_gen_.273 = private unnamed_addr constant [21 x i8] c"nilfs_segments_ktype\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 437, i32 1 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 438, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant [24 x i8] c"nilfs_segments_attr_ops\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 436, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant [22 x i8] c"nilfs_segments_groups\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [21 x i8] c"nilfs_segments_group\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 434, i32 1 }
@___asan_gen_.288 = private unnamed_addr constant [21 x i8] c"nilfs_segments_attrs\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 426, i32 26 }
@___asan_gen_.291 = private unnamed_addr constant [36 x i8] c"nilfs_segments_attr_segments_number\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [39 x i8] c"nilfs_segments_attr_blocks_per_segment\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [35 x i8] c"nilfs_segments_attr_clean_segments\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [35 x i8] c"nilfs_segments_attr_dirty_segments\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [27 x i8] c"nilfs_segments_attr_README\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 424, i32 1 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 420, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 359, i32 25 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 421, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 422, i32 1 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 423, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 396, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [20 x i8] c"segments_readme_str\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 404, i32 19 }
@___asan_gen_.327 = private unnamed_addr constant [23 x i8] c"nilfs_superblock_ktype\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 827, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 828, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant [26 x i8] c"nilfs_superblock_attr_ops\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 826, i32 1 }
@___asan_gen_.336 = private unnamed_addr constant [24 x i8] c"nilfs_superblock_groups\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [23 x i8] c"nilfs_superblock_group\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 824, i32 1 }
@___asan_gen_.342 = private unnamed_addr constant [23 x i8] c"nilfs_superblock_attrs\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 816, i32 26 }
@___asan_gen_.345 = private unnamed_addr constant [36 x i8] c"nilfs_superblock_attr_sb_write_time\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [41 x i8] c"nilfs_superblock_attr_sb_write_time_secs\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [37 x i8] c"nilfs_superblock_attr_sb_write_count\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [42 x i8] c"nilfs_superblock_attr_sb_update_frequency\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [29 x i8] c"nilfs_superblock_attr_README\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 814, i32 1 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 810, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 717, i32 25 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 811, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 812, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 813, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 772, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 779, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [14 x i8] c"sb_readme_str\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 790, i32 19 }
@___asan_gen_.384 = private unnamed_addr constant [20 x i8] c"nilfs_segctor_ktype\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 699, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 700, i32 1 }
@___asan_gen_.390 = private unnamed_addr constant [23 x i8] c"nilfs_segctor_attr_ops\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 698, i32 1 }
@___asan_gen_.393 = private unnamed_addr constant [21 x i8] c"nilfs_segctor_groups\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [20 x i8] c"nilfs_segctor_group\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 696, i32 1 }
@___asan_gen_.399 = private unnamed_addr constant [20 x i8] c"nilfs_segctor_attrs\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 679, i32 26 }
@___asan_gen_.402 = private unnamed_addr constant [35 x i8] c"nilfs_segctor_attr_last_pseg_block\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [37 x i8] c"nilfs_segctor_attr_last_seg_sequence\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [39 x i8] c"nilfs_segctor_attr_last_seg_checkpoint\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 666, i32 1 }
@___asan_gen_.411 = private unnamed_addr constant [40 x i8] c"nilfs_segctor_attr_current_seg_sequence\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [41 x i8] c"nilfs_segctor_attr_current_last_full_seg\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [33 x i8] c"nilfs_segctor_attr_next_full_seg\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [36 x i8] c"nilfs_segctor_attr_next_pseg_offset\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [35 x i8] c"nilfs_segctor_attr_next_checkpoint\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 671, i32 1 }
@___asan_gen_.426 = private unnamed_addr constant [39 x i8] c"nilfs_segctor_attr_last_seg_write_time\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [44 x i8] c"nilfs_segctor_attr_last_seg_write_time_secs\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [41 x i8] c"nilfs_segctor_attr_last_nongc_write_time\00", align 1
@___asan_gen_.435 = private unnamed_addr constant [46 x i8] c"nilfs_segctor_attr_last_nongc_write_time_secs\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [43 x i8] c"nilfs_segctor_attr_dirty_data_blocks_count\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [26 x i8] c"nilfs_segctor_attr_README\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 677, i32 1 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 664, i32 1 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 665, i32 1 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 667, i32 1 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 668, i32 1 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 669, i32 1 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 670, i32 1 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 672, i32 1 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 673, i32 1 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 674, i32 1 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 675, i32 1 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 676, i32 1 }
@___asan_gen_.477 = private unnamed_addr constant [19 x i8] c"segctor_readme_str\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 627, i32 19 }
@___asan_gen_.480 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1083, i32 10 }
@___asan_gen_.483 = private unnamed_addr constant [20 x i8] c"nilfs_feature_attrs\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1076, i32 26 }
@___asan_gen_.486 = private unnamed_addr constant [28 x i8] c"nilfs_feature_attr_revision\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1073, i32 1 }
@___asan_gen_.489 = private unnamed_addr constant [26 x i8] c"nilfs_feature_attr_README\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1074, i32 1 }
@___asan_gen_.492 = private unnamed_addr constant [20 x i8] c"features_readme_str\00", align 1
@___asan_gen_.493 = private constant [21 x i8] c"../fs/nilfs2/sysfs.c\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1061, i32 19 }
@llvm.compiler.used = appending global [146 x ptr] [ptr @nilfs_kset, ptr @nilfs_snapshot_ktype, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nilfs_dev_ktype, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nilfs_feature_attr_group, ptr @.str.6, ptr @init_completion.__key, ptr @.str.7, ptr @nilfs_snapshot_attr_ops, ptr @nilfs_snapshot_groups, ptr @nilfs_snapshot_group, ptr @nilfs_snapshot_attrs, ptr @nilfs_snapshot_attr_inodes_count, ptr @nilfs_snapshot_attr_blocks_count, ptr @nilfs_snapshot_attr_README, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @snapshot_readme_str, ptr @nilfs_dev_attr_ops, ptr @nilfs_dev_groups, ptr @nilfs_dev_group, ptr @nilfs_dev_attrs, ptr @nilfs_dev_attr_revision, ptr @nilfs_dev_attr_blocksize, ptr @nilfs_dev_attr_device_size, ptr @nilfs_dev_attr_free_blocks, ptr @nilfs_dev_attr_uuid, ptr @nilfs_dev_attr_volume_name, ptr @nilfs_dev_attr_README, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @dev_readme_str, ptr @nilfs_mounted_snapshots_ktype, ptr @.str.22, ptr @nilfs_mounted_snapshots_attr_ops, ptr @nilfs_mounted_snapshots_groups, ptr @nilfs_mounted_snapshots_group, ptr @nilfs_mounted_snapshots_attrs, ptr @nilfs_mounted_snapshots_attr_README, ptr @mounted_snapshots_readme_str, ptr @nilfs_checkpoints_ktype, ptr @.str.23, ptr @nilfs_checkpoints_attr_ops, ptr @nilfs_checkpoints_groups, ptr @nilfs_checkpoints_group, ptr @nilfs_checkpoints_attrs, ptr @nilfs_checkpoints_attr_checkpoints_number, ptr @nilfs_checkpoints_attr_snapshots_number, ptr @nilfs_checkpoints_attr_last_seg_checkpoint, ptr @nilfs_checkpoints_attr_next_checkpoint, ptr @nilfs_checkpoints_attr_README, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @checkpoints_readme_str, ptr @nilfs_segments_ktype, ptr @.str.29, ptr @nilfs_segments_attr_ops, ptr @nilfs_segments_groups, ptr @nilfs_segments_group, ptr @nilfs_segments_attrs, ptr @nilfs_segments_attr_segments_number, ptr @nilfs_segments_attr_blocks_per_segment, ptr @nilfs_segments_attr_clean_segments, ptr @nilfs_segments_attr_dirty_segments, ptr @nilfs_segments_attr_README, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @segments_readme_str, ptr @nilfs_superblock_ktype, ptr @.str.36, ptr @nilfs_superblock_attr_ops, ptr @nilfs_superblock_groups, ptr @nilfs_superblock_group, ptr @nilfs_superblock_attrs, ptr @nilfs_superblock_attr_sb_write_time, ptr @nilfs_superblock_attr_sb_write_time_secs, ptr @nilfs_superblock_attr_sb_write_count, ptr @nilfs_superblock_attr_sb_update_frequency, ptr @nilfs_superblock_attr_README, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @sb_readme_str, ptr @nilfs_segctor_ktype, ptr @.str.44, ptr @nilfs_segctor_attr_ops, ptr @nilfs_segctor_groups, ptr @nilfs_segctor_group, ptr @nilfs_segctor_attrs, ptr @nilfs_segctor_attr_last_pseg_block, ptr @nilfs_segctor_attr_last_seg_sequence, ptr @nilfs_segctor_attr_last_seg_checkpoint, ptr @nilfs_segctor_attr_current_seg_sequence, ptr @nilfs_segctor_attr_current_last_full_seg, ptr @nilfs_segctor_attr_next_full_seg, ptr @nilfs_segctor_attr_next_pseg_offset, ptr @nilfs_segctor_attr_next_checkpoint, ptr @nilfs_segctor_attr_last_seg_write_time, ptr @nilfs_segctor_attr_last_seg_write_time_secs, ptr @nilfs_segctor_attr_last_nongc_write_time, ptr @nilfs_segctor_attr_last_nongc_write_time_secs, ptr @nilfs_segctor_attr_dirty_data_blocks_count, ptr @nilfs_segctor_attr_README, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @segctor_readme_str, ptr @.str.56, ptr @nilfs_feature_attrs, ptr @nilfs_feature_attr_revision, ptr @nilfs_feature_attr_README, ptr @features_readme_str], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_kset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_snapshot_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_dev_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_feature_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_snapshot_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_snapshot_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_snapshot_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_snapshot_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_snapshot_attr_inodes_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_snapshot_attr_blocks_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_snapshot_attr_README to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_readme_str to i32), i32 163, i32 224, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_dev_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_dev_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_dev_attr_revision to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_dev_attr_blocksize to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_dev_attr_device_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_dev_attr_free_blocks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_dev_attr_uuid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_dev_attr_volume_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_dev_attr_README to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_readme_str to i32), i32 354, i32 448, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_mounted_snapshots_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_mounted_snapshots_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_mounted_snapshots_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_mounted_snapshots_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_mounted_snapshots_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_mounted_snapshots_attr_README to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mounted_snapshots_readme_str to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_checkpoints_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_checkpoints_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_checkpoints_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_checkpoints_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_checkpoints_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_checkpoints_attr_checkpoints_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_checkpoints_attr_snapshots_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_checkpoints_attr_last_seg_checkpoint to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_checkpoints_attr_next_checkpoint to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_checkpoints_attr_README to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkpoints_readme_str to i32), i32 339, i32 416, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segments_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segments_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segments_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segments_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segments_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segments_attr_segments_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segments_attr_blocks_per_segment to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segments_attr_clean_segments to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segments_attr_dirty_segments to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segments_attr_README to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @segments_readme_str to i32), i32 306, i32 384, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_superblock_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_superblock_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_superblock_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_superblock_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_superblock_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_superblock_attr_sb_write_time to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_superblock_attr_sb_write_time_secs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_superblock_attr_sb_write_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_superblock_attr_sb_update_frequency to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_superblock_attr_README to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_readme_str to i32), i32 526, i32 672, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_last_pseg_block to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_last_seg_sequence to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_last_seg_checkpoint to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_current_seg_sequence to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_current_last_full_seg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_next_full_seg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_next_pseg_offset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_next_checkpoint to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_last_seg_write_time to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_last_seg_write_time_secs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_last_nongc_write_time to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_last_nongc_write_time_secs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_dirty_data_blocks_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_attr_README to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @segctor_readme_str to i32), i32 1105, i32 1376, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_feature_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_feature_attr_revision to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_feature_attr_README to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features_readme_str to i32), i32 155, i32 192, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sysfs_create_snapshot_group(ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nilfs1 = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 3
  %0 = ptrtoint ptr %nilfs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nilfs1, align 8
  %ns_dev_subgroups = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %ns_dev_subgroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_dev_subgroups, align 8
  %4 = load ptr, ptr @nilfs_kset, align 4
  %snapshot_kobj = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 7
  %kset = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 7, i32 3
  %5 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %kset, align 8
  %snapshot_kobj_unregister = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 8
  %6 = ptrtoint ptr %snapshot_kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %snapshot_kobj_unregister, align 4
  %wait.i = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #6
  %7 = ptrtoint ptr %root to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %root, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp = icmp eq i64 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ns_dev_kobj = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 54
  %call = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %snapshot_kobj, ptr noundef nonnull @nilfs_snapshot_ktype, ptr noundef %ns_dev_kobj, ptr noundef nonnull @.str) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sg_mounted_snapshots_kobj = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %3, i32 0, i32 4
  %call5 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %snapshot_kobj, ptr noundef nonnull @nilfs_snapshot_ktype, ptr noundef %sg_mounted_snapshots_kobj, ptr noundef nonnull @.str.1, i64 noundef %8) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call, %if.then ], [ %call5, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kobject_put(ptr noundef %snapshot_kobj) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_sysfs_delete_snapshot_group(ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %snapshot_kobj = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 7
  tail call void @kobject_put(ptr noundef %snapshot_kobj) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sysfs_create_device_group(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 960) #9
  %ns_dev_subgroups = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 56
  %3 = ptrtoint ptr %ns_dev_subgroups to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %ns_dev_subgroups, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !261

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @nilfs_kset, align 4
  %ns_dev_kobj = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 54
  %kset = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 54, i32 3
  %5 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %kset, align 8
  %ns_dev_kobj_unregister = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 55
  %6 = ptrtoint ptr %ns_dev_kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ns_dev_kobj_unregister, align 4
  %wait.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 55, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #6
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call6 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %ns_dev_kobj, ptr noundef nonnull @nilfs_dev_ktype, ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef %s_id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_dev_kobject_crit_edge

if.end.cleanup_dev_kobject_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup_dev_kobject

if.end9:                                          ; preds = %if.end
  %7 = ptrtoint ptr %ns_dev_subgroups to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ns_dev_subgroups, align 8
  %sg_mounted_snapshots_kobj.i = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %8, i32 0, i32 4
  %sg_mounted_snapshots_kobj_unregister.i = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr @nilfs_kset, align 4
  %kset.i = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %8, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %kset.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %kset.i, align 4
  %11 = ptrtoint ptr %sg_mounted_snapshots_kobj_unregister.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sg_mounted_snapshots_kobj_unregister.i, align 4
  %wait.i.i = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %8, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #6
  %call.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %sg_mounted_snapshots_kobj.i, ptr noundef nonnull @nilfs_mounted_snapshots_ktype, ptr noundef %ns_dev_kobj, ptr noundef nonnull @.str.22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end13, label %if.end9.cleanup_dev_kobject.sink.split_crit_edge

if.end9.cleanup_dev_kobject.sink.split_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup_dev_kobject.sink.split

if.end13:                                         ; preds = %if.end9
  %12 = ptrtoint ptr %ns_dev_subgroups to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns_dev_subgroups, align 8
  %sg_checkpoints_kobj.i = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %13, i32 0, i32 6
  %sg_checkpoints_kobj_unregister.i = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %13, i32 0, i32 7
  %14 = load ptr, ptr @nilfs_kset, align 4
  %kset.i59 = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %13, i32 0, i32 6, i32 3
  %15 = ptrtoint ptr %kset.i59 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %kset.i59, align 4
  %16 = ptrtoint ptr %sg_checkpoints_kobj_unregister.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sg_checkpoints_kobj_unregister.i, align 4
  %wait.i.i60 = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %13, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i60, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #6
  %call.i61 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %sg_checkpoints_kobj.i, ptr noundef nonnull @nilfs_checkpoints_ktype, ptr noundef %ns_dev_kobj, ptr noundef nonnull @.str.23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %if.end17, label %if.end13.delete_mounted_snapshots_group_crit_edge

if.end13.delete_mounted_snapshots_group_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %delete_mounted_snapshots_group

if.end17:                                         ; preds = %if.end13
  %17 = ptrtoint ptr %ns_dev_subgroups to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ns_dev_subgroups, align 8
  %sg_segments_kobj.i = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %18, i32 0, i32 8
  %sg_segments_kobj_unregister.i = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %18, i32 0, i32 9
  %19 = load ptr, ptr @nilfs_kset, align 4
  %kset.i66 = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %18, i32 0, i32 8, i32 3
  %20 = ptrtoint ptr %kset.i66 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %kset.i66, align 4
  %21 = ptrtoint ptr %sg_segments_kobj_unregister.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %sg_segments_kobj_unregister.i, align 4
  %wait.i.i67 = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %18, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i67, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #6
  %call.i68 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %sg_segments_kobj.i, ptr noundef nonnull @nilfs_segments_ktype, ptr noundef %ns_dev_kobj, ptr noundef nonnull @.str.29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i69 = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i69, label %if.end21, label %if.end17.delete_checkpoints_group_crit_edge

if.end17.delete_checkpoints_group_crit_edge:      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %delete_checkpoints_group

if.end21:                                         ; preds = %if.end17
  %call22 = tail call fastcc i32 @nilfs_sysfs_create_superblock_group(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.delete_segments_group_crit_edge

if.end21.delete_segments_group_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %delete_segments_group

if.end25:                                         ; preds = %if.end21
  %call26 = tail call fastcc i32 @nilfs_sysfs_create_segctor_group(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %delete_superblock_group

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

delete_superblock_group:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %ns_dev_subgroups to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ns_dev_subgroups, align 8
  tail call void @kobject_put(ptr noundef %23) #6
  br label %delete_segments_group

delete_segments_group:                            ; preds = %delete_superblock_group, %if.end21.delete_segments_group_crit_edge
  %err.0 = phi i32 [ %call22, %if.end21.delete_segments_group_crit_edge ], [ %call26, %delete_superblock_group ]
  %24 = ptrtoint ptr %ns_dev_subgroups to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ns_dev_subgroups, align 8
  %sg_segments_kobj.i73 = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %25, i32 0, i32 8
  br label %delete_checkpoints_group

delete_checkpoints_group:                         ; preds = %delete_segments_group, %if.end17.delete_checkpoints_group_crit_edge
  %sg_segments_kobj.i.sink = phi ptr [ %sg_segments_kobj.i73, %delete_segments_group ], [ %sg_segments_kobj.i, %if.end17.delete_checkpoints_group_crit_edge ]
  %err.1 = phi i32 [ %err.0, %delete_segments_group ], [ %call.i68, %if.end17.delete_checkpoints_group_crit_edge ]
  tail call void @kobject_put(ptr noundef %sg_segments_kobj.i.sink) #6
  %26 = ptrtoint ptr %ns_dev_subgroups to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ns_dev_subgroups, align 8
  %sg_checkpoints_kobj.i75 = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %27, i32 0, i32 6
  br label %delete_mounted_snapshots_group

delete_mounted_snapshots_group:                   ; preds = %delete_checkpoints_group, %if.end13.delete_mounted_snapshots_group_crit_edge
  %sg_checkpoints_kobj.i.sink = phi ptr [ %sg_checkpoints_kobj.i75, %delete_checkpoints_group ], [ %sg_checkpoints_kobj.i, %if.end13.delete_mounted_snapshots_group_crit_edge ]
  %err.2 = phi i32 [ %err.1, %delete_checkpoints_group ], [ %call.i61, %if.end13.delete_mounted_snapshots_group_crit_edge ]
  tail call void @kobject_put(ptr noundef %sg_checkpoints_kobj.i.sink) #6
  %28 = ptrtoint ptr %ns_dev_subgroups to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ns_dev_subgroups, align 8
  %sg_mounted_snapshots_kobj.i77 = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %29, i32 0, i32 4
  br label %cleanup_dev_kobject.sink.split

cleanup_dev_kobject.sink.split:                   ; preds = %delete_mounted_snapshots_group, %if.end9.cleanup_dev_kobject.sink.split_crit_edge
  %sg_mounted_snapshots_kobj.i.sink = phi ptr [ %sg_mounted_snapshots_kobj.i77, %delete_mounted_snapshots_group ], [ %sg_mounted_snapshots_kobj.i, %if.end9.cleanup_dev_kobject.sink.split_crit_edge ]
  %err.3.ph = phi i32 [ %err.2, %delete_mounted_snapshots_group ], [ %call.i, %if.end9.cleanup_dev_kobject.sink.split_crit_edge ]
  tail call void @kobject_put(ptr noundef %sg_mounted_snapshots_kobj.i.sink) #6
  br label %cleanup_dev_kobject

cleanup_dev_kobject:                              ; preds = %cleanup_dev_kobject.sink.split, %if.end.cleanup_dev_kobject_crit_edge
  %err.3 = phi i32 [ %call6, %if.end.cleanup_dev_kobject_crit_edge ], [ %err.3.ph, %cleanup_dev_kobject.sink.split ]
  tail call void @kobject_put(ptr noundef %ns_dev_kobj) #6
  %30 = ptrtoint ptr %ns_dev_subgroups to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ns_dev_subgroups, align 8
  tail call void @kfree(ptr noundef %31) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup_dev_kobject, %if.end25.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end25.cleanup_crit_edge ], [ -12, %if.then ], [ %err.3, %cleanup_dev_kobject ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_sysfs_create_superblock_group(ptr noundef %nilfs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_dev_subgroups = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 56
  %0 = ptrtoint ptr %ns_dev_subgroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_dev_subgroups, align 8
  %sg_superblock_kobj_unregister = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %1, i32 0, i32 1
  %ns_dev_kobj = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 54
  %2 = load ptr, ptr @nilfs_kset, align 4
  %kset = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %kset, align 4
  %4 = ptrtoint ptr %sg_superblock_kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sg_superblock_kobj_unregister, align 4
  %wait.i = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %1, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #6
  %call = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %1, ptr noundef nonnull @nilfs_superblock_ktype, ptr noundef %ns_dev_kobj, ptr noundef nonnull @.str.36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kobject_put(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_sysfs_create_segctor_group(ptr noundef %nilfs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_dev_subgroups = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 56
  %0 = ptrtoint ptr %ns_dev_subgroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_dev_subgroups, align 8
  %sg_segctor_kobj = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %1, i32 0, i32 2
  %sg_segctor_kobj_unregister = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %1, i32 0, i32 3
  %ns_dev_kobj = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 54
  %2 = load ptr, ptr @nilfs_kset, align 4
  %kset = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %1, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %kset, align 4
  %4 = ptrtoint ptr %sg_segctor_kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sg_segctor_kobj_unregister, align 4
  %wait.i = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %1, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #6
  %call = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %sg_segctor_kobj, ptr noundef nonnull @nilfs_segctor_ktype, ptr noundef %ns_dev_kobj, ptr noundef nonnull @.str.44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kobject_put(ptr noundef %sg_segctor_kobj) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_sysfs_delete_device_group(ptr noundef %nilfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_dev_subgroups.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 56
  %0 = ptrtoint ptr %ns_dev_subgroups.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_dev_subgroups.i, align 8
  %sg_mounted_snapshots_kobj.i = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %1, i32 0, i32 4
  tail call void @kobject_put(ptr noundef %sg_mounted_snapshots_kobj.i) #6
  %2 = ptrtoint ptr %ns_dev_subgroups.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_dev_subgroups.i, align 8
  %sg_checkpoints_kobj.i = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %3, i32 0, i32 6
  tail call void @kobject_put(ptr noundef %sg_checkpoints_kobj.i) #6
  %4 = ptrtoint ptr %ns_dev_subgroups.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns_dev_subgroups.i, align 8
  %sg_segments_kobj.i = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %5, i32 0, i32 8
  tail call void @kobject_put(ptr noundef %sg_segments_kobj.i) #6
  %6 = ptrtoint ptr %ns_dev_subgroups.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns_dev_subgroups.i, align 8
  tail call void @kobject_put(ptr noundef %7) #6
  %8 = ptrtoint ptr %ns_dev_subgroups.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns_dev_subgroups.i, align 8
  %sg_segctor_kobj.i = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %9, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %sg_segctor_kobj.i) #6
  %ns_dev_kobj = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 54
  tail call void @kobject_del(ptr noundef %ns_dev_kobj) #6
  tail call void @kobject_put(ptr noundef %ns_dev_kobj) #6
  %10 = ptrtoint ptr %ns_dev_subgroups.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ns_dev_subgroups.i, align 8
  tail call void @kfree(ptr noundef %11) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sysfs_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %0 = load ptr, ptr @fs_kobj, align 4
  %call = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef %0) #6
  store ptr %call, ptr @nilfs_kset, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef -12) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.kset, ptr %call, i32 0, i32 2
  %call1 = tail call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef nonnull @nilfs_feature_attr_group) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then5, !prof !262

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef %call1) #6
  %1 = load ptr, ptr @nilfs_kset, align 4
  tail call void @kset_unregister(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call1, %if.then5 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_sysfs_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nilfs_kset, align 4
  %kobj = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2
  tail call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef nonnull @nilfs_feature_attr_group) #6
  %1 = load ptr, ptr @nilfs_kset, align 4
  tail call void @kset_unregister(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_snapshot_attr_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %snapshot_kobj_unregister = getelementptr i8, ptr %kobj, i32 136
  tail call void @complete(ptr noundef %snapshot_kobj_unregister) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_snapshot_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.nilfs_snapshot_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %kobj, i32 -48
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_snapshot_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.nilfs_snapshot_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %kobj, i32 -48
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_snapshot_inodes_count_show(ptr nocapture noundef readnone %attr, ptr noundef %root, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inodes_count = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inodes_count, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %inodes_count) #6
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %call.i) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_snapshot_blocks_count_show(ptr nocapture noundef readnone %attr, ptr noundef %root, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %blocks_count = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %blocks_count, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %blocks_count) #6
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %call.i) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_snapshot_README_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %root, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @snapshot_readme_str) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_dev_attr_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_dev_kobj_unregister = getelementptr i8, ptr %kobj, i32 136
  tail call void @complete(ptr noundef %ns_dev_kobj_unregister) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_dev_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.nilfs_dev_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %kobj, i32 -720
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_dev_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.nilfs_dev_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %kobj, i32 -720
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_dev_revision_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_sbp = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 7
  %0 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_sbp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %s_minor_rev_level = getelementptr inbounds %struct.nilfs_super_block, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %s_minor_rev_level to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %s_minor_rev_level, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %7 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %4, i32 noundef %conv) #6
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_dev_blocksize_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_blocksize = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 45
  %0 = ptrtoint ptr %ns_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ns_blocksize, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_dev_device_size_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_sbp = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 7
  %0 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_sbp, align 4
  %s_dev_size = getelementptr inbounds %struct.nilfs_super_block, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %s_dev_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %s_dev_size, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3)
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %4) #6
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_dev_free_blocks_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  %free_blocks = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %free_blocks) #6
  %0 = ptrtoint ptr %free_blocks to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %free_blocks, align 8
  %call = call i32 @nilfs_count_free_blocks(ptr noundef %nilfs, ptr noundef nonnull %free_blocks) #6
  %1 = ptrtoint ptr %free_blocks to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %free_blocks, align 8
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %free_blocks) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_count_free_blocks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_dev_uuid_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_sbp = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 7
  %0 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_sbp, align 4
  %s_uuid = getelementptr inbounds %struct.nilfs_super_block, ptr %1, i32 0, i32 34
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, ptr noundef %s_uuid) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_dev_volume_name_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_sbp = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 7
  %0 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_sbp, align 4
  %s_volume_name = getelementptr inbounds %struct.nilfs_super_block, ptr %1, i32 0, i32 35
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 80, ptr noundef nonnull @.str.21, ptr noundef %s_volume_name) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_dev_README_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @dev_readme_str) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_mounted_snapshots_attr_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_mounted_snapshots_kobj_unregister = getelementptr i8, ptr %kobj, i32 136
  tail call void @complete(ptr noundef %sg_mounted_snapshots_kobj_unregister) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_mounted_snapshots_attr_show(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.nilfs_mounted_snapshots_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -720
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_mounted_snapshots_attr_store(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.nilfs_mounted_snapshots_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -720
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_mounted_snapshots_README_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @mounted_snapshots_readme_str) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_checkpoints_attr_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_checkpoints_kobj_unregister = getelementptr i8, ptr %kobj, i32 136
  tail call void @complete(ptr noundef %sg_checkpoints_kobj_unregister) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_checkpoints_attr_show(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.nilfs_checkpoints_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -720
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_checkpoints_attr_store(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.nilfs_checkpoints_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -720
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_checkpoints_checkpoints_number_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  %cpstat = alloca %struct.nilfs_cpstat, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cpstat) #6
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  %0 = call ptr @memset(ptr %cpstat, i32 255, i32 24)
  tail call void @down_read(ptr noundef %ns_segctor_sem) #6
  %ns_cpfile = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 30
  %1 = ptrtoint ptr %ns_cpfile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ns_cpfile, align 8
  %call = call i32 @nilfs_cpfile_get_stat(ptr noundef %2, ptr noundef nonnull %cpstat) #6
  call void @up_read(ptr noundef %ns_segctor_sem) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ns_sb = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %3 = ptrtoint ptr %ns_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns_sb, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %4, ptr noundef nonnull @.str.25, i32 noundef %call) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = getelementptr inbounds %struct.nilfs_cpstat, ptr %cpstat, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cpstat) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_cpfile_get_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_checkpoints_snapshots_number_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  %cpstat = alloca %struct.nilfs_cpstat, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cpstat) #6
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  %0 = call ptr @memset(ptr %cpstat, i32 255, i32 24)
  tail call void @down_read(ptr noundef %ns_segctor_sem) #6
  %ns_cpfile = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 30
  %1 = ptrtoint ptr %ns_cpfile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ns_cpfile, align 8
  %call = call i32 @nilfs_cpfile_get_stat(ptr noundef %2, ptr noundef nonnull %cpstat) #6
  call void @up_read(ptr noundef %ns_segctor_sem) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ns_sb = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %3 = ptrtoint ptr %ns_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns_sb, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %4, ptr noundef nonnull @.str.25, i32 noundef %call) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = getelementptr inbounds %struct.nilfs_cpstat, ptr %cpstat, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cpstat) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_checkpoints_last_seg_checkpoint_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_last_segment_lock = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %ns_last_segment_lock) #6
  %ns_last_cno = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 24
  %0 = ptrtoint ptr %ns_last_cno to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_last_cno, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ns_last_segment_lock) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_checkpoints_next_checkpoint_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #6
  %ns_cno = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 17
  %0 = ptrtoint ptr %ns_cno to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_cno, align 8
  tail call void @up_read(ptr noundef %ns_segctor_sem) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_checkpoints_README_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @checkpoints_readme_str) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_segments_attr_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_segments_kobj_unregister = getelementptr i8, ptr %kobj, i32 136
  tail call void @complete(ptr noundef %sg_segments_kobj_unregister) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segments_attr_show(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.nilfs_segments_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -720
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segments_attr_store(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.nilfs_segments_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -720
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segments_segments_number_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_nsegments = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 46
  %0 = ptrtoint ptr %ns_nsegments to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ns_nsegments, align 8
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segments_blocks_per_segment_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_blocks_per_segment = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 47
  %0 = ptrtoint ptr %ns_blocks_per_segment to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ns_blocks_per_segment, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segments_clean_segments_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_dat = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 29
  %0 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_dat, align 4
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  tail call void @down_read(ptr noundef %3) #6
  %ns_sufile = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 31
  %4 = ptrtoint ptr %ns_sufile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns_sufile, align 4
  %call1 = tail call i32 @nilfs_sufile_get_ncleansegs(ptr noundef %5) #6
  %6 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns_dat, align 4
  %i_private.i8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %i_private.i8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_private.i8, align 4
  tail call void @up_read(ptr noundef %9) #6
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %call1) #6
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_get_ncleansegs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segments_dirty_segments_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  %sustat = alloca %struct.nilfs_sustat, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sustat) #6
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  %0 = call ptr @memset(ptr %sustat, i32 255, i32 48)
  tail call void @down_read(ptr noundef %ns_segctor_sem) #6
  %ns_sufile = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 31
  %1 = ptrtoint ptr %ns_sufile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ns_sufile, align 4
  %call = call i32 @nilfs_sufile_get_stat(ptr noundef %2, ptr noundef nonnull %sustat) #6
  call void @up_read(ptr noundef %ns_segctor_sem) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ns_sb = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %3 = ptrtoint ptr %ns_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns_sb, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %4, ptr noundef nonnull @.str.35, i32 noundef %call) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = getelementptr inbounds %struct.nilfs_sustat, ptr %sustat, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sustat) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_get_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segments_README_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @segments_readme_str) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_superblock_attr_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_superblock_kobj_unregister = getelementptr inbounds %struct.nilfs_sysfs_dev_subgroups, ptr %kobj, i32 0, i32 1
  tail call void @complete(ptr noundef %sg_superblock_kobj_unregister) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_superblock_attr_show(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.nilfs_superblock_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -720
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_superblock_attr_store(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.nilfs_superblock_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -720
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_superblock_sb_write_time_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  %sbwtime = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sbwtime) #6
  %ns_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 4
  tail call void @down_read(ptr noundef %ns_sem) #6
  %ns_sbwtime = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 8
  %0 = ptrtoint ptr %ns_sbwtime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_sbwtime, align 8
  %2 = ptrtoint ptr %sbwtime to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %sbwtime, align 8
  tail call void @up_read(ptr noundef %ns_sem) #6
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.38, ptr noundef nonnull %sbwtime) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sbwtime) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_superblock_sb_write_time_secs_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 4
  tail call void @down_read(ptr noundef %ns_sem) #6
  %ns_sbwtime = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 8
  %0 = ptrtoint ptr %ns_sbwtime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_sbwtime, align 8
  tail call void @up_read(ptr noundef %ns_sem) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_superblock_sb_write_count_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 4
  tail call void @down_read(ptr noundef %ns_sem) #6
  %ns_sbwcount = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 9
  %0 = ptrtoint ptr %ns_sbwcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ns_sbwcount, align 8
  tail call void @up_read(ptr noundef %ns_sem) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_superblock_sb_update_frequency_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 4
  tail call void @down_read(ptr noundef %ns_sem) #6
  %ns_sb_update_freq = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 12
  %0 = ptrtoint ptr %ns_sb_update_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ns_sb_update_freq, align 4
  tail call void @up_read(ptr noundef %ns_sem) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_superblock_sb_update_frequency_store(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !263
  %call = tail call ptr @skip_spaces(ptr noundef %buf) #6
  %call1 = call i32 @kstrtouint(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ns_sb = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %1 = ptrtoint ptr %ns_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ns_sb, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %2, ptr noundef nonnull @.str.42, i32 noundef %call1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %4)
  %cmp = icmp ult i32 %4, 10
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %val, align 4
  %ns_sb3 = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %6 = ptrtoint ptr %ns_sb3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns_sb3, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %7, ptr noundef nonnull @.str.43) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %ns_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 4
  call void @down_write(ptr noundef %ns_sem) #6
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %ns_sb_update_freq = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 12
  %10 = ptrtoint ptr %ns_sb_update_freq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ns_sb_update_freq, align 4
  call void @up_write(ptr noundef %ns_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %count, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_superblock_README_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @sb_readme_str) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_segctor_attr_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_segctor_kobj_unregister = getelementptr i8, ptr %kobj, i32 136
  tail call void @complete(ptr noundef %sg_segctor_kobj_unregister) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_attr_show(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.nilfs_segctor_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -720
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_attr_store(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.nilfs_segctor_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -720
  %call = tail call i32 %1(ptr noundef %attr, ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_last_pseg_block_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_last_segment_lock = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %ns_last_segment_lock) #6
  %ns_last_pseg = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 22
  %0 = ptrtoint ptr %ns_last_pseg to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_last_pseg, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ns_last_segment_lock) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_last_seg_sequence_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_last_segment_lock = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %ns_last_segment_lock) #6
  %ns_last_seq = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 23
  %0 = ptrtoint ptr %ns_last_seq to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_last_seq, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ns_last_segment_lock) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_last_seg_checkpoint_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_last_segment_lock = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %ns_last_segment_lock) #6
  %ns_last_cno = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 24
  %0 = ptrtoint ptr %ns_last_cno to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_last_cno, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ns_last_segment_lock) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_current_seg_sequence_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #6
  %ns_seg_seq = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 13
  %0 = ptrtoint ptr %ns_seg_seq to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_seg_seq, align 8
  tail call void @up_read(ptr noundef %ns_segctor_sem) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_current_last_full_seg_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #6
  %ns_segnum = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 14
  %0 = ptrtoint ptr %ns_segnum to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_segnum, align 8
  tail call void @up_read(ptr noundef %ns_segctor_sem) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_next_full_seg_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #6
  %ns_nextnum = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 15
  %0 = ptrtoint ptr %ns_nextnum to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_nextnum, align 8
  tail call void @up_read(ptr noundef %ns_segctor_sem) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_next_pseg_offset_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #6
  %ns_pseg_offset = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 16
  %0 = ptrtoint ptr %ns_pseg_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ns_pseg_offset, align 8
  tail call void @up_read(ptr noundef %ns_segctor_sem) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_next_checkpoint_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #6
  %ns_cno = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 17
  %0 = ptrtoint ptr %ns_cno to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_cno, align 8
  tail call void @up_read(ptr noundef %ns_segctor_sem) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_last_seg_write_time_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  %ctime = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctime) #6
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #6
  %ns_ctime = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 18
  %0 = ptrtoint ptr %ns_ctime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_ctime, align 8
  %2 = ptrtoint ptr %ctime to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %ctime, align 8
  tail call void @up_read(ptr noundef %ns_segctor_sem) #6
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.38, ptr noundef nonnull %ctime) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctime) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_last_seg_write_time_secs_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #6
  %ns_ctime = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 18
  %0 = ptrtoint ptr %ns_ctime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_ctime, align 8
  tail call void @up_read(ptr noundef %ns_segctor_sem) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_last_nongc_write_time_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  %nongc_ctime = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nongc_ctime) #6
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #6
  %ns_nongc_ctime = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 19
  %0 = ptrtoint ptr %ns_nongc_ctime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_nongc_ctime, align 8
  %2 = ptrtoint ptr %nongc_ctime to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %nongc_ctime, align 8
  tail call void @up_read(ptr noundef %ns_segctor_sem) #6
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.38, ptr noundef nonnull %nongc_ctime) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nongc_ctime) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_last_nongc_write_time_secs_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #6
  %ns_nongc_ctime = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 19
  %0 = ptrtoint ptr %ns_nongc_ctime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ns_nongc_ctime, align 8
  tail call void @up_read(ptr noundef %ns_segctor_sem) #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_dirty_data_blocks_count_show(ptr nocapture noundef readnone %attr, ptr noundef %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #6
  %ns_ndirtyblks = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ns_ndirtyblks, i32 noundef 4) #6
  %0 = ptrtoint ptr %ns_ndirtyblks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ns_ndirtyblks, align 4
  tail call void @up_read(ptr noundef %ns_segctor_sem) #6
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %1) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_README_show(ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %nilfs, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @segctor_readme_str) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_feature_revision_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef 2, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_feature_README_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @features_readme_str) #6
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !28, !30, !31, !33, !35, !36, !38, !39, !41, !43, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !62, !63, !65, !66, !68, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !104, !106, !108, !109, !111, !113, !114, !116, !117, !119, !120, !122, !124, !126, !128, !130, !132, !133, !135, !137, !138, !140, !142, !143, !145, !146, !148, !149, !151, !153, !155, !157, !159, !161, !163, !164, !166, !168, !169, !171, !173, !174, !176, !177, !179, !180, !182, !184, !186, !188, !190, !192, !194, !196, !197, !199, !201, !202, !204, !205, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !240, !242, !244, !246, !248, !250}
!llvm.module.flags = !{!252, !253, !254, !255, !256, !257, !258, !259}
!llvm.ident = !{!260}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/sysfs.c", i32 190, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nilfs2/sysfs.c", i32 195, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nilfs2/sysfs.c", i32 985, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nilfs2/sysfs.c", i32 992, i32 9}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nilfs2/sysfs.c", i32 1091, i32 35}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nilfs2/sysfs.c", i32 1094, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nilfs2/sysfs.c", i32 1100, i32 3}
!14 = !{ptr @nilfs_kset, !15, !"nilfs_kset", i1 false, i1 false}
!15 = !{!"../fs/nilfs2/sysfs.c", i32 20, i32 21}
!16 = !{ptr @init_completion.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/completion.h", i32 87, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nilfs_snapshot_ktype, !20, !"nilfs_snapshot_ktype", i1 false, i1 false}
!20 = !{!"../fs/nilfs2/sysfs.c", i32 169, i32 25}
!21 = !{ptr @nilfs_snapshot_attr_ops, !22, !"nilfs_snapshot_attr_ops", i1 false, i1 false}
!22 = !{!"../fs/nilfs2/sysfs.c", i32 164, i32 31}
!23 = !{ptr @nilfs_snapshot_groups, !24, !"nilfs_snapshot_groups", i1 false, i1 false}
!24 = !{!"../fs/nilfs2/sysfs.c", i32 132, i32 1}
!25 = !{ptr @nilfs_snapshot_group, !24, !"nilfs_snapshot_group", i1 false, i1 false}
!26 = !{ptr @nilfs_snapshot_attrs, !27, !"nilfs_snapshot_attrs", i1 false, i1 false}
!27 = !{!"../fs/nilfs2/sysfs.c", i32 126, i32 26}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/nilfs2/sysfs.c", i32 122, i32 1}
!30 = !{ptr @nilfs_snapshot_attr_inodes_count, !29, !"nilfs_snapshot_attr_inodes_count", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/nilfs2/sysfs.c", i32 98, i32 25}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/nilfs2/sysfs.c", i32 123, i32 1}
!35 = !{ptr @nilfs_snapshot_attr_blocks_count, !34, !"nilfs_snapshot_attr_blocks_count", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/nilfs2/sysfs.c", i32 124, i32 1}
!38 = !{ptr @nilfs_snapshot_attr_README, !37, !"nilfs_snapshot_attr_README", i1 false, i1 false}
!39 = !{ptr @snapshot_readme_str, !40, !"snapshot_readme_str", i1 false, i1 false}
!40 = !{!"../fs/nilfs2/sysfs.c", i32 110, i32 19}
!41 = !{ptr @nilfs_dev_ktype, !42, !"nilfs_dev_ktype", i1 false, i1 false}
!42 = !{!"../fs/nilfs2/sysfs.c", i32 970, i32 25}
!43 = !{ptr @nilfs_dev_attr_ops, !44, !"nilfs_dev_attr_ops", i1 false, i1 false}
!44 = !{!"../fs/nilfs2/sysfs.c", i32 965, i32 31}
!45 = !{ptr @nilfs_dev_groups, !46, !"nilfs_dev_groups", i1 false, i1 false}
!46 = !{!"../fs/nilfs2/sysfs.c", i32 933, i32 1}
!47 = !{ptr @nilfs_dev_group, !46, !"nilfs_dev_group", i1 false, i1 false}
!48 = !{ptr @nilfs_dev_attrs, !49, !"nilfs_dev_attrs", i1 false, i1 false}
!49 = !{!"../fs/nilfs2/sysfs.c", i32 923, i32 26}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/nilfs2/sysfs.c", i32 915, i32 1}
!52 = !{ptr @nilfs_dev_attr_revision, !51, !"nilfs_dev_attr_revision", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/nilfs2/sysfs.c", i32 843, i32 25}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/nilfs2/sysfs.c", i32 916, i32 1}
!57 = !{ptr @nilfs_dev_attr_blocksize, !56, !"nilfs_dev_attr_blocksize", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/nilfs2/sysfs.c", i32 851, i32 25}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/nilfs2/sysfs.c", i32 917, i32 1}
!62 = !{ptr @nilfs_dev_attr_device_size, !61, !"nilfs_dev_attr_device_size", i1 false, i1 false}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/nilfs2/sysfs.c", i32 918, i32 1}
!65 = !{ptr @nilfs_dev_attr_free_blocks, !64, !"nilfs_dev_attr_free_blocks", i1 false, i1 false}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/nilfs2/sysfs.c", i32 919, i32 1}
!68 = !{ptr @nilfs_dev_attr_uuid, !67, !"nilfs_dev_attr_uuid", i1 false, i1 false}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/nilfs2/sysfs.c", i32 884, i32 25}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/nilfs2/sysfs.c", i32 920, i32 1}
!73 = !{ptr @nilfs_dev_attr_volume_name, !72, !"nilfs_dev_attr_volume_name", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/nilfs2/sysfs.c", i32 894, i32 55}
!76 = !{ptr @nilfs_dev_attr_README, !77, !"nilfs_dev_attr_README", i1 false, i1 false}
!77 = !{!"../fs/nilfs2/sysfs.c", i32 921, i32 1}
!78 = !{ptr @dev_readme_str, !79, !"dev_readme_str", i1 false, i1 false}
!79 = !{!"../fs/nilfs2/sysfs.c", i32 898, i32 19}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/nilfs2/sysfs.c", i32 234, i32 1}
!82 = !{ptr @nilfs_mounted_snapshots_ktype, !83, !"nilfs_mounted_snapshots_ktype", i1 false, i1 false}
!83 = !{!"../fs/nilfs2/sysfs.c", i32 233, i32 1}
!84 = !{ptr @nilfs_mounted_snapshots_attr_ops, !85, !"nilfs_mounted_snapshots_attr_ops", i1 false, i1 false}
!85 = !{!"../fs/nilfs2/sysfs.c", i32 232, i32 1}
!86 = !{ptr @nilfs_mounted_snapshots_groups, !87, !"nilfs_mounted_snapshots_groups", i1 false, i1 false}
!87 = !{!"../fs/nilfs2/sysfs.c", i32 230, i32 1}
!88 = !{ptr @nilfs_mounted_snapshots_group, !87, !"nilfs_mounted_snapshots_group", i1 false, i1 false}
!89 = !{ptr @nilfs_mounted_snapshots_attrs, !90, !"nilfs_mounted_snapshots_attrs", i1 false, i1 false}
!90 = !{!"../fs/nilfs2/sysfs.c", i32 226, i32 26}
!91 = !{ptr @nilfs_mounted_snapshots_attr_README, !92, !"nilfs_mounted_snapshots_attr_README", i1 false, i1 false}
!92 = !{!"../fs/nilfs2/sysfs.c", i32 224, i32 1}
!93 = !{ptr @mounted_snapshots_readme_str, !94, !"mounted_snapshots_readme_str", i1 false, i1 false}
!94 = !{!"../fs/nilfs2/sysfs.c", i32 213, i32 19}
!95 = !{ptr @.str.23, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/nilfs2/sysfs.c", i32 348, i32 1}
!97 = !{ptr @nilfs_checkpoints_ktype, !98, !"nilfs_checkpoints_ktype", i1 false, i1 false}
!98 = !{!"../fs/nilfs2/sysfs.c", i32 347, i32 1}
!99 = !{ptr @nilfs_checkpoints_attr_ops, !100, !"nilfs_checkpoints_attr_ops", i1 false, i1 false}
!100 = !{!"../fs/nilfs2/sysfs.c", i32 346, i32 1}
!101 = !{ptr @nilfs_checkpoints_groups, !102, !"nilfs_checkpoints_groups", i1 false, i1 false}
!102 = !{!"../fs/nilfs2/sysfs.c", i32 344, i32 1}
!103 = !{ptr @nilfs_checkpoints_group, !102, !"nilfs_checkpoints_group", i1 false, i1 false}
!104 = !{ptr @nilfs_checkpoints_attrs, !105, !"nilfs_checkpoints_attrs", i1 false, i1 false}
!105 = !{!"../fs/nilfs2/sysfs.c", i32 336, i32 26}
!106 = !{ptr @.str.24, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/nilfs2/sysfs.c", i32 330, i32 1}
!108 = !{ptr @nilfs_checkpoints_attr_checkpoints_number, !107, !"nilfs_checkpoints_attr_checkpoints_number", i1 false, i1 false}
!109 = !{ptr @.str.25, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/nilfs2/sysfs.c", i32 253, i32 3}
!111 = !{ptr @.str.26, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/nilfs2/sysfs.c", i32 331, i32 1}
!113 = !{ptr @nilfs_checkpoints_attr_snapshots_number, !112, !"nilfs_checkpoints_attr_snapshots_number", i1 false, i1 false}
!114 = !{ptr @.str.27, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/nilfs2/sysfs.c", i32 332, i32 1}
!116 = !{ptr @nilfs_checkpoints_attr_last_seg_checkpoint, !115, !"nilfs_checkpoints_attr_last_seg_checkpoint", i1 false, i1 false}
!117 = !{ptr @.str.28, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/nilfs2/sysfs.c", i32 333, i32 1}
!119 = !{ptr @nilfs_checkpoints_attr_next_checkpoint, !118, !"nilfs_checkpoints_attr_next_checkpoint", i1 false, i1 false}
!120 = !{ptr @nilfs_checkpoints_attr_README, !121, !"nilfs_checkpoints_attr_README", i1 false, i1 false}
!121 = !{!"../fs/nilfs2/sysfs.c", i32 334, i32 1}
!122 = !{ptr @checkpoints_readme_str, !123, !"checkpoints_readme_str", i1 false, i1 false}
!123 = !{!"../fs/nilfs2/sysfs.c", i32 314, i32 19}
!124 = !{ptr @.str.29, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/nilfs2/sysfs.c", i32 438, i32 1}
!126 = !{ptr @nilfs_segments_ktype, !127, !"nilfs_segments_ktype", i1 false, i1 false}
!127 = !{!"../fs/nilfs2/sysfs.c", i32 437, i32 1}
!128 = !{ptr @nilfs_segments_attr_ops, !129, !"nilfs_segments_attr_ops", i1 false, i1 false}
!129 = !{!"../fs/nilfs2/sysfs.c", i32 436, i32 1}
!130 = !{ptr @nilfs_segments_groups, !131, !"nilfs_segments_groups", i1 false, i1 false}
!131 = !{!"../fs/nilfs2/sysfs.c", i32 434, i32 1}
!132 = !{ptr @nilfs_segments_group, !131, !"nilfs_segments_group", i1 false, i1 false}
!133 = !{ptr @nilfs_segments_attrs, !134, !"nilfs_segments_attrs", i1 false, i1 false}
!134 = !{!"../fs/nilfs2/sysfs.c", i32 426, i32 26}
!135 = !{ptr @.str.30, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/nilfs2/sysfs.c", i32 420, i32 1}
!137 = !{ptr @nilfs_segments_attr_segments_number, !136, !"nilfs_segments_attr_segments_number", i1 false, i1 false}
!138 = !{ptr @.str.31, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/nilfs2/sysfs.c", i32 359, i32 25}
!140 = !{ptr @.str.32, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/nilfs2/sysfs.c", i32 421, i32 1}
!142 = !{ptr @nilfs_segments_attr_blocks_per_segment, !141, !"nilfs_segments_attr_blocks_per_segment", i1 false, i1 false}
!143 = !{ptr @.str.33, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/nilfs2/sysfs.c", i32 422, i32 1}
!145 = !{ptr @nilfs_segments_attr_clean_segments, !144, !"nilfs_segments_attr_clean_segments", i1 false, i1 false}
!146 = !{ptr @.str.34, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/nilfs2/sysfs.c", i32 423, i32 1}
!148 = !{ptr @nilfs_segments_attr_dirty_segments, !147, !"nilfs_segments_attr_dirty_segments", i1 false, i1 false}
!149 = !{ptr @.str.35, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/nilfs2/sysfs.c", i32 396, i32 3}
!151 = !{ptr @nilfs_segments_attr_README, !152, !"nilfs_segments_attr_README", i1 false, i1 false}
!152 = !{!"../fs/nilfs2/sysfs.c", i32 424, i32 1}
!153 = !{ptr @segments_readme_str, !154, !"segments_readme_str", i1 false, i1 false}
!154 = !{!"../fs/nilfs2/sysfs.c", i32 404, i32 19}
!155 = !{ptr @.str.36, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/nilfs2/sysfs.c", i32 828, i32 1}
!157 = !{ptr @nilfs_superblock_ktype, !158, !"nilfs_superblock_ktype", i1 false, i1 false}
!158 = !{!"../fs/nilfs2/sysfs.c", i32 827, i32 1}
!159 = !{ptr @nilfs_superblock_attr_ops, !160, !"nilfs_superblock_attr_ops", i1 false, i1 false}
!160 = !{!"../fs/nilfs2/sysfs.c", i32 826, i32 1}
!161 = !{ptr @nilfs_superblock_groups, !162, !"nilfs_superblock_groups", i1 false, i1 false}
!162 = !{!"../fs/nilfs2/sysfs.c", i32 824, i32 1}
!163 = !{ptr @nilfs_superblock_group, !162, !"nilfs_superblock_group", i1 false, i1 false}
!164 = !{ptr @nilfs_superblock_attrs, !165, !"nilfs_superblock_attrs", i1 false, i1 false}
!165 = !{!"../fs/nilfs2/sysfs.c", i32 816, i32 26}
!166 = !{ptr @.str.37, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/nilfs2/sysfs.c", i32 810, i32 1}
!168 = !{ptr @nilfs_superblock_attr_sb_write_time, !167, !"nilfs_superblock_attr_sb_write_time", i1 false, i1 false}
!169 = !{ptr @.str.38, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/nilfs2/sysfs.c", i32 717, i32 25}
!171 = !{ptr @.str.39, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/nilfs2/sysfs.c", i32 811, i32 1}
!173 = !{ptr @nilfs_superblock_attr_sb_write_time_secs, !172, !"nilfs_superblock_attr_sb_write_time_secs", i1 false, i1 false}
!174 = !{ptr @.str.40, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/nilfs2/sysfs.c", i32 812, i32 1}
!176 = !{ptr @nilfs_superblock_attr_sb_write_count, !175, !"nilfs_superblock_attr_sb_write_count", i1 false, i1 false}
!177 = !{ptr @.str.41, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/nilfs2/sysfs.c", i32 813, i32 1}
!179 = !{ptr @nilfs_superblock_attr_sb_update_frequency, !178, !"nilfs_superblock_attr_sb_update_frequency", i1 false, i1 false}
!180 = !{ptr @.str.42, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/nilfs2/sysfs.c", i32 772, i32 3}
!182 = !{ptr @.str.43, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/nilfs2/sysfs.c", i32 779, i32 3}
!184 = !{ptr @nilfs_superblock_attr_README, !185, !"nilfs_superblock_attr_README", i1 false, i1 false}
!185 = !{!"../fs/nilfs2/sysfs.c", i32 814, i32 1}
!186 = !{ptr @sb_readme_str, !187, !"sb_readme_str", i1 false, i1 false}
!187 = !{!"../fs/nilfs2/sysfs.c", i32 790, i32 19}
!188 = !{ptr @.str.44, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/nilfs2/sysfs.c", i32 700, i32 1}
!190 = !{ptr @nilfs_segctor_ktype, !191, !"nilfs_segctor_ktype", i1 false, i1 false}
!191 = !{!"../fs/nilfs2/sysfs.c", i32 699, i32 1}
!192 = !{ptr @nilfs_segctor_attr_ops, !193, !"nilfs_segctor_attr_ops", i1 false, i1 false}
!193 = !{!"../fs/nilfs2/sysfs.c", i32 698, i32 1}
!194 = !{ptr @nilfs_segctor_groups, !195, !"nilfs_segctor_groups", i1 false, i1 false}
!195 = !{!"../fs/nilfs2/sysfs.c", i32 696, i32 1}
!196 = !{ptr @nilfs_segctor_group, !195, !"nilfs_segctor_group", i1 false, i1 false}
!197 = !{ptr @nilfs_segctor_attrs, !198, !"nilfs_segctor_attrs", i1 false, i1 false}
!198 = !{!"../fs/nilfs2/sysfs.c", i32 679, i32 26}
!199 = !{ptr @.str.45, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/nilfs2/sysfs.c", i32 664, i32 1}
!201 = !{ptr @nilfs_segctor_attr_last_pseg_block, !200, !"nilfs_segctor_attr_last_pseg_block", i1 false, i1 false}
!202 = !{ptr @.str.46, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/nilfs2/sysfs.c", i32 665, i32 1}
!204 = !{ptr @nilfs_segctor_attr_last_seg_sequence, !203, !"nilfs_segctor_attr_last_seg_sequence", i1 false, i1 false}
!205 = !{ptr @nilfs_segctor_attr_last_seg_checkpoint, !206, !"nilfs_segctor_attr_last_seg_checkpoint", i1 false, i1 false}
!206 = !{!"../fs/nilfs2/sysfs.c", i32 666, i32 1}
!207 = !{ptr @.str.47, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/nilfs2/sysfs.c", i32 667, i32 1}
!209 = !{ptr @nilfs_segctor_attr_current_seg_sequence, !208, !"nilfs_segctor_attr_current_seg_sequence", i1 false, i1 false}
!210 = !{ptr @.str.48, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/nilfs2/sysfs.c", i32 668, i32 1}
!212 = !{ptr @nilfs_segctor_attr_current_last_full_seg, !211, !"nilfs_segctor_attr_current_last_full_seg", i1 false, i1 false}
!213 = !{ptr @.str.49, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/nilfs2/sysfs.c", i32 669, i32 1}
!215 = !{ptr @nilfs_segctor_attr_next_full_seg, !214, !"nilfs_segctor_attr_next_full_seg", i1 false, i1 false}
!216 = !{ptr @.str.50, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/nilfs2/sysfs.c", i32 670, i32 1}
!218 = !{ptr @nilfs_segctor_attr_next_pseg_offset, !217, !"nilfs_segctor_attr_next_pseg_offset", i1 false, i1 false}
!219 = !{ptr @nilfs_segctor_attr_next_checkpoint, !220, !"nilfs_segctor_attr_next_checkpoint", i1 false, i1 false}
!220 = !{!"../fs/nilfs2/sysfs.c", i32 671, i32 1}
!221 = !{ptr @.str.51, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/nilfs2/sysfs.c", i32 672, i32 1}
!223 = !{ptr @nilfs_segctor_attr_last_seg_write_time, !222, !"nilfs_segctor_attr_last_seg_write_time", i1 false, i1 false}
!224 = !{ptr @.str.52, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/nilfs2/sysfs.c", i32 673, i32 1}
!226 = !{ptr @nilfs_segctor_attr_last_seg_write_time_secs, !225, !"nilfs_segctor_attr_last_seg_write_time_secs", i1 false, i1 false}
!227 = !{ptr @.str.53, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/nilfs2/sysfs.c", i32 674, i32 1}
!229 = !{ptr @nilfs_segctor_attr_last_nongc_write_time, !228, !"nilfs_segctor_attr_last_nongc_write_time", i1 false, i1 false}
!230 = !{ptr @.str.54, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/nilfs2/sysfs.c", i32 675, i32 1}
!232 = !{ptr @nilfs_segctor_attr_last_nongc_write_time_secs, !231, !"nilfs_segctor_attr_last_nongc_write_time_secs", i1 false, i1 false}
!233 = !{ptr @.str.55, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/nilfs2/sysfs.c", i32 676, i32 1}
!235 = !{ptr @nilfs_segctor_attr_dirty_data_blocks_count, !234, !"nilfs_segctor_attr_dirty_data_blocks_count", i1 false, i1 false}
!236 = !{ptr @nilfs_segctor_attr_README, !237, !"nilfs_segctor_attr_README", i1 false, i1 false}
!237 = !{!"../fs/nilfs2/sysfs.c", i32 677, i32 1}
!238 = !{ptr @segctor_readme_str, !239, !"segctor_readme_str", i1 false, i1 false}
!239 = !{!"../fs/nilfs2/sysfs.c", i32 627, i32 19}
!240 = !{ptr @.str.56, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/nilfs2/sysfs.c", i32 1083, i32 10}
!242 = !{ptr @nilfs_feature_attr_group, !243, !"nilfs_feature_attr_group", i1 false, i1 false}
!243 = !{!"../fs/nilfs2/sysfs.c", i32 1082, i32 37}
!244 = !{ptr @nilfs_feature_attrs, !245, !"nilfs_feature_attrs", i1 false, i1 false}
!245 = !{!"../fs/nilfs2/sysfs.c", i32 1076, i32 26}
!246 = !{ptr @nilfs_feature_attr_revision, !247, !"nilfs_feature_attr_revision", i1 false, i1 false}
!247 = !{!"../fs/nilfs2/sysfs.c", i32 1073, i32 1}
!248 = !{ptr @nilfs_feature_attr_README, !249, !"nilfs_feature_attr_README", i1 false, i1 false}
!249 = !{!"../fs/nilfs2/sysfs.c", i32 1074, i32 1}
!250 = !{ptr @features_readme_str, !251, !"features_readme_str", i1 false, i1 false}
!251 = !{!"../fs/nilfs2/sysfs.c", i32 1061, i32 19}
!252 = !{i32 1, !"wchar_size", i32 2}
!253 = !{i32 1, !"min_enum_size", i32 4}
!254 = !{i32 8, !"branch-target-enforcement", i32 0}
!255 = !{i32 8, !"sign-return-address", i32 0}
!256 = !{i32 8, !"sign-return-address-all", i32 0}
!257 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!258 = !{i32 7, !"uwtable", i32 1}
!259 = !{i32 7, !"frame-pointer", i32 2}
!260 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!261 = !{!"branch_weights", i32 1, i32 2000}
!262 = !{!"branch_weights", i32 2000, i32 1}
!263 = !{!"auto-init"}
