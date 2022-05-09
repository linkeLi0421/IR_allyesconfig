; ModuleID = '/llk/IR_all_yes/fs/ocfs2/dlmfs/dlmfs.c_pt.bc'
source_filename = "../fs/ocfs2/dlmfs/dlmfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.timespec64 = type { i64, i32 }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
%struct.dlmfs_inode_private = type { ptr, %struct.user_lock_res, ptr, %struct.inode }
%struct.user_lock_res = type { %struct.spinlock, i32, [32 x i8], i32, i32, i32, i32, %struct.ocfs2_dlm_lksb, i32, i32, %struct.wait_queue_head, %struct.work_struct }
%struct.ocfs2_dlm_lksb = type { %union.anon.82, ptr }
%union.anon.82 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__param_str_capabilities = internal constant [25 x i8] c"ocfs2_dlmfs.capabilities\00", align 1
@__param_ops_capabilities = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_dlmfs_capabilities, ptr @param_get_dlmfs_capabilities, ptr null }, align 4
@__param_capabilities = internal constant %struct.kernel_param { ptr @__param_str_capabilities, ptr null, ptr @__param_ops_capabilities, i16 292, i8 -1, i8 0, %union.anon.74 zeroinitializer }, section "__param", align 4
@__UNIQUE_ID_capabilities272 = internal constant [45 x i8] c"ocfs2_dlmfs.parm=capabilities:bast stackglue\00", section ".modinfo", align 1
@__UNIQUE_ID_alias273 = internal constant [33 x i8] c"ocfs2_dlmfs.alias=fs-ocfs2_dlmfs\00", section ".modinfo", align 1
@dlmfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.4, i32 0, ptr null, ptr null, ptr @dlmfs_mount, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@user_dlm_worker = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@dlmfs_inode_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author274 = internal constant [26 x i8] c"ocfs2_dlmfs.author=Oracle\00", section ".modinfo", align 1
@__UNIQUE_ID_file275 = internal constant [44 x i8] c"ocfs2_dlmfs.file=fs/ocfs2/dlmfs/ocfs2_dlmfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [24 x i8] c"ocfs2_dlmfs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [45 x i8] c"ocfs2_dlmfs.description=OCFS2 DLM-Filesystem\00", section ".modinfo", align 1
@__initcall__kmod_ocfs2_dlmfs__278_621_init_dlmfs_fs6 = internal global ptr @init_dlmfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_dlmfs_fs = internal global ptr @exit_dlmfs_fs, section ".exitcall.exit", align 4
@param_set_dlmfs_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: readonly parameter\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"param_set_dlmfs_capabilities\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/dlmfs/dlmfs.c\00", [41 x i8] zeroinitializer }, align 32
@param_set_dlmfs_capabilities._entry_ptr = internal global ptr @param_set_dlmfs_capabilities._entry, section ".printk_index", align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bast stackglue\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ocfs2_dlmfs\00", [20 x i8] zeroinitializer }, align 32
@dlmfs_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @dlmfs_alloc_inode, ptr null, ptr @dlmfs_free_inode, ptr null, ptr null, ptr @generic_delete_inode, ptr @dlmfs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__func__.dlmfs_evict_inode = private unnamed_addr constant [18 x i8] c"dlmfs_evict_inode\00", align 1
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inode %lu\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"we're a directory, ip->ip_conn = 0x%p\0A\00", [57 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@dlmfs_root_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dlmfs_mkdir, ptr @simple_rmdir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@__func__.dlmfs_mkdir = private unnamed_addr constant [12 x i8] c"dlmfs_mkdir\00", align 1
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mkdir %.*s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid domain name for directory.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error %d could not register domain \22%.*s\22\0A\00", [53 x i8] zeroinitializer }, align 32
@dlmfs_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dlmfs_file_setattr, ptr @simple_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@dlmfs_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dlmfs_file_read, ptr @dlmfs_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dlmfs_file_poll, ptr null, ptr null, ptr null, i32 0, ptr @dlmfs_file_open, ptr null, ptr @dlmfs_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dlmfs_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr @dlmfs_create, ptr null, ptr @dlmfs_unlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@__func__.dlmfs_file_write = private unnamed_addr constant [17 x i8] c"dlmfs_file_write\00", align 1
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"inode %lu, count = %zu, *ppos = %llu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wrote %zu bytes\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.dlmfs_file_open = private unnamed_addr constant [16 x i8] c"dlmfs_file_open\00", align 1
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"open called on inode %lu, flags 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.dlmfs_file_release = private unnamed_addr constant [19 x i8] c"dlmfs_file_release\00", align 1
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"close called on inode %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.dlmfs_create = private unnamed_addr constant [13 x i8] c"dlmfs_create\00", align 1
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"create %.*s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid lock name, %.*s\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.dlmfs_unlink = private unnamed_addr constant [13 x i8] c"dlmfs_unlink\00", align 1
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unlink inode %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unlink %pd, error %d from destroy\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlmfs_inode_cache\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"user_dlm\00", [23 x i8] zeroinitializer }, align 32
@init_dlmfs_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"OCFS2 User DLM kernel interface loaded\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_dlmfs_fs\00", [18 x i8] zeroinitializer }, align 32
@init_dlmfs_fs._entry_ptr = internal global ptr @init_dlmfs_fs._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"dlmfs_fs_type\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 558, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"user_dlm_worker\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 48, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"dlmfs_inode_cache\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 46, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 77, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 83, i32 25 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 560, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"dlmfs_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 539, i32 38 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 302, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 309, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 314, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 408, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 413, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 429, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"dlmfs_file_operations\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 517, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 245, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 264, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 230, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 214, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 156, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 126, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 173, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 271, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 456, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 463, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 487, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 493, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 571, i32 40 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 582, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [26 x i8] c"../fs/ocfs2/dlmfs/dlmfs.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 598, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias273, ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_capabilities272, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__exitcall_exit_dlmfs_fs, ptr @__initcall__kmod_ocfs2_dlmfs__278_621_init_dlmfs_fs6, ptr @__param_capabilities, ptr @exit_dlmfs_fs, ptr @init_dlmfs_fs._entry, ptr @init_dlmfs_fs._entry_ptr, ptr @param_set_dlmfs_capabilities._entry, ptr @param_set_dlmfs_capabilities._entry_ptr, ptr @dlmfs_fs_type, ptr @user_dlm_worker, ptr @dlmfs_inode_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dlmfs_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @dlmfs_file_operations, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlmfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_dlm_worker to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlmfs_inode_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_set_dlmfs_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlmfs_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlmfs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dlmfs_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_dlmfs_fs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @dlmfs_fs_type) #10
  %0 = load ptr, ptr @user_dlm_worker, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #10
  tail call void @rcu_barrier() #10
  %1 = load ptr, ptr @dlmfs_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_dlmfs_fs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.23, i32 noundef 1080, i32 noundef 0, i32 noundef 68296704, ptr noundef nonnull @dlmfs_init_once) #10
  store ptr %call, ptr @dlmfs_inode_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.end

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end:                                           ; preds = %entry
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.24, i32 noundef 8, i32 noundef 0) #10
  store ptr %call1, ptr @user_dlm_worker, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end10.thread32, label %bail

