; ModuleID = '/llk/IR_all_yes/fs/overlayfs/readdir.c_pt.bc'
source_filename = "../fs/overlayfs/readdir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.7 }
%union.anon.7 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.17, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ovl_dir_cache = type { i32, i64, %struct.list_head, %struct.rb_root }
%struct.path = type { ptr, ptr }
%struct.file = type { %union.anon.28, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.28 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ovl_dir_file = type { i8, i8, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.71 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.ovl_readdir_translate = type { ptr, ptr, %struct.dir_context, i64, i32, i32, i8 }
%struct.dir_context = type { ptr, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
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
%struct.ovl_fs = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.ovl_config, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32 }
%struct.ovl_config = type { ptr, ptr, ptr, i8, i8, i8, ptr, i8, i8, i8, i32, i8, i8, i8 }
%struct.ovl_layer = type { ptr, ptr, ptr, i32, i32 }
%struct.ovl_readdir_data = type { %struct.dir_context, ptr, i8, ptr, ptr, %struct.list_head, ptr, i32, i32, i8, i8 }
%struct.ovl_cache_entry = type { i32, i32, i64, i64, %struct.list_head, %struct.rb_node, ptr, i8, i8, [0 x i8] }
%struct.rb_node = type { i32, ptr, ptr }

@ovl_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @ovl_dir_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @ovl_iterate, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ovl_dir_open, ptr null, ptr @ovl_dir_release, ptr @ovl_dir_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/overlayfs/readdir.c\00", [41 x i8] zeroinitializer }, align 32
@ovl_cleanup_whiteouts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013overlayfs: lookup '%s/%.*s' failed (%i)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ovl_cleanup_whiteouts\00", [42 x i8] zeroinitializer }, align 32
@ovl_cleanup_whiteouts._entry_ptr = internal global ptr @ovl_cleanup_whiteouts._entry, section ".printk_index", align 4
@__const.ovl_check_d_type_supported.rdd = private unnamed_addr constant { { ptr, [4 x i8], i64 }, ptr, i8, [3 x i8], ptr, ptr, %struct.list_head, ptr, i32, i32, i8, i8, [2 x i8] } { { ptr, [4 x i8], i64 } { ptr @ovl_check_d_type, [4 x i8] zeroinitializer, i64 0 }, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 8
@ovl_indexdir_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 1231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013overlayfs: failed index dir cleanup (%i)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ovl_indexdir_cleanup\00", [43 x i8] zeroinitializer }, align 32
@ovl_indexdir_cleanup._entry_ptr = internal global ptr @ovl_indexdir_cleanup._entry, section ".printk_index", align 4
@ovl_iterate_real.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@ovl_remap_lower_ino._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ovl_remap_lower_ino = private unnamed_addr constant [20 x i8] c"ovl_remap_lower_ino\00", align 1
@ovl_remap_lower_ino._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.ovl_remap_lower_ino, ptr @.str, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014overlayfs: d_ino too big (%.*s, ino=%llu, xinobits=%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@ovl_remap_lower_ino._entry_ptr = internal global ptr @ovl_remap_lower_ino._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ovl_do_removexattr.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overlay\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ovl_do_removexattr\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/overlayfs/overlayfs.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"removexattr(%pd2, \22%s\22) = %i\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"overlayfs: removexattr(%pd2, \22%s\22) = %i\0A\00", [55 x i8] zeroinitializer }, align 32
@ovl_xattr_table = external dso_local local_unnamed_addr constant [0 x [2 x ptr]], align 4
@ovl_cache_update_ino.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ovl_cache_update_ino._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_cache_update_ino = private unnamed_addr constant [21 x i8] c"ovl_cache_update_ino\00", align 1
@ovl_cache_update_ino._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ovl_cache_update_ino, ptr @.str, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014overlayfs: failed to look up (%s) for ino (%i)\0A\00", [46 x i8] zeroinitializer }, align 32
@ovl_cache_update_ino._entry_ptr = internal global ptr @ovl_cache_update_ino._entry, section ".printk_index", align 4
@ovl_do_rmdir.__UNIQUE_ID_ddebug220 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.15, ptr @.str.11, ptr @.str.16, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ovl_do_rmdir\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rmdir(%pd2) = %i\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"overlayfs: rmdir(%pd2) = %i\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"incompat\00", [23 x i8] zeroinitializer }, align 32
@ovl_workdir_cleanup_recurse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013overlayfs: overlay with incompat feature '%s' cannot be mounted\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ovl_workdir_cleanup_recurse\00", [36 x i8] zeroinitializer }, align 32
@ovl_workdir_cleanup_recurse._entry_ptr = internal global ptr @ovl_workdir_cleanup_recurse._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967180, i64 4294967294]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"ovl_dir_operations\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 952, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1012, i32 7 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1017, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1231, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 659, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 435, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 571, i32 23 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 214, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 526, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [28 x i8] c"../fs/overlayfs/overlayfs.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 129, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1092, i32 41 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [26 x i8] c"../fs/overlayfs/readdir.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1109, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @ovl_cache_update_ino._entry, ptr @ovl_cache_update_ino._entry_ptr, ptr @ovl_cleanup_whiteouts._entry, ptr @ovl_cleanup_whiteouts._entry_ptr, ptr @ovl_indexdir_cleanup._entry, ptr @ovl_indexdir_cleanup._entry_ptr, ptr @ovl_remap_lower_ino._entry, ptr @ovl_remap_lower_ino._entry_ptr, ptr @ovl_workdir_cleanup_recurse._entry, ptr @ovl_workdir_cleanup_recurse._entry_ptr, ptr @ovl_dir_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ovl_remap_lower_ino._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @ovl_cache_update_ino._rs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_cleanup_whiteouts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_indexdir_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_remap_lower_ino._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_remap_lower_ino._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_cache_update_ino._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_cache_update_ino._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_workdir_cleanup_recurse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_cache_free(ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.not17 = icmp eq ptr %1, %list
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in18 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %p.0 = getelementptr i8, ptr %.pn.in18, i32 -24
  %2 = ptrtoint ptr %.pn.in18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in18, align 8
  tail call void @kfree(ptr noundef %p.0) #11
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_dir_cache_free(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovl_dir_cache(ptr noundef %inode) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %entries = getelementptr inbounds %struct.ovl_dir_cache, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries, align 4
  %cmp.not17.i = icmp eq ptr %1, %entries
  br i1 %cmp.not17.i, label %if.then.ovl_cache_free.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.ovl_cache_free.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_cache_free.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn.in18.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %1, %if.then.for.body.i_crit_edge ]
  %p.0.i = getelementptr i8, ptr %.pn.in18.i, i32 -24
  %2 = ptrtoint ptr %.pn.in18.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in18.i, align 8
  tail call void @kfree(ptr noundef %p.0.i) #11
  %cmp.not.i = icmp eq ptr %.pn.i, %entries
  br i1 %cmp.not.i, label %for.body.i.ovl_cache_free.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.ovl_cache_free.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_cache_free.exit

ovl_cache_free.exit:                              ; preds = %for.body.i.ovl_cache_free.exit_crit_edge, %if.then.ovl_cache_free.exit_crit_edge
  %3 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entries, ptr %entries, align 4
  %prev.i.i = getelementptr inbounds %struct.ovl_dir_cache, ptr %call, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entries, ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %if.end

if.end:                                           ; preds = %ovl_cache_free.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dir_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_dir_real_file(ptr nocapture noundef readonly %file, i1 noundef zeroext %want_upper) local_unnamed_addr #0 align 64 {
entry:
  %upperpath = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dentry1 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry1, align 4
  %realfile2 = getelementptr inbounds %struct.ovl_dir_file, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %realfile2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %realfile2, align 4
  %call = tail call i32 @ovl_path_type(ptr noundef %3) #11
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select = select i1 %want_upper, ptr null, ptr %5
  br label %cleanup31

if.end:                                           ; preds = %entry
  %is_upper = getelementptr inbounds %struct.ovl_dir_file, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %is_upper to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_upper, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %do.end, label %if.end.cleanup31_crit_edge

if.end.cleanup31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup31

do.end:                                           ; preds = %if.end
  %upperfile = getelementptr inbounds %struct.ovl_dir_file, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %upperfile to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %upperfile, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.then7, label %do.end.cleanup31_crit_edge

do.end.cleanup31_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup31

if.then7:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %upperpath) #11
  %10 = ptrtoint ptr %upperpath to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %upperpath, align 4, !annotation !64
  %11 = getelementptr inbounds %struct.path, ptr %upperpath, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %11, align 4, !annotation !64
  call void @ovl_path_upper(ptr noundef %3, ptr noundef nonnull %upperpath) #11
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %13 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i, align 4
  %call1.i = call ptr @ovl_override_creds(ptr noundef %16) #11
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %17 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %18, 131072
  %call2.i = call ptr @ovl_path_open(ptr noundef nonnull %upperpath, i32 noundef %and.i) #11
  call void @revert_creds(ptr noundef %call1.i) #11
  %cmp.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %if.end11

cleanup.thread:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %upperpath) #11
  br label %cleanup31

if.end11:                                         ; preds = %if.then7
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %upperfile, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !65
  %19 = ptrtoint ptr %call2.i to i32
  call void @llvm.prefetch.p0(ptr %upperfile, i32 1, i32 3, i32 1) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end11
  %20 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %upperfile, i32 0, i32 %19) #11, !srcloc !66
  %asmresult.i = extractvalue { i32, i32 } %20, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool26.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool26.not, label %__cmpxchg.exit.cleanup_crit_edge, label %if.then27

__cmpxchg.exit.cleanup_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %21 = inttoptr i32 %asmresult1.i to ptr
  call void @fput(ptr noundef %call2.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %__cmpxchg.exit.cleanup_crit_edge
  %realfile.1 = phi ptr [ %21, %if.then27 ], [ %call2.i, %__cmpxchg.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %upperpath) #11
  br label %cleanup31

cleanup31:                                        ; preds = %cleanup, %cleanup.thread, %do.end.cleanup31_crit_edge, %if.end.cleanup31_crit_edge, %if.then
  %retval.1 = phi ptr [ %spec.select, %if.then ], [ %call2.i, %cleanup.thread ], [ %5, %if.end.cleanup31_crit_edge ], [ %9, %do.end.cleanup31_crit_edge ], [ %realfile.1, %cleanup ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_path_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_path_upper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ovl_dir_llseek(ptr nocapture noundef %file, i64 noundef %offset, i32 noundef %origin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #11
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %4 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %f_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %cache1.i = getelementptr inbounds %struct.ovl_dir_file, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %cache1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cache1.i, align 4
  %dentry2.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry2.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %land.lhs.true.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %call.i = tail call i64 @ovl_dentry_version_get(ptr noundef %11) #11
  %version.i = getelementptr inbounds %struct.ovl_dir_cache, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %version.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %13)
  %cmp.not.i = icmp eq i64 %call.i, %13
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ovl_cache_put(ptr noundef %7, ptr noundef %11) #11
  %14 = ptrtoint ptr %cache1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cache1.i, align 4
  %cursor.i = getelementptr inbounds %struct.ovl_dir_file, ptr %7, i32 0, i32 3
  %15 = ptrtoint ptr %cursor.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cursor.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i.i.i, align 8
  %flags.i.i.i = getelementptr i8, ptr %17, i32 -8
  %18 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i.i.i, align 4
  %20 = and i32 %19, 2
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %7, align 4, !range !63
  %.lobit.i = lshr exact i32 %20, 1
  %23 = trunc i32 %.lobit.i to i8
  %24 = xor i8 %23, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp9.not.i = icmp eq i8 %22, %24
  br i1 %cmp9.not.i, label %if.end.i.if.end_crit_edge, label %if.then11.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i.i, label %do.end.i, label %if.end36.i, !prof !67

do.end.i:                                         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 337, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end36.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.end36.i, %do.end.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %1, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool1.not = icmp eq i8 %27, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %realfile = getelementptr inbounds %struct.ovl_dir_file, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %realfile to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %realfile, align 4
  %call3 = tail call i64 @vfs_llseek(ptr noundef %29, i64 noundef %offset, i32 noundef %origin) #11
  %30 = ptrtoint ptr %realfile to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %realfile, align 4
  %f_pos5 = getelementptr inbounds %struct.file, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %f_pos5 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %f_pos5, align 8
  %34 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %f_pos, align 8
  br label %out_unlock

if.else:                                          ; preds = %if.end
  %35 = zext i32 %origin to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %origin, label %if.else.out_unlock_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %if.else.sw.epilog_crit_edge
  ]

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %f_pos, align 8
  %add = add i64 %37, %offset
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.else.sw.epilog_crit_edge
  %offset.addr.0 = phi i64 [ %offset, %if.else.sw.epilog_crit_edge ], [ %add, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset.addr.0)
  %cmp = icmp slt i64 %offset.addr.0, 0
  br i1 %cmp, label %sw.epilog.out_unlock_crit_edge, label %if.end9

sw.epilog.out_unlock_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end9:                                          ; preds = %sw.epilog
  %38 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %f_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.addr.0, i64 %39)
  %cmp11.not = icmp eq i64 %offset.addr.0, %39
  br i1 %cmp11.not, label %if.end9.out_unlock_crit_edge, label %if.then12

if.end9.out_unlock_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then12:                                        ; preds = %if.end9
  %40 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %offset.addr.0, ptr %f_pos, align 8
  %cache = getelementptr inbounds %struct.ovl_dir_file, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cache, align 4
  %tobool14.not = icmp eq ptr %42, null
  br i1 %tobool14.not, label %if.then12.out_unlock_crit_edge, label %if.then15

if.then12.out_unlock_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then15:                                        ; preds = %if.then12
  %entries.i = getelementptr inbounds %struct.ovl_dir_cache, ptr %42, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then15
  %p.0.in.i = phi ptr [ %entries.i, %if.then15 ], [ %p.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %off.0.i = phi i64 [ 0, %if.then15 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %43 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.i.i = icmp ne ptr %p.0.i, %entries.i
  call void @__sanitizer_cov_trace_cmp8(i64 %off.0.i, i64 %offset.addr.0)
  %cmp.not.i39 = icmp slt i64 %off.0.i, %offset.addr.0
  %or.cond.i = select i1 %cmp.i.i, i1 %cmp.not.i39, i1 false
  %inc.i = add nuw nsw i64 %off.0.i, 1
  br i1 %or.cond.i, label %for.cond.i.for.cond.i_crit_edge, label %ovl_seek_cursor.exit

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

ovl_seek_cursor.exit:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %cursor.i40 = getelementptr inbounds %struct.ovl_dir_file, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %cursor.i40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %p.0.i, ptr %cursor.i40, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %ovl_seek_cursor.exit, %if.then12.out_unlock_crit_edge, %if.end9.out_unlock_crit_edge, %sw.epilog.out_unlock_crit_edge, %if.else.out_unlock_crit_edge, %if.then2
  %res.0 = phi i64 [ %call3, %if.then2 ], [ -22, %if.else.out_unlock_crit_edge ], [ -22, %sw.epilog.out_unlock_crit_edge ], [ %offset.addr.0, %if.then12.out_unlock_crit_edge ], [ %offset.addr.0, %ovl_seek_cursor.exit ], [ %offset.addr.0, %if.end9.out_unlock_crit_edge ]
  %45 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i42 = getelementptr inbounds %struct.inode, ptr %46, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i42) #11
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_iterate(ptr nocapture noundef readonly %file, ptr noundef %ctx) #0 align 64 {
entry:
  %rdt.i = alloca %struct.ovl_readdir_translate, align 8
  %stat.i = alloca %struct.kstat, align 8
  %statpath.i = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry1 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry1, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %call = tail call ptr @ovl_override_creds(ptr noundef %5) #11
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %cache1.i = getelementptr inbounds %struct.ovl_dir_file, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %cache1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache1.i, align 4
  %12 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry1, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %land.lhs.true.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %call.i = tail call i64 @ovl_dentry_version_get(ptr noundef %13) #11
  %version.i = getelementptr inbounds %struct.ovl_dir_cache, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %version.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %15)
  %cmp.not.i = icmp eq i64 %call.i, %15
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ovl_cache_put(ptr noundef %9, ptr noundef %13) #11
  %16 = ptrtoint ptr %cache1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cache1.i, align 4
  %cursor.i = getelementptr inbounds %struct.ovl_dir_file, ptr %9, i32 0, i32 3
  %17 = ptrtoint ptr %cursor.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cursor.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i.i.i, align 8
  %flags.i.i.i = getelementptr i8, ptr %19, i32 -8
  %20 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i.i.i, align 4
  %22 = and i32 %21, 2
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %9, align 4, !range !63
  %.lobit.i = lshr exact i32 %22, 1
  %25 = trunc i32 %.lobit.i to i8
  %26 = xor i8 %25, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp9.not.i = icmp eq i8 %24, %26
  br i1 %cmp9.not.i, label %if.end.i.if.end_crit_edge, label %if.then11.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i.i, label %do.end.i, label %if.end36.i, !prof !67

