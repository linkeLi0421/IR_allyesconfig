; ModuleID = '/llk/IR_all_yes/fs/efs/super.c_pt.bc'
source_filename = "../fs/efs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.volume_header = type { i32, i16, i16, [16 x i8], [48 x i8], [15 x %struct.volume_directory], [16 x %struct.partition_table], i32, i32 }
%struct.volume_directory = type { [8 x i8], i32, i32 }
%struct.partition_table = type { i32, i32, i32 }
%struct.efs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%struct.efs_super = type { i32, i32, i32, i16, i16, i16, i16, i16, i32, i32, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, [20 x i8], i32 }
%struct.efs_inode_info = type { i32, i32, [12 x %union.extent_u], %struct.inode }
%union.extent_u = type { %struct.extent_s }
%struct.extent_s = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.75 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.78, %struct.list_head, %struct.list_head, %union.anon.79 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.76 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { %struct.spinlock, i32 }
%union.anon.78 = type { %struct.list_head }
%union.anon.79 = type { %struct.hlist_node }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@__UNIQUE_ID_alias269 = internal constant [17 x i8] c"efs.alias=fs-efs\00", section ".modinfo", align 1
@efs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 1, ptr null, ptr null, ptr @efs_mount, ptr @efs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_efs__270_152_init_efs_fs6 = internal global ptr @init_efs_fs, section ".initcall6.init", align 4
@__exitcall_exit_efs_fs = internal global ptr @exit_efs_fs, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"efs\00", [28 x i8] zeroinitializer }, align 32
@efs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013efs: device does not support %d byte blocks\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efs_fill_super\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/efs/super.c\00", [17 x i8] zeroinitializer }, align 32
@efs_fill_super._entry_ptr = internal global ptr @efs_fill_super._entry, section ".printk_index", align 4
@efs_fill_super._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013efs: cannot read volume header\0A\00", [62 x i8] zeroinitializer }, align 32
@efs_fill_super._entry_ptr.6 = internal global ptr @efs_fill_super._entry.4, section ".printk_index", align 4
@efs_fill_super._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013efs: cannot read superblock\0A\00", [33 x i8] zeroinitializer }, align 32
@efs_fill_super._entry_ptr.9 = internal global ptr @efs_fill_super._entry.7, section ".printk_index", align 4
@efs_superblock_operations = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @efs_alloc_inode, ptr null, ptr @efs_free_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efs_statfs, ptr @efs_remount, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@efs_export_ops = internal constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr null, ptr @efs_fh_to_dentry, ptr @efs_fh_to_parent, ptr null, ptr @efs_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@efs_fill_super._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013efs: get root inode failed\0A\00", [34 x i8] zeroinitializer }, align 32
@efs_fill_super._entry_ptr.12 = internal global ptr @efs_fill_super._entry.10, section ".printk_index", align 4
@efs_fill_super._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013efs: get root dentry failed\0A\00", [33 x i8] zeroinitializer }, align 32
@efs_fill_super._entry_ptr.15 = internal global ptr @efs_fill_super._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@efs_validate_vh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014efs: SGI disklabel: checksum bad, label corrupted\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efs_validate_vh\00", [16 x i8] zeroinitializer }, align 32
@efs_validate_vh._entry_ptr = internal global ptr @efs_validate_vh._entry, section ".printk_index", align 4
@efs_validate_vh._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015efs: partition table contained no EFS partitions\0A\00", [44 x i8] zeroinitializer }, align 32
@efs_validate_vh._entry_ptr.20 = internal global ptr @efs_validate_vh._entry.18, section ".printk_index", align 4
@efs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@init_efs_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016efs: 1.0a - http://aeschi.ch.eu.org/efs/\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_efs_fs\00", [20 x i8] zeroinitializer }, align 32
@init_efs_fs._entry_ptr = internal global ptr @init_efs_fs._entry, section ".printk_index", align 4
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efs_inode_cache\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"efs_fs_type\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 38, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 40, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 266, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 275, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 293, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [26 x i8] c"efs_superblock_operations\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 118, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"efs_export_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 125, i32 39 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 317, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 323, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 178, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 223, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"efs_inode_cachep\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 67, i32 28 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 133, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [18 x i8] c"../fs/efs/super.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 92, i32 39 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias269, ptr @__exitcall_exit_efs_fs, ptr @__initcall__kmod_efs__270_152_init_efs_fs6, ptr @efs_fill_super._entry, ptr @efs_fill_super._entry.10, ptr @efs_fill_super._entry.13, ptr @efs_fill_super._entry.4, ptr @efs_fill_super._entry.7, ptr @efs_fill_super._entry_ptr, ptr @efs_fill_super._entry_ptr.12, ptr @efs_fill_super._entry_ptr.15, ptr @efs_fill_super._entry_ptr.6, ptr @efs_fill_super._entry_ptr.9, ptr @efs_validate_vh._entry, ptr @efs_validate_vh._entry.18, ptr @efs_validate_vh._entry_ptr, ptr @efs_validate_vh._entry_ptr.20, ptr @exit_efs_fs, ptr @init_efs_fs._entry, ptr @init_efs_fs._entry_ptr, ptr @efs_fs_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @efs_superblock_operations, ptr @efs_export_ops, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @efs_inode_cachep, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_fill_super._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_fill_super._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_superblock_operations to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_fill_super._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_fill_super._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_validate_vh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_validate_vh._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_efs_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_efs_fs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @efs_fs_type) #6
  tail call void @rcu_barrier() #6
  %0 = load ptr, ptr @efs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_efs_fs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #9
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.38, i32 noundef 888, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #6
  store ptr %call.i, ptr @efs_inode_cachep, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @register_filesystem(ptr noundef nonnull @efs_fs_type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rcu_barrier() #6
  %0 = load ptr, ptr @efs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @efs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @efs_fill_super) #6
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efs_kill_sb(ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @kill_block_super(ptr noundef %s) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efs_fill_super(ptr noundef %s, ptr nocapture noundef readnone %d, i32 noundef %silent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 35
  %2 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 36
  %3 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 4294967295, ptr %s_time_max, align 64
  %s_magic = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 12
  %4 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4278867, ptr %s_magic, align 4
  %call1 = tail call i32 @sb_set_blocksize(ptr noundef %s, i32 noundef 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 512) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %5 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %6, i64 noundef 0, i32 noundef %8, i32 noundef 8) #6
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 199600449, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 199600449
  br i1 %cmp.not.i, label %if.end.i, label %if.end14.brelse.exit_crit_edge

if.end14.brelse.exit_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.end.i:                                         ; preds = %if.end14
  %add.ptr1.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 8
  %cmp2.not55.i = icmp ult ptr %add.ptr1.i, %10
  br i1 %cmp2.not55.i, label %if.end.i.for.body7.preheader.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.body7.preheader.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.preheader.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %csum.057.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %ui.056.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr1.i, %if.end.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %ui.056.i, i32 -1
  %13 = ptrtoint ptr %ui.056.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ui.056.i, align 4
  %add.i = add i32 %14, %csum.057.i
  %cmp2.not.i = icmp ult ptr %incdec.ptr.i, %10
  br i1 %cmp2.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not.i = icmp eq i32 %add.i, 0
  br i1 %tobool.not.i, label %for.end.i.for.body7.preheader.i_crit_edge, label %do.end.i

for.end.i.for.body7.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.preheader.i

for.body7.preheader.i:                            ; preds = %for.end.i.for.body7.preheader.i_crit_edge, %if.end.i.for.body7.preheader.i_crit_edge
  %pt_type8.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 0, i32 2
  %15 = ptrtoint ptr %pt_type8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pt_type8.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %for.body7.preheader.i.for.inc24.i_crit_edge [
    i32 7, label %for.body7.preheader.i.if.then20.i_crit_edge
    i32 5, label %for.body7.preheader.i.if.then20.i_crit_edge103
  ]

for.body7.preheader.i.if.then20.i_crit_edge103:   ; preds = %for.body7.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.i

for.body7.preheader.i.if.then20.i_crit_edge:      ; preds = %for.body7.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.i

for.body7.preheader.i.for.inc24.i_crit_edge:      ; preds = %for.body7.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %brelse.exit

if.then20.i:                                      ; preds = %for.body7.preheader.i.if.then20.i_crit_edge, %for.body7.preheader.i.if.then20.i_crit_edge103
  %pt_firstlbn.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 0, i32 1
  %18 = ptrtoint ptr %pt_firstlbn.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pt_firstlbn.i, align 4
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %if.then20.i, %for.body7.preheader.i.for.inc24.i_crit_edge
  %sblock.1.i = phi i32 [ %19, %if.then20.i ], [ 0, %for.body7.preheader.i.for.inc24.i_crit_edge ]
  %slice.1.i = phi i32 [ 0, %if.then20.i ], [ -1, %for.body7.preheader.i.for.inc24.i_crit_edge ]
  %pt_type8.1.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 1, i32 2
  %20 = ptrtoint ptr %pt_type8.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pt_type8.1.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %21, label %for.inc24.i.for.inc24.1.i_crit_edge [
    i32 7, label %for.inc24.i.if.then20.1.i_crit_edge
    i32 5, label %for.inc24.i.if.then20.1.i_crit_edge104
  ]

for.inc24.i.if.then20.1.i_crit_edge104:           ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.1.i

for.inc24.i.if.then20.1.i_crit_edge:              ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.1.i

for.inc24.i.for.inc24.1.i_crit_edge:              ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.1.i

if.then20.1.i:                                    ; preds = %for.inc24.i.if.then20.1.i_crit_edge, %for.inc24.i.if.then20.1.i_crit_edge104
  %pt_firstlbn.1.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 1, i32 1
  %23 = ptrtoint ptr %pt_firstlbn.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pt_firstlbn.1.i, align 4
  br label %for.inc24.1.i

for.inc24.1.i:                                    ; preds = %if.then20.1.i, %for.inc24.i.for.inc24.1.i_crit_edge
  %sblock.1.1.i = phi i32 [ %24, %if.then20.1.i ], [ %sblock.1.i, %for.inc24.i.for.inc24.1.i_crit_edge ]
  %slice.1.1.i = phi i32 [ 1, %if.then20.1.i ], [ %slice.1.i, %for.inc24.i.for.inc24.1.i_crit_edge ]
  %pt_type8.2.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 2, i32 2
  %25 = ptrtoint ptr %pt_type8.2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pt_type8.2.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %26, label %for.inc24.1.i.for.inc24.2.i_crit_edge [
    i32 7, label %for.inc24.1.i.if.then20.2.i_crit_edge
    i32 5, label %for.inc24.1.i.if.then20.2.i_crit_edge105
  ]

for.inc24.1.i.if.then20.2.i_crit_edge105:         ; preds = %for.inc24.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.2.i

for.inc24.1.i.if.then20.2.i_crit_edge:            ; preds = %for.inc24.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.2.i

for.inc24.1.i.for.inc24.2.i_crit_edge:            ; preds = %for.inc24.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.2.i

if.then20.2.i:                                    ; preds = %for.inc24.1.i.if.then20.2.i_crit_edge, %for.inc24.1.i.if.then20.2.i_crit_edge105
  %pt_firstlbn.2.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 2, i32 1
  %28 = ptrtoint ptr %pt_firstlbn.2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pt_firstlbn.2.i, align 4
  br label %for.inc24.2.i

for.inc24.2.i:                                    ; preds = %if.then20.2.i, %for.inc24.1.i.for.inc24.2.i_crit_edge
  %sblock.1.2.i = phi i32 [ %29, %if.then20.2.i ], [ %sblock.1.1.i, %for.inc24.1.i.for.inc24.2.i_crit_edge ]
  %slice.1.2.i = phi i32 [ 2, %if.then20.2.i ], [ %slice.1.1.i, %for.inc24.1.i.for.inc24.2.i_crit_edge ]
  %pt_type8.3.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 3, i32 2
  %30 = ptrtoint ptr %pt_type8.3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pt_type8.3.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %31, label %for.inc24.2.i.for.inc24.3.i_crit_edge [
    i32 7, label %for.inc24.2.i.if.then20.3.i_crit_edge
    i32 5, label %for.inc24.2.i.if.then20.3.i_crit_edge106
  ]

for.inc24.2.i.if.then20.3.i_crit_edge106:         ; preds = %for.inc24.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.3.i

for.inc24.2.i.if.then20.3.i_crit_edge:            ; preds = %for.inc24.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.3.i

for.inc24.2.i.for.inc24.3.i_crit_edge:            ; preds = %for.inc24.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.3.i

if.then20.3.i:                                    ; preds = %for.inc24.2.i.if.then20.3.i_crit_edge, %for.inc24.2.i.if.then20.3.i_crit_edge106
  %pt_firstlbn.3.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 3, i32 1
  %33 = ptrtoint ptr %pt_firstlbn.3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pt_firstlbn.3.i, align 4
  br label %for.inc24.3.i

for.inc24.3.i:                                    ; preds = %if.then20.3.i, %for.inc24.2.i.for.inc24.3.i_crit_edge
  %sblock.1.3.i = phi i32 [ %34, %if.then20.3.i ], [ %sblock.1.2.i, %for.inc24.2.i.for.inc24.3.i_crit_edge ]
  %slice.1.3.i = phi i32 [ 3, %if.then20.3.i ], [ %slice.1.2.i, %for.inc24.2.i.for.inc24.3.i_crit_edge ]
  %pt_type8.4.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 4, i32 2
  %35 = ptrtoint ptr %pt_type8.4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pt_type8.4.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %36, label %for.inc24.3.i.for.inc24.4.i_crit_edge [
    i32 7, label %for.inc24.3.i.if.then20.4.i_crit_edge
    i32 5, label %for.inc24.3.i.if.then20.4.i_crit_edge107
  ]

for.inc24.3.i.if.then20.4.i_crit_edge107:         ; preds = %for.inc24.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.4.i

for.inc24.3.i.if.then20.4.i_crit_edge:            ; preds = %for.inc24.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.4.i

for.inc24.3.i.for.inc24.4.i_crit_edge:            ; preds = %for.inc24.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.4.i

if.then20.4.i:                                    ; preds = %for.inc24.3.i.if.then20.4.i_crit_edge, %for.inc24.3.i.if.then20.4.i_crit_edge107
  %pt_firstlbn.4.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 4, i32 1
  %38 = ptrtoint ptr %pt_firstlbn.4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pt_firstlbn.4.i, align 4
  br label %for.inc24.4.i

for.inc24.4.i:                                    ; preds = %if.then20.4.i, %for.inc24.3.i.for.inc24.4.i_crit_edge
  %sblock.1.4.i = phi i32 [ %39, %if.then20.4.i ], [ %sblock.1.3.i, %for.inc24.3.i.for.inc24.4.i_crit_edge ]
  %slice.1.4.i = phi i32 [ 4, %if.then20.4.i ], [ %slice.1.3.i, %for.inc24.3.i.for.inc24.4.i_crit_edge ]
  %pt_type8.5.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 5, i32 2
  %40 = ptrtoint ptr %pt_type8.5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pt_type8.5.i, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %41, label %for.inc24.4.i.for.inc24.5.i_crit_edge [
    i32 7, label %for.inc24.4.i.if.then20.5.i_crit_edge
    i32 5, label %for.inc24.4.i.if.then20.5.i_crit_edge108
  ]

for.inc24.4.i.if.then20.5.i_crit_edge108:         ; preds = %for.inc24.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.5.i

for.inc24.4.i.if.then20.5.i_crit_edge:            ; preds = %for.inc24.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.5.i

for.inc24.4.i.for.inc24.5.i_crit_edge:            ; preds = %for.inc24.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.5.i

if.then20.5.i:                                    ; preds = %for.inc24.4.i.if.then20.5.i_crit_edge, %for.inc24.4.i.if.then20.5.i_crit_edge108
  %pt_firstlbn.5.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 5, i32 1
  %43 = ptrtoint ptr %pt_firstlbn.5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pt_firstlbn.5.i, align 4
  br label %for.inc24.5.i

for.inc24.5.i:                                    ; preds = %if.then20.5.i, %for.inc24.4.i.for.inc24.5.i_crit_edge
  %sblock.1.5.i = phi i32 [ %44, %if.then20.5.i ], [ %sblock.1.4.i, %for.inc24.4.i.for.inc24.5.i_crit_edge ]
  %slice.1.5.i = phi i32 [ 5, %if.then20.5.i ], [ %slice.1.4.i, %for.inc24.4.i.for.inc24.5.i_crit_edge ]
  %pt_type8.6.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 6, i32 2
  %45 = ptrtoint ptr %pt_type8.6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pt_type8.6.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %46, label %for.inc24.5.i.for.inc24.6.i_crit_edge [
    i32 7, label %for.inc24.5.i.if.then20.6.i_crit_edge
    i32 5, label %for.inc24.5.i.if.then20.6.i_crit_edge109
  ]

for.inc24.5.i.if.then20.6.i_crit_edge109:         ; preds = %for.inc24.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.6.i

for.inc24.5.i.if.then20.6.i_crit_edge:            ; preds = %for.inc24.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.6.i

for.inc24.5.i.for.inc24.6.i_crit_edge:            ; preds = %for.inc24.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.6.i

if.then20.6.i:                                    ; preds = %for.inc24.5.i.if.then20.6.i_crit_edge, %for.inc24.5.i.if.then20.6.i_crit_edge109
  %pt_firstlbn.6.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 6, i32 1
  %48 = ptrtoint ptr %pt_firstlbn.6.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pt_firstlbn.6.i, align 4
  br label %for.inc24.6.i

for.inc24.6.i:                                    ; preds = %if.then20.6.i, %for.inc24.5.i.for.inc24.6.i_crit_edge
  %sblock.1.6.i = phi i32 [ %49, %if.then20.6.i ], [ %sblock.1.5.i, %for.inc24.5.i.for.inc24.6.i_crit_edge ]
  %slice.1.6.i = phi i32 [ 6, %if.then20.6.i ], [ %slice.1.5.i, %for.inc24.5.i.for.inc24.6.i_crit_edge ]
  %pt_type8.7.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 7, i32 2
  %50 = ptrtoint ptr %pt_type8.7.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pt_type8.7.i, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %51, label %for.inc24.6.i.for.inc24.7.i_crit_edge [
    i32 7, label %for.inc24.6.i.if.then20.7.i_crit_edge
    i32 5, label %for.inc24.6.i.if.then20.7.i_crit_edge110
  ]

for.inc24.6.i.if.then20.7.i_crit_edge110:         ; preds = %for.inc24.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.7.i

for.inc24.6.i.if.then20.7.i_crit_edge:            ; preds = %for.inc24.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.7.i

for.inc24.6.i.for.inc24.7.i_crit_edge:            ; preds = %for.inc24.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.7.i

if.then20.7.i:                                    ; preds = %for.inc24.6.i.if.then20.7.i_crit_edge, %for.inc24.6.i.if.then20.7.i_crit_edge110
  %pt_firstlbn.7.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 7, i32 1
  %53 = ptrtoint ptr %pt_firstlbn.7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pt_firstlbn.7.i, align 4
  br label %for.inc24.7.i

for.inc24.7.i:                                    ; preds = %if.then20.7.i, %for.inc24.6.i.for.inc24.7.i_crit_edge
  %sblock.1.7.i = phi i32 [ %54, %if.then20.7.i ], [ %sblock.1.6.i, %for.inc24.6.i.for.inc24.7.i_crit_edge ]
  %slice.1.7.i = phi i32 [ 7, %if.then20.7.i ], [ %slice.1.6.i, %for.inc24.6.i.for.inc24.7.i_crit_edge ]
  %pt_type8.8.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 8, i32 2
  %55 = ptrtoint ptr %pt_type8.8.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pt_type8.8.i, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %56, label %for.inc24.7.i.for.inc24.8.i_crit_edge [
    i32 7, label %for.inc24.7.i.if.then20.8.i_crit_edge
    i32 5, label %for.inc24.7.i.if.then20.8.i_crit_edge111
  ]

for.inc24.7.i.if.then20.8.i_crit_edge111:         ; preds = %for.inc24.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.8.i

for.inc24.7.i.if.then20.8.i_crit_edge:            ; preds = %for.inc24.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.8.i

for.inc24.7.i.for.inc24.8.i_crit_edge:            ; preds = %for.inc24.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.8.i

if.then20.8.i:                                    ; preds = %for.inc24.7.i.if.then20.8.i_crit_edge, %for.inc24.7.i.if.then20.8.i_crit_edge111
  %pt_firstlbn.8.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 8, i32 1
  %58 = ptrtoint ptr %pt_firstlbn.8.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pt_firstlbn.8.i, align 4
  br label %for.inc24.8.i

for.inc24.8.i:                                    ; preds = %if.then20.8.i, %for.inc24.7.i.for.inc24.8.i_crit_edge
  %sblock.1.8.i = phi i32 [ %59, %if.then20.8.i ], [ %sblock.1.7.i, %for.inc24.7.i.for.inc24.8.i_crit_edge ]
  %slice.1.8.i = phi i32 [ 8, %if.then20.8.i ], [ %slice.1.7.i, %for.inc24.7.i.for.inc24.8.i_crit_edge ]
  %pt_type8.9.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 9, i32 2
  %60 = ptrtoint ptr %pt_type8.9.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pt_type8.9.i, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %61, label %for.inc24.8.i.for.inc24.9.i_crit_edge [
    i32 7, label %for.inc24.8.i.if.then20.9.i_crit_edge
    i32 5, label %for.inc24.8.i.if.then20.9.i_crit_edge112
  ]

for.inc24.8.i.if.then20.9.i_crit_edge112:         ; preds = %for.inc24.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.9.i

for.inc24.8.i.if.then20.9.i_crit_edge:            ; preds = %for.inc24.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.9.i

for.inc24.8.i.for.inc24.9.i_crit_edge:            ; preds = %for.inc24.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.9.i

if.then20.9.i:                                    ; preds = %for.inc24.8.i.if.then20.9.i_crit_edge, %for.inc24.8.i.if.then20.9.i_crit_edge112
  %pt_firstlbn.9.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 9, i32 1
  %63 = ptrtoint ptr %pt_firstlbn.9.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pt_firstlbn.9.i, align 4
  br label %for.inc24.9.i

for.inc24.9.i:                                    ; preds = %if.then20.9.i, %for.inc24.8.i.for.inc24.9.i_crit_edge
  %sblock.1.9.i = phi i32 [ %64, %if.then20.9.i ], [ %sblock.1.8.i, %for.inc24.8.i.for.inc24.9.i_crit_edge ]
  %slice.1.9.i = phi i32 [ 9, %if.then20.9.i ], [ %slice.1.8.i, %for.inc24.8.i.for.inc24.9.i_crit_edge ]
  %pt_type8.10.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 10, i32 2
  %65 = ptrtoint ptr %pt_type8.10.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pt_type8.10.i, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %66, label %for.inc24.9.i.for.inc24.10.i_crit_edge [
    i32 7, label %for.inc24.9.i.if.then20.10.i_crit_edge
    i32 5, label %for.inc24.9.i.if.then20.10.i_crit_edge113
  ]

for.inc24.9.i.if.then20.10.i_crit_edge113:        ; preds = %for.inc24.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.10.i

for.inc24.9.i.if.then20.10.i_crit_edge:           ; preds = %for.inc24.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.10.i

for.inc24.9.i.for.inc24.10.i_crit_edge:           ; preds = %for.inc24.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.10.i

if.then20.10.i:                                   ; preds = %for.inc24.9.i.if.then20.10.i_crit_edge, %for.inc24.9.i.if.then20.10.i_crit_edge113
  %pt_firstlbn.10.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 10, i32 1
  %68 = ptrtoint ptr %pt_firstlbn.10.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pt_firstlbn.10.i, align 4
  br label %for.inc24.10.i

for.inc24.10.i:                                   ; preds = %if.then20.10.i, %for.inc24.9.i.for.inc24.10.i_crit_edge
  %sblock.1.10.i = phi i32 [ %69, %if.then20.10.i ], [ %sblock.1.9.i, %for.inc24.9.i.for.inc24.10.i_crit_edge ]
  %slice.1.10.i = phi i32 [ 10, %if.then20.10.i ], [ %slice.1.9.i, %for.inc24.9.i.for.inc24.10.i_crit_edge ]
  %pt_type8.11.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 11, i32 2
  %70 = ptrtoint ptr %pt_type8.11.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pt_type8.11.i, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %71, label %for.inc24.10.i.for.inc24.11.i_crit_edge [
    i32 7, label %for.inc24.10.i.if.then20.11.i_crit_edge
    i32 5, label %for.inc24.10.i.if.then20.11.i_crit_edge114
  ]

for.inc24.10.i.if.then20.11.i_crit_edge114:       ; preds = %for.inc24.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.11.i

for.inc24.10.i.if.then20.11.i_crit_edge:          ; preds = %for.inc24.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.11.i

for.inc24.10.i.for.inc24.11.i_crit_edge:          ; preds = %for.inc24.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.11.i

if.then20.11.i:                                   ; preds = %for.inc24.10.i.if.then20.11.i_crit_edge, %for.inc24.10.i.if.then20.11.i_crit_edge114
  %pt_firstlbn.11.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 11, i32 1
  %73 = ptrtoint ptr %pt_firstlbn.11.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pt_firstlbn.11.i, align 4
  br label %for.inc24.11.i

for.inc24.11.i:                                   ; preds = %if.then20.11.i, %for.inc24.10.i.for.inc24.11.i_crit_edge
  %sblock.1.11.i = phi i32 [ %74, %if.then20.11.i ], [ %sblock.1.10.i, %for.inc24.10.i.for.inc24.11.i_crit_edge ]
  %slice.1.11.i = phi i32 [ 11, %if.then20.11.i ], [ %slice.1.10.i, %for.inc24.10.i.for.inc24.11.i_crit_edge ]
  %pt_type8.12.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 12, i32 2
  %75 = ptrtoint ptr %pt_type8.12.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pt_type8.12.i, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %76, label %for.inc24.11.i.for.inc24.12.i_crit_edge [
    i32 7, label %for.inc24.11.i.if.then20.12.i_crit_edge
    i32 5, label %for.inc24.11.i.if.then20.12.i_crit_edge115
  ]

for.inc24.11.i.if.then20.12.i_crit_edge115:       ; preds = %for.inc24.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.12.i

for.inc24.11.i.if.then20.12.i_crit_edge:          ; preds = %for.inc24.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.12.i

for.inc24.11.i.for.inc24.12.i_crit_edge:          ; preds = %for.inc24.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.12.i

if.then20.12.i:                                   ; preds = %for.inc24.11.i.if.then20.12.i_crit_edge, %for.inc24.11.i.if.then20.12.i_crit_edge115
  %pt_firstlbn.12.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 12, i32 1
  %78 = ptrtoint ptr %pt_firstlbn.12.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pt_firstlbn.12.i, align 4
  br label %for.inc24.12.i

for.inc24.12.i:                                   ; preds = %if.then20.12.i, %for.inc24.11.i.for.inc24.12.i_crit_edge
  %sblock.1.12.i = phi i32 [ %79, %if.then20.12.i ], [ %sblock.1.11.i, %for.inc24.11.i.for.inc24.12.i_crit_edge ]
  %slice.1.12.i = phi i32 [ 12, %if.then20.12.i ], [ %slice.1.11.i, %for.inc24.11.i.for.inc24.12.i_crit_edge ]
  %pt_type8.13.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 13, i32 2
  %80 = ptrtoint ptr %pt_type8.13.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pt_type8.13.i, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %81, label %for.inc24.12.i.for.inc24.13.i_crit_edge [
    i32 7, label %for.inc24.12.i.if.then20.13.i_crit_edge
    i32 5, label %for.inc24.12.i.if.then20.13.i_crit_edge116
  ]

for.inc24.12.i.if.then20.13.i_crit_edge116:       ; preds = %for.inc24.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.13.i

for.inc24.12.i.if.then20.13.i_crit_edge:          ; preds = %for.inc24.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.13.i

for.inc24.12.i.for.inc24.13.i_crit_edge:          ; preds = %for.inc24.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.13.i

if.then20.13.i:                                   ; preds = %for.inc24.12.i.if.then20.13.i_crit_edge, %for.inc24.12.i.if.then20.13.i_crit_edge116
  %pt_firstlbn.13.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 13, i32 1
  %83 = ptrtoint ptr %pt_firstlbn.13.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pt_firstlbn.13.i, align 4
  br label %for.inc24.13.i

for.inc24.13.i:                                   ; preds = %if.then20.13.i, %for.inc24.12.i.for.inc24.13.i_crit_edge
  %sblock.1.13.i = phi i32 [ %84, %if.then20.13.i ], [ %sblock.1.12.i, %for.inc24.12.i.for.inc24.13.i_crit_edge ]
  %slice.1.13.i = phi i32 [ 13, %if.then20.13.i ], [ %slice.1.12.i, %for.inc24.12.i.for.inc24.13.i_crit_edge ]
  %pt_type8.14.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 14, i32 2
  %85 = ptrtoint ptr %pt_type8.14.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pt_type8.14.i, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %86, label %for.inc24.13.i.for.inc24.14.i_crit_edge [
    i32 7, label %for.inc24.13.i.if.then20.14.i_crit_edge
    i32 5, label %for.inc24.13.i.if.then20.14.i_crit_edge117
  ]

for.inc24.13.i.if.then20.14.i_crit_edge117:       ; preds = %for.inc24.13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.14.i

for.inc24.13.i.if.then20.14.i_crit_edge:          ; preds = %for.inc24.13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.14.i

for.inc24.13.i.for.inc24.14.i_crit_edge:          ; preds = %for.inc24.13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.14.i

if.then20.14.i:                                   ; preds = %for.inc24.13.i.if.then20.14.i_crit_edge, %for.inc24.13.i.if.then20.14.i_crit_edge117
  %pt_firstlbn.14.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 14, i32 1
  %88 = ptrtoint ptr %pt_firstlbn.14.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pt_firstlbn.14.i, align 4
  br label %for.inc24.14.i

for.inc24.14.i:                                   ; preds = %if.then20.14.i, %for.inc24.13.i.for.inc24.14.i_crit_edge
  %sblock.1.14.i = phi i32 [ %89, %if.then20.14.i ], [ %sblock.1.13.i, %for.inc24.13.i.for.inc24.14.i_crit_edge ]
  %slice.1.14.i = phi i32 [ 14, %if.then20.14.i ], [ %slice.1.13.i, %for.inc24.13.i.for.inc24.14.i_crit_edge ]
  %pt_type8.15.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 15, i32 2
  %90 = ptrtoint ptr %pt_type8.15.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pt_type8.15.i, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %91, label %for.inc24.15.i [
    i32 7, label %for.inc24.14.i.for.inc24.15.thread.i_crit_edge
    i32 5, label %for.inc24.14.i.for.inc24.15.thread.i_crit_edge118
  ]

for.inc24.14.i.for.inc24.15.thread.i_crit_edge118: ; preds = %for.inc24.14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.15.thread.i

for.inc24.14.i.for.inc24.15.thread.i_crit_edge:   ; preds = %for.inc24.14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.15.thread.i

for.inc24.15.thread.i:                            ; preds = %for.inc24.14.i.for.inc24.15.thread.i_crit_edge, %for.inc24.14.i.for.inc24.15.thread.i_crit_edge118
  %pt_firstlbn.15.i = getelementptr %struct.volume_header, ptr %10, i32 0, i32 6, i32 15, i32 1
  %93 = ptrtoint ptr %pt_firstlbn.15.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pt_firstlbn.15.i, align 4
  br label %brelse.exit

for.inc24.15.i:                                   ; preds = %for.inc24.14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %slice.1.14.i)
  %cmp26.i = icmp eq i32 %slice.1.14.i, -1
  br i1 %cmp26.i, label %do.end30.i, label %for.inc24.15.i.brelse.exit_crit_edge