if.end10.thread32:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @dlmfs_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  br label %if.end15

bail:                                             ; preds = %if.end
  tail call void @user_dlm_set_locking_protocol() #10
  %call5 = tail call i32 @register_filesystem(ptr noundef nonnull @dlmfs_fs_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end, label %if.then12

if.then12:                                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load ptr, ptr @dlmfs_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #10
  %2 = load ptr, ptr @user_dlm_worker, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #10
  br label %if.end15

do.end:                                           ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then12, %if.end10.thread32, %entry.if.end15_crit_edge
  %status.021 = phi i32 [ %call5, %if.then12 ], [ 0, %do.end ], [ -12, %if.end10.thread32 ], [ -12, %entry.if.end15_crit_edge ]
  ret i32 %status.021
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_dlmfs_capabilities(ptr nocapture noundef readnone %val, ptr nocapture noundef readonly %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kp, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %1) #13
  ret i32 -22
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_dlmfs_capabilities(ptr noundef %buffer, ptr nocapture noundef readnone %kp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlcpy(ptr noundef %buffer, ptr noundef nonnull @.str.3, i32 noundef 15) #10
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dlmfs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr nocapture noundef readnone %dev_name, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_nodev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %data, ptr noundef nonnull @dlmfs_fill_super) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_nodev(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlmfs_fill_super(ptr noundef %sb, ptr nocapture noundef readnone %data, i32 noundef %silent) #2 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %0 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 17592186040320, ptr %s_maxbytes, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %1 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 12, ptr %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %3 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1990849573, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %4 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dlmfs_ops, ptr %s_op, align 4
  %call.i = tail call ptr @new_inode(ptr noundef %sb) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.dlmfs_get_root_inode.exit_crit_edge, label %if.then.i

entry.dlmfs_get_root_inode.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlmfs_get_root_inode.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @get_next_ino() #10
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1.i, ptr %i_ino.i, align 8
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call.i, ptr noundef null, i16 noundef zeroext 16877) #10
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call.i) #10
  %6 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #10
  %7 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %8 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  call void @inc_nlink(ptr noundef nonnull %call.i) #10
  %9 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @simple_dir_operations, ptr %9, align 8
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dlmfs_root_inode_operations, ptr %i_op.i, align 8
  br label %dlmfs_get_root_inode.exit