do.end.i:                                         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 337, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end36.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.end36.i, %do.end.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %1, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not = icmp eq i8 %29, 0
  br i1 %tobool2.not, label %if.end17, label %if.then3

if.then3:                                         ; preds = %if.end
  %30 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %xino_mode.i.i = getelementptr inbounds %struct.ovl_fs, ptr %33, i32 0, i32 18
  %34 = ptrtoint ptr %xino_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xino_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %tobool6.not = icmp slt i32 %35, 1
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then3.if.then13_crit_edge

if.then3.if.then13_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i = icmp eq i32 %35, 0
  br i1 %cmp.i, label %land.lhs.true, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %36 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %private_data, align 4
  %is_upper.i = getelementptr inbounds %struct.ovl_dir_file, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %is_upper.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_upper.i, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i92 = icmp eq i8 %39, 0
  br i1 %tobool.not.i92, label %land.lhs.true.lor.lhs.false10_crit_edge, label %ovl_is_impure_dir.exit

land.lhs.true.lor.lhs.false10_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false10

ovl_is_impure_dir.exit:                           ; preds = %land.lhs.true
  %40 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dentry1, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d_inode.i.i, align 8
  %flags.i.i = getelementptr i8, ptr %43, i32 -8
  %44 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags.i.i, align 4
  %46 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.i.not = icmp eq i32 %46, 0
  br i1 %tobool.i.i.not, label %ovl_is_impure_dir.exit.lor.lhs.false10_crit_edge, label %ovl_is_impure_dir.exit.if.then13_crit_edge

ovl_is_impure_dir.exit.if.then13_crit_edge:       ; preds = %ovl_is_impure_dir.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

ovl_is_impure_dir.exit.lor.lhs.false10_crit_edge: ; preds = %ovl_is_impure_dir.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %ovl_is_impure_dir.exit.lor.lhs.false10_crit_edge, %land.lhs.true.lor.lhs.false10_crit_edge
  %d_parent = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 3
  %47 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %d_parent, align 8
  %call11 = tail call i32 @ovl_path_type(ptr noundef %48) #11
  %and = and i32 %call11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %lor.lhs.false10.if.else_crit_edge, label %lor.lhs.false10.if.then13_crit_edge

lor.lhs.false10.if.then13_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

lor.lhs.false10.if.else_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then13:                                        ; preds = %lor.lhs.false10.if.then13_crit_edge, %ovl_is_impure_dir.exit.if.then13_crit_edge, %if.then3.if.then13_crit_edge
  %49 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %private_data, align 4
  %51 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dentry1, align 4
  %call.i95 = tail call ptr @ovl_layer_lower(ptr noundef %52) #11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rdt.i) #11
  %53 = getelementptr inbounds i8, ptr %rdt.i, i32 8
  %54 = call ptr @memset(ptr %53, i32 255, i32 40)
  %55 = ptrtoint ptr %rdt.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %ctx, ptr %rdt.i, align 8
  %cache.i = getelementptr inbounds %struct.ovl_readdir_translate, ptr %rdt.i, i32 0, i32 1
  %56 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %cache.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ovl_fill_real, ptr %53, align 8
  %pos.i = getelementptr inbounds %struct.ovl_readdir_translate, ptr %rdt.i, i32 0, i32 2, i32 1
  %parent_ino.i = getelementptr inbounds %struct.ovl_readdir_translate, ptr %rdt.i, i32 0, i32 3
  %xinobits.i = getelementptr inbounds %struct.ovl_readdir_translate, ptr %rdt.i, i32 0, i32 5
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 9
  %58 = call ptr @memset(ptr %pos.i, i32 0, i32 20)
  %59 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 33
  %61 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %xino_mode.i.i.i = getelementptr inbounds %struct.ovl_fs, ptr %62, i32 0, i32 18
  %63 = ptrtoint ptr %xino_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %xino_mode.i.i.i, align 4
  %65 = tail call i32 @llvm.smax.i32(i32 %64, i32 0) #11
  %66 = ptrtoint ptr %xinobits.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %xinobits.i, align 4
  %xinowarn.i = getelementptr inbounds %struct.ovl_readdir_translate, ptr %rdt.i, i32 0, i32 6
  %xino.i.i = getelementptr inbounds %struct.ovl_fs, ptr %62, i32 0, i32 8, i32 10
  %67 = ptrtoint ptr %xino.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %xino.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp.i.i = icmp eq i32 %68, 2
  %frombool.i = zext i1 %cmp.i.i to i8
  %69 = ptrtoint ptr %xinowarn.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %frombool.i, ptr %xinowarn.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %tobool.not.i96 = icmp slt i32 %64, 1
  %tobool6.not.i = icmp eq ptr %call.i95, null
  %or.cond.i = select i1 %tobool.not.i96, i1 true, i1 %tobool6.not.i
  br i1 %or.cond.i, label %if.then13.if.end.i98_crit_edge, label %if.then.i97

if.then13.if.end.i98_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i98

if.then.i97:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %fsid.i = getelementptr inbounds %struct.ovl_readdir_translate, ptr %rdt.i, i32 0, i32 4
  %fsid7.i = getelementptr inbounds %struct.ovl_layer, ptr %call.i95, i32 0, i32 4
  %70 = ptrtoint ptr %fsid7.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fsid7.i, align 4
  %72 = ptrtoint ptr %fsid.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %fsid.i, align 8
  br label %if.end.i98

if.end.i98:                                       ; preds = %if.then.i97, %if.then13.if.end.i98_crit_edge
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 3
  %73 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %d_parent.i, align 8
  %call9.i = tail call i32 @ovl_path_type(ptr noundef %74) #11
  %and.i = and i32 %call9.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end.i98.if.end60.i_crit_edge, label %if.then11.i99

if.end.i98.if.end60.i_crit_edge:                  ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i

if.then11.i99:                                    ; preds = %if.end.i98
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat.i) #11
  %75 = call ptr @memset(ptr %stat.i, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %statpath.i) #11
  %76 = getelementptr inbounds %struct.path, ptr %statpath.i, i32 0, i32 1
  %77 = ptrtoint ptr %f_path to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %f_path, align 8
  %79 = ptrtoint ptr %statpath.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %statpath.i, align 8
  %80 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %d_parent.i, align 8
  %82 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %76, align 4
  %call15.i = call i32 @vfs_getattr(ptr noundef nonnull %statpath.i, ptr noundef nonnull %stat.i, i32 noundef 256, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %cleanup78.critedge.i

if.end18.i:                                       ; preds = %if.then11.i99
  %83 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %d_sb.i, align 4
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %s_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.kstat, ptr %stat.i, i32 0, i32 7
  %87 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dev.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp.not.i100 = icmp eq i32 %86, %88
  br i1 %cmp.not.i100, label %if.end18.i.if.end50.i_crit_edge, label %land.rhs.i101

if.end18.i.if.end50.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

land.rhs.i101:                                    ; preds = %if.end18.i
  %.b98.i = load i1, ptr @ovl_iterate_real.__already_done, align 1
  br i1 %.b98.i, label %land.rhs.i101.if.end50.i_crit_edge, label %if.then28.i, !prof !68

land.rhs.i101.if.end50.i_crit_edge:               ; preds = %land.rhs.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

if.then28.i:                                      ; preds = %land.rhs.i101
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ovl_iterate_real.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 715, i32 noundef 9, ptr noundef null) #11
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then28.i, %land.rhs.i101.if.end50.i_crit_edge, %if.end18.i.if.end50.i_crit_edge
  %ino.i = getelementptr inbounds %struct.kstat, ptr %stat.i, i32 0, i32 6
  %89 = ptrtoint ptr %ino.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %ino.i, align 8
  %91 = ptrtoint ptr %parent_ino.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %parent_ino.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %statpath.i) #11
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat.i) #11
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.end50.i, %if.end.i98.if.end60.i_crit_edge
  %92 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %private_data, align 4
  %is_upper.i.i = getelementptr inbounds %struct.ovl_dir_file, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %is_upper.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %is_upper.i.i, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i.i = icmp eq i8 %95, 0
  br i1 %tobool.not.i.i, label %if.end60.i.if.end72.i_crit_edge, label %ovl_is_impure_dir.exit.i

if.end60.i.if.end72.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

ovl_is_impure_dir.exit.i:                         ; preds = %if.end60.i
  %96 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dentry1, align 4
  %d_inode.i.i.i102 = getelementptr inbounds %struct.dentry, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %d_inode.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %d_inode.i.i.i102, align 8
  %flags.i.i.i103 = getelementptr i8, ptr %99, i32 -8
  %100 = ptrtoint ptr %flags.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %flags.i.i.i103, align 4
  %102 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.i.i.not.i = icmp eq i32 %102, 0
  br i1 %tobool.i.i.not.i, label %ovl_is_impure_dir.exit.i.if.end72.i_crit_edge, label %if.then62.i

ovl_is_impure_dir.exit.i.if.end72.i_crit_edge:    ; preds = %ovl_is_impure_dir.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

if.then62.i:                                      ; preds = %ovl_is_impure_dir.exit.i
  %call64.i = call fastcc ptr @ovl_cache_get_impure(ptr noundef %f_path) #11
  %103 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call64.i, ptr %cache.i, align 4
  %cmp.i99.i = icmp ugt ptr %call64.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99.i, label %if.then68.i, label %if.then62.i.if.end72.i_crit_edge

if.then62.i.if.end72.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

if.then68.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %call64.i to i32
  br label %ovl_iterate_real.exit

if.end72.i:                                       ; preds = %if.then62.i.if.end72.i_crit_edge, %ovl_is_impure_dir.exit.i.if.end72.i_crit_edge, %if.end60.i.if.end72.i_crit_edge
  %realfile.i = getelementptr inbounds %struct.ovl_dir_file, ptr %50, i32 0, i32 4
  %105 = ptrtoint ptr %realfile.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %realfile.i, align 4
  %call74.i = call i32 @iterate_dir(ptr noundef %106, ptr noundef %53) #11
  %107 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %pos.i, align 8
  %109 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %pos, align 8
  br label %ovl_iterate_real.exit

cleanup78.critedge.i:                             ; preds = %if.then11.i99
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %statpath.i) #11
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat.i) #11
  br label %ovl_iterate_real.exit

ovl_iterate_real.exit:                            ; preds = %cleanup78.critedge.i, %if.end72.i, %if.then68.i
  %retval.1.i = phi i32 [ %104, %if.then68.i ], [ %call74.i, %if.end72.i ], [ %call15.i, %cleanup78.critedge.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rdt.i) #11
  br label %out

if.else:                                          ; preds = %lor.lhs.false10.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %realfile = getelementptr inbounds %struct.ovl_dir_file, ptr %1, i32 0, i32 4
  %110 = ptrtoint ptr %realfile to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %realfile, align 4
  %call15 = tail call i32 @iterate_dir(ptr noundef %111, ptr noundef %ctx) #11
  br label %out

if.end17:                                         ; preds = %if.end
  %cache = getelementptr inbounds %struct.ovl_dir_file, ptr %1, i32 0, i32 2
  %112 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cache, align 4
  %tobool18.not = icmp eq ptr %113, null
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end28_crit_edge

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then19:                                        ; preds = %if.end17
  %d_inode.i.i104 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %114 = ptrtoint ptr %d_inode.i.i104 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %d_inode.i.i104, align 8
  %call1.i = tail call ptr @ovl_dir_cache(ptr noundef %115) #11
  %tobool.not.i105 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i105, label %if.then19.if.end26.i_crit_edge, label %land.lhs.true.i108

if.then19.if.end26.i_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

land.lhs.true.i108:                               ; preds = %if.then19
  %call2.i = tail call i64 @ovl_dentry_version_get(ptr noundef %3) #11
  %version.i106 = getelementptr inbounds %struct.ovl_dir_cache, ptr %call1.i, i32 0, i32 1
  %116 = ptrtoint ptr %version.i106 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %version.i106, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call2.i, i64 %117)
  %cmp.i107 = icmp eq i64 %call2.i, %117
  br i1 %cmp.i107, label %if.then.i109, label %land.lhs.true.i108.if.end26.i_crit_edge

land.lhs.true.i108.if.end26.i_crit_edge:          ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.then.i109:                                     ; preds = %land.lhs.true.i108
  %118 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %call1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool3.not.i = icmp eq i32 %119, 0
  br i1 %tobool3.not.i, label %do.end.i110, label %if.then.i109.if.end.i111_crit_edge, !prof !67

if.then.i109.if.end.i111_crit_edge:               ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i111

do.end.i110:                                      ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 400, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i111

if.end.i111:                                      ; preds = %do.end.i110, %if.then.i109.if.end.i111_crit_edge
  %120 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %call1.i, align 8
  %inc.i = add i32 %121, 1
  store i32 %inc.i, ptr %call1.i, align 8
  br label %ovl_cache_get.exit

if.end26.i:                                       ; preds = %land.lhs.true.i108.if.end26.i_crit_edge, %if.then19.if.end26.i_crit_edge
  %122 = ptrtoint ptr %d_inode.i.i104 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %d_inode.i.i104, align 8
  tail call void @ovl_set_dir_cache(ptr noundef %123, ptr noundef null) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %124 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %124, i32 noundef 3520, i32 noundef 32) #14
  %tobool29.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool29.not.i, label %if.end26.i.out_crit_edge, label %if.end32.i