for.inc24.15.i.brelse.exit_crit_edge:             ; preds = %for.inc24.15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

do.end30.i:                                       ; preds = %for.inc24.15.i
  call void @__sanitizer_cov_trace_pc() #8
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %do.end30.i, %for.inc24.15.i.brelse.exit_crit_edge, %for.inc24.15.thread.i, %do.end.i, %if.end14.brelse.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 0, %if.end14.brelse.exit_crit_edge ], [ %sblock.1.14.i, %do.end30.i ], [ %sblock.1.14.i, %for.inc24.15.i.brelse.exit_crit_edge ], [ %94, %for.inc24.15.thread.i ]
  %fs_start = getelementptr inbounds %struct.efs_sb_info, ptr %call7.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %fs_start to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %retval.0.i, ptr %fs_start, align 4
  tail call void @__brelse(ptr noundef nonnull %call.i) #6
  %96 = ptrtoint ptr %fs_start to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %fs_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %cmp = icmp eq i32 %97, -1
  br i1 %cmp, label %brelse.exit.cleanup_crit_edge, label %if.end18

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %brelse.exit
  %add = add nuw i32 %97, 1
  %conv = zext i32 %add to i64
  %98 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_bdev.i, align 4
  %100 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s_blocksize.i, align 16
  %call.i90 = tail call ptr @__bread_gfp(ptr noundef %99, i64 noundef %conv, i32 noundef %101, i32 noundef 8) #6
  %tobool21.not = icmp eq ptr %call.i90, null
  br i1 %tobool21.not, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %b_data29 = getelementptr inbounds %struct.buffer_head, ptr %call.i90, i32 0, i32 5
  %102 = ptrtoint ptr %b_data29 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %b_data29, align 4
  %fs_magic.i = getelementptr inbounds %struct.efs_super, ptr %103, i32 0, i32 9
  %104 = ptrtoint ptr %fs_magic.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %fs_magic.i, align 4
  %.off.i = add i32 %105, -469337
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %brelse.exit100, label %brelse.exit96