dlmfs_get_root_inode.exit:                        ; preds = %if.then.i, %entry.dlmfs_get_root_inode.exit_crit_edge
  %call1 = call ptr @d_make_root(ptr noundef %call.i) #10
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %12 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %call1, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @dlmfs_alloc_inode(ptr nocapture noundef readnone %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dlmfs_inode_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #10
  %tobool.not = icmp eq ptr %call, null
  %ip_vfs_inode = getelementptr inbounds %struct.dlmfs_inode_private, ptr %call, i32 0, i32 3
  %retval.0 = select i1 %tobool.not, ptr null, ptr %ip_vfs_inode
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlmfs_free_inode(ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dlmfs_inode_cache, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -296
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlmfs_evict_inode(ptr noundef %inode) #2 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m23 = alloca i64, align 8
  %_m35 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clear_inode(ptr noundef %inode) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 32, ptr %_m, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %1 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlmfs_evict_inode, i32 noundef 302, ptr noundef nonnull @.str.5, i32 noundef %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -296
  %3 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %inode, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp = icmp eq i16 %5, -32768
  br i1 %cmp, label %if.then3, label %do.body34

if.then3:                                         ; preds = %entry
  %ip_lockres = getelementptr i8, ptr %inode, i32 -292
  %call4 = call i32 @user_dlm_destroy_lock(ptr noundef %ip_lockres) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.then3.if.end32_crit_edge

if.then3.if.end32_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then7:                                         ; preds = %if.then3
  %6 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %do.body22 [
    i32 -512, label %if.then7.if.end32_crit_edge
    i32 -4, label %if.then7.if.end32_crit_edge65
    i32 -28, label %if.then7.if.end32_crit_edge66
    i32 -122, label %if.then7.if.end32_crit_edge67
  ]

if.then7.if.end32_crit_edge67:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then7.if.end32_crit_edge66:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then7.if.end32_crit_edge65:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then7.if.end32_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.body22:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m23) #10
  %7 = ptrtoint ptr %_m23 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606847008, ptr %_m23, align 8
  %conv27 = sext i32 %call4 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m23, ptr noundef nonnull @__func__.dlmfs_evict_inode, i32 noundef 309, ptr noundef nonnull @.str.6, i64 noundef %conv27) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m23) #10
  br label %if.end32

if.end32:                                         ; preds = %do.body22, %if.then7.if.end32_crit_edge, %if.then7.if.end32_crit_edge65, %if.then7.if.end32_crit_edge66, %if.then7.if.end32_crit_edge67, %if.then3.if.end32_crit_edge
  %ip_parent = getelementptr i8, ptr %inode, i32 -8
  %8 = ptrtoint ptr %ip_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip_parent, align 8
  call void @iput(ptr noundef %9) #10
  br label %clear_fields

do.body34:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m35) #10
  %10 = ptrtoint ptr %_m35 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 32, ptr %_m35, align 8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m35, ptr noundef nonnull @__func__.dlmfs_evict_inode, i32 noundef 314, ptr noundef nonnull @.str.7, ptr noundef %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m35) #10
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %tobool43.not = icmp eq ptr %14, null
  br i1 %tobool43.not, label %do.body34.clear_fields_crit_edge, label %if.then44

do.body34.clear_fields_crit_edge:                 ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %clear_fields

if.then44:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  call void @user_dlm_unregister(ptr noundef nonnull %14) #10
  br label %clear_fields

clear_fields:                                     ; preds = %if.then44, %do.body34.clear_fields_crit_edge, %if.end32
  %ip_parent47 = getelementptr i8, ptr %inode, i32 -8
  %15 = ptrtoint ptr %ip_parent47 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ip_parent47, align 8
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %add.ptr.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_dlm_destroy_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_dlm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlmfs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #2 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m4 = alloca i64, align 8
  %_m30 = alloca i64, align 8
  %_m46 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 32, ptr %_m, align 8
  %1 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %d_name, align 8
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlmfs_mkdir, i32 noundef 408, ptr noundef nonnull @.str.8, i32 noundef %2, ptr noundef %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %5 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %6)
  %cmp = icmp ugt i32 %6, 63
  br i1 %cmp, label %if.then2, label %if.end11

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m4) #10
  %7 = ptrtoint ptr %_m4 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606847008, ptr %_m4, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m4, ptr noundef nonnull @__func__.dlmfs_mkdir, i32 noundef 413, ptr noundef nonnull @.str.9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m4) #10
  br label %if.then59