if.end26.i.out_crit_edge:                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end32.i:                                       ; preds = %if.end26.i
  %125 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %call7.i.i.i, align 8
  %entries.i = getelementptr inbounds %struct.ovl_dir_cache, ptr %call7.i.i.i, i32 0, i32 2
  %126 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %entries.i, ptr %entries.i, align 8
  %prev.i.i = getelementptr inbounds %struct.ovl_dir_cache, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %127 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %entries.i, ptr %prev.i.i, align 4
  %root.i = getelementptr inbounds %struct.ovl_dir_cache, ptr %call7.i.i.i, i32 0, i32 3
  %128 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %root.i, align 8
  %call36.i = tail call fastcc i32 @ovl_dir_read_merged(ptr noundef %3, ptr noundef %entries.i, ptr noundef %root.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end41.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end32.i
  %129 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %entries.i, align 8
  %cmp.not17.i.i = icmp eq ptr %130, %entries.i
  br i1 %cmp.not17.i.i, label %if.then38.i.ovl_cache_free.exit.i_crit_edge, label %if.then38.i.for.body.i.i_crit_edge

if.then38.i.for.body.i.i_crit_edge:               ; preds = %if.then38.i
  br label %for.body.i.i

if.then38.i.ovl_cache_free.exit.i_crit_edge:      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_cache_free.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then38.i.for.body.i.i_crit_edge
  %.pn.in18.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %130, %if.then38.i.for.body.i.i_crit_edge ]
  %p.0.i.i = getelementptr i8, ptr %.pn.in18.i.i, i32 -24
  %131 = ptrtoint ptr %.pn.in18.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %.pn.i.i = load ptr, ptr %.pn.in18.i.i, align 8
  tail call void @kfree(ptr noundef %p.0.i.i) #11
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %entries.i
  br i1 %cmp.not.i.i, label %for.body.i.i.ovl_cache_free.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.ovl_cache_free.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_cache_free.exit.i

ovl_cache_free.exit.i:                            ; preds = %for.body.i.i.ovl_cache_free.exit.i_crit_edge, %if.then38.i.ovl_cache_free.exit.i_crit_edge
  %132 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %entries.i, ptr %entries.i, align 8
  %133 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %entries.i, ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %134 = inttoptr i32 %call36.i to ptr
  br label %ovl_cache_get.exit

if.end41.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %call42.i = tail call i64 @ovl_dentry_version_get(ptr noundef %3) #11
  %version43.i = getelementptr inbounds %struct.ovl_dir_cache, ptr %call7.i.i.i, i32 0, i32 1
  %135 = ptrtoint ptr %version43.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %call42.i, ptr %version43.i, align 8
  %136 = ptrtoint ptr %d_inode.i.i104 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %d_inode.i.i104, align 8
  tail call void @ovl_set_dir_cache(ptr noundef %137, ptr noundef nonnull %call7.i.i.i) #11
  br label %ovl_cache_get.exit

ovl_cache_get.exit:                               ; preds = %if.end41.i, %ovl_cache_free.exit.i, %if.end.i111
  %retval.0.i = phi ptr [ %call1.i, %if.end.i111 ], [ %134, %ovl_cache_free.exit.i ], [ %call7.i.i.i, %if.end41.i ]
  %138 = ptrtoint ptr %retval.0.i to i32
  %cmp.i112 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %ovl_cache_get.exit.out_crit_edge, label %if.end25

ovl_cache_get.exit.out_crit_edge:                 ; preds = %ovl_cache_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end25:                                         ; preds = %ovl_cache_get.exit
  %139 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %retval.0.i, ptr %cache, align 4
  %140 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %pos, align 8
  %entries.i114 = getelementptr inbounds %struct.ovl_dir_cache, ptr %retval.0.i, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end25
  %p.0.in.i = phi ptr [ %entries.i114, %if.end25 ], [ %p.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %off.0.i = phi i64 [ 0, %if.end25 ], [ %inc.i118, %for.cond.i.for.cond.i_crit_edge ]
  %142 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.i.i115 = icmp ne ptr %p.0.i, %entries.i114
  call void @__sanitizer_cov_trace_cmp8(i64 %off.0.i, i64 %141)
  %cmp.not.i116 = icmp slt i64 %off.0.i, %141
  %or.cond.i117 = select i1 %cmp.i.i115, i1 %cmp.not.i116, i1 false
  %inc.i118 = add nuw nsw i64 %off.0.i, 1
  br i1 %or.cond.i117, label %for.cond.i.for.cond.i_crit_edge, label %cleanup

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

cleanup:                                          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %cursor.i119 = getelementptr inbounds %struct.ovl_dir_file, ptr %1, i32 0, i32 3
  %143 = ptrtoint ptr %cursor.i119 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %p.0.i, ptr %cursor.i119, align 4
  br label %if.end28

if.end28:                                         ; preds = %cleanup, %if.end17.if.end28_crit_edge
  %cursor = getelementptr inbounds %struct.ovl_dir_file, ptr %1, i32 0, i32 3
  %144 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cursor, align 4
  %146 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cache, align 4
  %entries128 = getelementptr inbounds %struct.ovl_dir_cache, ptr %147, i32 0, i32 2
  %cmp.not129 = icmp eq ptr %145, %entries128
  br i1 %cmp.not129, label %if.end28.out_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  br label %while.body

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %if.end28.while.body_crit_edge
  %148 = phi ptr [ %169, %if.end49.while.body_crit_edge ], [ %145, %if.end28.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %148, i32 -24
  %is_whiteout = getelementptr i8, ptr %148, i32 25
  %149 = ptrtoint ptr %is_whiteout to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %is_whiteout, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool31.not = icmp eq i8 %150, 0
  br i1 %tobool31.not, label %if.then32, label %while.body.if.end49_crit_edge

while.body.if.end49_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then32:                                        ; preds = %while.body
  %ino = getelementptr i8, ptr %148, i32 -8
  %151 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %ino, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %152)
  %tobool33.not = icmp eq i64 %152, 0
  br i1 %tobool33.not, label %if.then34, label %if.then32.if.end41_crit_edge

if.then32.if.end41_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then34:                                        ; preds = %if.then32
  %call36 = tail call fastcc i32 @ovl_cache_update_ino(ptr noundef %f_path, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then34.if.end41_crit_edge, label %if.then34.out_crit_edge

if.then34.out_crit_edge:                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end41:                                         ; preds = %if.then34.if.end41_crit_edge, %if.then32.if.end41_crit_edge
  %153 = ptrtoint ptr %is_whiteout to i32
  call void @__asan_load1_noabort(i32 %153)
  %.pr = load i8, ptr %is_whiteout, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool43.not = icmp eq i8 %.pr, 0
  br i1 %tobool43.not, label %if.then44, label %if.end41.if.end49_crit_edge

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then44:                                        ; preds = %if.end41
  %name = getelementptr i8, ptr %148, i32 26
  %154 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %add.ptr, align 8
  %156 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %ino, align 8
  %type = getelementptr i8, ptr %148, i32 -20
  %158 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %type, align 4
  %160 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ctx, align 8
  %162 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %pos, align 8
  %call.i121 = tail call i32 %161(ptr noundef %ctx, ptr noundef %name, i32 noundef %155, i64 noundef %163, i64 noundef %157, i32 noundef %159) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %cmp.i122 = icmp eq i32 %call.i121, 0
  br i1 %cmp.i122, label %if.then44.if.end49_crit_edge, label %if.then44.out_crit_edge

if.then44.out_crit_edge:                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then44.if.end49_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.end49:                                         ; preds = %if.then44.if.end49_crit_edge, %if.end41.if.end49_crit_edge, %while.body.if.end49_crit_edge
  %164 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %148, align 8
  %166 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %165, ptr %cursor, align 4
  %167 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %pos, align 8
  %inc = add i64 %168, 1
  store i64 %inc, ptr %pos, align 8
  %169 = load ptr, ptr %cursor, align 4
  %170 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %cache, align 4
  %entries = getelementptr inbounds %struct.ovl_dir_cache, ptr %171, i32 0, i32 2
  %cmp.not = icmp eq ptr %169, %entries
  br i1 %cmp.not, label %if.end49.out_crit_edge, label %if.end49.while.body_crit_edge

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %if.end49.out_crit_edge, %if.then44.out_crit_edge, %if.then34.out_crit_edge, %if.end28.out_crit_edge, %ovl_cache_get.exit.out_crit_edge, %if.end26.i.out_crit_edge, %if.else, %ovl_iterate_real.exit
  %err.0 = phi i32 [ %retval.1.i, %ovl_iterate_real.exit ], [ %call15, %if.else ], [ %138, %ovl_cache_get.exit.out_crit_edge ], [ -12, %if.end26.i.out_crit_edge ], [ 0, %if.end28.out_crit_edge ], [ %call36, %if.then34.out_crit_edge ], [ 0, %if.then44.out_crit_edge ], [ 0, %if.end49.out_crit_edge ]
  call void @revert_creds(ptr noundef %call) #11
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_dir_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  %realpath = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %realpath) #11
  %0 = ptrtoint ptr %realpath to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %realpath, align 4, !annotation !64
  %1 = getelementptr inbounds %struct.path, ptr %realpath, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 20) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %call1 = call i32 @ovl_path_real(ptr noundef %5, ptr noundef nonnull %realpath) #11
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %call1.i = call ptr @ovl_override_creds(ptr noundef %9) #11
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %10 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %11, 131072
  %call2.i = call ptr @ovl_path_open(ptr noundef nonnull %realpath, i32 noundef %and.i) #11
  call void @revert_creds(ptr noundef %call1.i) #11
  %cmp.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %12 = ptrtoint ptr %call2.i to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %realfile7 = getelementptr inbounds %struct.ovl_dir_file, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %realfile7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2.i, ptr %realfile7, align 4
  %14 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dentry, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i.i, align 8
  %flags.i.i = getelementptr i8, ptr %17, i32 -8
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i.i, align 4
  %20 = trunc i32 %19 to i8
  %21 = lshr i8 %20, 1
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %call7.i.i, align 8
  %is_upper = getelementptr inbounds %struct.ovl_dir_file, ptr %call7.i.i, i32 0, i32 1
  %25 = trunc i32 %call1 to i8
  %26 = and i8 %25, 1
  %27 = ptrtoint ptr %is_upper to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %is_upper, align 1
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %28 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then4 ], [ 0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %realpath) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_dir_release(ptr noundef %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cache = getelementptr inbounds %struct.ovl_dir_file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #11
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  tail call fastcc void @ovl_cache_put(ptr noundef %1, ptr noundef %5)
  tail call void @up_write(ptr noundef %i_rwsem.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %realfile = getelementptr inbounds %struct.ovl_dir_file, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %realfile to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %realfile, align 4
  tail call void @fput(ptr noundef %7) #11
  %upperfile = getelementptr inbounds %struct.ovl_dir_file, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %upperfile to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %upperfile, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %9) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_dir_fsync(ptr nocapture noundef readonly %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call i32 @ovl_sync_status(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @ovl_dir_real_file(ptr noundef %file, i1 noundef zeroext true)
  %cmp.i.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %6 = ptrtoint ptr %call2 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %6, i32 0
  %tobool.not = icmp ne ptr %call2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool4.not = icmp eq i32 %spec.select.i, 0
  %or.cond = select i1 %tobool.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @vfs_fsync_range(ptr noundef nonnull %call2, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ], [ %spec.select.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_check_empty_dir(ptr noundef %dentry, ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  %root = alloca %struct.rb_root, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root) #11
  %0 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %1 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_sb, align 4
  %call = tail call ptr @ovl_override_creds(ptr noundef %2) #11
  %call1 = call fastcc i32 @ovl_dir_read_merged(ptr noundef %dentry, ptr noundef %list, ptr noundef nonnull %root)
  call void @revert_creds(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %cmp.not59 = icmp eq ptr %4, %list
  br i1 %cmp.not59, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in60 = phi ptr [ %.pn63, %for.inc.for.body_crit_edge ], [ %4, %if.end.for.body_crit_edge ]
  %p.062 = getelementptr i8, ptr %.pn.in60, i32 -24
  %5 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn63 = load ptr, ptr %.pn.in60, align 8
  %is_whiteout = getelementptr i8, ptr %.pn.in60, i32 25
  %6 = ptrtoint ptr %is_whiteout to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_whiteout, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %for.body
  %is_upper = getelementptr i8, ptr %.pn.in60, i32 24
  %8 = ptrtoint ptr %is_upper to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_upper, align 8, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %if.then8.del_entry_crit_edge, label %if.then8.for.inc_crit_edge

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then8.del_entry_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %del_entry

if.end12:                                         ; preds = %for.body
  %name = getelementptr i8, ptr %.pn.in60, i32 26
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %name, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %11)
  %cmp13 = icmp eq i8 %11, 46
  br i1 %cmp13, label %if.then15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  %12 = ptrtoint ptr %p.062 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p.062, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %13, label %if.then15.cleanup_crit_edge [
    i32 1, label %if.then15.del_entry_crit_edge
    i32 2, label %land.lhs.true
  ]

if.then15.del_entry_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %del_entry

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then15
  %arrayidx24 = getelementptr i8, ptr %.pn.in60, i32 27
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %16)
  %cmp26 = icmp eq i8 %16, 46
  br i1 %cmp26, label %land.lhs.true.del_entry_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.del_entry_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %del_entry

del_entry:                                        ; preds = %land.lhs.true.del_entry_crit_edge, %if.then15.del_entry_crit_edge, %if.then8.del_entry_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in60) #11
  br i1 %call.i.i, label %if.end.i.i, label %del_entry.list_del.exit_crit_edge

del_entry.list_del.exit_crit_edge:                ; preds = %del_entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %del_entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in60, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in60, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %del_entry.list_del.exit_crit_edge
  %23 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in60, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in60, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %p.062) #11
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %if.then8.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn63, %list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -39, %if.end12.cleanup_crit_edge ], [ -39, %land.lhs.true.cleanup_crit_edge ], [ -39, %if.then15.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_dir_read_merged(ptr noundef %dentry, ptr noundef %list, ptr noundef %root) unnamed_addr #0 align 64 {
entry:
  %realpath = alloca %struct.path, align 4
  %rdd = alloca %struct.ovl_readdir_data, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %realpath) #11
  %0 = ptrtoint ptr %realpath to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %realpath, align 4, !annotation !64
  %1 = getelementptr inbounds %struct.path, ptr %realpath, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rdd) #11
  %3 = call ptr @memset(ptr %rdd, i32 255, i32 56)
  %4 = ptrtoint ptr %rdd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ovl_fill_merge, ptr %rdd, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %rdd, i32 0, i32 1
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %pos, align 8
  %dentry1 = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 1
  %6 = ptrtoint ptr %dentry1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dentry, ptr %dentry1, align 8
  %is_lowest = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 2
  %7 = ptrtoint ptr %is_lowest to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %is_lowest, align 4
  %root2 = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 3
  %8 = ptrtoint ptr %root2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %root, ptr %root2, align 8
  %list3 = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 4
  %9 = ptrtoint ptr %list3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %list3, align 4
  %middle = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 5
  %is_upper = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 9
  %prev3.i.i = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 5, i32 1
  %10 = call ptr @memset(ptr %middle, i32 0, i32 22)
  br label %for.body

for.body:                                         ; preds = %if.then.for.body_crit_edge, %entry
  %idx.025 = phi i32 [ 0, %entry ], [ %call, %if.then.for.body_crit_edge ]
  %call = call i32 @ovl_path_next(i32 noundef %idx.025, ptr noundef %dentry, ptr noundef nonnull %realpath) #11
  %call5 = call ptr @ovl_dentry_upper(ptr noundef %dentry) #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %cmp7 = icmp eq ptr %call5, %12
  %frombool = zext i1 %cmp7 to i8
  %13 = ptrtoint ptr %is_upper to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %is_upper, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp9.not = icmp eq i32 %call, -1
  br i1 %cmp9.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %call10 = call fastcc i32 @ovl_dir_read(ptr noundef nonnull %realpath, ptr noundef nonnull %rdd)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.else:                                          ; preds = %for.body
  %14 = ptrtoint ptr %list3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list3, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %middle, ptr noundef %15, ptr noundef %17) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_add.exit_crit_edge