brelse.exit96:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %call.i90) #6
  br label %cleanup

brelse.exit100:                                   ; preds = %if.end28
  %106 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %call7.i.i, align 8
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %103, align 4
  %total_blocks.i = getelementptr inbounds %struct.efs_sb_info, ptr %call7.i.i, i32 0, i32 3
  %109 = ptrtoint ptr %total_blocks.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %total_blocks.i, align 4
  %fs_firstcg.i = getelementptr inbounds %struct.efs_super, ptr %103, i32 0, i32 1
  %110 = ptrtoint ptr %fs_firstcg.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %fs_firstcg.i, align 4
  %first_block.i = getelementptr inbounds %struct.efs_sb_info, ptr %call7.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %first_block.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %first_block.i, align 8
  %fs_cgfsize.i = getelementptr inbounds %struct.efs_super, ptr %103, i32 0, i32 2
  %113 = ptrtoint ptr %fs_cgfsize.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fs_cgfsize.i, align 4
  %group_size.i = getelementptr inbounds %struct.efs_sb_info, ptr %call7.i.i, i32 0, i32 4
  %115 = ptrtoint ptr %group_size.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %group_size.i, align 8
  %fs_tfree.i = getelementptr inbounds %struct.efs_super, ptr %103, i32 0, i32 13
  %116 = ptrtoint ptr %fs_tfree.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %fs_tfree.i, align 4
  %data_free.i = getelementptr inbounds %struct.efs_sb_info, ptr %call7.i.i, i32 0, i32 5
  %118 = ptrtoint ptr %data_free.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %data_free.i, align 4
  %fs_tinode.i = getelementptr inbounds %struct.efs_super, ptr %103, i32 0, i32 14
  %119 = ptrtoint ptr %fs_tinode.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %fs_tinode.i, align 4
  %inode_free.i = getelementptr inbounds %struct.efs_sb_info, ptr %call7.i.i, i32 0, i32 6
  %121 = ptrtoint ptr %inode_free.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %inode_free.i, align 8
  %fs_cgisize.i = getelementptr inbounds %struct.efs_super, ptr %103, i32 0, i32 3
  %122 = ptrtoint ptr %fs_cgisize.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %fs_cgisize.i, align 4
  %inode_blocks.i = getelementptr inbounds %struct.efs_sb_info, ptr %call7.i.i, i32 0, i32 7
  %124 = ptrtoint ptr %inode_blocks.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %inode_blocks.i, align 4
  %fs_ncg.i = getelementptr inbounds %struct.efs_super, ptr %103, i32 0, i32 6
  %125 = ptrtoint ptr %fs_ncg.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %fs_ncg.i, align 2
  %total_groups.i = getelementptr inbounds %struct.efs_sb_info, ptr %call7.i.i, i32 0, i32 8
  %127 = ptrtoint ptr %total_groups.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %total_groups.i, align 2
  tail call void @__brelse(ptr noundef nonnull %call.i90) #6
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %128 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then35, label %brelse.exit100.if.end36_crit_edge