if.end11:                                         ; preds = %entry
  %8 = or i16 %mode, 16384
  %call = call fastcc ptr @dlmfs_get_inode(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %8)
  %tobool13.not = icmp eq ptr %call, null
  br i1 %tobool13.not, label %do.body29, label %if.end39

do.body29:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m30) #10
  %9 = ptrtoint ptr %_m30 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606847008, ptr %_m30, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m30, ptr noundef nonnull @__func__.dlmfs_mkdir, i32 noundef 420, ptr noundef nonnull @.str.6, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m30) #10
  br label %if.then59

if.end39:                                         ; preds = %if.end11
  %call41 = call ptr @user_dlm_register(ptr noundef %d_name) #10
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %bail, label %if.end55

if.end55:                                         ; preds = %if.end39
  %add.ptr.i = getelementptr i8, ptr %call, i32 -296
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call41, ptr %add.ptr.i, align 8
  call void @inc_nlink(ptr noundef %dir) #10
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call) #10
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.end55.if.end60_crit_edge, label %if.then.i

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #10
  br label %if.end60

bail:                                             ; preds = %if.end39
  %11 = ptrtoint ptr %call41 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m46) #10
  %12 = ptrtoint ptr %_m46 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606847008, ptr %_m46, align 8
  %13 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %d_name, align 8
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m46, ptr noundef nonnull @__func__.dlmfs_mkdir, i32 noundef 430, ptr noundef nonnull @.str.10, i32 noundef %11, i32 noundef %14, ptr noundef %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m46) #10
  %cmp57 = icmp slt ptr %call41, null
  br i1 %cmp57, label %bail.if.then59_crit_edge, label %bail.if.end60_crit_edge

bail.if.end60_crit_edge:                          ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

bail.if.then59_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

if.then59:                                        ; preds = %bail.if.then59_crit_edge, %do.body29, %if.then2
  %status.089 = phi i32 [ %11, %bail.if.then59_crit_edge ], [ -12, %do.body29 ], [ -22, %if.then2 ]
  %inode.087 = phi ptr [ %call, %bail.if.then59_crit_edge ], [ null, %do.body29 ], [ null, %if.then2 ]
  call void @iput(ptr noundef %inode.087) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %bail.if.end60_crit_edge, %if.then.i, %if.end55.if.end60_crit_edge
  %status.088 = phi i32 [ %status.089, %if.then59 ], [ %11, %bail.if.end60_crit_edge ], [ 0, %if.end55.if.end60_crit_edge ], [ 0, %if.then.i ]
  ret i32 %status.088
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_rmdir(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dlmfs_get_inode(ptr noundef %parent, ptr noundef %dentry, i16 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call ptr @new_inode(ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @get_next_ino() #10
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %i_ino, align 8
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call, ptr noundef %parent, i16 noundef zeroext %mode) #10
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call) #10
  %3 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %4 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %5 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %add.ptr.i = getelementptr i8, ptr %call, i32 -296
  %add.ptr.i50 = getelementptr i8, ptr %parent, i32 -296
  %6 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i50, align 8
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %add.ptr.i, align 8
  %9 = and i16 %mode, -4096
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %9, label %do.body [
    i16 -32768, label %sw.bb
    i16 16384, label %sw.bb25
  ]

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/dlmfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 364, 0\0A.popsection", ""() #10, !srcloc !109
  unreachable

sw.bb:                                            ; preds = %if.end
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dlmfs_file_inode_operations, ptr %i_op, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dlmfs_file_operations, ptr %12, align 8
  %14 = call i32 @llvm.read_register.i32(metadata !99) #10
  %and.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %17, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %sw.bb.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

sw.bb.i_size_write.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %sw.bb
  %19 = call i32 @llvm.read_register.i32(metadata !99) #10
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %23 = call i32 @llvm.read_register.i32(metadata !99) #10
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %add.i3.i = add i32 %28, ptrtoint (ptr @lockdep_recursion to i32)
  %29 = inttoptr i32 %add.i3.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  %32 = call i32 @llvm.read_register.i32(metadata !99) #10
  %and.i.i.i7.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool20.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %36 = call i32 @llvm.read_register.i32(metadata !99) #10
  %and.i.i.i4.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i4.i to ptr
  %preempt_count.i.i5.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i = icmp eq i32 %39, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %40 = call i32 @llvm.read_register.i32(metadata !99) #10
  %and.i.i.i9.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %43, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !113
  %44 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %47, ptrtoint (ptr @hardirqs_enabled to i32)
  %48 = inttoptr i32 %add47.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %51 = call i32 @llvm.read_register.i32(metadata !99) #10
  %and.i.i.i12.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %54, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool54.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !115

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %sw.bb.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 23
  %55 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %56, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 23, i32 1
  %57 = call ptr @llvm.returnaddress(i32 0) #10
  %58 = ptrtoint ptr %57 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %58) #10
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %59 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 64, ptr %i_size8.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %58) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !117
  %60 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %61, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %62 = call i32 @llvm.read_register.i32(metadata !99) #10
  %and.i.i.i1.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %65, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  %ip_lockres = getelementptr i8, ptr %call, i32 -292
  call void @user_dlm_lock_res_init(ptr noundef %ip_lockres, ptr noundef %dentry) #10
  %call8 = call ptr @igrab(ptr noundef %parent) #10
  %ip_parent = getelementptr i8, ptr %call, i32 -8
  %66 = ptrtoint ptr %ip_parent to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call8, ptr %ip_parent, align 8
  %tobool11.not = icmp eq ptr %call8, null
  br i1 %tobool11.not, label %do.body16, label %i_size_write.exit.cleanup_crit_edge, !prof !119