if.else.list_add.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %middle, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %middle to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %middle, align 8
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %15, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %middle, ptr %15, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.else.list_add.exit_crit_edge
  %22 = ptrtoint ptr %is_lowest to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %is_lowest, align 4
  %call15 = call fastcc i32 @ovl_dir_read(ptr noundef nonnull %realpath, ptr noundef nonnull %rdd)
  %call.i.i23 = call zeroext i1 @__list_del_entry_valid(ptr noundef %middle) #11
  br i1 %call.i.i23, label %if.end.i.i24, label %list_add.exit.for.end_crit_edge

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.i.i24:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %middle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %middle, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %for.end

for.end:                                          ; preds = %if.end.i.i24, %list_add.exit.for.end_crit_edge, %if.then.for.end_crit_edge
  %err.2 = phi i32 [ %call15, %if.end.i.i24 ], [ %call15, %list_add.exit.for.end_crit_edge ], [ %call10, %if.then.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rdd) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %realpath) #11
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_cleanup_whiteouts(ptr noundef %upper, ptr noundef readonly %list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %upper, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 2) #11
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn70 = load ptr, ptr %list, align 4
  %cmp.not72 = icmp eq ptr %.pn70, %list
  br i1 %cmp.not72, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %name33 = getelementptr inbounds %struct.dentry, ptr %upper, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn73 = phi ptr [ %.pn70, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %p.074 = getelementptr i8, ptr %.pn73, i32 -24
  %is_whiteout = getelementptr i8, ptr %.pn73, i32 25
  %3 = ptrtoint ptr %is_whiteout to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_whiteout, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.do.end_crit_edge, label %lor.rhs

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs:                                          ; preds = %for.body
  %is_upper = getelementptr i8, ptr %.pn73, i32 24
  %5 = ptrtoint ptr %is_upper to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_upper, align 8, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end26, !prof !67

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %for.body.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1012, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end26:                                         ; preds = %lor.rhs
  %name = getelementptr i8, ptr %.pn73, i32 26
  %7 = ptrtoint ptr %p.074 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p.074, align 8
  %call = tail call ptr @lookup_one_len(ptr noundef %name, ptr noundef %upper, i32 noundef %8) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end31, label %if.end39

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name33, align 8
  %11 = ptrtoint ptr %p.074 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p.074, align 8
  %13 = ptrtoint ptr %call to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %10, i32 noundef %12, ptr noundef %name, i32 noundef %13) #15
  br label %cleanup

if.end39:                                         ; preds = %if.end26
  %d_inode40 = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode40, align 8
  %tobool41.not = icmp eq ptr %15, null
  br i1 %tobool41.not, label %if.end39.if.end45_crit_edge, label %if.then42

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode, align 8
  %call44 = tail call i32 @ovl_cleanup(ptr noundef %17, ptr noundef %call) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39.if.end45_crit_edge
  tail call void @dput(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end31, %do.end
  %18 = ptrtoint ptr %.pn73 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn73, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %19 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i69 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i69) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_check_d_type_supported(ptr noundef %realpath) local_unnamed_addr #0 align 64 {
entry:
  %rdd = alloca %struct.ovl_readdir_data, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rdd) #11
  %0 = call ptr @memcpy(ptr %rdd, ptr @__const.ovl_check_d_type_supported.rdd, i32 56)
  %call = call fastcc i32 @ovl_dir_read(ptr noundef %realpath, ptr noundef nonnull %rdd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %d_type_supported = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 10
  %1 = ptrtoint ptr %d_type_supported to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %d_type_supported, align 1, !range !63
  %3 = zext i8 %2 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rdd) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ovl_check_d_type(ptr nocapture noundef writeonly %ctx, ptr nocapture noundef readonly %name, i32 noundef %namelen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull @.str.8, i32 noundef %namelen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull @.str.5, i32 noundef %namelen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d_type)
  %cmp.not = icmp eq i32 %d_type, 0
  %or.cond = or i1 %cmp.not, %tobool2.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.then3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %d_type_supported = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %d_type_supported to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %d_type_supported, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_dir_read(ptr noundef %realpath, ptr noundef %rdd) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @ovl_path_open(ptr noundef %realpath, i32 noundef 131072) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %first_maybe_whiteout = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 6
  %1 = ptrtoint ptr %first_maybe_whiteout to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %first_maybe_whiteout, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %rdd, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %pos, align 8
  %count = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 7
  %err3 = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %count, align 4
  %4 = ptrtoint ptr %err3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %err3, align 8
  %call5 = tail call i32 @iterate_dir(ptr noundef %call, ptr noundef %rdd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp = icmp sgt i32 %call5, -1
  br i1 %cmp, label %do.cond, label %do.body.if.end19_crit_edge

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.cond:                                          ; preds = %do.body
  %5 = ptrtoint ptr %err3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %err3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.rhs, label %do.cond.if.end19_crit_edge

do.cond.if.end19_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.rhs:                                         ; preds = %do.cond
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %land.lhs.true.critedge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true.critedge:                           ; preds = %land.rhs
  %9 = ptrtoint ptr %first_maybe_whiteout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %first_maybe_whiteout, align 8
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %land.lhs.true.critedge.if.end19_crit_edge, label %land.lhs.true14

land.lhs.true.critedge.if.end19_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true14:                                  ; preds = %land.lhs.true.critedge
  %dentry = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 1
  %11 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dentry, align 8
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %land.lhs.true14.if.end19_crit_edge, label %if.then16

land.lhs.true14.if.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then16:                                        ; preds = %land.lhs.true14
  %dentry17 = getelementptr inbounds %struct.path, ptr %realpath, i32 0, i32 1
  %13 = ptrtoint ptr %dentry17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dentry17, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 9
  %15 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_sb.i, align 4
  %call.i = tail call ptr @ovl_override_creds(ptr noundef %16) #11
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 25
  %call2.i = tail call i32 @down_write_killable(ptr noundef %i_rwsem.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %while.cond.preheader.i, label %if.then16.ovl_check_whiteouts.exit_crit_edge

if.then16.ovl_check_whiteouts.exit_crit_edge:     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_check_whiteouts.exit

while.cond.preheader.i:                           ; preds = %if.then16
  %19 = ptrtoint ptr %first_maybe_whiteout to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %first_maybe_whiteout, align 8
  %tobool3.not23.i = icmp eq ptr %20, null
  br i1 %tobool3.not23.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %21 = phi ptr [ %29, %if.end.i.while.body.i_crit_edge ], [ %20, %while.cond.preheader.i.while.body.i_crit_edge ]
  %next_maybe_whiteout.i = getelementptr inbounds %struct.ovl_cache_entry, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %next_maybe_whiteout.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next_maybe_whiteout.i, align 4
  %24 = ptrtoint ptr %first_maybe_whiteout to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %first_maybe_whiteout, align 8
  %name.i = getelementptr inbounds %struct.ovl_cache_entry, ptr %21, i32 0, i32 9
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %21, align 8
  %call6.i = tail call ptr @lookup_one_len(ptr noundef %name.i, ptr noundef %14, i32 noundef %26) #11
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %while.body.i.if.end.i_crit_edge, label %if.then8.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then8.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = tail call zeroext i1 @ovl_is_whiteout(ptr noundef %call6.i) #11
  %is_whiteout.i = getelementptr inbounds %struct.ovl_cache_entry, ptr %21, i32 0, i32 8
  %frombool.i = zext i1 %call9.i to i8
  %27 = ptrtoint ptr %is_whiteout.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool.i, ptr %is_whiteout.i, align 1
  tail call void @dput(ptr noundef %call6.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %while.body.i.if.end.i_crit_edge
  %28 = ptrtoint ptr %first_maybe_whiteout to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %first_maybe_whiteout, align 8
  %tobool3.not.i = icmp eq ptr %29, null
  br i1 %tobool3.not.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %30 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #11
  br label %ovl_check_whiteouts.exit

ovl_check_whiteouts.exit:                         ; preds = %while.end.i, %if.then16.ovl_check_whiteouts.exit_crit_edge
  tail call void @revert_creds(ptr noundef %call.i) #11
  br label %if.end19

if.end19:                                         ; preds = %ovl_check_whiteouts.exit, %land.lhs.true14.if.end19_crit_edge, %land.lhs.true.critedge.if.end19_crit_edge, %do.cond.if.end19_crit_edge, %do.body.if.end19_crit_edge
  %err.1 = phi i32 [ %call2.i, %ovl_check_whiteouts.exit ], [ 0, %land.lhs.true14.if.end19_crit_edge ], [ 0, %land.lhs.true.critedge.if.end19_crit_edge ], [ %call5, %do.body.if.end19_crit_edge ], [ %6, %do.cond.if.end19_crit_edge ]
  tail call void @fput(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.1, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_workdir_cleanup(ptr noundef %dir, ptr noundef %mnt, ptr noundef %dentry, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  %list.i = alloca %struct.list_head, align 4
  %root.i = alloca %struct.rb_root, align 4
  %rdd.i = alloca %struct.ovl_readdir_data, align 8
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry, align 8
  %2 = and i32 %1, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %2)
  %3 = icmp ne i32 %2, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cmp = icmp sgt i32 %level, 1
  %or.cond = or i1 %cmp, %3
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @ovl_cleanup(ptr noundef %dir, ptr noundef %dentry) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @vfs_rmdir(ptr noundef nonnull @init_user_ns, ptr noundef %dir, ptr noundef %dentry) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_rmdir.__UNIQUE_ID_ddebug220, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_workdir_cleanup, %if.then.i)) #11
          to label %ovl_do_rmdir.exit [label %if.then.i], !srcloc !69

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_rmdir.__UNIQUE_ID_ddebug220, ptr noundef nonnull @.str.17, ptr noundef %dentry, i32 noundef %call.i) #11
  br label %ovl_do_rmdir.exit

ovl_do_rmdir.exit:                                ; preds = %if.then.i, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %ovl_do_rmdir.exit.cleanup_crit_edge, label %if.then3

ovl_do_rmdir.exit.cleanup_crit_edge:              ; preds = %ovl_do_rmdir.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %ovl_do_rmdir.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #11
  %4 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %5 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mnt, ptr %path, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dentry, ptr %4, align 4
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #11
  %add = add nsw i32 %level, 1
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list.i) #11
  %9 = getelementptr inbounds %struct.list_head, ptr %list.i, i32 0, i32 1
  %10 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list.i, ptr %list.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list.i, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root.i) #11
  %12 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %root.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rdd.i) #11
  %13 = call ptr @memset(ptr %rdd.i, i32 0, i32 56)
  %14 = ptrtoint ptr %rdd.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ovl_fill_merge, ptr %rdd.i, align 8
  %root2.i = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd.i, i32 0, i32 3
  %15 = ptrtoint ptr %root2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %root.i, ptr %root2.i, align 8
  %list3.i = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd.i, i32 0, i32 4
  %16 = ptrtoint ptr %list3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list.i, ptr %list3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp.i = icmp eq i32 %add, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then3.if.end.i_crit_edge

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i, align 8
  %call.i23 = call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(9) @.str.18) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i = icmp eq i32 %call.i23, 0
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then3.if.end.i_crit_edge
  %incompat.0.off0.i = phi i1 [ false, %if.then3.if.end.i_crit_edge ], [ %tobool.not.i, %land.lhs.true.i ]
  %call6.i = call fastcc i32 @ovl_dir_read(ptr noundef nonnull %path, ptr noundef nonnull %rdd.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.ovl_workdir_cleanup_recurse.exit_crit_edge

if.end.i.ovl_workdir_cleanup_recurse.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_workdir_cleanup_recurse.exit

if.end9.i:                                        ; preds = %if.end.i
  %i_rwsem.i31 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 25
  call void @down_write_nested(ptr noundef %i_rwsem.i31, i32 noundef 1) #11
  %19 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i42 = load ptr, ptr %list.i, align 4
  %cmp11.not.i44 = icmp eq ptr %.pn.i42, %list.i
  br i1 %cmp11.not.i44, label %if.end9.i.for.end.i_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %.pn.i45 = phi ptr [ %.pn.i, %cleanup.i.for.body.i_crit_edge ], [ %.pn.i42, %if.end9.i.for.body.i_crit_edge ]
  %p.0.i46 = getelementptr i8, ptr %.pn.i45, i32 -24
  %name13.i = getelementptr i8, ptr %.pn.i45, i32 26
  %20 = ptrtoint ptr %name13.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %name13.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %21)
  %cmp14.i = icmp eq i8 %21, 46
  br i1 %cmp14.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %for.body.i
  %22 = ptrtoint ptr %p.0.i46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p.0.i46, align 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %23, label %if.then16.i.if.end38.i_crit_edge [
    i32 1, label %if.then16.i.cleanup.i_crit_edge
    i32 2, label %land.lhs.true24.i
  ]

if.then16.i.cleanup.i_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then16.i.if.end38.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

land.lhs.true24.i:                                ; preds = %if.then16.i
  %arrayidx26.i = getelementptr i8, ptr %.pn.i45, i32 27
  %25 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx26.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %26)
  %cmp28.i = icmp eq i8 %26, 46
  br i1 %cmp28.i, label %land.lhs.true24.i.cleanup.i_crit_edge, label %land.lhs.true24.i.if.end38.i_crit_edge

land.lhs.true24.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

land.lhs.true24.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.else.i:                                        ; preds = %for.body.i
  br i1 %incompat.0.off0.i, label %cleanup.i.thread, label %if.else.i.if.end38.i_crit_edge

if.else.i.if.end38.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

cleanup.i.thread:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name13.i) #15
  br label %for.end.i

if.end38.i:                                       ; preds = %if.else.i.if.end38.i_crit_edge, %land.lhs.true24.i.if.end38.i_crit_edge, %if.then16.i.if.end38.i_crit_edge
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %4, align 4
  %29 = ptrtoint ptr %p.0.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %p.0.i46, align 8
  %call43.i = call ptr @lookup_one_len(ptr noundef %name13.i, ptr noundef %28, i32 noundef %30) #11
  %cmp.i30 = icmp ugt ptr %call43.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.end38.i.cleanup.i_crit_edge, label %if.end46.i

if.end38.i.cleanup.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end46.i:                                       ; preds = %if.end38.i
  %d_inode47.i = getelementptr inbounds %struct.dentry, ptr %call43.i, i32 0, i32 5
  %31 = ptrtoint ptr %d_inode47.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_inode47.i, align 8
  %tobool48.not.i = icmp eq ptr %32, null
  br i1 %tobool48.not.i, label %if.end51.i.thread, label %if.end51.i

if.end51.i.thread:                                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dput(ptr noundef %call43.i) #11
  br label %cleanup.i