brelse.exit100.if.end36_crit_edge:                ; preds = %brelse.exit100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then35:                                        ; preds = %brelse.exit100
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %129, 1
  %130 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or, ptr %s_flags.i, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %brelse.exit100.if.end36_crit_edge
  %s_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 6
  %131 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @efs_superblock_operations, ptr %s_op, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 9
  %132 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @efs_export_ops, ptr %s_export_op, align 16
  %call37 = tail call ptr @efs_iget(ptr noundef %s, i32 noundef 2) #6
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end42, label %if.end46

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  %133 = ptrtoint ptr %call37 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end36
  %call47 = tail call ptr @d_make_root(ptr noundef %call37) #6
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %134 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call47, ptr %s_root, align 64
  %tobool49.not = icmp eq ptr %call47, null
  br i1 %tobool49.not, label %do.end53, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.end46.cleanup_crit_edge, %do.end42, %brelse.exit96, %do.end25, %brelse.exit.cleanup_crit_edge, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %brelse.exit96 ], [ %133, %do.end42 ], [ -12, %do.end53 ], [ -5, %do.end25 ], [ -5, %do.end11 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -22, %brelse.exit.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efs_iget(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @efs_alloc_inode(ptr nocapture noundef readnone %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @efs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.efs_inode_info, ptr %call, i32 0, i32 3
  %retval.0 = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efs_free_inode(ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @efs_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -104
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #6
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bd_dev, align 4
  %and1.i.i = and i32 %7, 255
  %8 = lshr i32 %7, 12
  %shl.i.i = and i32 %8, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %7, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4278867, ptr %buf, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 512, ptr %f_bsize, align 4
  %total_groups = getelementptr inbounds %struct.efs_sb_info, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %total_groups to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %total_groups, align 2
  %conv = zext i16 %12 to i32
  %group_size = getelementptr inbounds %struct.efs_sb_info, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %group_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %group_size, align 4
  %inode_blocks = getelementptr inbounds %struct.efs_sb_info, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %inode_blocks to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %inode_blocks, align 4
  %conv2 = zext i16 %16 to i32
  %sub = sub i32 %14, %conv2
  %mul = mul i32 %sub, %conv
  %conv3 = zext i32 %mul to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %17 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv3, ptr %f_blocks, align 8
  %data_free = getelementptr inbounds %struct.efs_sb_info, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %data_free to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_free, align 4
  %conv4 = zext i32 %19 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %20 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv4, ptr %f_bfree, align 8
  %21 = load i32, ptr %data_free, align 4
  %conv6 = zext i32 %21 to i64
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %22 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv6, ptr %f_bavail, align 8
  %23 = load i16, ptr %total_groups, align 2
  %conv8 = zext i16 %23 to i32
  %24 = load i16, ptr %inode_blocks, align 4
  %conv10 = zext i16 %24 to i32
  %mul11 = shl nuw nsw i32 %conv8, 2
  %mul12 = mul i32 %mul11, %conv10
  %conv13 = zext i32 %mul12 to i64
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %25 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv13, ptr %f_files, align 8
  %inode_free = getelementptr inbounds %struct.efs_sb_info, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %inode_free to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %inode_free, align 4
  %conv14 = zext i32 %27 to i64
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %28 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv14, ptr %f_ffree, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %29 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %30 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 255, ptr %f_namelen, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efs_remount(ptr noundef %sb, ptr nocapture noundef %flags, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %flags, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efs_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efs_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efs_get_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.efs_inode_info, ptr %foo, i32 0, i32 3
  tail call void @inode_init_once(ptr noundef %vfs_inode) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__UNIQUE_ID_alias269, !1, !"__UNIQUE_ID_alias269", i1 false, i1 false}
!1 = !{!"../fs/efs/super.c", i32 45, i32 1}
!2 = !{ptr @__initcall__kmod_efs__270_152_init_efs_fs6, !3, !"__initcall__kmod_efs__270_152_init_efs_fs6", i1 false, i1 false}
!3 = !{!"../fs/efs/super.c", i32 152, i32 1}
!4 = !{ptr @__exitcall_exit_efs_fs, !5, !"__exitcall_exit_efs_fs", i1 false, i1 false}
!5 = !{!"../fs/efs/super.c", i32 153, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/efs/super.c", i32 40, i32 11}
!8 = !{ptr @efs_fs_type, !9, !"efs_fs_type", i1 false, i1 false}
!9 = !{!"../fs/efs/super.c", i32 38, i32 32}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/efs/super.c", i32 266, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @efs_fill_super._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @efs_fill_super._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/efs/super.c", i32 275, i32 3}
!18 = !{ptr @efs_fill_super._entry.4, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @efs_fill_super._entry_ptr.6, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/efs/super.c", i32 293, i32 3}
!22 = !{ptr @efs_fill_super._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @efs_fill_super._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/efs/super.c", i32 317, i32 3}
!26 = !{ptr @efs_fill_super._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @efs_fill_super._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/efs/super.c", i32 323, i32 3}
!30 = !{ptr @efs_fill_super._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @efs_fill_super._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/efs/super.c", i32 178, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @efs_validate_vh._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @efs_validate_vh._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/efs/super.c", i32 223, i32 3}
!39 = !{ptr @efs_validate_vh._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @efs_validate_vh._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/efs/super.c", i32 48, i32 10}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/efs/super.c", i32 49, i32 10}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/efs/super.c", i32 50, i32 10}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/efs/super.c", i32 51, i32 10}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/efs/super.c", i32 52, i32 10}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/efs/super.c", i32 53, i32 13}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/efs/super.c", i32 54, i32 10}
!55 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/efs/super.c", i32 55, i32 12}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/efs/super.c", i32 56, i32 10}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/efs/super.c", i32 57, i32 10}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/efs/super.c", i32 58, i32 10}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/efs/super.c", i32 59, i32 10}
!65 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/efs/super.c", i32 60, i32 10}
!67 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/efs/super.c", i32 61, i32 10}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/efs/super.c", i32 62, i32 10}
!71 = distinct !{null, !72, !"sgi_pt_types", i1 false, i1 false}
!72 = !{!"../fs/efs/super.c", i32 47, i32 24}
!73 = !{ptr @efs_superblock_operations, !74, !"efs_superblock_operations", i1 false, i1 false}
!74 = !{!"../fs/efs/super.c", i32 118, i32 38}
!75 = !{ptr @efs_inode_cachep, !76, !"efs_inode_cachep", i1 false, i1 false}
!76 = !{!"../fs/efs/super.c", i32 67, i32 28}
!77 = !{ptr @efs_export_ops, !78, !"efs_export_ops", i1 false, i1 false}
!78 = !{!"../fs/efs/super.c", i32 125, i32 39}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/efs/super.c", i32 133, i32 2}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @init_efs_fs._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @init_efs_fs._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/efs/super.c", i32 92, i32 39}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