i_size_write.exit.cleanup_crit_edge:              ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body16:                                        ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/dlmfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 379, 0\0A.popsection", ""() #10, !srcloc !120
  unreachable

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %i_op26 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %67 = ptrtoint ptr %i_op26 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @dlmfs_dir_inode_operations, ptr %i_op26, align 8
  %68 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @simple_dir_operations, ptr %68, align 8
  call void @inc_nlink(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb25, %i_size_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @user_dlm_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_dlm_lock_res_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlmfs_file_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %and = and i32 %3, -9
  store i32 %and, ptr %attr, align 8
  %call1 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %attr) #10
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlmfs_file_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %lvb = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %lvb) #10
  %0 = call ptr @memset(ptr %lvb, i32 255, i32 64)
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %call1 = call zeroext i1 @user_dlm_read_lvb(ptr noundef %2, ptr noundef nonnull %lvb) #10
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %lvb, i32 noundef 64) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %lvb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlmfs_file_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #2 align 64 {
entry:
  %lvb_buf = alloca [64 x i8], align 1
  %_m = alloca i64, align 8
  %_m20 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %lvb_buf) #10
  %0 = call ptr @memset(ptr %lvb_buf, i32 255, i32 64)
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 32, ptr %_m, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %6 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppos, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlmfs_file_write, i32 noundef 246, ptr noundef nonnull @.str.11, i32 noundef %5, i32 noundef %count, i64 noundef %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %8 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 63, i64 %9)
  %cmp = icmp sgt i64 %9, 63
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %entry
  %conv = zext i32 %count to i64
  %sub = sub i64 64, %9
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp3 = icmp slt i64 %sub, %conv
  %conv7 = trunc i64 %sub to i32
  %spec.select = select i1 %cmp3, i32 %conv7, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool9.not = icmp eq i32 %spec.select, 0
  br i1 %tobool9.not, label %if.end2.cleanup_crit_edge, label %if.end11

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %spec.select)
  %cmp1.i.i = icmp ugt i32 %spec.select, 64
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !119

if.then3.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef 64, i32 noundef %spec.select) #10
  br label %copy_from_user.exit

if.then.i.i.i:                                    ; preds = %if.end11
  call void @__check_object_size(ptr noundef nonnull %lvb_buf, i32 noundef %spec.select, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %spec.select, i32 -1226833920) #14, !srcloc !121
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !115

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %lvb_buf, i32 noundef %spec.select) #10
  %11 = call i32 @llvm.read_register.i32(metadata !99) #10
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !122
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %lvb_buf, ptr noundef %buf, i32 noundef %spec.select) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !115

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i46 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %spec.select, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %spec.select, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %spec.select, %res.0.i.i46
  %add.ptr.i.i = getelementptr i8, ptr %lvb_buf, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i46)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge, %if.then3.i.i
  %n.addr.0.i = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ %res.0.i.i46, %if.then11.i.i ], [ %spec.select, %if.then3.i.i ]
  %sub13 = sub i32 %spec.select, %n.addr.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub13)
  %tobool14.not = icmp eq i32 %sub13, 0
  br i1 %tobool14.not, label %copy_from_user.exit.if.end17_crit_edge, label %if.then15