if.end51.i:                                       ; preds = %if.end46.i
  %33 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %path, align 4
  %call50.i = call i32 @ovl_workdir_cleanup(ptr noundef %8, ptr noundef %34, ptr noundef %call43.i, i32 noundef %add) #11
  call void @dput(ptr noundef %call43.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool52.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool52.not.i, label %if.end51.i.cleanup.i_crit_edge, label %if.end51.i.for.end.i_crit_edge

if.end51.i.for.end.i_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end51.i.cleanup.i_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end51.i.cleanup.i_crit_edge, %if.end51.i.thread, %if.end38.i.cleanup.i_crit_edge, %land.lhs.true24.i.cleanup.i_crit_edge, %if.then16.i.cleanup.i_crit_edge
  %35 = ptrtoint ptr %.pn.i45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i = load ptr, ptr %.pn.i45, align 4
  %cmp11.not.i = icmp eq ptr %.pn.i, %list.i
  br i1 %cmp11.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end51.i.for.end.i_crit_edge, %cleanup.i.thread, %if.end9.i.for.end.i_crit_edge
  %err.3.i = phi i32 [ -22, %cleanup.i.thread ], [ 0, %if.end9.i.for.end.i_crit_edge ], [ 0, %cleanup.i.for.end.i_crit_edge ], [ %call50.i, %if.end51.i.for.end.i_crit_edge ]
  call void @up_write(ptr noundef %i_rwsem.i31) #11
  br label %ovl_workdir_cleanup_recurse.exit

ovl_workdir_cleanup_recurse.exit:                 ; preds = %for.end.i, %if.end.i.ovl_workdir_cleanup_recurse.exit_crit_edge
  %err.4.i = phi i32 [ %call6.i, %if.end.i.ovl_workdir_cleanup_recurse.exit_crit_edge ], [ %err.3.i, %for.end.i ]
  %36 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %list.i, align 4
  %cmp.not17.i = icmp eq ptr %37, %list.i
  br i1 %cmp.not17.i, label %ovl_workdir_cleanup_recurse.exit.ovl_cache_free.exit_crit_edge, label %ovl_workdir_cleanup_recurse.exit.for.body.i27_crit_edge

ovl_workdir_cleanup_recurse.exit.for.body.i27_crit_edge: ; preds = %ovl_workdir_cleanup_recurse.exit
  br label %for.body.i27

ovl_workdir_cleanup_recurse.exit.ovl_cache_free.exit_crit_edge: ; preds = %ovl_workdir_cleanup_recurse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_cache_free.exit

for.body.i27:                                     ; preds = %for.body.i27.for.body.i27_crit_edge, %ovl_workdir_cleanup_recurse.exit.for.body.i27_crit_edge
  %.pn.in18.i = phi ptr [ %.pn.i26, %for.body.i27.for.body.i27_crit_edge ], [ %37, %ovl_workdir_cleanup_recurse.exit.for.body.i27_crit_edge ]
  %p.0.i25 = getelementptr i8, ptr %.pn.in18.i, i32 -24
  %38 = ptrtoint ptr %.pn.in18.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i26 = load ptr, ptr %.pn.in18.i, align 8
  call void @kfree(ptr noundef %p.0.i25) #11
  %cmp.not.i = icmp eq ptr %.pn.i26, %list.i
  br i1 %cmp.not.i, label %for.body.i27.ovl_cache_free.exit_crit_edge, label %for.body.i27.for.body.i27_crit_edge

for.body.i27.for.body.i27_crit_edge:              ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i27

for.body.i27.ovl_cache_free.exit_crit_edge:       ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_cache_free.exit

ovl_cache_free.exit:                              ; preds = %for.body.i27.ovl_cache_free.exit_crit_edge, %ovl_workdir_cleanup_recurse.exit.ovl_cache_free.exit_crit_edge
  %39 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %list.i, ptr %list.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rdd.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i) #11
  call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4.i)
  %tobool7.not = icmp eq i32 %err.4.i, 0
  br i1 %tobool7.not, label %if.then8, label %ovl_cache_free.exit.if.end10_crit_edge

ovl_cache_free.exit.if.end10_crit_edge:           ; preds = %ovl_cache_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %ovl_cache_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = call i32 @ovl_cleanup(ptr noundef %dir, ptr noundef %dentry) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %ovl_cache_free.exit.if.end10_crit_edge
  %err.0 = phi i32 [ %err.4.i, %ovl_cache_free.exit.if.end10_crit_edge ], [ %call9, %if.then8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %ovl_do_rmdir.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %err.0, %if.end10 ], [ 0, %ovl_do_rmdir.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_indexdir_cleanup(ptr noundef %ofs) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  %list = alloca %struct.list_head, align 4
  %root = alloca %struct.rb_root, align 4
  %rdd = alloca %struct.ovl_readdir_data, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %indexdir1 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 6
  %0 = ptrtoint ptr %indexdir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indexdir1, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #11
  %4 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 2
  %5 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %layers.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %path, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %11 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %list, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root) #11
  %14 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %root, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rdd) #11
  %15 = call ptr @memset(ptr %rdd, i32 0, i32 56)
  %16 = ptrtoint ptr %rdd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ovl_fill_merge, ptr %rdd, align 8
  %root3 = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 3
  %17 = ptrtoint ptr %root3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %root, ptr %root3, align 8
  %list4 = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 4
  %18 = ptrtoint ptr %list4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list, ptr %list4, align 4
  %call6 = call fastcc i32 @ovl_dir_read(ptr noundef nonnull %path, ptr noundef nonnull %rdd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #11
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn116 = load ptr, ptr %list, align 4
  %cmp.not118 = icmp eq ptr %.pn116, %list
  br i1 %cmp.not118, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %nfs_export = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn119 = phi ptr [ %.pn116, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %p.0120 = getelementptr i8, ptr %.pn119, i32 -24
  %name = getelementptr i8, ptr %.pn119, i32 26
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %name, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %21)
  %cmp8 = icmp eq i8 %21, 46
  br i1 %cmp8, label %if.then10, label %for.body.if.end25_crit_edge

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then10:                                        ; preds = %for.body
  %22 = ptrtoint ptr %p.0120 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p.0120, align 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %23, label %if.then10.if.end25_crit_edge [
    i32 1, label %if.then10.for.inc_crit_edge
    i32 2, label %land.lhs.true
  ]

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10.if.end25_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %if.then10
  %arrayidx19 = getelementptr i8, ptr %.pn119, i32 27
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %26)
  %cmp21 = icmp eq i8 %26, 46
  br i1 %cmp21, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.then10.if.end25_crit_edge, %for.body.if.end25_crit_edge
  %27 = ptrtoint ptr %p.0120 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %p.0120, align 8
  %call28 = call ptr @lookup_one_len(ptr noundef %name, ptr noundef %1, i32 noundef %28) #11
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call28 to i32
  br label %for.end

if.end32:                                         ; preds = %if.end25
  %name33 = getelementptr inbounds %struct.dentry, ptr %call28, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name33, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %33)
  %cmp36 = icmp eq i8 %33, 35
  br i1 %cmp36, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end32
  %34 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %path, align 4
  %call40 = call i32 @ovl_workdir_cleanup(ptr noundef %3, ptr noundef %35, ptr noundef %call28, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then38.next69_crit_edge, label %if.then38.for.end_crit_edge

if.then38.for.end_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then38.next69_crit_edge:                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %next69

if.end44:                                         ; preds = %if.end32
  %call45 = call i32 @ovl_verify_index(ptr noundef %ofs, ptr noundef %call28) #11
  %36 = zext i32 %call45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call45, label %if.end44.for.end_crit_edge [
    i32 0, label %if.end44.next69_crit_edge
    i32 -116, label %if.then50
    i32 -2, label %if.else56
  ]

if.end44.next69_crit_edge:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %next69

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = call i32 @ovl_cleanup(ptr noundef %3, ptr noundef %call28) #11
  br label %if.end65

if.else56:                                        ; preds = %if.end44
  %37 = ptrtoint ptr %nfs_export to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nfs_export, align 2, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool57.not = icmp eq i8 %38, 0
  br i1 %tobool57.not, label %if.else60, label %if.then58

if.then58:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = call i32 @ovl_cleanup_and_whiteout(ptr noundef %ofs, ptr noundef %3, ptr noundef %call28) #11
  br label %if.end65

if.else60:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #13
  %call61 = call i32 @ovl_cleanup(ptr noundef %3, ptr noundef %call28) #11
  br label %if.end65

if.end65:                                         ; preds = %if.else60, %if.then58, %if.then50
  %err.1 = phi i32 [ %call51, %if.then50 ], [ %call59, %if.then58 ], [ %call61, %if.else60 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool66.not = icmp eq i32 %err.1, 0
  br i1 %tobool66.not, label %if.end65.next69_crit_edge, label %if.end65.for.end_crit_edge

if.end65.for.end_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end65.next69_crit_edge:                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %next69

next69:                                           ; preds = %if.end65.next69_crit_edge, %if.end44.next69_crit_edge, %if.then38.next69_crit_edge
  call void @dput(ptr noundef %call28) #11
  br label %for.inc

for.inc:                                          ; preds = %next69, %land.lhs.true.for.inc_crit_edge, %if.then10.for.inc_crit_edge
  %39 = ptrtoint ptr %.pn119 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn = load ptr, ptr %.pn119, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end65.for.end_crit_edge, %if.end44.for.end_crit_edge, %if.then38.for.end_crit_edge, %if.then30, %if.end.for.end_crit_edge
  %index.2 = phi ptr [ null, %if.then30 ], [ null, %if.end.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ], [ %call28, %if.then38.for.end_crit_edge ], [ %call28, %if.end65.for.end_crit_edge ], [ %call28, %if.end44.for.end_crit_edge ]
  %err.4 = phi i32 [ %29, %if.then30 ], [ 0, %if.end.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ %call40, %if.then38.for.end_crit_edge ], [ %err.1, %if.end65.for.end_crit_edge ], [ %call45, %if.end44.for.end_crit_edge ]
  call void @dput(ptr noundef %index.2) #11
  call void @up_write(ptr noundef %i_rwsem.i) #11
  br label %out

out:                                              ; preds = %for.end, %entry.out_crit_edge
  %err.5 = phi i32 [ %call6, %entry.out_crit_edge ], [ %err.4, %for.end ]
  %40 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %list, align 4
  %cmp.not17.i = icmp eq ptr %41, %list
  br i1 %cmp.not17.i, label %out.ovl_cache_free.exit_crit_edge, label %out.for.body.i_crit_edge

out.for.body.i_crit_edge:                         ; preds = %out
  br label %for.body.i

out.ovl_cache_free.exit_crit_edge:                ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_cache_free.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %out.for.body.i_crit_edge
  %.pn.in18.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %41, %out.for.body.i_crit_edge ]
  %p.0.i = getelementptr i8, ptr %.pn.in18.i, i32 -24
  %42 = ptrtoint ptr %.pn.in18.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i = load ptr, ptr %.pn.in18.i, align 8
  call void @kfree(ptr noundef %p.0.i) #11
  %cmp.not.i = icmp eq ptr %.pn.i, %list
  br i1 %cmp.not.i, label %for.body.i.ovl_cache_free.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.ovl_cache_free.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_cache_free.exit

ovl_cache_free.exit:                              ; preds = %for.body.i.ovl_cache_free.exit_crit_edge, %out.ovl_cache_free.exit_crit_edge
  %43 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %list, ptr %list, align 4
  %44 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5)
  %tobool75.not = icmp eq i32 %err.5, 0
  br i1 %tobool75.not, label %ovl_cache_free.exit.if.end79_crit_edge, label %do.end

ovl_cache_free.exit.if.end79_crit_edge:           ; preds = %ovl_cache_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

do.end:                                           ; preds = %ovl_cache_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %err.5) #15
  br label %if.end79

if.end79:                                         ; preds = %do.end, %ovl_cache_free.exit.if.end79_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rdd) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #11
  ret i32 %err.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_fill_merge(ptr noundef %ctx, ptr nocapture noundef readonly %name, i32 noundef %namelen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %count, align 4
  %is_lowest = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %is_lowest to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_lowest, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %root.i = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 3
  %4 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool1.not.i22.i = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not.i22.i, label %if.then.if.end.i_crit_edge, label %if.then.while.body.i.i_crit_edge

if.then.while.body.i.i_crit_edge:                 ; preds = %if.then
  br label %while.body.i.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

while.body.i.i:                                   ; preds = %if.end11.i.i.while.body.i.i_crit_edge, %if.then.while.body.i.i_crit_edge
  %8 = phi ptr [ %12, %if.end11.i.i.while.body.i.i_crit_edge ], [ %7, %if.then.while.body.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 -32
  %name2.i.i = getelementptr i8, ptr %8, i32 18
  %call3.i.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef %name2.i.i, i32 noundef %namelen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp sgt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %while.body.i.i.if.end11.i.i_crit_edge, label %if.else.i.i

while.body.i.i.if.end11.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp5.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp5.i.i, label %if.else.i.i.if.end11.i.i_crit_edge, label %lor.lhs.false.i.i

if.else.i.i.if.end11.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

lor.lhs.false.i.i:                                ; preds = %if.else.i.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %namelen)
  %cmp7.i.i = icmp ugt i32 %10, %namelen
  br i1 %cmp7.i.i, label %lor.lhs.false.i.i.if.end11.i.i_crit_edge, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.i.if.end11.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %lor.lhs.false.i.i.if.end11.i.i_crit_edge, %if.else.i.i.if.end11.i.i_crit_edge, %while.body.i.i.if.end11.i.i_crit_edge
  %.sink.i.i = phi i32 [ 4, %while.body.i.i.if.end11.i.i_crit_edge ], [ 8, %lor.lhs.false.i.i.if.end11.i.i_crit_edge ], [ 8, %if.else.i.i.if.end11.i.i_crit_edge ]
  %rb_left.i.i = getelementptr i8, ptr %8, i32 %.sink.i.i
  %11 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rb_left.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i.i, label %land.rhs.i.if.end_crit_edge.i, label %if.end11.i.i.while.body.i.i_crit_edge

if.end11.i.i.while.body.i.i_crit_edge:            ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

land.rhs.i.if.end_crit_edge.i:                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i.i.le = getelementptr i8, ptr %8, i32 %.sink.i.i
  %phi.cast.le.i = ptrtoint ptr %8 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %land.rhs.i.if.end_crit_edge.i, %if.then.if.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %land.rhs.i.if.end_crit_edge.i ], [ 0, %if.then.if.end.i_crit_edge ]
  %newp.026.i.lcssa.i = phi ptr [ %rb_left.i.i.le, %land.rhs.i.if.end_crit_edge.i ], [ %5, %if.then.if.end.i_crit_edge ]
  %call1.i = tail call fastcc ptr @ovl_cache_entry_new(ptr noundef %ctx, ptr noundef %name, i32 noundef %namelen, i64 noundef %ino, i32 noundef %d_type) #11
  %cmp.i = icmp eq ptr %call1.i, null
  br i1 %cmp.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %err.i = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 8
  %13 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -12, ptr %err.i, align 8
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %l_node.i = getelementptr inbounds %struct.ovl_cache_entry, ptr %call1.i, i32 0, i32 4
  %list.i = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 4
  %14 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l_node.i, ptr noundef %17, ptr noundef %15) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %l_node.i, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %l_node.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %15, ptr %l_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ovl_cache_entry, ptr %call1.i, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %l_node.i, ptr %17, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  %node.i = getelementptr inbounds %struct.ovl_cache_entry, ptr %call1.i, i32 0, i32 5
  %22 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %parent.0.lcssa.i, ptr %node.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.ovl_cache_entry, ptr %call1.i, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i17.i = getelementptr inbounds %struct.ovl_cache_entry, ptr %call1.i, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %rb_left.i17.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rb_left.i17.i, align 4
  %25 = ptrtoint ptr %newp.026.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %node.i, ptr %newp.026.i.lcssa.i, align 4
  %26 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %root.i, align 8
  tail call void @rb_insert_color(ptr noundef %node.i, ptr noundef %27) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool1.not.i22.i, label %if.else.if.else.i_crit_edge, label %if.else.while.body.i.i11_crit_edge

if.else.while.body.i.i11_crit_edge:               ; preds = %if.else
  br label %while.body.i.i11

if.else.if.else.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

while.body.i.i11:                                 ; preds = %cleanup.i.i.while.body.i.i11_crit_edge, %if.else.while.body.i.i11_crit_edge
  %node.026.i.i = phi ptr [ %node.0.i.i, %cleanup.i.i.while.body.i.i11_crit_edge ], [ %7, %if.else.while.body.i.i11_crit_edge ]
  %add.ptr.i.i.i10 = getelementptr i8, ptr %node.026.i.i, i32 -32
  %name1.i.i = getelementptr i8, ptr %node.026.i.i, i32 18
  %call2.i.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef %name1.i.i, i32 noundef %namelen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp sgt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i11.cleanup.i.i_crit_edge, label %if.else.i.i13

while.body.i.i11.cleanup.i.i_crit_edge:           ; preds = %while.body.i.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

if.else.i.i13:                                    ; preds = %while.body.i.i11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp5.i.i12 = icmp slt i32 %call2.i.i, 0
  br i1 %cmp5.i.i12, label %if.else.i.i13.cleanup.i.i_crit_edge, label %lor.lhs.false.i.i15

if.else.i.i13.cleanup.i.i_crit_edge:              ; preds = %if.else.i.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

lor.lhs.false.i.i15:                              ; preds = %if.else.i.i13
  %28 = ptrtoint ptr %add.ptr.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i.i10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %namelen)
  %cmp7.i.i14 = icmp ugt i32 %29, %namelen
  br i1 %cmp7.i.i14, label %lor.lhs.false.i.i15.cleanup.i.i_crit_edge, label %ovl_cache_entry_find.exit.i

lor.lhs.false.i.i15.cleanup.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %lor.lhs.false.i.i15.cleanup.i.i_crit_edge, %if.else.i.i13.cleanup.i.i_crit_edge, %while.body.i.i11.cleanup.i.i_crit_edge
  %.sink.i.i16 = phi i32 [ 4, %while.body.i.i11.cleanup.i.i_crit_edge ], [ 8, %lor.lhs.false.i.i15.cleanup.i.i_crit_edge ], [ 8, %if.else.i.i13.cleanup.i.i_crit_edge ]
  %rb_right.i.i17 = getelementptr i8, ptr %node.026.i.i, i32 %.sink.i.i16
  %30 = ptrtoint ptr %rb_right.i.i17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %node.0.i.i = load ptr, ptr %rb_right.i.i17, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.if.else.i_crit_edge, label %cleanup.i.i.while.body.i.i11_crit_edge

cleanup.i.i.while.body.i.i11_crit_edge:           ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i11

cleanup.i.i.if.else.i_crit_edge:                  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

ovl_cache_entry_find.exit.i:                      ; preds = %lor.lhs.false.i.i15
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i10, null
  br i1 %tobool.not.i, label %ovl_cache_entry_find.exit.i.if.else.i_crit_edge, label %if.then.i

ovl_cache_entry_find.exit.i.if.else.i_crit_edge:  ; preds = %ovl_cache_entry_find.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %ovl_cache_entry_find.exit.i
  %l_node.i18 = getelementptr i8, ptr %node.026.i.i, i32 -8
  %middle.i = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 5
  %call.i.i.i19 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l_node.i18) #11
  br i1 %call.i.i.i19, label %if.end.i.i.i20, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i20:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %node.026.i.i, i32 -4
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %l_node.i18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %l_node.i18, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i20, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l_node.i18, ptr noundef %38, ptr noundef %middle.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.ovl_fill_lowest.exit_crit_edge

__list_del_entry.exit.i.i.ovl_fill_lowest.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_fill_lowest.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %l_node.i18, ptr %prev.i2.i.i, align 4
  %40 = ptrtoint ptr %l_node.i18 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %middle.i, ptr %l_node.i18, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %node.026.i.i, i32 -4
  %41 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %l_node.i18, ptr %38, align 4
  br label %ovl_fill_lowest.exit

if.else.i:                                        ; preds = %ovl_cache_entry_find.exit.i.if.else.i_crit_edge, %cleanup.i.i.if.else.i_crit_edge, %if.else.if.else.i_crit_edge
  %call1.i21 = tail call fastcc ptr @ovl_cache_entry_new(ptr noundef %ctx, ptr noundef %name, i32 noundef %namelen, i64 noundef %ino, i32 noundef %d_type) #11
  %cmp.i22 = icmp eq ptr %call1.i21, null
  br i1 %cmp.i22, label %if.then2.i24, label %if.else3.i

if.then2.i24:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %err.i23 = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 8
  %43 = ptrtoint ptr %err.i23 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -12, ptr %err.i23, align 8
  br label %ovl_fill_lowest.exit

if.else3.i:                                       ; preds = %if.else.i
  %l_node4.i = getelementptr inbounds %struct.ovl_cache_entry, ptr %call1.i21, i32 0, i32 4
  %middle5.i = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 5
  %prev.i.i25 = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %prev.i.i25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i25, align 4
  %call.i.i1.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l_node4.i, ptr noundef %45, ptr noundef %middle5.i) #11
  br i1 %call.i.i1.i, label %if.end.i.i2.i, label %if.else3.i.ovl_fill_lowest.exit_crit_edge

if.else3.i.ovl_fill_lowest.exit_crit_edge:        ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_fill_lowest.exit

if.end.i.i2.i:                                    ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %prev.i.i25 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %l_node4.i, ptr %prev.i.i25, align 4
  %47 = ptrtoint ptr %l_node4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %middle5.i, ptr %l_node4.i, align 4
  %prev3.i.i.i26 = getelementptr inbounds %struct.ovl_cache_entry, ptr %call1.i21, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i.i26, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %l_node4.i, ptr %45, align 4
  br label %ovl_fill_lowest.exit

ovl_fill_lowest.exit:                             ; preds = %if.end.i.i2.i, %if.else3.i.ovl_fill_lowest.exit_crit_edge, %if.then2.i24, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.ovl_fill_lowest.exit_crit_edge
  %err7.i = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 8
  %50 = ptrtoint ptr %err7.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %err7.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %ovl_fill_lowest.exit, %list_add_tail.exit.i, %if.then2.i, %lor.lhs.false.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %51, %ovl_fill_lowest.exit ], [ -12, %if.then2.i ], [ 0, %list_add_tail.exit.i ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_verify_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_cleanup_and_whiteout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_path_open(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ovl_dentry_version_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ovl_cache_put(ptr nocapture noundef readonly %od, ptr nocapture noundef readonly %dentry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cache1 = getelementptr inbounds %struct.ovl_dir_file, ptr %od, i32 0, i32 2
  %0 = ptrtoint ptr %cache1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !67

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %if.then23, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then23:                                        ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %call24 = tail call ptr @ovl_dir_cache(ptr noundef %7) #11
  %cmp25 = icmp eq ptr %call24, %1
  br i1 %cmp25, label %if.then26, label %if.then23.if.end28_crit_edge

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  tail call void @ovl_set_dir_cache(ptr noundef %9, ptr noundef null) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then23.if.end28_crit_edge
  %entries = getelementptr inbounds %struct.ovl_dir_cache, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries, align 4
  %cmp.not17.i = icmp eq ptr %11, %entries
  br i1 %cmp.not17.i, label %if.end28.ovl_cache_free.exit_crit_edge, label %if.end28.for.body.i_crit_edge

if.end28.for.body.i_crit_edge:                    ; preds = %if.end28
  br label %for.body.i

if.end28.ovl_cache_free.exit_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_cache_free.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end28.for.body.i_crit_edge
  %.pn.in18.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %11, %if.end28.for.body.i_crit_edge ]
  %p.0.i = getelementptr i8, ptr %.pn.in18.i, i32 -24
  %12 = ptrtoint ptr %.pn.in18.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in18.i, align 8
  tail call void @kfree(ptr noundef %p.0.i) #11
  %cmp.not.i = icmp eq ptr %.pn.i, %entries
  br i1 %cmp.not.i, label %for.body.i.ovl_cache_free.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.ovl_cache_free.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_cache_free.exit

ovl_cache_free.exit:                              ; preds = %for.body.i.ovl_cache_free.exit_crit_edge, %if.end28.ovl_cache_free.exit_crit_edge
  %13 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entries, ptr %entries, align 4
  %prev.i.i = getelementptr inbounds %struct.ovl_dir_cache, ptr %1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entries, ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %1) #11
  br label %if.end29

if.end29:                                         ; preds = %ovl_cache_free.exit, %if.end.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_set_dir_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iterate_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_cache_update_ino(ptr nocapture noundef readonly %path, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  %stat = alloca %struct.kstat, align 8
  %statpath = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %real_ino = getelementptr inbounds %struct.ovl_cache_entry, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %real_ino to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %real_ino, align 8
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %xino_mode.i.i = getelementptr inbounds %struct.ovl_fs, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %xino_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xino_mode.i.i, align 4
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i = icmp sgt i32 %9, -1
  br i1 %cmp.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.ovl_cache_entry, ptr %p, i32 0, i32 9
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %name, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %12)
  %cmp = icmp eq i8 %12, 46
  br i1 %cmp, label %if.then4, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then4:                                         ; preds = %if.end
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %14, label %if.then4.if.end21_crit_edge [
    i32 1, label %if.then7
    i32 2, label %land.lhs.true
  ]

if.then4.if.end21_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then7:                                         ; preds = %if.then4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then7.get_crit_edge, label %if.then7.get.sink.split_crit_edge

if.then7.get.sink.split_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %get.sink.split

if.then7.get_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %get

land.lhs.true:                                    ; preds = %if.then4
  %arrayidx14 = getelementptr %struct.ovl_cache_entry, ptr %p, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %17)
  %cmp16 = icmp eq i8 %17, 46
  br i1 %cmp16, label %if.then18, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then18:                                        ; preds = %land.lhs.true
  %d_parent = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_parent, align 8
  %tobool.not.i157 = icmp eq ptr %19, null
  br i1 %tobool.not.i157, label %if.then18.get_crit_edge, label %if.then18.get.sink.split_crit_edge

if.then18.get.sink.split_crit_edge:               ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %get.sink.split

if.then18.get_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %get

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.then4.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %20 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p, align 8
  %call24 = tail call ptr @lookup_one_len(ptr noundef %name, ptr noundef %1, i32 noundef %21) #11
  %tobool.not.i161 = icmp eq ptr %call24, null
  %cmp.i162 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i161, %cmp.i162
  br i1 %spec.select.i, label %if.end21.if.then27_crit_edge, label %lor.lhs.false

if.end21.if.then27_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end21
  %d_inode = getelementptr inbounds %struct.dentry, ptr %call24, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode, align 8
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %lor.lhs.false.if.then27_crit_edge, label %lor.lhs.false.get_crit_edge

lor.lhs.false.get_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %get

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end21.if.then27_crit_edge
  %is_whiteout = getelementptr inbounds %struct.ovl_cache_entry, ptr %p, i32 0, i32 8
  %24 = ptrtoint ptr %is_whiteout to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %is_whiteout, align 1
  br i1 %cmp.i162, label %if.then29, label %if.then27.out_crit_edge

if.then27.out_crit_edge:                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %call24 to i32
  br label %fail

get.sink.split:                                   ; preds = %if.then18.get.sink.split_crit_edge, %if.then7.get.sink.split_crit_edge
  %.sink = phi ptr [ %1, %if.then7.get.sink.split_crit_edge ], [ %19, %if.then18.get.sink.split_crit_edge ]
  %d_lockref.i158 = getelementptr inbounds %struct.dentry, ptr %.sink, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i158) #11
  br label %get

get:                                              ; preds = %get.sink.split, %lor.lhs.false.get_crit_edge, %if.then18.get_crit_edge, %if.then7.get_crit_edge
  %this.0 = phi ptr [ %call24, %lor.lhs.false.get_crit_edge ], [ null, %if.then7.get_crit_edge ], [ null, %if.then18.get_crit_edge ], [ %.sink, %get.sink.split ]
  %call33 = tail call i32 @ovl_path_type(ptr noundef %this.0) #11
  %and = and i32 %call33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %get
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat) #11
  %26 = call ptr @memset(ptr %stat, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %statpath) #11
  %27 = getelementptr inbounds %struct.path, ptr %statpath, i32 0, i32 1
  %28 = ptrtoint ptr %path to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %path, align 4
  %30 = ptrtoint ptr %statpath to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %statpath, align 8
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %this.0, ptr %27, align 4
  %call37 = call i32 @vfs_getattr(ptr noundef nonnull %statpath, ptr noundef nonnull %stat, i32 noundef 256, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %cleanup

if.end40:                                         ; preds = %if.then35
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mode, align 4
  %34 = and i16 %33, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %34)
  %cmp43 = icmp eq i16 %34, 16384
  br i1 %cmp43, label %land.rhs, label %if.end40.cleanup.thread_crit_edge

if.end40.cleanup.thread_crit_edge:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

land.rhs:                                         ; preds = %if.end40
  %35 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dev, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp46.not = icmp eq i32 %38, %40
  br i1 %cmp46.not, label %land.rhs.cleanup.thread_crit_edge, label %land.rhs51

land.rhs.cleanup.thread_crit_edge:                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

land.rhs51:                                       ; preds = %land.rhs
  %.b154 = load i1, ptr @ovl_cache_update_ino.__already_done, align 1
  br i1 %.b154, label %land.rhs51.cleanup.thread_crit_edge, label %if.then58, !prof !68

land.rhs51.cleanup.thread_crit_edge:              ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then58:                                        ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ovl_cache_update_ino.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 511, i32 noundef 9, ptr noundef null) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then58, %land.rhs51.cleanup.thread_crit_edge, %land.rhs.cleanup.thread_crit_edge, %if.end40.cleanup.thread_crit_edge
  %ino88 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %41 = ptrtoint ptr %ino88 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ino88, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %statpath) #11
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #11
  br label %out

cleanup:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %statpath) #11
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #11
  br label %fail

if.else:                                          ; preds = %get
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool90.not = icmp ne i32 %9, 0
  %and92 = and i32 %call33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  %or.cond = select i1 %tobool90.not, i1 %tobool93.not, i1 false
  br i1 %or.cond, label %if.then94, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then94:                                        ; preds = %if.else
  %call95 = tail call ptr @ovl_layer_lower(ptr noundef %this.0) #11
  %43 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %p, align 8
  %sub.i = sub nsw i32 64, %10
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %3, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr.i)
  %tobool.not.i166 = icmp eq i64 %shr.i, 0
  br i1 %tobool.not.i166, label %if.end9.i, label %if.then.i167, !prof !68

if.then.i167:                                     ; preds = %if.then94
  %45 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i.i164 = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 33
  %47 = ptrtoint ptr %s_fs_info.i.i164 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i.i164, align 16
  %xino.i = getelementptr inbounds %struct.ovl_fs, ptr %48, i32 0, i32 8, i32 10
  %49 = ptrtoint ptr %xino.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %xino.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i165 = icmp eq i32 %50, 2
  br i1 %cmp.i165, label %if.then4.i, label %if.then.i167.out_crit_edge

if.then.i167.out_crit_edge:                       ; preds = %if.then.i167
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then4.i:                                       ; preds = %if.then.i167
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_remap_lower_ino._rs, ptr noundef nonnull @__func__.ovl_remap_lower_ino) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.then4.i.out_crit_edge, label %do.end.i

if.then4.i.out_crit_edge:                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %44, ptr noundef %name, i64 noundef %3, i32 noundef %10) #15
  br label %out