copy_from_user.exit.if.end17_crit_edge:           ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @user_dlm_write_lvb(ptr noundef %2, ptr noundef nonnull %lvb_buf, i32 noundef %sub13) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %copy_from_user.exit.if.end17_crit_edge
  %15 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ppos, align 8
  %conv18 = zext i32 %sub13 to i64
  %add = add i64 %16, %conv18
  store i64 %add, ptr %ppos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m20) #10
  %17 = ptrtoint ptr %_m20 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 32, ptr %_m20, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m20, ptr noundef nonnull @__func__.dlmfs_file_write, i32 noundef 264, ptr noundef nonnull @.str.12, i32 noundef %sub13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m20) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub13, %if.end17 ], [ -28, %entry.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %lvb_buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlmfs_file_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %l_event = getelementptr i8, ptr %1, i32 -104
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %l_event, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(ptr noundef %file, ptr noundef nonnull %l_event, ptr noundef nonnull %wait) #10
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %ip_lockres = getelementptr i8, ptr %1, i32 -292
  tail call void @_raw_spin_lock(ptr noundef %ip_lockres) #10
  %l_flags = getelementptr i8, ptr %1, i32 -248
  %4 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %l_flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 65
  tail call void @_raw_spin_unlock(ptr noundef %ip_lockres) #10
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlmfs_file_open(ptr noundef %inode, ptr nocapture noundef %file) #2 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %do.body, label %do.body5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/dlmfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #10, !srcloc !125
  unreachable

do.body5:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 32, ptr %_m, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlmfs_file_open, i32 noundef 127, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and1.i = lshr i32 %9, 11
  %and1.lobit.i = and i32 %and1.i, 1
  %and17 = and i32 %9, -1025
  store i32 %and17, ptr %f_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3136, i32 noundef 4) #15
  %tobool19.not = icmp eq ptr %call7.i, null
  br i1 %tobool19.not, label %do.body5.bail_crit_edge, label %if.end21

do.body5.bail_crit_edge:                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.end21:                                         ; preds = %do.body5
  %and.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 3, i32 5
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %..i, ptr %call7.i, align 8
  %ip_lockres = getelementptr i8, ptr %inode, i32 -292
  %call23 = call i32 @user_dlm_cluster_lock(ptr noundef %ip_lockres, i32 noundef %..i, i32 noundef %and1.lobit.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end33

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.lobit.i)
  %tobool28.not = icmp eq i32 %and1.lobit.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call23)
  %cmp29 = icmp eq i32 %call23, -11
  %spec.store.select = select i1 %cmp29, i32 -26, i32 %call23
  %status.0 = select i1 %tobool28.not, i32 %call23, i32 %spec.store.select
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %bail

if.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %private_data, align 4
  br label %bail

bail:                                             ; preds = %if.end33, %if.then26, %do.body5.bail_crit_edge
  %status.1 = phi i32 [ %status.0, %if.then26 ], [ %call23, %if.end33 ], [ -12, %do.body5.bail_crit_edge ]
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlmfs_file_release(ptr noundef %inode, ptr nocapture noundef %file) #2 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %do.body, label %do.body5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlmfs/dlmfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 171, 0\0A.popsection", ""() #10, !srcloc !126
  unreachable

do.body5:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %5 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 32, ptr %_m, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlmfs_file_release, i32 noundef 173, ptr noundef nonnull @.str.17, i32 noundef %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %do.body5.if.end18_crit_edge, label %if.then12