if.end9.i:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  %fsid = getelementptr inbounds %struct.ovl_layer, ptr %call95, i32 0, i32 4
  %51 = ptrtoint ptr %fsid to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fsid, align 4
  %conv.i = sext i32 %52 to i64
  %add.i = sub nsw i32 65, %10
  %sh_prom10.i = zext i32 %add.i to i64
  %shl.i = shl i64 %conv.i, %sh_prom10.i
  %or.i = or i64 %shl.i, %3
  br label %out

out:                                              ; preds = %do.end110, %fail.out_crit_edge, %if.end9.i, %do.end.i, %if.then4.i.out_crit_edge, %if.then.i167.out_crit_edge, %if.else.out_crit_edge, %cleanup.thread, %if.then27.out_crit_edge, %entry.out_crit_edge
  %ino.1 = phi i64 [ %3, %do.end110 ], [ %3, %fail.out_crit_edge ], [ %3, %if.else.out_crit_edge ], [ %3, %if.then27.out_crit_edge ], [ %3, %entry.out_crit_edge ], [ %42, %cleanup.thread ], [ %or.i, %if.end9.i ], [ %3, %if.then4.i.out_crit_edge ], [ %3, %do.end.i ], [ %3, %if.then.i167.out_crit_edge ]
  %err.0 = phi i32 [ %err.1, %do.end110 ], [ %err.1, %fail.out_crit_edge ], [ 0, %if.else.out_crit_edge ], [ 0, %if.then27.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ 0, %cleanup.thread ], [ 0, %if.end9.i ], [ 0, %if.then4.i.out_crit_edge ], [ 0, %do.end.i ], [ 0, %if.then.i167.out_crit_edge ]
  %this.1 = phi ptr [ %this.2, %do.end110 ], [ %this.2, %fail.out_crit_edge ], [ %this.0, %if.else.out_crit_edge ], [ %call24, %if.then27.out_crit_edge ], [ null, %entry.out_crit_edge ], [ %this.0, %cleanup.thread ], [ %this.0, %if.end9.i ], [ %this.0, %if.then4.i.out_crit_edge ], [ %this.0, %do.end.i ], [ %this.0, %if.then.i167.out_crit_edge ]
  %ino104 = getelementptr inbounds %struct.ovl_cache_entry, ptr %p, i32 0, i32 3
  %53 = ptrtoint ptr %ino104 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %ino.1, ptr %ino104, align 8
  call void @dput(ptr noundef %this.1) #11
  ret i32 %err.0

fail:                                             ; preds = %cleanup, %if.then29
  %err.1 = phi i32 [ %call37, %cleanup ], [ %25, %if.then29 ]
  %this.2 = phi ptr [ %this.0, %cleanup ], [ null, %if.then29 ]
  %call105 = call i32 @___ratelimit(ptr noundef nonnull @ovl_cache_update_ino._rs, ptr noundef nonnull @__func__.ovl_cache_update_ino) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %fail.out_crit_edge, label %do.end110

fail.out_crit_edge:                               ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end110:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, i32 noundef %err.1) #15
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_layer_lower(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_fill_real(ptr nocapture noundef readonly %ctx, ptr noundef %name, i32 noundef %namelen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ctx, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %parent_ino = getelementptr i8, ptr %ctx, i32 16
  %2 = ptrtoint ptr %parent_ino to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %parent_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(3) @.str.5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %cache = getelementptr i8, ptr %ctx, i32 -4
  %4 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.else10, label %if.then4

if.then4:                                         ; preds = %if.else
  %root = getelementptr inbounds %struct.ovl_dir_cache, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.024.i = load ptr, ptr %root, align 4
  %tobool.not25.i = icmp eq ptr %node.024.i, null
  br i1 %tobool.not25.i, label %if.then4.if.end18_crit_edge, label %if.then4.while.body.i_crit_edge

if.then4.while.body.i_crit_edge:                  ; preds = %if.then4
  br label %while.body.i

if.then4.if.end18_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then4.while.body.i_crit_edge
  %node.026.i = phi ptr [ %node.0.i, %cleanup.i.while.body.i_crit_edge ], [ %node.024.i, %if.then4.while.body.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %node.026.i, i32 -32
  %name1.i = getelementptr i8, ptr %node.026.i, i32 18
  %call2.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef %name1.i, i32 noundef %namelen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp sgt i32 %call2.i, 0
  br i1 %cmp3.i, label %while.body.i.cleanup.i_crit_edge, label %if.else.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp5.i = icmp slt i32 %call2.i, 0
  br i1 %cmp5.i, label %if.else.i.cleanup.i_crit_edge, label %lor.lhs.false.i

if.else.i.cleanup.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %namelen)
  %cmp7.i = icmp ugt i32 %8, %namelen
  br i1 %cmp7.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %ovl_cache_entry_find.exit

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %lor.lhs.false.i.cleanup.i_crit_edge, %if.else.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %.sink.i = phi i32 [ 4, %while.body.i.cleanup.i_crit_edge ], [ 8, %lor.lhs.false.i.cleanup.i_crit_edge ], [ 8, %if.else.i.cleanup.i_crit_edge ]
  %rb_right.i = getelementptr i8, ptr %node.026.i, i32 %.sink.i
  %9 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %node.0.i = load ptr, ptr %rb_right.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.if.end18_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

cleanup.i.if.end18_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

ovl_cache_entry_find.exit:                        ; preds = %lor.lhs.false.i
  %tobool7.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool7.not, label %ovl_cache_entry_find.exit.if.end18_crit_edge, label %if.then8

ovl_cache_entry_find.exit.if.end18_crit_edge:     ; preds = %ovl_cache_entry_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then8:                                         ; preds = %ovl_cache_entry_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ino9 = getelementptr i8, ptr %node.026.i, i32 -16
  %10 = ptrtoint ptr %ino9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ino9, align 8
  br label %if.end18

if.else10:                                        ; preds = %if.else
  %xinobits = getelementptr i8, ptr %ctx, i32 28
  %12 = ptrtoint ptr %xinobits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xinobits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.else10.if.end18_crit_edge, label %if.then12

if.else10.if.end18_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then12:                                        ; preds = %if.else10
  %sub.i = sub i32 64, %13
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %ino, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr.i)
  %tobool.not.i38 = icmp eq i64 %shr.i, 0
  br i1 %tobool.not.i38, label %if.end9.i, label %if.then.i, !prof !68

if.then.i:                                        ; preds = %if.then12
  %xinowarn = getelementptr i8, ptr %ctx, i32 32
  %14 = ptrtoint ptr %xinowarn to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %xinowarn, align 8, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  br i1 %tobool14.not, label %if.then.i.if.end18_crit_edge, label %if.then4.i

if.then.i.if.end18_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then4.i:                                       ; preds = %if.then.i
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_remap_lower_ino._rs, ptr noundef nonnull @__func__.ovl_remap_lower_ino) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.then4.i.if.end18_crit_edge, label %do.end.i

if.then4.i.if.end18_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %namelen, ptr noundef %name, i64 noundef %ino, i32 noundef %13) #15
  br label %if.end18

if.end9.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %fsid = getelementptr i8, ptr %ctx, i32 24
  %16 = ptrtoint ptr %fsid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fsid, align 8
  %conv.i = sext i32 %17 to i64
  %add.i = sub i32 65, %13
  %sh_prom10.i = zext i32 %add.i to i64
  %shl.i = shl i64 %conv.i, %sh_prom10.i
  %or.i = or i64 %shl.i, %ino
  br label %if.end18

if.end18:                                         ; preds = %if.end9.i, %do.end.i, %if.then4.i.if.end18_crit_edge, %if.then.i.if.end18_crit_edge, %if.else10.if.end18_crit_edge, %if.then8, %ovl_cache_entry_find.exit.if.end18_crit_edge, %cleanup.i.if.end18_crit_edge, %if.then4.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge
  %ino.addr.1 = phi i64 [ %ino, %if.else10.if.end18_crit_edge ], [ %3, %land.lhs.true.if.end18_crit_edge ], [ %11, %if.then8 ], [ %ino, %ovl_cache_entry_find.exit.if.end18_crit_edge ], [ %or.i, %if.end9.i ], [ %ino, %if.then4.i.if.end18_crit_edge ], [ %ino, %do.end.i ], [ %ino, %if.then.i.if.end18_crit_edge ], [ %ino, %if.then4.if.end18_crit_edge ], [ %ino, %cleanup.i.if.end18_crit_edge ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call19 = tail call i32 %19(ptr noundef %1, ptr noundef %name, i32 noundef %namelen, i64 noundef %offset, i64 noundef %ino.addr.1, i32 noundef %d_type) #11
  ret i32 %call19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovl_cache_get_impure(ptr nocapture noundef readonly %path) unnamed_addr #0 align 64 {
entry:
  %realpath.i = alloca %struct.path, align 4
  %rdd.i = alloca %struct.ovl_readdir_data, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %call3 = tail call ptr @ovl_dir_cache(ptr noundef %7) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i64 @ovl_dentry_version_get(ptr noundef %1) #11
  %version = getelementptr inbounds %struct.ovl_dir_cache, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %version, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %9)
  %cmp = icmp eq i64 %call4, %9
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %call.i = tail call ptr @ovl_dir_cache(ptr noundef %11) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.ovl_dir_cache_free.exit_crit_edge, label %if.then.i

if.end.ovl_dir_cache_free.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_dir_cache_free.exit

if.then.i:                                        ; preds = %if.end
  %entries.i = getelementptr inbounds %struct.ovl_dir_cache, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entries.i, align 4
  %cmp.not17.i.i = icmp eq ptr %13, %entries.i
  br i1 %cmp.not17.i.i, label %if.then.i.ovl_cache_free.exit.i_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.ovl_cache_free.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_cache_free.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %.pn.in18.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %13, %if.then.i.for.body.i.i_crit_edge ]
  %p.0.i.i = getelementptr i8, ptr %.pn.in18.i.i, i32 -24
  %14 = ptrtoint ptr %.pn.in18.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i.i = load ptr, ptr %.pn.in18.i.i, align 8
  tail call void @kfree(ptr noundef %p.0.i.i) #11
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %entries.i
  br i1 %cmp.not.i.i, label %for.body.i.i.ovl_cache_free.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.ovl_cache_free.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_cache_free.exit.i

ovl_cache_free.exit.i:                            ; preds = %for.body.i.i.ovl_cache_free.exit.i_crit_edge, %if.then.i.ovl_cache_free.exit.i_crit_edge
  %15 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entries.i, ptr %entries.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ovl_dir_cache, ptr %call.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entries.i, ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call.i) #11
  br label %ovl_dir_cache_free.exit

ovl_dir_cache_free.exit:                          ; preds = %ovl_cache_free.exit.i, %if.end.ovl_dir_cache_free.exit_crit_edge
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  tail call void @ovl_set_dir_cache(ptr noundef %18, ptr noundef null) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 32) #14
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %ovl_dir_cache_free.exit.cleanup_crit_edge, label %if.end11