do.body5.if.end18_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then12:                                        ; preds = %do.body5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp13.not = icmp eq i32 %9, -1
  br i1 %cmp13.not, label %if.then12.if.end16_crit_edge, label %if.then15

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %ip_lockres = getelementptr i8, ptr %inode, i32 -292
  call void @user_dlm_cluster_unlock(ptr noundef %ip_lockres, i32 noundef %9) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then12.if.end16_crit_edge
  call void @kfree(ptr noundef nonnull %1) #10
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %private_data, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %do.body5.if.end18_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @user_dlm_read_lvb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_dlm_write_lvb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_dlm_cluster_lock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_dlm_cluster_unlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlmfs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #2 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m8 = alloca i64, align 8
  %_m37 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 32, ptr %_m, align 8
  %1 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %d_name, align 8
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name1, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlmfs_create, i32 noundef 456, ptr noundef nonnull @.str.19, i32 noundef %2, ptr noundef %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %5 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %6)
  %cmp = icmp ugt i32 %6, 31
  br i1 %cmp, label %entry.if.then6_crit_edge, label %lor.lhs.false

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %10)
  %cmp4 = icmp eq i8 %10, 36
  br i1 %cmp4, label %lor.lhs.false.if.then6_crit_edge, label %if.end17

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %entry.if.then6_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m8) #10
  %11 = ptrtoint ptr %_m8 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606847008, ptr %_m8, align 8
  %12 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name1, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m8, ptr noundef nonnull @__func__.dlmfs_create, i32 noundef 464, ptr noundef nonnull @.str.20, i32 noundef %6, ptr noundef %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m8) #10
  br label %bail

if.end17:                                         ; preds = %lor.lhs.false
  %14 = or i16 %mode, -32768
  %call = call fastcc ptr @dlmfs_get_inode(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %14)
  %tobool20.not = icmp eq ptr %call, null
  br i1 %tobool20.not, label %do.body36, label %if.end46

do.body36:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m37) #10
  %15 = ptrtoint ptr %_m37 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606847008, ptr %_m37, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m37, ptr noundef nonnull @__func__.dlmfs_create, i32 noundef 471, ptr noundef nonnull @.str.6, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m37) #10
  br label %bail

if.end46:                                         ; preds = %if.end17
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call) #10
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.end46.bail_crit_edge, label %if.then.i

if.end46.bail_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #10
  br label %bail

bail:                                             ; preds = %if.then.i, %if.end46.bail_crit_edge, %do.body36, %if.then6
  %status.0 = phi i32 [ -22, %if.then6 ], [ -12, %do.body36 ], [ 0, %if.end46.bail_crit_edge ], [ 0, %if.then.i ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlmfs_unlink(ptr noundef %dir, ptr noundef %dentry) #2 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m5 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 32, ptr %_m, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlmfs_unlink, i32 noundef 487, ptr noundef nonnull @.str.21, i32 noundef %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %ip_lockres = getelementptr i8, ptr %1, i32 -292
  %call2 = call i32 @user_dlm_destroy_lock(ptr noundef %ip_lockres) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.body4, label %if.end12

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m5) #10
  %5 = ptrtoint ptr %_m5 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606847008, ptr %_m5, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m5, ptr noundef nonnull @__func__.dlmfs_unlink, i32 noundef 494, ptr noundef nonnull @.str.22, ptr noundef %dentry, i32 noundef %call2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m5) #10
  br label %bail

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = call i32 @simple_unlink(ptr noundef %dir, ptr noundef %dentry) #10
  br label %bail

bail:                                             ; preds = %if.end12, %do.body4
  %status.0 = phi i32 [ %call2, %do.body4 ], [ %call13, %if.end12 ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlmfs_init_once(ptr noundef %foo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %foo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %foo, align 8
  %ip_parent = getelementptr inbounds %struct.dlmfs_inode_private, ptr %foo, i32 0, i32 2
  %1 = ptrtoint ptr %ip_parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ip_parent, align 8
  %ip_vfs_inode = getelementptr inbounds %struct.dlmfs_inode_private, ptr %foo, i32 0, i32 3
  tail call void @inode_init_once(ptr noundef %ip_vfs_inode) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_dlm_set_locking_protocol() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !40, !42, !44, !46, !48, !49, !51, !53, !55, !57, !59, !60, !62, !64, !65, !67, !69, !71, !72, !74, !75, !77, !78, !80, !82, !83, !85, !87, !88, !90, !92, !94, !96, !97, !98}
!llvm.named.register.sp = !{!99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__param_capabilities, !1, !"__param_capabilities", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 86, i32 1}
!2 = !{ptr @__UNIQUE_ID_capabilities272, !3, !"__UNIQUE_ID_capabilities272", i1 false, i1 false}
!3 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 88, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias273, !5, !"__UNIQUE_ID_alias273", i1 false, i1 false}
!5 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 564, i32 1}
!6 = !{ptr @__UNIQUE_ID_author274, !7, !"__UNIQUE_ID_author274", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 617, i32 1}
!8 = !{ptr @__UNIQUE_ID_file275, !9, !"__UNIQUE_ID_file275", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 618, i32 1}
!10 = !{ptr @__UNIQUE_ID_license276, !9, !"__UNIQUE_ID_license276", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description277, !12, !"__UNIQUE_ID_description277", i1 false, i1 false}
!12 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 619, i32 1}
!13 = !{ptr @__initcall__kmod_ocfs2_dlmfs__278_621_init_dlmfs_fs6, !14, !"__initcall__kmod_ocfs2_dlmfs__278_621_init_dlmfs_fs6", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 621, i32 1}
!15 = !{ptr @__exitcall_exit_dlmfs_fs, !16, !"__exitcall_exit_dlmfs_fs", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 622, i32 1}
!17 = !{ptr @dlmfs_inode_cache, !18, !"dlmfs_inode_cache", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 46, i32 27}
!19 = !{ptr @user_dlm_worker, !20, !"user_dlm_worker", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 48, i32 26}
!21 = !{ptr @__param_str_capabilities, !1, !"__param_str_capabilities", i1 false, i1 false}
!22 = !{ptr @__param_ops_capabilities, !1, !"__param_ops_capabilities", i1 false, i1 false}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 77, i32 2}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @param_set_dlmfs_capabilities._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @param_set_dlmfs_capabilities._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 83, i32 25}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 560, i32 11}
!33 = !{ptr @dlmfs_fs_type, !34, !"dlmfs_fs_type", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 558, i32 32}
!35 = !{ptr @dlmfs_ops, !36, !"dlmfs_ops", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 539, i32 38}
!37 = !{ptr @__func__.dlmfs_evict_inode, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 302, i32 2}
!39 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 309, i32 4}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 314, i32 2}
!44 = !{ptr @dlmfs_root_inode_operations, !45, !"dlmfs_root_inode_operations", i1 false, i1 false}
!45 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 533, i32 38}
!46 = !{ptr @__func__.dlmfs_mkdir, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 408, i32 2}
!48 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 413, i32 3}
!51 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 429, i32 3}
!53 = !{ptr @dlmfs_file_inode_operations, !54, !"dlmfs_file_inode_operations", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 547, i32 38}
!55 = !{ptr @dlmfs_file_operations, !56, !"dlmfs_file_operations", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 517, i32 37}
!57 = !{ptr @__func__.dlmfs_file_write, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 245, i32 2}
!59 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 264, i32 2}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!64 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!69 = !{ptr @__func__.dlmfs_file_open, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 126, i32 2}
!71 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__func__.dlmfs_file_release, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 173, i32 2}
!74 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!77 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @dlmfs_dir_inode_operations, !79, !"dlmfs_dir_inode_operations", i1 false, i1 false}
!79 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 526, i32 38}
!80 = !{ptr @__func__.dlmfs_create, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 456, i32 2}
!82 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 463, i32 3}
!85 = !{ptr @__func__.dlmfs_unlink, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 487, i32 2}
!87 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 493, i32 3}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 571, i32 40}
!92 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 582, i32 36}
!94 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ocfs2/dlmfs/dlmfs.c", i32 598, i32 3}
!96 = !{ptr @.str.26, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @init_dlmfs_fs._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @init_dlmfs_fs._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{!"sp"}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{i64 2154707371, i64 2154707858, i64 2154707408, i64 2154707464, i64 2154707498, i64 2154707522, i64 2154707563, i64 2154707584, i64 2154707612, i64 2154707646}
!110 = !{i64 2152718160}
!111 = !{i64 2149877263}
!112 = !{i64 2149882195}
!113 = !{i64 2149903907}
!114 = !{i64 2149908799}
!115 = !{!"branch_weights", i32 2000, i32 1}
!116 = !{i64 2149985256}
!117 = !{i64 2149985581}
!118 = !{i64 2152730022}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{i64 2154708975, i64 2154709462, i64 2154709012, i64 2154709068, i64 2154709102, i64 2154709126, i64 2154709167, i64 2154709188, i64 2154709216, i64 2154709250}
!121 = !{i64 2152417722, i64 2152417747}
!122 = !{i64 4913277}
!123 = !{i64 4913474}
!124 = !{i64 2152398707}
!125 = !{i64 2154701575, i64 2154702062, i64 2154701612, i64 2154701668, i64 2154701702, i64 2154701726, i64 2154701767, i64 2154701788, i64 2154701816, i64 2154701850}
!126 = !{i64 2154703581, i64 2154704068, i64 2154703618, i64 2154703674, i64 2154703708, i64 2154703732, i64 2154703773, i64 2154703794, i64 2154703822, i64 2154703856}