ovl_dir_cache_free.exit.cleanup_crit_edge:        ; preds = %ovl_dir_cache_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %ovl_dir_cache_free.exit
  %entries = getelementptr inbounds %struct.ovl_dir_cache, ptr %call7.i.i, i32 0, i32 2
  %root = getelementptr inbounds %struct.ovl_dir_cache, ptr %call7.i.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %realpath.i) #11
  %20 = ptrtoint ptr %realpath.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %realpath.i, align 4, !annotation !64
  %21 = getelementptr inbounds %struct.path, ptr %realpath.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %21, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rdd.i) #11
  %23 = call ptr @memset(ptr %rdd.i, i32 0, i32 56)
  %24 = ptrtoint ptr %rdd.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ovl_fill_plain, ptr %rdd.i, align 8
  %root1.i = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd.i, i32 0, i32 3
  %25 = ptrtoint ptr %root1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %root, ptr %root1.i, align 8
  %list2.i = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd.i, i32 0, i32 4
  %26 = ptrtoint ptr %list2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entries, ptr %list2.i, align 4
  %27 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entries, ptr %entries, align 8
  %prev.i.i = getelementptr inbounds %struct.ovl_dir_cache, ptr %call7.i.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entries, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %root, align 8
  %30 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dentry1, align 4
  call void @ovl_path_upper(ptr noundef %31, ptr noundef nonnull %realpath.i) #11
  %call.i62 = call fastcc i32 @ovl_dir_read(ptr noundef nonnull %realpath.i, ptr noundef nonnull %rdd.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %if.end.i, label %if.end11.if.then14_crit_edge

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end.i:                                         ; preds = %if.end11
  %32 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %entries, align 8
  %cmp.not102.i = icmp eq ptr %33, %entries
  br i1 %cmp.not102.i, label %if.end.i.if.end17_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn.in103.i = phi ptr [ %.pn107.i, %for.inc.i.for.body.i_crit_edge ], [ %33, %if.end.i.for.body.i_crit_edge ]
  %p.0105.i = getelementptr i8, ptr %.pn.in103.i, i32 -24
  %34 = ptrtoint ptr %.pn.in103.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn107.i = load ptr, ptr %.pn.in103.i, align 8
  %name.i = getelementptr i8, ptr %.pn.in103.i, i32 26
  %call9.i = call i32 @strcmp(ptr noundef %name.i, ptr noundef nonnull dereferenceable(2) @.str.8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.not.i, label %for.body.i.if.end20.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end20.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call13.i = call i32 @strcmp(ptr noundef %name.i, ptr noundef nonnull dereferenceable(3) @.str.5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.not.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.not.i, label %land.lhs.true.i.if.end20.i_crit_edge, label %if.then15.i

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  %call16.i = call fastcc i32 @ovl_cache_update_ino(ptr noundef %path, ptr noundef %p.0105.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then15.i.if.end20.i_crit_edge, label %if.then15.i.if.then14_crit_edge

if.then15.i.if.then14_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.then15.i.if.end20.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i.if.end20.i_crit_edge, %land.lhs.true.i.if.end20.i_crit_edge, %for.body.i.if.end20.i_crit_edge
  %ino.i = getelementptr i8, ptr %.pn.in103.i, i32 -8
  %35 = ptrtoint ptr %ino.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ino.i, align 8
  %real_ino.i = getelementptr i8, ptr %.pn.in103.i, i32 -16
  %37 = ptrtoint ptr %real_ino.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %real_ino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %38)
  %cmp21.i = icmp eq i64 %36, %38
  br i1 %cmp21.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %if.end20.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in103.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then22.i.list_del.exit.i_crit_edge

if.then22.i.list_del.exit.i_crit_edge:            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %.pn.in103.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i64, align 4
  %41 = ptrtoint ptr %.pn.in103.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %.pn.in103.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then22.i.list_del.exit.i_crit_edge
  %45 = ptrtoint ptr %.pn.in103.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in103.i, align 4
  %prev.i92.i = getelementptr inbounds %struct.list_head, ptr %.pn.in103.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i92.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i92.i, align 4
  call void @kfree(ptr noundef %p.0105.i) #11
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end20.i
  %47 = ptrtoint ptr %p.0105.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %p.0105.i, align 8
  %49 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %root, align 8
  %tobool1.not.i98.i = icmp eq ptr %50, null
  br i1 %tobool1.not.i98.i, label %if.else.i.if.end53.i_crit_edge, label %if.else.i.while.body.i.i_crit_edge

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

if.else.i.if.end53.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

while.body.i.i:                                   ; preds = %if.end11.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %51 = phi ptr [ %55, %if.end11.i.i.while.body.i.i_crit_edge ], [ %50, %if.else.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 -32
  %name2.i.i = getelementptr i8, ptr %51, i32 18
  %call3.i.i = call i32 @strncmp(ptr noundef %name.i, ptr noundef %name2.i.i, i32 noundef %48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp sgt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %while.body.i.i.if.end11.i.i_crit_edge, label %if.else.i.i

while.body.i.i.if.end11.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp5.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp5.i.i, label %if.else.i.i.if.end11.i.i_crit_edge, label %lor.lhs.false.i.i

if.else.i.i.if.end11.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

lor.lhs.false.i.i:                                ; preds = %if.else.i.i
  %52 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %48)
  %cmp7.i.i = icmp ugt i32 %53, %48
  br i1 %cmp7.i.i, label %lor.lhs.false.i.i.if.end11.i.i_crit_edge, label %do.end.i

lor.lhs.false.i.i.if.end11.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %lor.lhs.false.i.i.if.end11.i.i_crit_edge, %if.else.i.i.if.end11.i.i_crit_edge, %while.body.i.i.if.end11.i.i_crit_edge
  %.sink.i.i = phi i32 [ 4, %while.body.i.i.if.end11.i.i_crit_edge ], [ 8, %lor.lhs.false.i.i.if.end11.i.i_crit_edge ], [ 8, %if.else.i.i.if.end11.i.i_crit_edge ]
  %rb_left.i.i = getelementptr i8, ptr %51, i32 %.sink.i.i
  %54 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rb_left.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %55, null
  br i1 %tobool1.not.i.i, label %if.end53.i.loopexit, label %if.end11.i.i.while.body.i.i_crit_edge

if.end11.i.i.while.body.i.i_crit_edge:            ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

do.end.i:                                         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 585, i32 noundef 9, ptr noundef null) #11
  br label %if.then14

if.end53.i.loopexit:                              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i.i.le = getelementptr i8, ptr %51, i32 %.sink.i.i
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end53.i.loopexit, %if.else.i.if.end53.i_crit_edge
  %parent.0.lcssa.i = phi ptr [ null, %if.else.i.if.end53.i_crit_edge ], [ %51, %if.end53.i.loopexit ]
  %newp.026.i.lcssa.i = phi ptr [ %root, %if.else.i.if.end53.i_crit_edge ], [ %rb_left.i.i.le, %if.end53.i.loopexit ]
  %node.i = getelementptr i8, ptr %.pn.in103.i, i32 8
  %56 = ptrtoint ptr %parent.0.lcssa.i to i32
  %57 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %node.i, align 4
  %rb_right.i.i = getelementptr i8, ptr %.pn.in103.i, i32 12
  %58 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i93.i = getelementptr i8, ptr %.pn.in103.i, i32 16
  %59 = ptrtoint ptr %rb_left.i93.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %rb_left.i93.i, align 4
  %60 = ptrtoint ptr %newp.026.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %node.i, ptr %newp.026.i.lcssa.i, align 4
  call void @rb_insert_color(ptr noundef %node.i, ptr noundef %root) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end53.i, %list_del.exit.i
  %cmp.not.i = icmp eq ptr %.pn107.i, %entries
  br i1 %cmp.not.i, label %for.inc.i.if.end17_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end17_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %do.end.i, %if.then15.i.if.then14_crit_edge, %if.end11.if.then14_crit_edge
  %retval.3.i.ph = phi i32 [ -5, %do.end.i ], [ %call.i62, %if.end11.if.then14_crit_edge ], [ %call16.i, %if.then15.i.if.then14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rdd.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %realpath.i) #11
  %61 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %entries, align 8
  %cmp.not17.i = icmp eq ptr %62, %entries
  br i1 %cmp.not17.i, label %if.then14.ovl_cache_free.exit_crit_edge, label %if.then14.for.body.i66_crit_edge

if.then14.for.body.i66_crit_edge:                 ; preds = %if.then14
  br label %for.body.i66

if.then14.ovl_cache_free.exit_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_cache_free.exit

for.body.i66:                                     ; preds = %for.body.i66.for.body.i66_crit_edge, %if.then14.for.body.i66_crit_edge
  %.pn.in18.i = phi ptr [ %.pn.i, %for.body.i66.for.body.i66_crit_edge ], [ %62, %if.then14.for.body.i66_crit_edge ]
  %p.0.i = getelementptr i8, ptr %.pn.in18.i, i32 -24
  %63 = ptrtoint ptr %.pn.in18.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn.i = load ptr, ptr %.pn.in18.i, align 8
  call void @kfree(ptr noundef %p.0.i) #11
  %cmp.not.i65 = icmp eq ptr %.pn.i, %entries
  br i1 %cmp.not.i65, label %for.body.i66.ovl_cache_free.exit_crit_edge, label %for.body.i66.for.body.i66_crit_edge

for.body.i66.for.body.i66_crit_edge:              ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i66

for.body.i66.ovl_cache_free.exit_crit_edge:       ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_cache_free.exit

ovl_cache_free.exit:                              ; preds = %for.body.i66.ovl_cache_free.exit_crit_edge, %if.then14.ovl_cache_free.exit_crit_edge
  %64 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %entries, ptr %entries, align 8
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %entries, ptr %prev.i.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %66 = inttoptr i32 %retval.3.i.ph to ptr
  br label %cleanup

if.end17:                                         ; preds = %for.inc.i.if.end17_crit_edge, %if.end.i.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rdd.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %realpath.i) #11
  %67 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %entries, align 8
  %cmp.i.not = icmp eq ptr %68, %entries
  br i1 %cmp.i.not, label %if.then21, label %if.end29

if.then21:                                        ; preds = %if.end17
  %call22 = call i32 @ovl_want_write(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.then21.if.end27_crit_edge

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then24:                                        ; preds = %if.then21
  %call25 = call ptr @ovl_dentry_upper(ptr noundef %1) #11
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %5, i32 0, i32 8, i32 12
  %69 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %userxattr.i.i, align 1, !range !63
  %71 = zext i8 %70 to i32
  %arrayidx1.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 3, i32 %71
  %72 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx1.i.i, align 4
  %call1.i = call i32 @vfs_removexattr(ptr noundef nonnull @init_user_ns, ptr noundef %call25, ptr noundef %73) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_removexattr.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_cache_get_impure, %if.then.i68)) #11
          to label %ovl_do_removexattr.exit [label %if.then.i68], !srcloc !69

if.then.i68:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_removexattr.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.13, ptr noundef %call25, ptr noundef %73, i32 noundef %call1.i) #11
  br label %ovl_do_removexattr.exit

ovl_do_removexattr.exit:                          ; preds = %if.then.i68, %if.then24
  call void @ovl_drop_write(ptr noundef %1) #11
  br label %if.end27

if.end27:                                         ; preds = %ovl_do_removexattr.exit, %if.then21.if.end27_crit_edge
  %74 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %d_inode.i, align 8
  %flags.i = getelementptr i8, ptr %75, i32 -8
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = call i64 @ovl_dentry_version_get(ptr noundef %1) #11
  %version31 = getelementptr inbounds %struct.ovl_dir_cache, ptr %call7.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %version31 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %call30, ptr %version31, align 8
  %77 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %d_inode.i, align 8
  call void @ovl_set_dir_cache(ptr noundef %78, ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end27, %ovl_cache_free.exit, %ovl_dir_cache_free.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %66, %ovl_cache_free.exit ], [ null, %if.end27 ], [ %call7.i.i, %if.end29 ], [ %call3, %land.lhs.true.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %ovl_dir_cache_free.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dentry_upper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_fill_plain(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %name, i32 noundef %namelen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %count, align 4
  %call = tail call fastcc ptr @ovl_cache_entry_new(ptr noundef %ctx, ptr noundef %name, i32 noundef %namelen, i64 noundef %ino, i32 noundef %d_type)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %err = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -12, ptr %err, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %l_node = getelementptr inbounds %struct.ovl_cache_entry, ptr %call, i32 0, i32 4
  %list = getelementptr inbounds %struct.ovl_readdir_data, ptr %ctx, i32 0, i32 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l_node, ptr noundef %6, ptr noundef %4) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %l_node, ptr %prev.i, align 4
  %8 = ptrtoint ptr %l_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %4, ptr %l_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.ovl_cache_entry, ptr %call, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %l_node, ptr %6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovl_cache_entry_new(ptr nocapture noundef %rdd, ptr nocapture noundef readonly %name, i32 noundef %len, i64 noundef %ino, i32 noundef %d_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %len, 51
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3264) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1 = getelementptr inbounds %struct.ovl_cache_entry, ptr %call9.i, i32 0, i32 9
  %1 = call ptr @memcpy(ptr %name1, ptr %name, i32 %len)
  %arrayidx = getelementptr %struct.ovl_cache_entry, ptr %call9.i, i32 0, i32 9, i32 %len
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %3 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %call9.i, align 128
  %type = getelementptr inbounds %struct.ovl_cache_entry, ptr %call9.i, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %d_type, ptr %type, align 4
  %real_ino = getelementptr inbounds %struct.ovl_cache_entry, ptr %call9.i, i32 0, i32 2
  %5 = ptrtoint ptr %real_ino to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %ino, ptr %real_ino, align 8
  %ino4 = getelementptr inbounds %struct.ovl_cache_entry, ptr %call9.i, i32 0, i32 3
  %6 = ptrtoint ptr %ino4 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %ino, ptr %ino4, align 16
  %dentry.i = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 1
  %7 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dentry.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.if.end8_crit_edge, label %if.end.i36

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end.i36:                                       ; preds = %if.end
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %xino_mode.i.i.i = getelementptr inbounds %struct.ovl_fs, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %xino_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xino_mode.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %tobool2.not.i = icmp slt i32 %14, 1
  br i1 %tobool2.not.i, label %if.end4.i38, label %if.end.i36.if.then6_crit_edge

if.end.i36.if.then6_crit_edge:                    ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end4.i38:                                      ; preds = %if.end.i36
  %call5.i = tail call i32 @strcmp(ptr noundef %name1, ptr noundef nonnull dereferenceable(3) @.str.5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i37 = icmp eq i32 %call5.i, 0
  br i1 %cmp.i37, label %if.end4.i38.if.then6_crit_edge, label %if.end7.i

if.end4.i38.if.then6_crit_edge:                   ; preds = %if.end4.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end7.i:                                        ; preds = %if.end4.i38
  %is_upper.i = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 9
  %15 = ptrtoint ptr %is_upper.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_upper.i, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not.i = icmp eq i8 %16, 0
  br i1 %tobool8.not.i, label %if.end7.i.if.end8_crit_edge, label %if.end10.i

if.end7.i.if.end8_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end10.i:                                       ; preds = %if.end7.i
  %17 = ptrtoint ptr %name1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %name1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %18)
  %cmp12.i = icmp eq i8 %18, 46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp14.i = icmp eq i32 %len, 1
  %or.cond = and i1 %cmp14.i, %cmp12.i
  br i1 %or.cond, label %if.end10.i.if.then6_crit_edge, label %ovl_calc_d_ino.exit

if.end10.i.if.then6_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

ovl_calc_d_ino.exit:                              ; preds = %if.end10.i
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i.i, align 8
  %flags.i.i = getelementptr i8, ptr %20, i32 -8
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i.i, align 4
  %23 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.i.not = icmp eq i32 %23, 0
  br i1 %tobool.i.i.not, label %ovl_calc_d_ino.exit.if.end8_crit_edge, label %ovl_calc_d_ino.exit.if.then6_crit_edge

ovl_calc_d_ino.exit.if.then6_crit_edge:           ; preds = %ovl_calc_d_ino.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

ovl_calc_d_ino.exit.if.end8_crit_edge:            ; preds = %ovl_calc_d_ino.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %ovl_calc_d_ino.exit.if.then6_crit_edge, %if.end10.i.if.then6_crit_edge, %if.end4.i38.if.then6_crit_edge, %if.end.i36.if.then6_crit_edge
  %24 = ptrtoint ptr %ino4 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %ino4, align 16
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %ovl_calc_d_ino.exit.if.end8_crit_edge, %if.end7.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %is_upper = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 9
  %25 = ptrtoint ptr %is_upper to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_upper, align 4, !range !63
  %is_upper10 = getelementptr inbounds %struct.ovl_cache_entry, ptr %call9.i, i32 0, i32 7
  %27 = ptrtoint ptr %is_upper10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %is_upper10, align 16
  %is_whiteout = getelementptr inbounds %struct.ovl_cache_entry, ptr %call9.i, i32 0, i32 8
  %28 = ptrtoint ptr %is_whiteout to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %is_whiteout, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %d_type)
  %cmp = icmp eq i32 %d_type, 2
  br i1 %cmp, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %first_maybe_whiteout = getelementptr inbounds %struct.ovl_readdir_data, ptr %rdd, i32 0, i32 6
  %29 = ptrtoint ptr %first_maybe_whiteout to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %first_maybe_whiteout, align 8
  %next_maybe_whiteout = getelementptr inbounds %struct.ovl_cache_entry, ptr %call9.i, i32 0, i32 6
  %31 = ptrtoint ptr %next_maybe_whiteout to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %next_maybe_whiteout, align 4
  store ptr %call9.i, ptr %first_maybe_whiteout, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call9.i, %if.then11 ], [ %call9.i, %if.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_path_real(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_sync_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_path_next(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_is_whiteout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_rmdir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !32, !33, !34, !36, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !51, !52, !53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @ovl_dir_operations, !1, !"ovl_dir_operations", i1 false, i1 false}
!1 = !{!"../fs/overlayfs/readdir.c", i32 952, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/overlayfs/readdir.c", i32 1012, i32 7}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/overlayfs/readdir.c", i32 1017, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ovl_cleanup_whiteouts._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @ovl_cleanup_whiteouts._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/overlayfs/readdir.c", i32 1231, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ovl_indexdir_cleanup._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @ovl_indexdir_cleanup._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../fs/overlayfs/readdir.c", i32 715, i32 3}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/overlayfs/readdir.c", i32 659, i32 38}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/overlayfs/readdir.c", i32 435, i32 4}
!20 = !{ptr @ovl_remap_lower_ino._rs, !19, !"_rs", i1 false, i1 false}
!21 = !{ptr @__func__.ovl_remap_lower_ino, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ovl_remap_lower_ino._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @ovl_remap_lower_ino._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/overlayfs/readdir.c", i32 571, i32 23}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/overlayfs/overlayfs.h", i32 214, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ovl_do_removexattr.__UNIQUE_ID_ddebug233, !28, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!33 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../fs/overlayfs/readdir.c", i32 510, i32 3}
!36 = !{ptr @ovl_cache_update_ino._rs, !37, !"_rs", i1 false, i1 false}
!37 = !{!"../fs/overlayfs/readdir.c", i32 526, i32 2}
!38 = !{ptr @__func__.ovl_cache_update_ino, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ovl_cache_update_ino._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @ovl_cache_update_ino._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/overlayfs/overlayfs.h", i32 129, i32 2}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ovl_do_rmdir.__UNIQUE_ID_ddebug220, !43, !"__UNIQUE_ID_ddebug220", i1 false, i1 false}
!46 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/overlayfs/readdir.c", i32 1092, i32 41}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/overlayfs/readdir.c", i32 1109, i32 4}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ovl_workdir_cleanup_recurse._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ovl_workdir_cleanup_recurse._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i8 0, i8 2}
!64 = !{!"auto-init"}
!65 = !{i64 2153527335}
!66 = !{i64 1187944, i64 1187965, i64 1187988, i64 1188007, i64 1188026}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2148503050, i64 2148503055, i64 2148503068, i64 2148503112, i64 2148503146, i64 2148503167}
