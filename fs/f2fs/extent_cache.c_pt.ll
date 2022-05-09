; ModuleID = '/llk/IR_all_yes/fs/f2fs/extent_cache.c_pt.bc'
source_filename = "../fs/f2fs/extent_cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.rb_entry = type <{ %struct.rb_node, %union.anon }>
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { i64 }
%struct.anon = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.extent_info = type { i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.71 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.73 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.f2fs_inode = type { i16, i8, i8, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, %union.anon.81, i32, i32, i32, i32, [255 x i8], i8, %struct.f2fs_extent, %union.anon.82, [5 x i32] }
%union.anon.81 = type { i32 }
%struct.f2fs_extent = type { i32, i32, i32 }
%union.anon.82 = type { [923 x i32] }
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.ckpt_req_control = type { ptr, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.spinlock, i32, i32 }
%struct.llist_head = type { ptr }
%struct.inode_management = type { %struct.xarray, %struct.spinlock, %struct.list_head, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.f2fs_mount_info = type { i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, %struct.f2fs_fault_info, [3 x ptr], i32, i32, i32, i32, i32, i32, i32, %struct.fscrypt_dummy_policy, i32, i32, i8, i8, i8, i8, i8, i8, i32, [16 x [8 x i8]], [16 x [8 x i8]] }
%struct.f2fs_fault_info = type { %struct.atomic_t, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.atgc_management = type { i8, %struct.rb_root_cached, %struct.list_head, i32, i32, i32, i32, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.f2fs_inode_info = type { %struct.inode, i32, i8, i8, i32, [2 x i32], i32, i16, [2 x i32], %struct.rw_semaphore, %struct.atomic_t, i32, i32, ptr, ptr, i32, i64, %struct.spinlock, [3 x ptr], i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, [2 x %struct.rw_semaphore], %struct.rw_semaphore, i32, %struct.kprojid_t, i32, %struct.timespec64, [4 x %struct.timespec64], %struct.atomic_t, i8, i8, i8, i16, i32 }
%struct.kprojid_t = type { i32 }
%struct.f2fs_super_block = type <{ i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], [512 x i16], i32, [64 x [8 x i8]], i32, [256 x i8], [256 x i8], i32, i8, [16 x i8], [8 x %struct.f2fs_device], [3 x i32], i8, i16, i16, [306 x i8], i32 }>
%struct.f2fs_device = type { [64 x i8], i32 }
%struct.extent_tree = type { i32, %struct.rb_root_cached, ptr, %struct.extent_info, %struct.list_head, %struct.rwlock_t, %struct.atomic_t, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.extent_node = type { %struct.rb_node, %struct.extent_info, %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dnode_of_data = type { ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i32 }
%struct.f2fs_node = type { %union.anon.84, %struct.node_footer }
%union.anon.84 = type { %struct.f2fs_inode }
%struct.node_footer = type <{ i32, i32, i32, i64, i32 }>

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016inconsistent rbtree, cur(%llu) next(%llu)\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016inconsistent rbtree, cur(%u, %u) next(%u, %u)\00", [48 x i8] zeroinitializer }, align 32
@extent_tree_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/f2fs/extent_cache.c\00", [41 x i8] zeroinitializer }, align 32
@f2fs_init_extent_cache_info.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&sbi->extent_tree_lock\00", [41 x i8] zeroinitializer }, align 32
@f2fs_init_extent_cache_info.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sbi->extent_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"f2fs_extent_tree\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"f2fs_extent_node\00", [47 x i8] zeroinitializer }, align 32
@extent_node_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__grab_extent_tree.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&et->lock\00", [22 x i8] zeroinitializer }, align 32
@f2fs_kmem_cache_alloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.f2fs_kmem_cache_alloc = private unnamed_addr constant [22 x i8] c"f2fs_kmem_cache_alloc\00", align 1
@f2fs_kmem_cache_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.f2fs_kmem_cache_alloc, ptr @.str.11, i32 2650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%sF2FS-fs (%s) : inject %s in %s of %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/f2fs/f2fs.h\00", [17 x i8] zeroinitializer }, align 32
@f2fs_kmem_cache_alloc._entry_ptr = internal global ptr @f2fs_kmem_cache_alloc._entry, section ".printk_index", align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@f2fs_fault_name = external dso_local local_unnamed_addr global [18 x ptr], align 4
@__tracepoint_f2fs_update_extent_tree_range = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/f2fs.h\00", [36 x i8] zeroinitializer }, align 32
@trace_f2fs_update_extent_tree_range.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_f2fs_shrink_extent_tree = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_shrink_extent_tree.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_f2fs_destroy_extent_tree = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_destroy_extent_tree.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_f2fs_lookup_extent_tree_start = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_lookup_extent_tree_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_f2fs_lookup_extent_tree_end = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_lookup_extent_tree_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 211, i32 5 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 220, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"extent_tree_slab\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 232, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 739, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 894, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 896, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 905, i32 44 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 909, i32 44 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"extent_node_slab\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 233, i32 27 }
@___asan_gen_.51 = private constant [26 x i8] c"../fs/f2fs/extent_cache.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 302, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"../fs/f2fs/f2fs.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 2650, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [31 x i8] c"../include/trace/events/f2fs.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1600, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 108, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 378, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @f2fs_kmem_cache_alloc._entry, ptr @f2fs_kmem_cache_alloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @extent_tree_slab, ptr @.str.2, ptr @f2fs_init_extent_cache_info.__key, ptr @.str.3, ptr @f2fs_init_extent_cache_info.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @extent_node_slab, ptr @.str.8, ptr @f2fs_kmem_cache_alloc._rs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @xa_init_flags.__key, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extent_tree_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_init_extent_cache_info.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_init_extent_cache_info.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extent_node_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmem_cache_alloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmem_cache_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_lookup_rb_tree(ptr nocapture noundef readonly %root, ptr noundef readonly %cached_re, i32 noundef %ofs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %cached_re, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.then.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.i:                                        ; preds = %entry
  %0 = getelementptr inbounds %struct.rb_entry, ptr %cached_re, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %ofs)
  %cmp.not.i = icmp ugt i32 %2, %ofs
  br i1 %cmp.not.i, label %if.then.i.if.then_crit_edge, label %land.lhs.true.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.i:                                  ; preds = %if.then.i
  %len.i = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  %add.i = add i32 %4, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %ofs)
  %cmp3.i = icmp ugt i32 %add.i, %ofs
  br i1 %cmp3.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %if.then.i.if.then_crit_edge, %entry.if.then_crit_edge
  %5 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.015.i = load ptr, ptr %root, align 4
  %tobool.not16.i = icmp eq ptr %node.015.i, null
  br i1 %tobool.not16.i, label %if.then.cleanup_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %node.017.i = phi ptr [ %node.0.i, %if.end6.i.while.body.i_crit_edge ], [ %node.015.i, %if.then.while.body.i_crit_edge ]
  %6 = getelementptr inbounds %struct.rb_entry, ptr %node.017.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ofs)
  %cmp.i = icmp ugt i32 %8, %ofs
  br i1 %cmp.i, label %if.then.i4, label %if.else.i

if.then.i4:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.017.i, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  %len.i5 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %len.i5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i5, align 4
  %add.i6 = add i32 %10, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i6, i32 %ofs)
  %cmp3.not.i = icmp ugt i32 %add.i6, %ofs
  br i1 %cmp3.not.i, label %if.else.i.cleanup_crit_edge, label %if.then4.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.017.i, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i4
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i4 ], [ %rb_right.i, %if.then4.i ]
  %11 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i7 = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i7, label %if.end6.i.cleanup_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %cached_re, %land.lhs.true.i.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge ], [ %node.017.i, %if.else.i.cleanup_crit_edge ], [ null, %if.end6.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_lookup_rb_tree_ext(ptr nocapture noundef readnone %sbi, ptr noundef readonly %root, ptr nocapture noundef writeonly %parent, i64 noundef %key, ptr nocapture noundef writeonly %leftmost) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool.not6 = icmp eq ptr %1, null
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %11, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %p.07 = phi ptr [ %p.1, %if.end.while.body_crit_edge ], [ %root, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %parent, align 4
  %4 = getelementptr inbounds %struct.rb_entry, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %key)
  %cmp = icmp ugt i64 %6, %key
  %7 = ptrtoint ptr %p.07 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p.07, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %leftmost to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %leftmost, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.else ]
  %10 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %root, %entry.while.end_crit_edge ], [ %p.1, %if.end.while.end_crit_edge ]
  ret ptr %p.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_lookup_rb_tree_for_insert(ptr nocapture readnone %sbi, ptr noundef readonly %root, ptr nocapture noundef writeonly %parent, i32 noundef %ofs, ptr nocapture noundef writeonly %leftmost) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool.not23 = icmp eq ptr %1, null
  br i1 %tobool.not23, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %15, %if.end12.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %p.024 = phi ptr [ %p.1, %if.end12.while.body_crit_edge ], [ %root, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %parent, align 4
  %4 = getelementptr inbounds %struct.rb_entry, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %ofs)
  %cmp = icmp ugt i32 %6, %ofs
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %p.024 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p.024, align 4
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %if.end12

if.else:                                          ; preds = %while.body
  %len = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %add = add i32 %10, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %ofs)
  %cmp3.not = icmp ugt i32 %add, %ofs
  br i1 %cmp3.not, label %do.body6, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %p.024 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p.024, align 4
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %leftmost to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %leftmost, align 1
  br label %if.end12

do.body6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/extent_cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 102, 0\0A.popsection", ""() #12, !srcloc !65
  unreachable

if.end12:                                         ; preds = %if.then4, %if.then
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then4 ]
  %14 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %entry.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %root, %entry.while.end_crit_edge ], [ %p.1, %if.end12.while.end_crit_edge ]
  ret ptr %p.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_lookup_rb_tree_ret(ptr noundef %root, ptr noundef %cached_re, i32 noundef %ofs, ptr nocapture noundef writeonly %prev_entry, ptr nocapture noundef writeonly %next_entry, ptr nocapture noundef writeonly %insert_p, ptr nocapture noundef writeonly %insert_parent, i1 noundef zeroext %force, ptr noundef writeonly %leftmost) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %insert_p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %insert_p, align 4
  %1 = ptrtoint ptr %insert_parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %insert_parent, align 4
  %2 = ptrtoint ptr %prev_entry to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %prev_entry, align 4
  %3 = ptrtoint ptr %next_entry to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %next_entry, align 4
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %root, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %cached_re, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %6 = getelementptr inbounds %struct.rb_entry, ptr %cached_re, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ofs)
  %cmp5.not = icmp ugt i32 %8, %ofs
  br i1 %cmp5.not, label %if.then3.if.end10_crit_edge, label %land.lhs.true

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %if.then3
  %len = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %add = add i32 %10, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %ofs)
  %cmp7 = icmp ugt i32 %add, %ofs
  br i1 %cmp7, label %land.lhs.true.lookup_neighbors_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true.lookup_neighbors_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lookup_neighbors

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %leftmost, null
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %leftmost to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %leftmost, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %12 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %root, align 4
  %tobool14.not163 = icmp eq ptr %13, null
  br i1 %tobool14.not163, label %if.end50.critedge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  br label %while.body

while.body:                                       ; preds = %if.end29.while.body_crit_edge, %if.end13.while.body_crit_edge
  %14 = phi ptr [ %22, %if.end29.while.body_crit_edge ], [ %13, %if.end13.while.body_crit_edge ]
  %15 = getelementptr inbounds %struct.rb_entry, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %ofs)
  %cmp17 = icmp ugt i32 %17, %ofs
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 2
  br label %if.end29

if.else:                                          ; preds = %while.body
  %len20 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len20, align 4
  %add21 = add i32 %19, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %ofs)
  %cmp22.not = icmp ugt i32 %add21, %ofs
  br i1 %cmp22.not, label %if.else.lookup_neighbors_crit_edge, label %if.then23

if.else.lookup_neighbors_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %lookup_neighbors

if.then23:                                        ; preds = %if.else
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 1
  br i1 %tobool11.not, label %if.then23.if.end29_crit_edge, label %if.then25

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %leftmost to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %leftmost, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.then23.if.end29_crit_edge, %if.then18
  %pnode.1 = phi ptr [ %rb_left, %if.then18 ], [ %rb_right, %if.then25 ], [ %rb_right, %if.then23.if.end29_crit_edge ]
  %21 = ptrtoint ptr %pnode.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pnode.1, align 4
  %tobool14.not = icmp eq ptr %22, null
  br i1 %tobool14.not, label %land.lhs.true34, label %if.end29.while.body_crit_edge

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

land.lhs.true34:                                  ; preds = %if.end29
  %23 = ptrtoint ptr %insert_p to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pnode.1, ptr %insert_p, align 4
  %24 = ptrtoint ptr %insert_parent to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %14, ptr %insert_parent, align 4
  %25 = getelementptr inbounds %struct.rb_entry, ptr %14, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %ofs)
  %cmp36 = icmp ult i32 %27, %ofs
  br i1 %cmp36, label %if.then37, label %land.lhs.true34.land.lhs.true45_crit_edge

land.lhs.true34.land.lhs.true45_crit_edge:        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true45

if.then37:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @rb_next(ptr noundef nonnull %14) #12
  br label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.then37, %land.lhs.true34.land.lhs.true45_crit_edge
  %storemerge = phi ptr [ %call, %if.then37 ], [ %14, %land.lhs.true34.land.lhs.true45_crit_edge ]
  %28 = ptrtoint ptr %next_entry to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %storemerge, ptr %next_entry, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %ofs)
  %cmp47 = icmp ugt i32 %30, %ofs
  br i1 %cmp47, label %if.then48, label %land.lhs.true45.if.end50_crit_edge

land.lhs.true45.if.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then48:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = tail call ptr @rb_prev(ptr noundef nonnull %14) #12
  br label %if.end50

if.end50.critedge:                                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %insert_p to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %root, ptr %insert_p, align 4
  %32 = ptrtoint ptr %insert_parent to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %insert_parent, align 4
  %33 = ptrtoint ptr %next_entry to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %next_entry, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end50.critedge, %if.then48, %land.lhs.true45.if.end50_crit_edge
  %tmp_node.1 = phi ptr [ %call49, %if.then48 ], [ %14, %land.lhs.true45.if.end50_crit_edge ], [ null, %if.end50.critedge ]
  %34 = ptrtoint ptr %prev_entry to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tmp_node.1, ptr %prev_entry, align 4
  br label %cleanup

lookup_neighbors:                                 ; preds = %if.else.lookup_neighbors_crit_edge, %land.lhs.true.lookup_neighbors_crit_edge
  %re.0 = phi ptr [ %cached_re, %land.lhs.true.lookup_neighbors_crit_edge ], [ %14, %if.else.lookup_neighbors_crit_edge ]
  %35 = getelementptr inbounds %struct.rb_entry, ptr %re.0, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %ofs)
  %cmp62 = icmp eq i32 %37, %ofs
  %brmerge = or i1 %cmp62, %force
  br i1 %brmerge, label %if.then64, label %lookup_neighbors.if.end77_crit_edge

lookup_neighbors.if.end77_crit_edge:              ; preds = %lookup_neighbors
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then64:                                        ; preds = %lookup_neighbors
  call void @__sanitizer_cov_trace_pc() #14
  %call66 = tail call ptr @rb_prev(ptr noundef nonnull %re.0) #12
  %38 = ptrtoint ptr %prev_entry to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call66, ptr %prev_entry, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then64, %lookup_neighbors.if.end77_crit_edge
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %35, align 4
  %len79 = getelementptr inbounds %struct.anon, ptr %35, i32 0, i32 1
  %41 = ptrtoint ptr %len79 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len79, align 4
  %add80 = add i32 %40, -1
  %sub = add i32 %add80, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %ofs)
  %cmp81 = icmp eq i32 %sub, %ofs
  %brmerge156 = or i1 %cmp81, %force
  br i1 %brmerge156, label %if.then84, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then84:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  %call86 = tail call ptr @rb_next(ptr noundef nonnull %re.0) #12
  %43 = ptrtoint ptr %next_entry to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call86, ptr %next_entry, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %if.end77.cleanup_crit_edge, %if.end50, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end50 ], [ null, %entry.cleanup_crit_edge ], [ %re.0, %if.end77.cleanup_crit_edge ], [ %re.0, %if.then84 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_check_rb_tree_consistence(ptr noundef %sbi, ptr nocapture noundef readonly %root, i1 noundef zeroext %check_key) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %root, i32 0, i32 1
  %0 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_leftmost, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %call48 = tail call ptr @rb_next(ptr noundef nonnull %1) #12
  %tobool2.not49 = icmp eq ptr %call48, null
  br i1 %tobool2.not49, label %while.body.preheader.cleanup_crit_edge, label %while.body.preheader.if.end4_crit_edge

while.body.preheader.if.end4_crit_edge:           ; preds = %while.body.preheader
  br label %if.end4

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %next21.if.end4_crit_edge, %while.body.preheader.if.end4_crit_edge
  %call51 = phi ptr [ %call, %next21.if.end4_crit_edge ], [ %call48, %while.body.preheader.if.end4_crit_edge ]
  %cur.050 = phi ptr [ %call51, %next21.if.end4_crit_edge ], [ %1, %while.body.preheader.if.end4_crit_edge ]
  %2 = getelementptr inbounds %struct.rb_entry, ptr %cur.050, i32 0, i32 1
  br i1 %check_key, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %2, align 4
  %5 = getelementptr inbounds %struct.rb_entry, ptr %call51, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %7)
  %cmp = icmp ugt i64 %4, %7
  br i1 %cmp, label %if.then10, label %if.then9.next21_crit_edge

if.then9.next21_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %next21

if.then10:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str, i64 noundef %4, i64 noundef %7) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %2, align 4
  %len = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %add = add i32 %11, %9
  %12 = getelementptr inbounds %struct.rb_entry, ptr %call51, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %14)
  %cmp14 = icmp ugt i32 %add, %14
  br i1 %cmp14, label %if.then15, label %if.end12.next21_crit_edge

if.end12.next21_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %next21

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %len19 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len19, align 4
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef %11, i32 noundef %14, i32 noundef %16) #12
  br label %cleanup

next21:                                           ; preds = %if.end12.next21_crit_edge, %if.then9.next21_crit_edge
  %call = tail call ptr @rb_next(ptr noundef nonnull %call51) #12
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %next21.cleanup_crit_edge, label %next21.if.end4_crit_edge

next21.if.end4_crit_edge:                         ; preds = %next21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

next21.cleanup_crit_edge:                         ; preds = %next21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %next21.cleanup_crit_edge, %if.then15, %if.then10, %while.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then10 ], [ false, %if.then15 ], [ true, %entry.cleanup_crit_edge ], [ true, %while.body.preheader.cleanup_crit_edge ], [ true, %next21.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_init_extent_tree(ptr noundef %inode, ptr noundef %ipage) local_unnamed_addr #3 align 64 {
entry:
  %ei.i = alloca %struct.extent_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %tobool.not.i = icmp eq ptr %ipage, null
  br i1 %tobool.not.i, label %entry.cond.end.i_crit_edge, label %cond.true.i

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call ptr @page_address(ptr noundef nonnull %ipage) #12
  %i_ext2.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 22
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry.cond.end.i_crit_edge
  %cond.i = phi ptr [ %i_ext2.i, %cond.true.i ], [ null, %entry.cond.end.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ei.i) #12
  %4 = getelementptr inbounds %struct.extent_info, ptr %ei.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.extent_info, ptr %ei.i, i32 0, i32 2
  %6 = call ptr @memset(ptr %ei.i, i32 255, i32 16)
  %7 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %mount_opt.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %10, i32 0, i32 73
  %11 = ptrtoint ptr %mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mount_opt.i.i, align 8
  %and.i.i = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %cond.end.i.if.then.i_crit_edge, label %lor.lhs.false.i.i

cond.end.i.if.then.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i.i:                                ; preds = %cond.end.i
  %flags.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %13 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i.i.i, align 4
  %15 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false.i.i.if.then.i_crit_edge

lor.lhs.false.i.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %16 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool5.not.i.i = icmp sgt i32 %17, -1
  br i1 %tobool5.not.i.i, label %lor.lhs.false3.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false3.i.i.if.end.i.i_crit_edge:          ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false3.i.i
  %raw_super.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %10, i32 0, i32 2
  %18 = ptrtoint ptr %raw_super.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %raw_super.i.i.i, align 8
  %feature.i.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %19, i32 0, i32 34
  %20 = ptrtoint ptr %feature.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %feature.i.i.i, align 1
  %22 = and i32 %21, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool7.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.if.then.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %lor.lhs.false3.i.i.if.end.i.i_crit_edge
  %s_list.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %10, i32 0, i32 119
  %23 = ptrtoint ptr %s_list.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %s_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %24, %s_list.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i.i.if.then.i_crit_edge, label %f2fs_may_extent_tree.exit.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

f2fs_may_extent_tree.exit.i:                      ; preds = %if.end.i.i
  %25 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %inode, align 8
  %27 = and i16 %26, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %27)
  %cmp.i.i = icmp eq i16 %27, -32768
  br i1 %cmp.i.i, label %if.end9.i, label %f2fs_may_extent_tree.exit.i.if.then.i_crit_edge

f2fs_may_extent_tree.exit.i.if.then.i_crit_edge:  ; preds = %f2fs_may_extent_tree.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %f2fs_may_extent_tree.exit.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge, %land.lhs.true.i.i.if.then.i_crit_edge, %lor.lhs.false.i.i.if.then.i_crit_edge, %cond.end.i.if.then.i_crit_edge
  %tobool4.not.i = icmp eq ptr %cond.i, null
  br i1 %tobool4.not.i, label %if.then.i.__f2fs_init_extent_tree.exit_crit_edge, label %land.lhs.true.i

if.then.i.__f2fs_init_extent_tree.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__f2fs_init_extent_tree.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %len.i = getelementptr inbounds %struct.f2fs_extent, ptr %cond.i, i32 0, i32 2
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool5.not.i = icmp eq i32 %29, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.__f2fs_init_extent_tree.exit_crit_edge, label %if.then6.i

land.lhs.true.i.__f2fs_init_extent_tree.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__f2fs_init_extent_tree.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @f2fs_wait_on_page_writeback(ptr noundef %ipage, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #12
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 0, ptr %len.i, align 1
  %call8.i = tail call zeroext i1 @set_page_dirty(ptr noundef %ipage) #12
  br label %__f2fs_init_extent_tree.exit

if.end9.i:                                        ; preds = %f2fs_may_extent_tree.exit.i
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %31 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_ino.i.i, align 8
  %extent_tree_lock.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %10, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %extent_tree_lock.i.i, i32 noundef 0) #12
  %extent_tree_root.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %10, i32 0, i32 36
  %call1.i.i = tail call ptr @radix_tree_lookup(ptr noundef %extent_tree_root.i.i, i32 noundef %32) #12
  %tobool.not.i49.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i49.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end9.i
  %33 = load ptr, ptr @extent_tree_slab, align 4
  %call.i.i30.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %33, i32 noundef 3136) #12
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i30.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.then.i.i.f2fs_kmem_cache_alloc.exit.i.i_crit_edge

if.then.i.i.f2fs_kmem_cache_alloc.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %f2fs_kmem_cache_alloc.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %33, i32 noundef 35904) #12
  br label %f2fs_kmem_cache_alloc.exit.i.i

f2fs_kmem_cache_alloc.exit.i.i:                   ; preds = %if.then.i.i.i.i, %if.then.i.i.f2fs_kmem_cache_alloc.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call.i.i30.i.i, %if.then.i.i.f2fs_kmem_cache_alloc.exit.i.i_crit_edge ], [ %call2.i.i.i.i, %if.then.i.i.i.i ]
  %call2.i.i.i = tail call i32 @radix_tree_insert(ptr noundef %extent_tree_root.i.i, i32 noundef %32, ptr noundef %retval.0.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not3.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not3.i.i.i, label %f2fs_kmem_cache_alloc.exit.i.i.f2fs_radix_tree_insert.exit.i.i_crit_edge, label %f2fs_kmem_cache_alloc.exit.i.i.while.body.i.i.i_crit_edge

f2fs_kmem_cache_alloc.exit.i.i.while.body.i.i.i_crit_edge: ; preds = %f2fs_kmem_cache_alloc.exit.i.i
  br label %while.body.i.i.i

f2fs_kmem_cache_alloc.exit.i.i.f2fs_radix_tree_insert.exit.i.i_crit_edge: ; preds = %f2fs_kmem_cache_alloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %f2fs_radix_tree_insert.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %f2fs_kmem_cache_alloc.exit.i.i.while.body.i.i.i_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.11, i32 noundef 2695, i32 noundef 0) #12
  %call.i.i31.i.i = tail call i32 @__cond_resched() #12
  %call.i.i50.i = tail call i32 @radix_tree_insert(ptr noundef %extent_tree_root.i.i, i32 noundef %32, ptr noundef %retval.0.i.i.i) #12
  %tobool.not.i.i.i = icmp eq i32 %call.i.i50.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.f2fs_radix_tree_insert.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

while.body.i.i.i.f2fs_radix_tree_insert.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %f2fs_radix_tree_insert.exit.i.i

f2fs_radix_tree_insert.exit.i.i:                  ; preds = %while.body.i.i.i.f2fs_radix_tree_insert.exit.i.i_crit_edge, %f2fs_kmem_cache_alloc.exit.i.i.f2fs_radix_tree_insert.exit.i.i_crit_edge
  %34 = getelementptr inbounds i8, ptr %retval.0.i.i.i, i32 16
  %35 = call ptr @memset(ptr %34, i32 0, i32 76)
  %36 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %32, ptr %retval.0.i.i.i, align 8
  %root.i.i = getelementptr inbounds %struct.extent_tree, ptr %retval.0.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %root.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %root.i.i, align 4
  %.compoundliteral.sroa.2.0.root.sroa_idx.i.i = getelementptr inbounds %struct.extent_tree, ptr %retval.0.i.i.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %.compoundliteral.sroa.2.0.root.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %.compoundliteral.sroa.2.0.root.sroa_idx.i.i, align 8
  %cached_en.i.i = getelementptr inbounds %struct.extent_tree, ptr %retval.0.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %cached_en.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %cached_en.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.extent_tree, ptr %retval.0.i.i.i, i32 0, i32 5
  tail call void @__rwlock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @__grab_extent_tree.__key) #12
  %list.i.i = getelementptr inbounds %struct.extent_tree, ptr %retval.0.i.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %list.i.i, ptr %list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.extent_tree, ptr %retval.0.i.i.i, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %node_cnt.i.i = getelementptr inbounds %struct.extent_tree, ptr %retval.0.i.i.i, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %node_cnt.i.i, i32 noundef 4) #12
  %42 = ptrtoint ptr %node_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 0, ptr %node_cnt.i.i, align 4
  %total_ext_tree.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %10, i32 0, i32 40
  %call.i.i28.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_ext_tree.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %total_ext_tree.i.i, i32 1, i32 3, i32 1) #12
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_ext_tree.i.i, ptr %total_ext_tree.i.i, i32 1, ptr elementtype(i32) %total_ext_tree.i.i) #12, !srcloc !66
  br label %__grab_extent_tree.exit.i

if.else.i.i:                                      ; preds = %if.end9.i
  %total_zombie_tree.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %10, i32 0, i32 42
  %call.i.i29.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_zombie_tree.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %total_zombie_tree.i.i, i32 1, i32 3, i32 1) #12
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_zombie_tree.i.i, ptr %total_zombie_tree.i.i, i32 1, ptr elementtype(i32) %total_zombie_tree.i.i) #12, !srcloc !67
  %list5.i.i = getelementptr inbounds %struct.extent_tree, ptr %call1.i.i, i32 0, i32 4
  %call.i.i32.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list5.i.i) #12
  br i1 %call.i.i32.i.i, label %if.end.i.i.i.i, label %if.else.i.i.list_del_init.exit.i.i_crit_edge

if.else.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.extent_tree, ptr %call1.i.i, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i.i.i, align 4
  %47 = ptrtoint ptr %list5.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %list5.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.else.i.i.list_del_init.exit.i.i_crit_edge
  %51 = ptrtoint ptr %list5.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %list5.i.i, ptr %list5.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.extent_tree, ptr %call1.i.i, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %list5.i.i, ptr %prev.i3.i.i.i, align 4
  br label %__grab_extent_tree.exit.i

__grab_extent_tree.exit.i:                        ; preds = %list_del_init.exit.i.i, %f2fs_radix_tree_insert.exit.i.i
  %et.0.i.i = phi ptr [ %call1.i.i, %list_del_init.exit.i.i ], [ %retval.0.i.i.i, %f2fs_radix_tree_insert.exit.i.i ]
  tail call void @mutex_unlock(ptr noundef %extent_tree_lock.i.i) #12
  %extent_tree.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 26
  %53 = ptrtoint ptr %extent_tree.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %et.0.i.i, ptr %extent_tree.i.i, align 8
  %tobool11.not.i = icmp eq ptr %cond.i, null
  br i1 %tobool11.not.i, label %__grab_extent_tree.exit.i.__f2fs_init_extent_tree.exit_crit_edge, label %lor.lhs.false.i

__grab_extent_tree.exit.i.__f2fs_init_extent_tree.exit_crit_edge: ; preds = %__grab_extent_tree.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__f2fs_init_extent_tree.exit

lor.lhs.false.i:                                  ; preds = %__grab_extent_tree.exit.i
  %len12.i = getelementptr inbounds %struct.f2fs_extent, ptr %cond.i, i32 0, i32 2
  %54 = ptrtoint ptr %len12.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %len12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool13.not.i = icmp eq i32 %55, 0
  br i1 %tobool13.not.i, label %lor.lhs.false.i.__f2fs_init_extent_tree.exit_crit_edge, label %if.end15.i

lor.lhs.false.i.__f2fs_init_extent_tree.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__f2fs_init_extent_tree.exit

if.end15.i:                                       ; preds = %lor.lhs.false.i
  %56 = ptrtoint ptr %cond.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %cond.i, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #12
  %59 = ptrtoint ptr %ei.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %ei.i, align 4
  %blk.i.i = getelementptr inbounds %struct.f2fs_extent, ptr %cond.i, i32 0, i32 1
  %60 = ptrtoint ptr %blk.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %blk.i.i, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #12
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %5, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %55) #12
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %4, align 4
  %lock.i = getelementptr inbounds %struct.extent_tree, ptr %et.0.i.i, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %lock.i) #12
  %node_cnt.i = getelementptr inbounds %struct.extent_tree, ptr %et.0.i.i, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %node_cnt.i, i32 noundef 4) #12
  %66 = ptrtoint ptr %node_cnt.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %node_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool17.not.i = icmp eq i32 %67, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.out.i_crit_edge

if.end15.i.out.i_crit_edge:                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end19.i:                                       ; preds = %if.end15.i
  %root.i52.i = getelementptr inbounds %struct.extent_tree, ptr %et.0.i.i, i32 0, i32 1
  %call.i53.i = call fastcc ptr @__attach_extent_node(ptr noundef %3, ptr noundef %et.0.i.i, ptr noundef nonnull %ei.i, ptr noundef null, ptr noundef %root.i52.i, i1 noundef zeroext true) #12
  %tobool.not.i54.i = icmp eq ptr %call.i53.i, null
  br i1 %tobool.not.i54.i, label %if.end19.i.out.i_crit_edge, label %if.then22.i

if.end19.i.out.i_crit_edge:                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then22.i:                                      ; preds = %if.end19.i
  %largest.i.i = getelementptr inbounds %struct.extent_tree, ptr %et.0.i.i, i32 0, i32 3
  %ei1.i.i = getelementptr inbounds %struct.extent_node, ptr %call.i53.i, i32 0, i32 1
  %68 = call ptr @memcpy(ptr %largest.i.i, ptr %ei1.i.i, i32 16)
  %cached_en.i55.i = getelementptr inbounds %struct.extent_tree, ptr %et.0.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %cached_en.i55.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i53.i, ptr %cached_en.i55.i, align 4
  %extent_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %extent_lock.i) #12
  %list.i = getelementptr inbounds %struct.extent_node, ptr %call.i53.i, i32 0, i32 2
  %extent_list.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 38
  %prev.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 38, i32 1
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i, align 4
  %call.i.i57.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %71, ptr noundef %extent_list.i) #12
  br i1 %call.i.i57.i, label %if.end.i.i.i, label %if.then22.i.list_add_tail.exit.i_crit_edge

if.then22.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %list.i, ptr %prev.i.i, align 4
  %73 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %extent_list.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.extent_node, ptr %call.i53.i, i32 0, i32 2, i32 1
  %74 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev3.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %list.i, ptr %71, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then22.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %extent_lock.i) #12
  br label %out.i

out.i:                                            ; preds = %list_add_tail.exit.i, %if.end19.i.out.i_crit_edge, %if.end15.i.out.i_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %lock.i) #12
  br label %__f2fs_init_extent_tree.exit

__f2fs_init_extent_tree.exit:                     ; preds = %out.i, %lor.lhs.false.i.__f2fs_init_extent_tree.exit_crit_edge, %__grab_extent_tree.exit.i.__f2fs_init_extent_tree.exit_crit_edge, %if.then6.i, %land.lhs.true.i.__f2fs_init_extent_tree.exit_crit_edge, %if.then.i.__f2fs_init_extent_tree.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ei.i) #12
  %extent_tree = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 26
  %76 = ptrtoint ptr %extent_tree to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %extent_tree, align 8
  %tobool.not = icmp eq ptr %77, null
  br i1 %tobool.not, label %if.then, label %__f2fs_init_extent_tree.exit.if.end_crit_edge

__f2fs_init_extent_tree.exit.if.end_crit_edge:    ; preds = %__f2fs_init_extent_tree.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %__f2fs_init_extent_tree.exit
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %__f2fs_init_extent_tree.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_update_extent_tree_range_compressed(ptr noundef %inode, i32 noundef %fofs, i32 noundef %blkaddr, i32 noundef %llen, i32 noundef %c_len) local_unnamed_addr #3 align 64 {
entry:
  %prev_en = alloca ptr, align 4
  %next_en = alloca ptr, align 4
  %ei = alloca %struct.extent_info, align 4
  %insert_p = alloca ptr, align 4
  %insert_parent = alloca ptr, align 4
  %leftmost = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %extent_tree = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 26
  %4 = ptrtoint ptr %extent_tree to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extent_tree, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_en) #12
  %6 = ptrtoint ptr %prev_en to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %prev_en, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_en) #12
  %7 = ptrtoint ptr %next_en to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %next_en, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ei) #12
  %8 = getelementptr inbounds %struct.extent_info, ptr %ei, i32 0, i32 1
  %9 = getelementptr inbounds %struct.extent_info, ptr %ei, i32 0, i32 2
  %10 = getelementptr inbounds %struct.extent_info, ptr %ei, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %insert_p) #12
  %11 = ptrtoint ptr %insert_p to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %insert_p, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %insert_parent) #12
  %12 = ptrtoint ptr %insert_parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %insert_parent, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %leftmost) #12
  %13 = ptrtoint ptr %leftmost to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %leftmost, align 1
  tail call fastcc void @trace_f2fs_update_extent_tree_range(ptr noundef %inode, i32 noundef %fofs, i32 noundef %blkaddr, i32 noundef %llen)
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %lock) #12
  %root = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 1
  %cached_en = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %cached_en to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cached_en, align 4
  %call3 = call ptr @f2fs_lookup_rb_tree_ret(ptr noundef %root, ptr noundef %18, i32 noundef %fofs, ptr noundef nonnull %prev_en, ptr noundef nonnull %next_en, ptr noundef nonnull %insert_p, ptr noundef nonnull %insert_parent, i1 noundef zeroext false, ptr noundef nonnull %leftmost)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end6, label %if.end.unlock_out_crit_edge

if.end.unlock_out_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out

if.end6:                                          ; preds = %if.end
  %19 = ptrtoint ptr %ei to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %fofs, ptr %ei, align 4
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %blkaddr, ptr %9, align 4
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %llen, ptr %8, align 4
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %c_len, ptr %10, align 4
  %23 = ptrtoint ptr %prev_en to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev_en, align 4
  %25 = ptrtoint ptr %next_en to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %next_en, align 4
  %call8 = call fastcc ptr @__try_merge_extent_node(ptr noundef %3, ptr noundef %5, ptr noundef nonnull %ei, ptr noundef %24, ptr noundef %26)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end6.unlock_out_crit_edge

if.end6.unlock_out_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %insert_p to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %insert_p, align 4
  %29 = ptrtoint ptr %insert_parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %insert_parent, align 4
  %31 = ptrtoint ptr %leftmost to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %leftmost, align 1, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool11 = icmp ne i8 %32, 0
  %call12 = call fastcc ptr @__insert_extent_tree(ptr noundef %3, ptr noundef %5, ptr noundef nonnull %ei, ptr noundef %28, ptr noundef %30, i1 noundef zeroext %tobool11)
  br label %unlock_out

unlock_out:                                       ; preds = %if.then10, %if.end6.unlock_out_crit_edge, %if.end.unlock_out_crit_edge
  call void @_raw_write_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock_out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %leftmost) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %insert_parent) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %insert_p) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ei) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_en) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_en) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_update_extent_tree_range(ptr noundef %inode, i32 noundef %pgofs, i32 noundef %blkaddr, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_update_extent_tree_range, i32 0, i32 1), ptr blockaddress(@trace_f2fs_update_extent_tree_range, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !69

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !71
  %call42 = tail call i32 @__traceiter_f2fs_update_extent_tree_range(ptr noundef null, ptr noundef %inode, i32 noundef %pgofs, i32 noundef %blkaddr, i32 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !72
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !70

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_update_extent_tree_range, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_update_extent_tree_range, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_update_extent_tree_range.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_f2fs_update_extent_tree_range.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1629, ptr noundef nonnull @.str.14) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__try_merge_extent_node(ptr noundef %sbi, ptr noundef %et, ptr nocapture noundef readonly %ei, ptr noundef %prev_ex, ptr noundef %next_ex) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prev_ex, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ei1 = getelementptr inbounds %struct.extent_node, ptr %prev_ex, i32 0, i32 1
  %c_len.i.i = getelementptr inbounds %struct.extent_node, ptr %prev_ex, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %c_len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.if.end.i.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true.if.end.i.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true
  %len.i.i = getelementptr inbounds %struct.extent_node, ptr %prev_ex, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp eq i32 %3, %1
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %land.lhs.true.if.end.i.i_crit_edge
  %c_len2.i.i = getelementptr inbounds %struct.extent_info, ptr %ei, i32 0, i32 3
  %4 = ptrtoint ptr %c_len2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_len2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end9.i.i_crit_edge, label %land.lhs.true4.i.i

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

land.lhs.true4.i.i:                               ; preds = %if.end.i.i
  %len5.i.i = getelementptr inbounds %struct.extent_info, ptr %ei, i32 0, i32 1
  %6 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp7.not.i.i = icmp eq i32 %7, %5
  br i1 %cmp7.not.i.i, label %land.lhs.true4.i.i.if.end9.i.i_crit_edge, label %land.lhs.true4.i.i.if.end_crit_edge

land.lhs.true4.i.i.if.end_crit_edge:              ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true4.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %land.lhs.true4.i.i.if.end9.i.i_crit_edge, %if.end.i.i.if.end9.i.i_crit_edge
  %8 = ptrtoint ptr %ei1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ei1, align 4
  %len10.i.i = getelementptr inbounds %struct.extent_node, ptr %prev_ex, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len10.i.i, align 4
  %add.i.i = add i32 %11, %9
  %12 = ptrtoint ptr %ei to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ei, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %13)
  %cmp12.i.i = icmp eq i32 %add.i.i, %13
  br i1 %cmp12.i.i, label %__is_back_mergeable.exit, label %if.end9.i.i.if.end_crit_edge

if.end9.i.i.if.end_crit_edge:                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

__is_back_mergeable.exit:                         ; preds = %if.end9.i.i
  %blk.i.i = getelementptr inbounds %struct.extent_node, ptr %prev_ex, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %blk.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blk.i.i, align 4
  %add14.i.i = add i32 %15, %11
  %blk15.i.i = getelementptr inbounds %struct.extent_info, ptr %ei, i32 0, i32 2
  %16 = ptrtoint ptr %blk15.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blk15.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i.i, i32 %17)
  %cmp16.i.i = icmp eq i32 %add14.i.i, %17
  br i1 %cmp16.i.i, label %if.then, label %__is_back_mergeable.exit.if.end_crit_edge

__is_back_mergeable.exit.if.end_crit_edge:        ; preds = %__is_back_mergeable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %__is_back_mergeable.exit
  call void @__sanitizer_cov_trace_pc() #14
  %len = getelementptr inbounds %struct.extent_info, ptr %ei, i32 0, i32 1
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %20 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len10.i.i, align 4
  %add = add i32 %21, %19
  store i32 %add, ptr %len10.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %__is_back_mergeable.exit.if.end_crit_edge, %if.end9.i.i.if.end_crit_edge, %land.lhs.true4.i.i.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ei.addr.0 = phi ptr [ %ei1, %if.then ], [ %ei, %__is_back_mergeable.exit.if.end_crit_edge ], [ %ei, %entry.if.end_crit_edge ], [ %ei, %land.lhs.true.i.i.if.end_crit_edge ], [ %ei, %land.lhs.true4.i.i.if.end_crit_edge ], [ %ei, %if.end9.i.i.if.end_crit_edge ]
  %en.0 = phi ptr [ %prev_ex, %if.then ], [ null, %__is_back_mergeable.exit.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ], [ null, %land.lhs.true.i.i.if.end_crit_edge ], [ null, %land.lhs.true4.i.i.if.end_crit_edge ], [ null, %if.end9.i.i.if.end_crit_edge ]
  %tobool5.not = icmp eq ptr %next_ex, null
  br i1 %tobool5.not, label %if.end.if.end21_crit_edge, label %land.lhs.true6

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true6:                                   ; preds = %if.end
  %ei7 = getelementptr inbounds %struct.extent_node, ptr %next_ex, i32 0, i32 1
  %c_len.i.i57 = getelementptr inbounds %struct.extent_info, ptr %ei.addr.0, i32 0, i32 3
  %22 = ptrtoint ptr %c_len.i.i57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %c_len.i.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i58 = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i58, label %land.lhs.true6.if.end.i.i64_crit_edge, label %land.lhs.true.i.i61

land.lhs.true6.if.end.i.i64_crit_edge:            ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i64

land.lhs.true.i.i61:                              ; preds = %land.lhs.true6
  %len.i.i59 = getelementptr inbounds %struct.extent_info, ptr %ei.addr.0, i32 0, i32 1
  %24 = ptrtoint ptr %len.i.i59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp.not.i.i60 = icmp eq i32 %25, %23
  br i1 %cmp.not.i.i60, label %land.lhs.true.i.i61.if.end.i.i64_crit_edge, label %land.lhs.true.i.i61.if.end21_crit_edge

land.lhs.true.i.i61.if.end21_crit_edge:           ; preds = %land.lhs.true.i.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true.i.i61.if.end.i.i64_crit_edge:       ; preds = %land.lhs.true.i.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i64

if.end.i.i64:                                     ; preds = %land.lhs.true.i.i61.if.end.i.i64_crit_edge, %land.lhs.true6.if.end.i.i64_crit_edge
  %c_len2.i.i62 = getelementptr inbounds %struct.extent_node, ptr %next_ex, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %c_len2.i.i62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %c_len2.i.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool3.not.i.i63 = icmp eq i32 %27, 0
  br i1 %tobool3.not.i.i63, label %if.end.i.i64.if.end9.i.i71_crit_edge, label %land.lhs.true4.i.i67

if.end.i.i64.if.end9.i.i71_crit_edge:             ; preds = %if.end.i.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i71

land.lhs.true4.i.i67:                             ; preds = %if.end.i.i64
  %len5.i.i65 = getelementptr inbounds %struct.extent_node, ptr %next_ex, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %len5.i.i65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len5.i.i65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp7.not.i.i66 = icmp eq i32 %29, %27
  br i1 %cmp7.not.i.i66, label %land.lhs.true4.i.i67.if.end9.i.i71_crit_edge, label %land.lhs.true4.i.i67.if.end21_crit_edge

land.lhs.true4.i.i67.if.end21_crit_edge:          ; preds = %land.lhs.true4.i.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true4.i.i67.if.end9.i.i71_crit_edge:     ; preds = %land.lhs.true4.i.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i71

if.end9.i.i71:                                    ; preds = %land.lhs.true4.i.i67.if.end9.i.i71_crit_edge, %if.end.i.i64.if.end9.i.i71_crit_edge
  %30 = ptrtoint ptr %ei.addr.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ei.addr.0, align 4
  %len10.i.i68 = getelementptr inbounds %struct.extent_info, ptr %ei.addr.0, i32 0, i32 1
  %32 = ptrtoint ptr %len10.i.i68 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len10.i.i68, align 4
  %add.i.i69 = add i32 %33, %31
  %34 = ptrtoint ptr %ei7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ei7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i69, i32 %35)
  %cmp12.i.i70 = icmp eq i32 %add.i.i69, %35
  br i1 %cmp12.i.i70, label %__is_front_mergeable.exit, label %if.end9.i.i71.if.end21_crit_edge

if.end9.i.i71.if.end21_crit_edge:                 ; preds = %if.end9.i.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

__is_front_mergeable.exit:                        ; preds = %if.end9.i.i71
  %blk.i.i72 = getelementptr inbounds %struct.extent_info, ptr %ei.addr.0, i32 0, i32 2
  %36 = ptrtoint ptr %blk.i.i72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %blk.i.i72, align 4
  %add14.i.i73 = add i32 %37, %33
  %blk15.i.i74 = getelementptr inbounds %struct.extent_node, ptr %next_ex, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %blk15.i.i74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %blk15.i.i74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i.i73, i32 %39)
  %cmp16.i.i75 = icmp eq i32 %add14.i.i73, %39
  br i1 %cmp16.i.i75, label %if.then9, label %__is_front_mergeable.exit.if.end21_crit_edge

__is_front_mergeable.exit.if.end21_crit_edge:     ; preds = %__is_front_mergeable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then9:                                         ; preds = %__is_front_mergeable.exit
  %40 = ptrtoint ptr %ei.addr.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ei.addr.0, align 4
  %42 = ptrtoint ptr %ei7 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %ei7, align 4
  %43 = ptrtoint ptr %blk.i.i72 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %blk.i.i72, align 4
  %45 = ptrtoint ptr %blk15.i.i74 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %blk15.i.i74, align 4
  %46 = ptrtoint ptr %len10.i.i68 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len10.i.i68, align 4
  %len16 = getelementptr inbounds %struct.extent_node, ptr %next_ex, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len16, align 4
  %add17 = add i32 %49, %47
  store i32 %add17, ptr %len16, align 4
  %tobool18.not = icmp eq ptr %en.0, null
  br i1 %tobool18.not, label %if.then9.if.end24_crit_edge, label %if.then19

if.then9.if.end24_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then19:                                        ; preds = %if.then9
  %extent_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %extent_lock.i) #12
  %list.i = getelementptr inbounds %struct.extent_node, ptr %prev_ex, i32 0, i32 2
  %50 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %51, %list.i
  br i1 %cmp.i.not.i, label %do.body3.i, label %do.end6.i, !prof !75

do.body3.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/extent_cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #12, !srcloc !76
  unreachable

do.end6.i:                                        ; preds = %if.then19
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end6.i.__release_extent_node.exit_crit_edge

do.end6.i.__release_extent_node.exit_crit_edge:   ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__release_extent_node.exit

if.end.i.i.i:                                     ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.extent_node, ptr %prev_ex, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %__release_extent_node.exit

__release_extent_node.exit:                       ; preds = %if.end.i.i.i, %do.end6.i.__release_extent_node.exit_crit_edge
  %58 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.extent_node, ptr %prev_ex, i32 0, i32 2, i32 1
  %59 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %extent_lock.i) #12
  tail call fastcc void @__detach_extent_node(ptr noundef %sbi, ptr noundef %et, ptr noundef %prev_ex) #12
  br label %if.end24

if.end21:                                         ; preds = %__is_front_mergeable.exit.if.end21_crit_edge, %if.end9.i.i71.if.end21_crit_edge, %land.lhs.true4.i.i67.if.end21_crit_edge, %land.lhs.true.i.i61.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %tobool22.not = icmp eq ptr %en.0, null
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end21.if.end24_crit_edge

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end21.if.end24_crit_edge, %__release_extent_node.exit, %if.then9.if.end24_crit_edge
  %en.186 = phi ptr [ %en.0, %if.end21.if.end24_crit_edge ], [ %next_ex, %__release_extent_node.exit ], [ %next_ex, %if.then9.if.end24_crit_edge ]
  %len.i = getelementptr inbounds %struct.extent_node, ptr %en.186, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i, align 4
  %len1.i = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp.i = icmp ugt i32 %61, %63
  br i1 %cmp.i, label %if.then.i, label %if.end24.__try_update_largest_extent.exit_crit_edge

if.end24.__try_update_largest_extent.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %__try_update_largest_extent.exit

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %largest.i = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 3
  %ei.i = getelementptr inbounds %struct.extent_node, ptr %en.186, i32 0, i32 1
  %64 = call ptr @memcpy(ptr %largest.i, ptr %ei.i, i32 16)
  %largest_updated.i = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 7
  %65 = ptrtoint ptr %largest_updated.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %largest_updated.i, align 4
  br label %__try_update_largest_extent.exit

__try_update_largest_extent.exit:                 ; preds = %if.then.i, %if.end24.__try_update_largest_extent.exit_crit_edge
  %extent_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %extent_lock) #12
  %list = getelementptr inbounds %struct.extent_node, ptr %en.186, i32 0, i32 2
  %66 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %list, align 4
  %cmp.i78.not = icmp eq ptr %67, %list
  br i1 %cmp.i78.not, label %__try_update_largest_extent.exit.if.end29_crit_edge, label %if.then27

__try_update_largest_extent.exit.if.end29_crit_edge: ; preds = %__try_update_largest_extent.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then27:                                        ; preds = %__try_update_largest_extent.exit
  %extent_list = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 38
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i79, label %if.then27.__list_del_entry.exit.i_crit_edge

if.then27.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i79:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.extent_node, ptr %en.186, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i, align 4
  %70 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i79, %if.then27.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 38, i32 1
  %74 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i80 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %75, ptr noundef %extent_list) #12
  br i1 %call.i.i.i80, label %if.end.i.i.i81, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit

if.end.i.i.i81:                                   ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %list, ptr %prev.i2.i, align 4
  %77 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %extent_list, ptr %list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.extent_node, ptr %en.186, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %list, ptr %75, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i81, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %cached_en = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 2
  %80 = ptrtoint ptr %cached_en to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %en.186, ptr %cached_en, align 4
  br label %if.end29

if.end29:                                         ; preds = %list_move_tail.exit, %__try_update_largest_extent.exit.if.end29_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %extent_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end21.cleanup_crit_edge
  %retval.0 = phi ptr [ %en.186, %if.end29 ], [ null, %if.end21.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__insert_extent_tree(ptr noundef %sbi, ptr noundef %et, ptr nocapture noundef readonly %ei, ptr noundef writeonly %insert_p, ptr noundef %insert_parent, i1 noundef zeroext %leftmost) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %leftmost to i8
  %tobool.not = icmp eq ptr %insert_p, null
  %tobool1.not = icmp eq ptr %insert_parent, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.end, label %entry.do_insert_crit_edge

entry.do_insert_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_insert

if.end:                                           ; preds = %entry
  %root = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 1
  %0 = ptrtoint ptr %ei to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ei, align 4
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %tobool.not23.i = icmp eq ptr %3, null
  br i1 %tobool.not23.i, label %if.end.do_insert_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.do_insert_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_insert

while.body.i:                                     ; preds = %if.end12.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %leftmost.addr.0 = phi i8 [ %leftmost.addr.1, %if.end12.i.while.body.i_crit_edge ], [ 1, %if.end.while.body.i_crit_edge ]
  %4 = phi ptr [ %15, %if.end12.i.while.body.i_crit_edge ], [ %3, %if.end.while.body.i_crit_edge ]
  %p.024.i = phi ptr [ %p.1.i, %if.end12.i.while.body.i_crit_edge ], [ %root, %if.end.while.body.i_crit_edge ]
  %5 = getelementptr inbounds %struct.rb_entry, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %1)
  %cmp.i = icmp ugt i32 %7, %1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %p.024.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p.024.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %if.end12.i

if.else.i:                                        ; preds = %while.body.i
  %len.i = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %add.i = add i32 %11, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %1)
  %cmp3.not.i = icmp ugt i32 %add.i, %1
  br i1 %cmp3.not.i, label %do.body6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %p.024.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p.024.i, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 1
  br label %if.end12.i

do.body6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/extent_cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 102, 0\0A.popsection", ""() #12, !srcloc !65
  unreachable

if.end12.i:                                       ; preds = %if.then4.i, %if.then.i
  %leftmost.addr.1 = phi i8 [ %leftmost.addr.0, %if.then.i ], [ 0, %if.then4.i ]
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %14 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end12.i.do_insert_crit_edge, label %if.end12.i.while.body.i_crit_edge

if.end12.i.while.body.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end12.i.do_insert_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_insert

do_insert:                                        ; preds = %if.end12.i.do_insert_crit_edge, %if.end.do_insert_crit_edge, %entry.do_insert_crit_edge
  %leftmost.addr.3 = phi i8 [ %frombool, %entry.do_insert_crit_edge ], [ 1, %if.end.do_insert_crit_edge ], [ %leftmost.addr.1, %if.end12.i.do_insert_crit_edge ]
  %parent.1 = phi ptr [ %insert_parent, %entry.do_insert_crit_edge ], [ null, %if.end.do_insert_crit_edge ], [ %4, %if.end12.i.do_insert_crit_edge ]
  %p.0 = phi ptr [ %insert_p, %entry.do_insert_crit_edge ], [ %root, %if.end.do_insert_crit_edge ], [ %p.1.i, %if.end12.i.do_insert_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %leftmost.addr.3)
  %tobool2 = icmp ne i8 %leftmost.addr.3, 0
  %call3 = tail call fastcc ptr @__attach_extent_node(ptr noundef %sbi, ptr noundef %et, ptr noundef %ei, ptr noundef %parent.1, ptr noundef %p.0, i1 noundef zeroext %tobool2)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do_insert.cleanup_crit_edge, label %if.end6

do_insert.cleanup_crit_edge:                      ; preds = %do_insert
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do_insert
  %len.i24 = getelementptr inbounds %struct.extent_node, ptr %call3, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %len.i24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i24, align 4
  %len1.i = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i25 = icmp ugt i32 %17, %19
  br i1 %cmp.i25, label %if.then.i26, label %if.end6.__try_update_largest_extent.exit_crit_edge

if.end6.__try_update_largest_extent.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %__try_update_largest_extent.exit

if.then.i26:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %largest.i = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 3
  %ei.i = getelementptr inbounds %struct.extent_node, ptr %call3, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %largest.i, ptr %ei.i, i32 16)
  %largest_updated.i = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 7
  %21 = ptrtoint ptr %largest_updated.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %largest_updated.i, align 4
  br label %__try_update_largest_extent.exit

__try_update_largest_extent.exit:                 ; preds = %if.then.i26, %if.end6.__try_update_largest_extent.exit_crit_edge
  %extent_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %extent_lock) #12
  %list = getelementptr inbounds %struct.extent_node, ptr %call3, i32 0, i32 2
  %extent_list = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 38
  %prev.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 38, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %23, ptr noundef %extent_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %__try_update_largest_extent.exit.list_add_tail.exit_crit_edge

__try_update_largest_extent.exit.list_add_tail.exit_crit_edge: ; preds = %__try_update_largest_extent.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %__try_update_largest_extent.exit
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list, ptr %prev.i, align 4
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %extent_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.extent_node, ptr %call3, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %__try_update_largest_extent.exit.list_add_tail.exit_crit_edge
  %cached_en = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 2
  %28 = ptrtoint ptr %cached_en to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call3, ptr %cached_en, align 4
  tail call void @_raw_spin_unlock(ptr noundef %extent_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do_insert.cleanup_crit_edge
  ret ptr %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_shrink_extent_tree(ptr noundef %sbi, i32 noundef %nr_shrink) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73
  %0 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mount_opt, align 8
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %total_zombie_tree = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_zombie_tree, i32 noundef 4) #12
  %2 = ptrtoint ptr %total_zombie_tree to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %total_zombie_tree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.free_node_crit_edge, label %if.end3

if.end.free_node_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_node

if.end3:                                          ; preds = %if.end
  %extent_tree_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 37
  %call4 = tail call i32 @mutex_trylock(ptr noundef %extent_tree_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.out_crit_edge, label %if.end7

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end7:                                          ; preds = %if.end3
  %zombie_list = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 41
  %4 = ptrtoint ptr %zombie_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zombie_list, align 8
  %cmp.not163 = icmp eq ptr %5, %zombie_list
  br i1 %cmp.not163, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %extent_tree_root = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 36
  %total_ext_tree = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %if.end42.for.body_crit_edge, %for.body.lr.ph
  %.pn.in166 = phi ptr [ %5, %for.body.lr.ph ], [ %.pn170, %if.end42.for.body_crit_edge ]
  %node_cnt.0165 = phi i32 [ 0, %for.body.lr.ph ], [ %node_cnt.1, %if.end42.for.body_crit_edge ]
  %tree_cnt.0164 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end42.for.body_crit_edge ]
  %et.0168 = getelementptr i8, ptr %.pn.in166, i32 -32
  %6 = ptrtoint ptr %.pn.in166 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn170 = load ptr, ptr %.pn.in166, align 4
  %node_cnt15 = getelementptr i8, ptr %.pn.in166, i32 52
  %call.i.i140 = tail call zeroext i1 @__kasan_check_read(ptr noundef %node_cnt15, i32 noundef 4) #12
  %7 = ptrtoint ptr %node_cnt15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %node_cnt15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool17.not = icmp eq i32 %8, 0
  br i1 %tobool17.not, label %for.body.do.body_crit_edge, label %if.then18

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr i8, ptr %.pn.in166, i32 8
  tail call void @_raw_write_lock(ptr noundef %lock) #12
  %call19 = tail call fastcc i32 @__free_extent_tree(ptr noundef %sbi, ptr noundef %et.0168)
  %add = add i32 %call19, %node_cnt.0165
  tail call void @_raw_write_unlock(ptr noundef %lock) #12
  br label %do.body

do.body:                                          ; preds = %if.then18, %for.body.do.body_crit_edge
  %node_cnt.1 = phi i32 [ %add, %if.then18 ], [ %node_cnt.0165, %for.body.do.body_crit_edge ]
  %call.i.i141 = tail call zeroext i1 @__kasan_check_read(ptr noundef %node_cnt15, i32 noundef 4) #12
  %9 = ptrtoint ptr %node_cnt15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %node_cnt15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool24.not = icmp eq i32 %10, 0
  br i1 %tobool24.not, label %do.end35, label %do.body29, !prof !70

do.body29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/extent_cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 729, 0\0A.popsection", ""() #12, !srcloc !77
  unreachable

do.end35:                                         ; preds = %do.body
  %call.i.i144 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in166) #12
  br i1 %call.i.i144, label %if.end.i.i, label %do.end35.list_del_init.exit_crit_edge

do.end35.list_del_init.exit_crit_edge:            ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in166, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn.in166 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in166, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end35.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %.pn.in166 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %.pn.in166, ptr %.pn.in166, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in166, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %.pn.in166, ptr %prev.i3.i, align 4
  %19 = ptrtoint ptr %et.0168 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %et.0168, align 4
  %call37 = tail call ptr @radix_tree_delete(ptr noundef %extent_tree_root, i32 noundef %20) #12
  %21 = load ptr, ptr @extent_tree_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef %et.0168) #12
  %call.i.i142 = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_ext_tree, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %total_ext_tree, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_ext_tree, ptr %total_ext_tree, i32 1, ptr elementtype(i32) %total_ext_tree) #12, !srcloc !67
  %call.i.i143 = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_zombie_tree, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %total_zombie_tree, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_zombie_tree, ptr %total_zombie_tree, i32 1, ptr elementtype(i32) %total_zombie_tree) #12, !srcloc !67
  %inc = add i32 %tree_cnt.0164, 1
  %add39 = add i32 %node_cnt.1, %inc
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %nr_shrink)
  %cmp40.not = icmp ult i32 %add39, %nr_shrink
  br i1 %cmp40.not, label %if.end42, label %list_del_init.exit.unlock_out_crit_edge

list_del_init.exit.unlock_out_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out

if.end42:                                         ; preds = %list_del_init.exit
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 739, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  %cmp.not = icmp eq ptr %.pn170, %zombie_list
  br i1 %cmp.not, label %if.end42.for.end_crit_edge, label %if.end42.for.body_crit_edge

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end42.for.end_crit_edge, %if.end7.for.end_crit_edge
  %tree_cnt.0.lcssa = phi i32 [ 0, %if.end7.for.end_crit_edge ], [ %inc, %if.end42.for.end_crit_edge ]
  %node_cnt.0.lcssa = phi i32 [ 0, %if.end7.for.end_crit_edge ], [ %node_cnt.1, %if.end42.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %extent_tree_lock) #12
  br label %free_node

free_node:                                        ; preds = %for.end, %if.end.free_node_crit_edge
  %tree_cnt.1 = phi i32 [ %tree_cnt.0.lcssa, %for.end ], [ 0, %if.end.free_node_crit_edge ]
  %node_cnt.2 = phi i32 [ %node_cnt.0.lcssa, %for.end ], [ 0, %if.end.free_node_crit_edge ]
  %extent_tree_lock51 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 37
  %call52 = tail call i32 @mutex_trylock(ptr noundef %extent_tree_lock51) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %free_node.out_crit_edge, label %if.end55

free_node.out_crit_edge:                          ; preds = %free_node
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end55:                                         ; preds = %free_node
  %24 = add i32 %tree_cnt.1, %node_cnt.2
  %sub = sub i32 %nr_shrink, %24
  %extent_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %extent_lock) #12
  %extent_list = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp58172 = icmp sgt i32 %sub, 0
  br i1 %cmp58172, label %for.body59.lr.ph, label %if.end55.for.end83_crit_edge

if.end55.for.end83_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end83

for.body59.lr.ph:                                 ; preds = %if.end55
  %prev.i2.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 38, i32 1
  br label %for.body59

for.body59:                                       ; preds = %for.inc82.for.body59_crit_edge, %for.body59.lr.ph
  %node_cnt.3174 = phi i32 [ %node_cnt.2, %for.body59.lr.ph ], [ %node_cnt.4, %for.inc82.for.body59_crit_edge ]
  %remained.0173 = phi i32 [ %sub, %for.body59.lr.ph ], [ %dec, %for.inc82.for.body59_crit_edge ]
  %25 = ptrtoint ptr %extent_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %extent_list, align 4
  %cmp.i.not = icmp eq ptr %26, %extent_list
  br i1 %cmp.i.not, label %for.body59.for.end83_crit_edge, label %if.end63

for.body59.for.end83_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end83

if.end63:                                         ; preds = %for.body59
  %et69 = getelementptr i8, ptr %26, i32 8
  %27 = ptrtoint ptr %et69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %et69, align 4
  %lock70 = getelementptr inbounds %struct.extent_tree, ptr %28, i32 0, i32 5
  %call71 = tail call i32 @_raw_write_trylock(ptr noundef %lock70) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end63
  %call.i.i145 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #12
  br i1 %call.i.i145, label %if.end.i.i148, label %if.then73.__list_del_entry.exit.i_crit_edge

if.then73.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i148:                                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i146 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i146 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i146, align 4
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %26, align 4
  %prev1.i.i.i147 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i147 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i147, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i148, %if.then73.__list_del_entry.exit.i_crit_edge
  %35 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %26, ptr noundef %36, ptr noundef %extent_list) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc82_crit_edge

__list_del_entry.exit.i.for.inc82_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc82

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %26, ptr %prev.i2.i, align 4
  %38 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %extent_list, ptr %26, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %26, ptr %36, align 4
  br label %for.inc82

if.end76:                                         ; preds = %if.end63
  %add.ptr68 = getelementptr i8, ptr %26, i32 -28
  %call.i.i149 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #12
  br i1 %call.i.i149, label %if.end.i.i152, label %if.end76.list_del_init.exit155_crit_edge

if.end76.list_del_init.exit155_crit_edge:         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit155

if.end.i.i152:                                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i150 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i150 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i150, align 4
  %43 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %26, align 4
  %prev1.i.i.i151 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i151 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i151, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del_init.exit155

list_del_init.exit155:                            ; preds = %if.end.i.i152, %if.end76.list_del_init.exit155_crit_edge
  %47 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %26, ptr %26, align 4
  %prev.i3.i153 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i3.i153 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %26, ptr %prev.i3.i153, align 4
  tail call void @_raw_spin_unlock(ptr noundef %extent_lock) #12
  tail call fastcc void @__detach_extent_node(ptr noundef %sbi, ptr noundef %28, ptr noundef %add.ptr68)
  tail call void @_raw_write_unlock(ptr noundef %lock70) #12
  %inc80 = add i32 %node_cnt.3174, 1
  tail call void @_raw_spin_lock(ptr noundef %extent_lock) #12
  br label %for.inc82

for.inc82:                                        ; preds = %list_del_init.exit155, %if.end.i.i.i, %__list_del_entry.exit.i.for.inc82_crit_edge
  %node_cnt.4 = phi i32 [ %inc80, %list_del_init.exit155 ], [ %node_cnt.3174, %__list_del_entry.exit.i.for.inc82_crit_edge ], [ %node_cnt.3174, %if.end.i.i.i ]
  %dec = add nsw i32 %remained.0173, -1
  %cmp58 = icmp sgt i32 %remained.0173, 1
  br i1 %cmp58, label %for.inc82.for.body59_crit_edge, label %for.inc82.for.end83_crit_edge

for.inc82.for.end83_crit_edge:                    ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end83

for.inc82.for.body59_crit_edge:                   ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body59

for.end83:                                        ; preds = %for.inc82.for.end83_crit_edge, %for.body59.for.end83_crit_edge, %if.end55.for.end83_crit_edge
  %node_cnt.3.lcssa = phi i32 [ %node_cnt.2, %if.end55.for.end83_crit_edge ], [ %node_cnt.3174, %for.body59.for.end83_crit_edge ], [ %node_cnt.4, %for.inc82.for.end83_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %extent_lock) #12
  br label %unlock_out

unlock_out:                                       ; preds = %for.end83, %list_del_init.exit.unlock_out_crit_edge
  %tree_cnt.2 = phi i32 [ %tree_cnt.1, %for.end83 ], [ %inc, %list_del_init.exit.unlock_out_crit_edge ]
  %node_cnt.5 = phi i32 [ %node_cnt.3.lcssa, %for.end83 ], [ %node_cnt.1, %list_del_init.exit.unlock_out_crit_edge ]
  %extent_tree_lock85 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %extent_tree_lock85) #12
  br label %out

out:                                              ; preds = %unlock_out, %free_node.out_crit_edge, %if.end3.out_crit_edge
  %tree_cnt.3 = phi i32 [ %tree_cnt.2, %unlock_out ], [ %tree_cnt.1, %free_node.out_crit_edge ], [ 0, %if.end3.out_crit_edge ]
  %node_cnt.6 = phi i32 [ %node_cnt.5, %unlock_out ], [ %node_cnt.2, %free_node.out_crit_edge ], [ 0, %if.end3.out_crit_edge ]
  tail call fastcc void @trace_f2fs_shrink_extent_tree(ptr noundef %sbi, i32 noundef %node_cnt.6, i32 noundef %tree_cnt.3)
  %add86 = add i32 %node_cnt.6, %tree_cnt.3
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add86, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__free_extent_tree(ptr noundef %sbi, ptr noundef %et) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %node_cnt = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %node_cnt, i32 noundef 4) #12
  %0 = ptrtoint ptr %node_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %node_cnt, align 4
  %rb_leftmost = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_leftmost, align 4
  %tobool.not10 = icmp eq ptr %3, null
  br i1 %tobool.not10, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %extent_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 39
  br label %while.body

while.body:                                       ; preds = %__release_extent_node.exit.while.body_crit_edge, %while.body.lr.ph
  %node.011 = phi ptr [ %3, %while.body.lr.ph ], [ %call1, %__release_extent_node.exit.while.body_crit_edge ]
  %call1 = tail call ptr @rb_next(ptr noundef nonnull %node.011) #12
  tail call void @_raw_spin_lock(ptr noundef %extent_lock.i) #12
  %list.i = getelementptr inbounds %struct.extent_node, ptr %node.011, i32 0, i32 2
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %list.i
  br i1 %cmp.i.not.i, label %do.body3.i, label %do.end6.i, !prof !75

do.body3.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/extent_cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #12, !srcloc !76
  unreachable

do.end6.i:                                        ; preds = %while.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end6.i.__release_extent_node.exit_crit_edge

do.end6.i.__release_extent_node.exit_crit_edge:   ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__release_extent_node.exit

if.end.i.i.i:                                     ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.extent_node, ptr %node.011, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %__release_extent_node.exit

__release_extent_node.exit:                       ; preds = %if.end.i.i.i, %do.end6.i.__release_extent_node.exit_crit_edge
  %12 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.extent_node, ptr %node.011, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %extent_lock.i) #12
  tail call fastcc void @__detach_extent_node(ptr noundef %sbi, ptr noundef %et, ptr noundef nonnull %node.011) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %__release_extent_node.exit.while.end_crit_edge, label %__release_extent_node.exit.while.body_crit_edge

__release_extent_node.exit.while.body_crit_edge:  ; preds = %__release_extent_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

__release_extent_node.exit.while.end_crit_edge:   ; preds = %__release_extent_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %__release_extent_node.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %call.i.i9 = tail call zeroext i1 @__kasan_check_read(ptr noundef %node_cnt, i32 noundef 4) #12
  %14 = ptrtoint ptr %node_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %node_cnt, align 4
  %sub = sub i32 %1, %15
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__detach_extent_node(ptr noundef %sbi, ptr noundef %et, ptr noundef %en) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 1
  %rb_leftmost.i = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i = icmp eq ptr %1, %en
  br i1 %cmp.i, label %if.then.i, label %entry.rb_erase_cached.exit_crit_edge

entry.rb_erase_cached.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rb_erase_cached.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @rb_next(ptr noundef %en) #12
  %2 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit

rb_erase_cached.exit:                             ; preds = %if.then.i, %entry.rb_erase_cached.exit_crit_edge
  tail call void @rb_erase(ptr noundef %en, ptr noundef %root) #12
  %node_cnt = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %node_cnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %node_cnt, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %node_cnt, ptr %node_cnt, i32 1, ptr elementtype(i32) %node_cnt) #12, !srcloc !67
  %total_ext_node = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 43
  %call.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_ext_node, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %total_ext_node, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_ext_node, ptr %total_ext_node, i32 1, ptr elementtype(i32) %total_ext_node) #12, !srcloc !67
  %cached_en = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 2
  %5 = ptrtoint ptr %cached_en to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cached_en, align 4
  %cmp = icmp eq ptr %6, %en
  br i1 %cmp, label %if.then, label %rb_erase_cached.exit.if.end_crit_edge

rb_erase_cached.exit.if.end_crit_edge:            ; preds = %rb_erase_cached.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %rb_erase_cached.exit
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %cached_en to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %cached_en, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %rb_erase_cached.exit.if.end_crit_edge
  %8 = load ptr, ptr @extent_node_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %8, ptr noundef %en) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_shrink_extent_tree(ptr noundef %sbi, i32 noundef %node_cnt, i32 noundef %tree_cnt) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_shrink_extent_tree, i32 0, i32 1), ptr blockaddress(@trace_f2fs_shrink_extent_tree, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !69

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !78
  %call42 = tail call i32 @__traceiter_f2fs_shrink_extent_tree(ptr noundef null, ptr noundef %sbi, i32 noundef %node_cnt, i32 noundef %tree_cnt) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !79
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !70

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_shrink_extent_tree, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_shrink_extent_tree, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_shrink_extent_tree.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_f2fs_shrink_extent_tree.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1654, ptr noundef nonnull @.str.14) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_destroy_extent_node(ptr nocapture noundef readonly %inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %extent_tree = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 26
  %4 = ptrtoint ptr %extent_tree to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extent_tree, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %node_cnt2 = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %node_cnt2, i32 noundef 4) #12
  %6 = ptrtoint ptr %node_cnt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %node_cnt2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %lock) #12
  %call5 = tail call fastcc i32 @__free_extent_tree(ptr noundef %3, ptr noundef nonnull %5)
  tail call void @_raw_write_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_drop_extent_tree(ptr noundef %inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %extent_tree = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 26
  %4 = ptrtoint ptr %extent_tree to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extent_tree, align 8
  %mount_opt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73
  %6 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mount_opt.i, align 8
  %and.i = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool5.not.i = icmp sgt i32 %12, -1
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.if.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false3.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false3.i
  %raw_super.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %raw_super.i.i, align 8
  %feature.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %14, i32 0, i32 34
  %15 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %feature.i.i, align 1
  %17 = and i32 %16, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not.i = icmp eq i32 %17, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false3.i.if.end.i_crit_edge
  %s_list.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 119
  %18 = ptrtoint ptr %s_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %s_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %s_list.i
  br i1 %cmp.i.not.i, label %if.end.i.cleanup_crit_edge, label %f2fs_may_extent_tree.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

f2fs_may_extent_tree.exit:                        ; preds = %if.end.i
  %20 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %inode, align 8
  %22 = and i16 %21, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %22)
  %cmp.i = icmp eq i16 %22, -32768
  br i1 %cmp.i, label %if.end, label %f2fs_may_extent_tree.exit.cleanup_crit_edge

f2fs_may_extent_tree.exit.cleanup_crit_edge:      ; preds = %f2fs_may_extent_tree.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %f2fs_may_extent_tree.exit
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags.i.i) #12
  %lock = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %lock) #12
  %call3 = tail call fastcc i32 @__free_extent_tree(ptr noundef %3, ptr noundef %5)
  %len = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end11.critedge, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %len, align 4
  tail call void @_raw_write_unlock(ptr noundef %lock) #12
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #12
  br label %cleanup

if.end11.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_write_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11.critedge, %if.then4, %f2fs_may_extent_tree.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_mark_inode_dirty_sync(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_extent_tree(ptr noundef %inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %extent_tree = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 26
  %4 = ptrtoint ptr %extent_tree to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extent_tree, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #12
  br i1 %call3, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true4

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true4:                                   ; preds = %land.lhs.true
  %node_cnt5 = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %node_cnt5, i32 noundef 4) #12
  %9 = ptrtoint ptr %node_cnt5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %node_cnt5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %land.lhs.true4.if.end10_crit_edge, label %if.then8

land.lhs.true4.if.end10_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true4
  %extent_tree_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %extent_tree_lock, i32 noundef 0) #12
  %list = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 4
  %zombie_list = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 41
  %prev.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 41, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i53 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %12, ptr noundef %zombie_list) #12
  br i1 %call.i.i53, label %if.end.i.i, label %if.then8.list_add_tail.exit_crit_edge

if.then8.list_add_tail.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev.i, align 4
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %zombie_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then8.list_add_tail.exit_crit_edge
  %total_zombie_tree = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 42
  %call.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_zombie_tree, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %total_zombie_tree, i32 1, i32 3, i32 1) #12
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_zombie_tree, ptr %total_zombie_tree, i32 1, ptr elementtype(i32) %total_zombie_tree) #12, !srcloc !66
  tail call void @mutex_unlock(ptr noundef %extent_tree_lock) #12
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true4.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %18 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %22 = ptrtoint ptr %extent_tree to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %extent_tree, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end10.f2fs_destroy_extent_node.exit_crit_edge, label %lor.lhs.false.i

if.end10.f2fs_destroy_extent_node.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %f2fs_destroy_extent_node.exit

lor.lhs.false.i:                                  ; preds = %if.end10
  %node_cnt2.i = getelementptr inbounds %struct.extent_tree, ptr %23, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %node_cnt2.i, i32 noundef 4) #12
  %24 = ptrtoint ptr %node_cnt2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %node_cnt2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.not.i = icmp eq i32 %25, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.f2fs_destroy_extent_node.exit_crit_edge, label %if.end.i

lor.lhs.false.i.f2fs_destroy_extent_node.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %f2fs_destroy_extent_node.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i = getelementptr inbounds %struct.extent_tree, ptr %23, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %lock.i) #12
  %call5.i = tail call fastcc i32 @__free_extent_tree(ptr noundef %21, ptr noundef nonnull %23) #12
  tail call void @_raw_write_unlock(ptr noundef %lock.i) #12
  br label %f2fs_destroy_extent_node.exit

f2fs_destroy_extent_node.exit:                    ; preds = %if.end.i, %lor.lhs.false.i.f2fs_destroy_extent_node.exit_crit_edge, %if.end10.f2fs_destroy_extent_node.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ 0, %lor.lhs.false.i.f2fs_destroy_extent_node.exit_crit_edge ], [ 0, %if.end10.f2fs_destroy_extent_node.exit_crit_edge ]
  %extent_tree_lock12 = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %extent_tree_lock12, i32 noundef 0) #12
  %node_cnt13 = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 6
  %call.i.i51 = tail call zeroext i1 @__kasan_check_read(ptr noundef %node_cnt13, i32 noundef 4) #12
  %26 = ptrtoint ptr %node_cnt13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %node_cnt13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool15.not = icmp eq i32 %27, 0
  br i1 %tobool15.not, label %do.end25, label %do.body19, !prof !70

do.body19:                                        ; preds = %f2fs_destroy_extent_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/extent_cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 843, 0\0A.popsection", ""() #12, !srcloc !80
  unreachable

do.end25:                                         ; preds = %f2fs_destroy_extent_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  %extent_tree_root = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 36
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %28 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_ino, align 8
  %call26 = tail call ptr @radix_tree_delete(ptr noundef %extent_tree_root, i32 noundef %29) #12
  %30 = load ptr, ptr @extent_tree_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %30, ptr noundef nonnull %5) #12
  %total_ext_tree = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 40
  %call.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_ext_tree, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %total_ext_tree, i32 1, i32 3, i32 1) #12
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_ext_tree, ptr %total_ext_tree, i32 1, ptr elementtype(i32) %total_ext_tree) #12, !srcloc !67
  tail call void @mutex_unlock(ptr noundef %extent_tree_lock12) #12
  %32 = ptrtoint ptr %extent_tree to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %extent_tree, align 8
  tail call fastcc void @trace_f2fs_destroy_extent_tree(ptr noundef %inode, i32 noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %list_add_tail.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_destroy_extent_tree(ptr noundef %inode, i32 noundef %node_cnt) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_destroy_extent_tree, i32 0, i32 1), ptr blockaddress(@trace_f2fs_destroy_extent_tree, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !69

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !81
  %call42 = tail call i32 @__traceiter_f2fs_destroy_extent_tree(ptr noundef null, ptr noundef %inode, i32 noundef %node_cnt) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !82
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !70

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_destroy_extent_tree, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_destroy_extent_tree, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_destroy_extent_tree.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_f2fs_destroy_extent_tree.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1677, ptr noundef nonnull @.str.14) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_lookup_extent_cache(ptr noundef %inode, i32 noundef %pgofs, ptr noundef %ei) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %mount_opt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73
  %4 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mount_opt.i, align 8
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %lor.lhs.false.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false.i:                                  ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i.i, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not.i = icmp eq i32 %8, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool5.not.i = icmp sgt i32 %10, -1
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.if.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false3.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false3.i
  %raw_super.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %raw_super.i.i, align 8
  %feature.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %12, i32 0, i32 34
  %13 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %feature.i.i, align 1
  %15 = and i32 %14, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not.i = icmp eq i32 %15, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false3.i.if.end.i_crit_edge
  %s_list.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 119
  %16 = ptrtoint ptr %s_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %s_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %17, %s_list.i
  br i1 %cmp.i.not.i, label %if.end.i.return_crit_edge, label %f2fs_may_extent_tree.exit

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

f2fs_may_extent_tree.exit:                        ; preds = %if.end.i
  %18 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %inode, align 8
  %20 = and i16 %19, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %20)
  %cmp.i = icmp eq i16 %20, -32768
  br i1 %cmp.i, label %if.end, label %f2fs_may_extent_tree.exit.return_crit_edge

f2fs_may_extent_tree.exit.return_crit_edge:       ; preds = %f2fs_may_extent_tree.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %f2fs_may_extent_tree.exit
  %extent_tree.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 26
  %21 = ptrtoint ptr %extent_tree.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %extent_tree.i, align 8
  %tobool.not.i5 = icmp eq ptr %22, null
  br i1 %tobool.not.i5, label %do.body5.i, label %do.end10.i, !prof !75

do.body5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/extent_cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 418, 0\0A.popsection", ""() #12, !srcloc !83
  unreachable

do.end10.i:                                       ; preds = %if.end
  tail call fastcc void @trace_f2fs_lookup_extent_tree_start(ptr noundef %inode, i32 noundef %pgofs) #12
  %lock.i = getelementptr inbounds %struct.extent_tree, ptr %22, i32 0, i32 5
  tail call void @_raw_read_lock(ptr noundef %lock.i) #12
  %largest.i = getelementptr inbounds %struct.extent_tree, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %largest.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %largest.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %pgofs)
  %cmp.not.i = icmp ugt i32 %24, %pgofs
  br i1 %cmp.not.i, label %do.end10.i.if.end17.i_crit_edge, label %land.lhs.true.i6

do.end10.i.if.end17.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

land.lhs.true.i6:                                 ; preds = %do.end10.i
  %len.i = getelementptr inbounds %struct.extent_tree, ptr %22, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %add.i = add i32 %26, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %pgofs)
  %cmp14.i = icmp ugt i32 %add.i, %pgofs
  br i1 %cmp14.i, label %if.then15.i, label %land.lhs.true.i6.if.end17.i_crit_edge

land.lhs.true.i6.if.end17.i_crit_edge:            ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then15.i:                                      ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #14
  %27 = call ptr @memcpy(ptr %ei, ptr %largest.i, i32 16)
  %read_hit_largest.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 97
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_hit_largest.i, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %read_hit_largest.i) #12
  br label %f2fs_lookup_extent_tree.exit

if.end17.i:                                       ; preds = %land.lhs.true.i6.if.end17.i_crit_edge, %do.end10.i.if.end17.i_crit_edge
  %root.i = getelementptr inbounds %struct.extent_tree, ptr %22, i32 0, i32 1
  %cached_en.i = getelementptr inbounds %struct.extent_tree, ptr %22, i32 0, i32 2
  %28 = ptrtoint ptr %cached_en.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cached_en.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.end17.i.if.then.i.i_crit_edge, label %if.then.i.i.i

if.end17.i.if.then.i.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i.i.i:                                    ; preds = %if.end17.i
  %30 = getelementptr inbounds %struct.rb_entry, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %pgofs)
  %cmp.not.i.i.i = icmp ugt i32 %32, %pgofs
  br i1 %cmp.not.i.i.i, label %if.then.i.i.i.if.then.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.if.then.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i
  %len.i.i.i = getelementptr inbounds %struct.anon, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i.i, align 4
  %add.i.i.i = add i32 %34, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %pgofs)
  %cmp3.i.i.i = icmp ugt i32 %add.i.i.i, %pgofs
  br i1 %cmp3.i.i.i, label %land.lhs.true.i.i.i.if.then24.i_crit_edge, label %land.lhs.true.i.i.i.if.then.i.i_crit_edge

land.lhs.true.i.i.i.if.then.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

land.lhs.true.i.i.i.if.then24.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i.i.if.then.i.i_crit_edge, %if.then.i.i.i.if.then.i.i_crit_edge, %if.end17.i.if.then.i.i_crit_edge
  %35 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %node.015.i.i.i = load ptr, ptr %root.i, align 4
  %tobool.not16.i.i.i = icmp eq ptr %node.015.i.i.i, null
  br i1 %tobool.not16.i.i.i, label %if.then.i.i.f2fs_lookup_extent_tree.exit_crit_edge, label %if.then.i.i.while.body.i.i.i_crit_edge

if.then.i.i.while.body.i.i.i_crit_edge:           ; preds = %if.then.i.i
  br label %while.body.i.i.i

if.then.i.i.f2fs_lookup_extent_tree.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %f2fs_lookup_extent_tree.exit

while.body.i.i.i:                                 ; preds = %if.end6.i.i.i.while.body.i.i.i_crit_edge, %if.then.i.i.while.body.i.i.i_crit_edge
  %node.017.i.i.i = phi ptr [ %node.0.i.i.i, %if.end6.i.i.i.while.body.i.i.i_crit_edge ], [ %node.015.i.i.i, %if.then.i.i.while.body.i.i.i_crit_edge ]
  %36 = getelementptr inbounds %struct.rb_entry, ptr %node.017.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %pgofs)
  %cmp.i.i.i = icmp ugt i32 %38, %pgofs
  br i1 %cmp.i.i.i, label %if.then.i4.i.i, label %if.else.i.i.i

if.then.i4.i.i:                                   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.017.i.i.i, i32 0, i32 2
  br label %if.end6.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  %len.i5.i.i = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %len.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i5.i.i, align 4
  %add.i6.i.i = add i32 %40, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i6.i.i, i32 %pgofs)
  %cmp3.not.i.i.i = icmp ugt i32 %add.i6.i.i, %pgofs
  br i1 %cmp3.not.i.i.i, label %if.end21.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.017.i.i.i, i32 0, i32 1
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %if.then4.i.i.i, %if.then.i4.i.i
  %node.1.in.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i4.i.i ], [ %rb_right.i.i.i, %if.then4.i.i.i ]
  %41 = ptrtoint ptr %node.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %node.0.i.i.i = load ptr, ptr %node.1.in.i.i.i, align 4
  %tobool.not.i7.i.i = icmp eq ptr %node.0.i.i.i, null
  br i1 %tobool.not.i7.i.i, label %if.end6.i.i.i.f2fs_lookup_extent_tree.exit_crit_edge, label %if.end6.i.i.i.while.body.i.i.i_crit_edge

if.end6.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

if.end6.i.i.i.f2fs_lookup_extent_tree.exit_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %f2fs_lookup_extent_tree.exit

if.end21.i:                                       ; preds = %if.else.i.i.i
  %cmp23.i = icmp eq ptr %node.017.i.i.i, %29
  br i1 %cmp23.i, label %if.end21.i.if.then24.i_crit_edge, label %if.else.i

if.end21.i.if.then24.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

if.then24.i:                                      ; preds = %if.end21.i.if.then24.i_crit_edge, %land.lhs.true.i.i.i.if.then24.i_crit_edge
  %read_hit_cached.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 98
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  %read_hit_rbtree.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 96
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i, %if.then24.i
  %read_hit_rbtree.sink79.i = phi ptr [ %read_hit_rbtree.i, %if.else.i ], [ %read_hit_cached.i, %if.then24.i ]
  %retval.0.i74.i = phi ptr [ %node.017.i.i.i, %if.else.i ], [ %29, %if.then24.i ]
  %call.i.i67.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_hit_rbtree.sink79.i, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %read_hit_rbtree.sink79.i) #12
  %ei26.i = getelementptr inbounds %struct.extent_node, ptr %retval.0.i74.i, i32 0, i32 1
  %42 = call ptr @memcpy(ptr %ei, ptr %ei26.i, i32 16)
  %extent_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %extent_lock.i) #12
  %list.i = getelementptr inbounds %struct.extent_node, ptr %retval.0.i74.i, i32 0, i32 2
  %43 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i7 = icmp eq ptr %44, %list.i
  br i1 %cmp.i.not.i7, label %if.end25.i.if.end32.i_crit_edge, label %if.then29.i

if.end25.i.if.end32.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.end25.i
  %extent_list.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 38
  %call.i.i69.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i69.i, label %if.end.i.i.i, label %if.then29.i.__list_del_entry.exit.i.i_crit_edge

if.then29.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.extent_node, ptr %retval.0.i74.i, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i.i, align 4
  %47 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then29.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 38, i32 1
  %51 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %52, ptr noundef %extent_list.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %list.i, ptr %prev.i2.i.i, align 4
  %54 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %extent_list.i, ptr %list.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.extent_node, ptr %retval.0.i74.i, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %list.i, ptr %52, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %57 = ptrtoint ptr %cached_en.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %retval.0.i74.i, ptr %cached_en.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %list_move_tail.exit.i, %if.end25.i.if.end32.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %extent_lock.i) #12
  br label %f2fs_lookup_extent_tree.exit

f2fs_lookup_extent_tree.exit:                     ; preds = %if.end32.i, %if.end6.i.i.i.f2fs_lookup_extent_tree.exit_crit_edge, %if.then.i.i.f2fs_lookup_extent_tree.exit_crit_edge, %if.then15.i
  %ret.0.off0.i = phi i1 [ true, %if.then15.i ], [ true, %if.end32.i ], [ false, %if.then.i.i.f2fs_lookup_extent_tree.exit_crit_edge ], [ false, %if.end6.i.i.i.f2fs_lookup_extent_tree.exit_crit_edge ]
  %total_hit_ext.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 95
  %call.i.i68.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_hit_ext.i, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %total_hit_ext.i) #12
  tail call void @_raw_read_unlock(ptr noundef %lock.i) #12
  tail call fastcc void @trace_f2fs_lookup_extent_tree_end(ptr noundef %inode, i32 noundef %pgofs, ptr noundef %ei) #12
  br label %return

return:                                           ; preds = %f2fs_lookup_extent_tree.exit, %f2fs_may_extent_tree.exit.return_crit_edge, %if.end.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %ret.0.off0.i, %f2fs_lookup_extent_tree.exit ], [ false, %f2fs_may_extent_tree.exit.return_crit_edge ], [ false, %land.lhs.true.i.return_crit_edge ], [ false, %lor.lhs.false.i.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %if.end.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_update_extent_cache(ptr nocapture noundef readonly %dn) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %mount_opt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73
  %6 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mount_opt.i, align 8
  %and.i = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool5.not.i = icmp sgt i32 %12, -1
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.if.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false3.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false3.i
  %raw_super.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %raw_super.i.i, align 8
  %feature.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %14, i32 0, i32 34
  %15 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %feature.i.i, align 1
  %17 = and i32 %16, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not.i = icmp eq i32 %17, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false3.i.if.end.i_crit_edge
  %s_list.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 119
  %18 = ptrtoint ptr %s_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %s_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %s_list.i
  br i1 %cmp.i.not.i, label %if.end.i.cleanup_crit_edge, label %f2fs_may_extent_tree.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

f2fs_may_extent_tree.exit:                        ; preds = %if.end.i
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 8
  %22 = and i16 %21, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %22)
  %cmp.i = icmp eq i16 %22, -32768
  br i1 %cmp.i, label %if.end, label %f2fs_may_extent_tree.exit.cleanup_crit_edge

f2fs_may_extent_tree.exit.cleanup_crit_edge:      ; preds = %f2fs_may_extent_tree.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %f2fs_may_extent_tree.exit
  call void @__sanitizer_cov_trace_pc() #14
  %data_blkaddr = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 9
  %23 = ptrtoint ptr %data_blkaddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_blkaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp = icmp eq i32 %24, -1
  %. = select i1 %cmp, i32 0, i32 %24
  %node_page = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 2
  %25 = ptrtoint ptr %node_page to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %node_page, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %26) #12
  %flag1.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %flag1.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %flag1.i, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #12
  %shr.i = lshr i32 %29, 3
  %30 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dn, align 4
  %call6 = tail call i32 @f2fs_start_bidx_of_node(i32 noundef %shr.i, ptr noundef %31) #12
  %ofs_in_node = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 4
  %32 = ptrtoint ptr %ofs_in_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ofs_in_node, align 4
  %add = add i32 %33, %call6
  %34 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dn, align 4
  tail call fastcc void @f2fs_update_extent_tree_range(ptr noundef %35, i32 noundef %add, i32 noundef %., i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %f2fs_may_extent_tree.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_start_bidx_of_node(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_update_extent_tree_range(ptr noundef %inode, i32 noundef %fofs, i32 noundef %blkaddr, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  %prev_en = alloca ptr, align 4
  %next_en = alloca ptr, align 4
  %ei = alloca %struct.extent_info, align 4
  %insert_p = alloca ptr, align 4
  %insert_parent = alloca ptr, align 4
  %leftmost = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %extent_tree = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 26
  %4 = ptrtoint ptr %extent_tree to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extent_tree, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_en) #12
  %6 = ptrtoint ptr %prev_en to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %prev_en, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_en) #12
  %7 = ptrtoint ptr %next_en to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %next_en, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ei) #12
  %8 = getelementptr inbounds %struct.extent_info, ptr %ei, i32 0, i32 1
  %9 = getelementptr inbounds %struct.extent_info, ptr %ei, i32 0, i32 2
  %10 = getelementptr inbounds %struct.extent_info, ptr %ei, i32 0, i32 3
  %11 = call ptr @memset(ptr %ei, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %insert_p) #12
  %12 = ptrtoint ptr %insert_p to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %insert_p, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %insert_parent) #12
  %13 = ptrtoint ptr %insert_parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %insert_parent, align 4
  %add = add i32 %len, %fofs
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %leftmost) #12
  %14 = ptrtoint ptr %leftmost to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %leftmost, align 1
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @trace_f2fs_update_extent_tree_range(ptr noundef %inode, i32 noundef %fofs, i32 noundef %blkaddr, i32 noundef %len)
  %lock = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %lock) #12
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not = icmp eq i32 %17, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_write_unlock(ptr noundef %lock) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %prev.sroa.4.0.largest.sroa_idx = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev.sroa.4.0.largest.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %prev.sroa.4.0.copyload = load i32, ptr %prev.sroa.4.0.largest.sroa_idx, align 4
  %largest.i = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %largest.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %largest.i, align 4
  %add.i = add i32 %20, %prev.sroa.4.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %fofs)
  %cmp.i = icmp ugt i32 %add.i, %fofs
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %20)
  %cmp7.i = icmp ugt i32 %add, %20
  %or.cond.i = and i1 %cmp7.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.end6.__drop_largest_extent.exit_crit_edge

if.end6.__drop_largest_extent.exit_crit_edge:     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %__drop_largest_extent.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %prev.sroa.4.0.largest.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %prev.sroa.4.0.largest.sroa_idx, align 4
  %largest_updated.i = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 7
  %22 = ptrtoint ptr %largest_updated.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %largest_updated.i, align 4
  br label %__drop_largest_extent.exit

__drop_largest_extent.exit:                       ; preds = %if.then.i, %if.end6.__drop_largest_extent.exit_crit_edge
  %root = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 1
  %cached_en = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %cached_en to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cached_en, align 4
  %call8 = call ptr @f2fs_lookup_rb_tree_ret(ptr noundef %root, ptr noundef %24, i32 noundef %fofs, ptr noundef nonnull %prev_en, ptr noundef nonnull %next_en, ptr noundef nonnull %insert_p, ptr noundef nonnull %insert_parent, i1 noundef zeroext false, ptr noundef nonnull %leftmost)
  %tobool9.not = icmp eq ptr %call8, null
  %25 = ptrtoint ptr %next_en to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %next_en, align 4
  br i1 %tobool9.not, label %if.end11, label %if.end11.thread

if.end11.thread:                                  ; preds = %__drop_largest_extent.exit
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %prev_en to i32
  call void @__asan_load4_noabort(i32 %27)
  %prev_en.promoted256 = load ptr, ptr %prev_en, align 4
  %28 = ptrtoint ptr %insert_p to i32
  call void @__asan_load4_noabort(i32 %28)
  %insert_p.promoted257 = load ptr, ptr %insert_p, align 4
  %29 = ptrtoint ptr %insert_parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %insert_parent.promoted258 = load ptr, ptr %insert_parent, align 4
  br label %land.rhs.lr.ph

if.end11:                                         ; preds = %__drop_largest_extent.exit
  %30 = ptrtoint ptr %next_en to i32
  call void @__asan_load4_noabort(i32 %30)
  %next_en.promoted = load ptr, ptr %next_en, align 4
  %31 = ptrtoint ptr %prev_en to i32
  call void @__asan_load4_noabort(i32 %31)
  %prev_en.promoted = load ptr, ptr %prev_en, align 4
  %32 = ptrtoint ptr %insert_p to i32
  call void @__asan_load4_noabort(i32 %32)
  %insert_p.promoted = load ptr, ptr %insert_p, align 4
  %33 = ptrtoint ptr %insert_parent to i32
  call void @__asan_load4_noabort(i32 %33)
  %insert_parent.promoted = load ptr, ptr %insert_parent, align 4
  %tobool12.not230 = icmp eq ptr %26, null
  br i1 %tobool12.not230, label %if.end11.while.end_crit_edge, label %if.end11.land.rhs.lr.ph_crit_edge

if.end11.land.rhs.lr.ph_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.lr.ph

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end11.land.rhs.lr.ph_crit_edge, %if.end11.thread
  %insert_parent.promoted264 = phi ptr [ %insert_parent.promoted258, %if.end11.thread ], [ %insert_parent.promoted, %if.end11.land.rhs.lr.ph_crit_edge ]
  %insert_p.promoted263 = phi ptr [ %insert_p.promoted257, %if.end11.thread ], [ %insert_p.promoted, %if.end11.land.rhs.lr.ph_crit_edge ]
  %prev_en.promoted262 = phi ptr [ %prev_en.promoted256, %if.end11.thread ], [ %prev_en.promoted, %if.end11.land.rhs.lr.ph_crit_edge ]
  %next_en.promoted261 = phi ptr [ %26, %if.end11.thread ], [ %next_en.promoted, %if.end11.land.rhs.lr.ph_crit_edge ]
  %en.0260 = phi ptr [ %call8, %if.end11.thread ], [ %26, %if.end11.land.rhs.lr.ph_crit_edge ]
  %largest_updated.i208 = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 7
  %extent_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 39
  %ei13284 = getelementptr inbounds %struct.extent_node, ptr %en.0260, i32 0, i32 1
  %34 = ptrtoint ptr %ei13284 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ei13284, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %35)
  %cmp285 = icmp ugt i32 %add, %35
  br i1 %cmp285, label %land.rhs.lr.ph.while.body_crit_edge, label %land.rhs.lr.ph.while.end_crit_edge

land.rhs.lr.ph.while.end_crit_edge:               ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.lr.ph.while.body_crit_edge:              ; preds = %land.rhs.lr.ph
  br label %while.body

land.rhs:                                         ; preds = %if.end79
  %ei13 = getelementptr inbounds %struct.extent_node, ptr %.pr220278, i32 0, i32 1
  %36 = ptrtoint ptr %ei13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ei13, align 4
  %cmp = icmp ugt i32 %add, %37
  br i1 %cmp, label %land.rhs.while.body_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.lr.ph.while.body_crit_edge
  %38 = phi i32 [ %37, %land.rhs.while.body_crit_edge ], [ %35, %land.rhs.lr.ph.while.body_crit_edge ]
  %ei13290 = phi ptr [ %ei13, %land.rhs.while.body_crit_edge ], [ %ei13284, %land.rhs.lr.ph.while.body_crit_edge ]
  %39 = phi ptr [ %69, %land.rhs.while.body_crit_edge ], [ %insert_parent.promoted264, %land.rhs.lr.ph.while.body_crit_edge ]
  %40 = phi ptr [ %70, %land.rhs.while.body_crit_edge ], [ %insert_p.promoted263, %land.rhs.lr.ph.while.body_crit_edge ]
  %en.1223231289 = phi ptr [ %en.1222, %land.rhs.while.body_crit_edge ], [ %prev_en.promoted262, %land.rhs.lr.ph.while.body_crit_edge ]
  %en.1234286 = phi ptr [ %.pr220278, %land.rhs.while.body_crit_edge ], [ %en.0260, %land.rhs.lr.ph.while.body_crit_edge ]
  %dei.sroa.10.0.ei15.sroa_idx = getelementptr inbounds %struct.extent_node, ptr %en.1234286, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %dei.sroa.10.0.ei15.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %dei.sroa.10.0.copyload = load i32, ptr %dei.sroa.10.0.ei15.sroa_idx, align 4
  %dei.sroa.14.0.ei15.sroa_idx = getelementptr inbounds %struct.extent_node, ptr %en.1234286, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %dei.sroa.14.0.ei15.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %dei.sroa.14.0.copyload = load i32, ptr %dei.sroa.14.0.ei15.sroa_idx, align 4
  %add18 = add i32 %dei.sroa.10.0.copyload, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %fofs)
  %cmp19.not = icmp ugt i32 %add18, %fofs
  br i1 %cmp19.not, label %do.end29, label %do.body23, !prof !70

do.body23:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/extent_cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 584, 0\0A.popsection", ""() #12, !srcloc !84
  unreachable

do.end29:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %fofs)
  %cmp31 = icmp ult i32 %38, %fofs
  br i1 %cmp31, label %land.lhs.true, label %do.end29.if.end40_crit_edge

do.end29.if.end40_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true:                                    ; preds = %do.end29
  %sub = sub i32 %fofs, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub)
  %cmp33 = icmp ugt i32 %sub, 63
  br i1 %cmp33, label %if.then34, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %dei.sroa.10.0.ei15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub, ptr %dei.sroa.10.0.ei15.sroa_idx, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %land.lhs.true.if.end40_crit_edge, %do.end29.if.end40_crit_edge
  %en.1222 = phi ptr [ %en.1234286, %if.then34 ], [ %en.1223231289, %land.lhs.true.if.end40_crit_edge ], [ %en.1223231289, %do.end29.if.end40_crit_edge ]
  %tobool46.not = phi i1 [ false, %if.then34 ], [ true, %land.lhs.true.if.end40_crit_edge ], [ true, %do.end29.if.end40_crit_edge ]
  %parts.0 = phi i32 [ 2, %if.then34 ], [ 1, %land.lhs.true.if.end40_crit_edge ], [ 1, %do.end29.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %add)
  %cmp41 = icmp ugt i32 %add18, %add
  br i1 %cmp41, label %land.lhs.true42, label %if.end40.if.end72_crit_edge

if.end40.if.end72_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

land.lhs.true42:                                  ; preds = %if.end40
  %sub43 = sub i32 %add18, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub43)
  %cmp44 = icmp ugt i32 %sub43, 63
  br i1 %cmp44, label %if.then45, label %land.lhs.true42.if.end72_crit_edge

land.lhs.true42.if.end72_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then45:                                        ; preds = %land.lhs.true42
  br i1 %tobool46.not, label %if.end66.thread269, label %if.end66

if.end66.thread269:                               ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %ei13290 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add, ptr %ei13290, align 4
  %sub56 = sub i32 %add, %38
  %45 = ptrtoint ptr %dei.sroa.14.0.ei15.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dei.sroa.14.0.ei15.sroa_idx, align 4
  %add59 = add i32 %46, %sub56
  store i32 %add59, ptr %dei.sroa.14.0.ei15.sroa_idx, align 4
  %47 = ptrtoint ptr %dei.sroa.10.0.ei15.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dei.sroa.10.0.ei15.sroa_idx, align 4
  %sub64 = sub i32 %48, %sub56
  store i32 %sub64, ptr %dei.sroa.10.0.ei15.sroa_idx, align 4
  br label %if.then74

if.end66:                                         ; preds = %if.then45
  %sub49 = sub i32 %add, %38
  %add50 = add i32 %sub49, %dei.sroa.14.0.copyload
  %49 = ptrtoint ptr %ei to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add, ptr %ei, align 4
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add50, ptr %9, align 4
  %51 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub43, ptr %8, align 4
  %52 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %10, align 4
  %call52 = call fastcc ptr @__insert_extent_tree(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %ei, ptr noundef null, ptr noundef null, i1 noundef zeroext true)
  %tobool67.not = icmp eq ptr %call52, null
  br i1 %tobool67.not, label %if.end72.thread280, label %if.end66.if.then74_crit_edge

if.end66.if.then74_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then74

if.end72.thread280:                               ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %call69282 = call ptr @rb_next(ptr noundef nonnull %en.1234286) #12
  br label %if.then74

if.end72:                                         ; preds = %land.lhs.true42.if.end72_crit_edge, %if.end40.if.end72_crit_edge
  %call69 = call ptr @rb_next(ptr noundef nonnull %en.1234286) #12
  br i1 %tobool46.not, label %if.else75, label %if.end72.if.then74_crit_edge

if.end72.if.then74_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then74

if.then74:                                        ; preds = %if.end72.if.then74_crit_edge, %if.end72.thread280, %if.end66.if.then74_crit_edge, %if.end66.thread269
  %.pr220279 = phi ptr [ %call69, %if.end72.if.then74_crit_edge ], [ %call69282, %if.end72.thread280 ], [ %en.1234286, %if.end66.thread269 ], [ %call52, %if.end66.if.then74_crit_edge ]
  %parts.1267276 = phi i32 [ 1, %if.end72.if.then74_crit_edge ], [ %parts.0, %if.end72.thread280 ], [ %parts.0, %if.end66.thread269 ], [ %parts.0, %if.end66.if.then74_crit_edge ]
  %53 = ptrtoint ptr %dei.sroa.10.0.ei15.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dei.sroa.10.0.ei15.sroa_idx, align 4
  %55 = ptrtoint ptr %prev.sroa.4.0.largest.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %prev.sroa.4.0.largest.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp.i206 = icmp ugt i32 %54, %56
  br i1 %cmp.i206, label %if.then.i209, label %if.then74.if.end76_crit_edge

if.then74.if.end76_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then.i209:                                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  %57 = call ptr @memcpy(ptr %largest.i, ptr %ei13290, i32 16)
  %58 = ptrtoint ptr %largest_updated.i208 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %largest_updated.i208, align 4
  br label %if.end76

if.else75:                                        ; preds = %if.end72
  call void @_raw_spin_lock(ptr noundef %extent_lock.i) #12
  %list.i = getelementptr inbounds %struct.extent_node, ptr %en.1234286, i32 0, i32 2
  %59 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %60, %list.i
  br i1 %cmp.i.not.i, label %do.body3.i, label %do.end6.i, !prof !75

do.body3.i:                                       ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/extent_cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #12, !srcloc !76
  unreachable

do.end6.i:                                        ; preds = %if.else75
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end6.i.if.end76.thread_crit_edge

do.end6.i.if.end76.thread_crit_edge:              ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.thread

if.end.i.i.i:                                     ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.extent_node, ptr %en.1234286, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i.i, align 4
  %63 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %if.end76.thread

if.end76.thread:                                  ; preds = %if.end.i.i.i, %do.end6.i.if.end76.thread_crit_edge
  %67 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.extent_node, ptr %en.1234286, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %extent_lock.i) #12
  call fastcc void @__detach_extent_node(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %en.1234286) #12
  br label %if.then78

if.end76:                                         ; preds = %if.then.i209, %if.then74.if.end76_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %parts.1267276)
  %cmp77.not = icmp eq i32 %parts.1267276, 1
  br i1 %cmp77.not, label %if.end76.if.end79_crit_edge, label %if.end76.if.then78_crit_edge

if.end76.if.then78_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.end76.if.end79_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then78:                                        ; preds = %if.end76.if.then78_crit_edge, %if.end76.thread
  %.pr220277 = phi ptr [ %call69, %if.end76.thread ], [ %.pr220279, %if.end76.if.then78_crit_edge ]
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end76.if.end79_crit_edge
  %.pr220278 = phi ptr [ %.pr220277, %if.then78 ], [ %.pr220279, %if.end76.if.end79_crit_edge ]
  %69 = phi ptr [ null, %if.then78 ], [ %39, %if.end76.if.end79_crit_edge ]
  %70 = phi ptr [ null, %if.then78 ], [ %40, %if.end76.if.end79_crit_edge ]
  %tobool12.not = icmp eq ptr %.pr220278, null
  br i1 %tobool12.not, label %if.end79.while.end_crit_edge, label %land.rhs

if.end79.while.end_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end79.while.end_crit_edge, %land.rhs.while.end_crit_edge, %land.rhs.lr.ph.while.end_crit_edge, %if.end11.while.end_crit_edge
  %.lcssa227 = phi ptr [ %insert_parent.promoted, %if.end11.while.end_crit_edge ], [ %insert_parent.promoted264, %land.rhs.lr.ph.while.end_crit_edge ], [ %69, %land.rhs.while.end_crit_edge ], [ %69, %if.end79.while.end_crit_edge ]
  %.lcssa = phi ptr [ %insert_p.promoted, %if.end11.while.end_crit_edge ], [ %insert_p.promoted263, %land.rhs.lr.ph.while.end_crit_edge ], [ %70, %land.rhs.while.end_crit_edge ], [ %70, %if.end79.while.end_crit_edge ]
  %en.1223.lcssa = phi ptr [ %prev_en.promoted, %if.end11.while.end_crit_edge ], [ %prev_en.promoted262, %land.rhs.lr.ph.while.end_crit_edge ], [ %en.1222, %land.rhs.while.end_crit_edge ], [ %en.1222, %if.end79.while.end_crit_edge ]
  %.pr221.lcssa = phi ptr [ %next_en.promoted, %if.end11.while.end_crit_edge ], [ %next_en.promoted261, %land.rhs.lr.ph.while.end_crit_edge ], [ %.pr220278, %land.rhs.while.end_crit_edge ], [ null, %if.end79.while.end_crit_edge ]
  %dei.sroa.10.0.lcssa = phi i32 [ 0, %if.end11.while.end_crit_edge ], [ 0, %land.rhs.lr.ph.while.end_crit_edge ], [ %dei.sroa.10.0.copyload, %land.rhs.while.end_crit_edge ], [ %dei.sroa.10.0.copyload, %if.end79.while.end_crit_edge ]
  %71 = ptrtoint ptr %next_en to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %.pr221.lcssa, ptr %next_en, align 4
  %72 = ptrtoint ptr %prev_en to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %en.1223.lcssa, ptr %prev_en, align 4
  %73 = ptrtoint ptr %insert_p to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %.lcssa, ptr %insert_p, align 4
  %74 = ptrtoint ptr %insert_parent to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %.lcssa227, ptr %insert_parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blkaddr)
  %tobool80.not = icmp eq i32 %blkaddr, 0
  br i1 %tobool80.not, label %while.end.if.end101_crit_edge, label %if.then81

while.end.if.end101_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then81:                                        ; preds = %while.end
  %75 = ptrtoint ptr %ei to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %fofs, ptr %ei, align 4
  %76 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %blkaddr, ptr %9, align 4
  %77 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %len, ptr %8, align 4
  %78 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %10, align 4
  %79 = ptrtoint ptr %prev_en to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev_en, align 4
  %81 = ptrtoint ptr %next_en to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %next_en, align 4
  %call82 = call fastcc ptr @__try_merge_extent_node(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %ei, ptr noundef %80, ptr noundef %82)
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %if.then84, label %if.then81.if.end87_crit_edge

if.then81.if.end87_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then84:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %insert_p to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %insert_p, align 4
  %85 = ptrtoint ptr %insert_parent to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %insert_parent, align 4
  %87 = ptrtoint ptr %leftmost to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %leftmost, align 1, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool85 = icmp ne i8 %88, 0
  %call86 = call fastcc ptr @__insert_extent_tree(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %ei, ptr noundef %84, ptr noundef %86, i1 noundef zeroext %tobool85)
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.then81.if.end87_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dei.sroa.10.0.lcssa)
  %cmp89.not = icmp ne i32 %dei.sroa.10.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %prev.sroa.4.0.copyload)
  %cmp92 = icmp ult i32 %prev.sroa.4.0.copyload, 64
  %or.cond = select i1 %cmp89.not, i1 %cmp92, i1 false
  br i1 %or.cond, label %land.lhs.true93, label %if.end87.if.end101_crit_edge

if.end87.if.end101_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

land.lhs.true93:                                  ; preds = %if.end87
  %89 = ptrtoint ptr %prev.sroa.4.0.largest.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %prev.sroa.4.0.largest.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %90)
  %cmp96 = icmp ult i32 %90, 64
  br i1 %cmp96, label %if.then97, label %land.lhs.true93.if.end101_crit_edge

land.lhs.true93.if.end101_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then97:                                        ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %prev.sroa.4.0.largest.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %prev.sroa.4.0.largest.sroa_idx, align 4
  %largest_updated = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 7
  %92 = ptrtoint ptr %largest_updated to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %largest_updated, align 4
  call void @_set_bit(i32 noundef 8, ptr noundef %flags.i) #12
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %land.lhs.true93.if.end101_crit_edge, %if.end87.if.end101_crit_edge, %while.end.if.end101_crit_edge
  %93 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %flags.i, align 4
  %95 = and i32 %94, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool103.not = icmp eq i32 %95, 0
  br i1 %tobool103.not, label %if.end101.if.end106_crit_edge, label %if.then104

if.end101.if.end106_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  %call105 = call fastcc i32 @__free_extent_tree(ptr noundef %3, ptr noundef nonnull %5)
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end101.if.end106_crit_edge
  %largest_updated107 = getelementptr inbounds %struct.extent_tree, ptr %5, i32 0, i32 7
  %96 = ptrtoint ptr %largest_updated107 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %largest_updated107, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool108.not = icmp eq i8 %97, 0
  br i1 %tobool108.not, label %if.end115.critedge, label %if.then109

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %largest_updated107 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %largest_updated107, align 4
  call void @_raw_write_unlock(ptr noundef %lock) #12
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #12
  br label %cleanup

if.end115.critedge:                               ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_write_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end115.critedge, %if.then109, %if.then4, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %leftmost) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %insert_parent) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %insert_p) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ei) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_en) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_en) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_update_extent_cache_range(ptr nocapture noundef readonly %dn, i32 noundef %fofs, i32 noundef %blkaddr, i32 noundef %len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %mount_opt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73
  %6 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mount_opt.i, align 8
  %and.i = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %lor.lhs.false.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false.i:                                  ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool5.not.i = icmp sgt i32 %12, -1
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.if.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false3.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false3.i
  %raw_super.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %raw_super.i.i, align 8
  %feature.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %14, i32 0, i32 34
  %15 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %feature.i.i, align 1
  %17 = and i32 %16, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not.i = icmp eq i32 %17, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false3.i.if.end.i_crit_edge
  %s_list.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 119
  %18 = ptrtoint ptr %s_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %s_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %s_list.i
  br i1 %cmp.i.not.i, label %if.end.i.return_crit_edge, label %f2fs_may_extent_tree.exit

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

f2fs_may_extent_tree.exit:                        ; preds = %if.end.i
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 8
  %22 = and i16 %21, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %22)
  %cmp.i = icmp eq i16 %22, -32768
  br i1 %cmp.i, label %if.end, label %f2fs_may_extent_tree.exit.return_crit_edge

f2fs_may_extent_tree.exit.return_crit_edge:       ; preds = %f2fs_may_extent_tree.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %f2fs_may_extent_tree.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @f2fs_update_extent_tree_range(ptr noundef %1, i32 noundef %fofs, i32 noundef %blkaddr, i32 noundef %len)
  br label %return

return:                                           ; preds = %if.end, %f2fs_may_extent_tree.exit.return_crit_edge, %if.end.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_init_extent_cache_info(ptr noundef %sbi) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %extent_tree_root = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 36
  tail call void @__raw_spin_lock_init(ptr noundef %extent_tree_root, ptr noundef nonnull @.str.16, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 36, i32 1
  %0 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3072, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 36, i32 2
  %1 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xa_head.i, align 4
  %extent_tree_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 37
  tail call void @__mutex_init(ptr noundef %extent_tree_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @f2fs_init_extent_cache_info.__key) #12
  %extent_list = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 38
  %2 = ptrtoint ptr %extent_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %extent_list, ptr %extent_list, align 4
  %prev.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 38, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %extent_list, ptr %prev.i, align 4
  %extent_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 39
  tail call void @__raw_spin_lock_init(ptr noundef %extent_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @f2fs_init_extent_cache_info.__key.4, i16 noundef signext 3) #12
  %total_ext_tree = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_ext_tree, i32 noundef 4) #12
  %4 = ptrtoint ptr %total_ext_tree to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %total_ext_tree, align 4
  %zombie_list = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 41
  %5 = ptrtoint ptr %zombie_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %zombie_list, ptr %zombie_list, align 4
  %prev.i12 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 41, i32 1
  %6 = ptrtoint ptr %prev.i12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %zombie_list, ptr %prev.i12, align 4
  %total_zombie_tree = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 42
  %call.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_zombie_tree, i32 noundef 4) #12
  %7 = ptrtoint ptr %total_zombie_tree to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %total_zombie_tree, align 4
  %total_ext_node = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 43
  %call.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_ext_node, i32 noundef 4) #12
  %8 = ptrtoint ptr %total_ext_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %total_ext_node, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_create_extent_cache() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.6, i32 noundef 92, i32 noundef 0, i32 noundef 131072, ptr noundef null) #12
  store ptr %call.i, ptr @extent_tree_slab, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %call.i5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.7, i32 noundef 40, i32 noundef 0, i32 noundef 131072, ptr noundef null) #12
  store ptr %call.i5, ptr @extent_node_slab, align 4
  %tobool2.not = icmp eq ptr %call.i5, null
  br i1 %tobool2.not, label %if.then3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr @extent_tree_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #12
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_extent_cache() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @extent_node_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #12
  %1 = load ptr, ptr @extent_tree_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_wait_on_page_writeback(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__attach_extent_node(ptr noundef %sbi, ptr noundef %et, ptr nocapture noundef readonly %ei, ptr noundef %parent, ptr nocapture noundef writeonly %p, i1 noundef zeroext %leftmost) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @extent_node_slab, align 4
  %fault_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7
  %inject_rate.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 1
  %1 = ptrtoint ptr %inject_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %inject_rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i13.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i13.i, label %entry.f2fs_kmem_cache_alloc.exit_crit_edge, label %if.end.i.i

entry.f2fs_kmem_cache_alloc.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %f2fs_kmem_cache_alloc.exit

if.end.i.i:                                       ; preds = %entry
  %inject_type.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 2
  %3 = ptrtoint ptr %inject_type.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inject_type.i.i, align 4
  %and.i.i = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.f2fs_kmem_cache_alloc.exit_crit_edge, label %if.end3.i.i

if.end.i.i.f2fs_kmem_cache_alloc.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %f2fs_kmem_cache_alloc.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %fault_info.i.i, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i.i, ptr %fault_info.i.i, i32 1, ptr elementtype(i32) %fault_info.i.i) #12, !srcloc !66
  %call.i.i1.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i.i, i32 noundef 4) #12
  %6 = ptrtoint ptr %fault_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %fault_info.i.i, align 4
  %8 = ptrtoint ptr %inject_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inject_rate.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i.i = icmp ult i32 %7, %9
  br i1 %cmp.not.i.i, label %if.end3.i.i.f2fs_kmem_cache_alloc.exit_crit_edge, label %if.then2.i

if.end3.i.i.f2fs_kmem_cache_alloc.exit_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %f2fs_kmem_cache_alloc.exit

if.then2.i:                                       ; preds = %if.end3.i.i
  %call.i.i2.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i, i32 noundef 4) #12
  %10 = ptrtoint ptr %fault_info.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %fault_info.i.i, align 4
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_kmem_cache_alloc._rs, ptr noundef nonnull @__func__.f2fs_kmem_cache_alloc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.cleanup_crit_edge, label %do.end.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sbi, align 8
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 15) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 15), align 4
  %14 = tail call ptr @llvm.returnaddress(i32 0) #12
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, ptr noundef %s_id.i, ptr noundef %13, ptr noundef nonnull @__func__.f2fs_kmem_cache_alloc, ptr noundef %14) #15
  br label %cleanup

f2fs_kmem_cache_alloc.exit:                       ; preds = %if.end3.i.i.f2fs_kmem_cache_alloc.exit_crit_edge, %if.end.i.i.f2fs_kmem_cache_alloc.exit_crit_edge, %entry.f2fs_kmem_cache_alloc.exit_crit_edge
  %call9.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 2592) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %f2fs_kmem_cache_alloc.exit.cleanup_crit_edge, label %if.end

f2fs_kmem_cache_alloc.exit.cleanup_crit_edge:     ; preds = %f2fs_kmem_cache_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %f2fs_kmem_cache_alloc.exit
  %ei1 = getelementptr inbounds %struct.extent_node, ptr %call9.i, i32 0, i32 1
  %15 = call ptr @memcpy(ptr %ei1, ptr %ei, i32 16)
  %list = getelementptr inbounds %struct.extent_node, ptr %call9.i, i32 0, i32 2
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.extent_node, ptr %call9.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev.i, align 8
  %et2 = getelementptr inbounds %struct.extent_node, ptr %call9.i, i32 0, i32 3
  %18 = ptrtoint ptr %et2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %et, ptr %et2, align 4
  %19 = ptrtoint ptr %parent to i32
  %20 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call9.i, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call9.i, i32 0, i32 1
  %21 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call9.i, i32 0, i32 2
  %22 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rb_left.i, align 8
  %23 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i, ptr %p, align 4
  %root = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 1
  br i1 %leftmost, label %if.then.i, label %if.end.rb_insert_color_cached.exit_crit_edge

if.end.rb_insert_color_cached.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rb_insert_color_cached.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rb_leftmost.i = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i, ptr %rb_leftmost.i, align 4
  br label %rb_insert_color_cached.exit

rb_insert_color_cached.exit:                      ; preds = %if.then.i, %if.end.rb_insert_color_cached.exit_crit_edge
  tail call void @rb_insert_color(ptr noundef nonnull %call9.i, ptr noundef %root) #12
  %node_cnt = getelementptr inbounds %struct.extent_tree, ptr %et, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %node_cnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %node_cnt, i32 1, i32 3, i32 1) #12
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %node_cnt, ptr %node_cnt, i32 1, ptr elementtype(i32) %node_cnt) #12, !srcloc !66
  %total_ext_node = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 43
  %call.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_ext_node, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %total_ext_node, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_ext_node, ptr %total_ext_node, i32 1, ptr elementtype(i32) %total_ext_node) #12, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %rb_insert_color_cached.exit, %f2fs_kmem_cache_alloc.exit.cleanup_crit_edge, %do.end.i, %if.then2.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i, %rb_insert_color_cached.exit ], [ null, %f2fs_kmem_cache_alloc.exit.cleanup_crit_edge ], [ null, %do.end.i ], [ null, %if.then2.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_update_extent_tree_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_shrink_extent_tree(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_destroy_extent_tree(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_lookup_extent_tree_start(ptr noundef %inode, i32 noundef %pgofs) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_lookup_extent_tree_start, i32 0, i32 1), ptr blockaddress(@trace_f2fs_lookup_extent_tree_start, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !69

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !85
  %call42 = tail call i32 @__traceiter_f2fs_lookup_extent_tree_start(ptr noundef null, ptr noundef %inode, i32 noundef %pgofs) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !86
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !70

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_lookup_extent_tree_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_lookup_extent_tree_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_lookup_extent_tree_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_f2fs_lookup_extent_tree_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1562, ptr noundef nonnull @.str.14) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_lookup_extent_tree_end(ptr noundef %inode, i32 noundef %pgofs, ptr noundef %ei) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_lookup_extent_tree_end, i32 0, i32 1), ptr blockaddress(@trace_f2fs_lookup_extent_tree_end, %do.body)) #12
          to label %if.end49 [label %do.body], !srcloc !69

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i82 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i82
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  %tobool.not = icmp eq ptr %ei, null
  %or.cond = or i1 %tobool.not, %tobool.i.not
  br i1 %or.cond, label %cpu_online.exit.if.end73_crit_edge, label %cleanup.thread

cpu_online.exit.if.end73_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  %call43 = tail call i32 @__traceiter_f2fs_lookup_extent_tree_end(ptr noundef null, ptr noundef %inode, i32 noundef %pgofs, ptr noundef nonnull %ei) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i80 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i80 to ptr
  %preempt_count.i.i81 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i81 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i81, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i81, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i83 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i83 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i84 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i84, label %if.end49.cpu_online.exit92_crit_edge, label %land.rhs.i.i.i.i86

if.end49.cpu_online.exit92_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit92

land.rhs.i.i.i.i86:                               ; preds = %if.end49
  %.b37.i.i.i.i85 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i85, label %land.rhs.i.i.i.i86.cpu_online.exit92_crit_edge, label %if.then.i.i.i.i87, !prof !70

land.rhs.i.i.i.i86.cpu_online.exit92_crit_edge:   ; preds = %land.rhs.i.i.i.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit92

if.then.i.i.i.i87:                                ; preds = %land.rhs.i.i.i.i86
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit92

cpu_online.exit92:                                ; preds = %if.then.i.i.i.i87, %land.rhs.i.i.i.i86.cpu_online.exit92_crit_edge, %if.end49.cpu_online.exit92_crit_edge
  %div3.i.i.i88 = lshr i32 %20, 5
  %arrayidx.i.i.i89 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i88
  %22 = ptrtoint ptr %arrayidx.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i89, align 4
  %and.i.i.i90 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i90
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i91.not = icmp eq i32 %25, 0
  %tobool54.not = icmp eq ptr %ei, null
  %or.cond79 = or i1 %tobool54.not, %tobool.i91.not
  br i1 %or.cond79, label %cpu_online.exit92.if.end73_crit_edge, label %if.then55

cpu_online.exit92.if.end73_crit_edge:             ; preds = %cpu_online.exit92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then55:                                        ; preds = %cpu_online.exit92
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_lookup_extent_tree_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_lookup_extent_tree_end, i32 0, i32 7), align 4
  %call61 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true63, label %if.then55.do.end71_crit_edge

if.then55.do.end71_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end71

land.lhs.true63:                                  ; preds = %if.then55
  %call64 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true63.do.end71_crit_edge, label %land.lhs.true66

land.lhs.true63.do.end71_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end71

land.lhs.true66:                                  ; preds = %land.lhs.true63
  %.b78 = load i1, ptr @trace_f2fs_lookup_extent_tree_end.__warned, align 1
  br i1 %.b78, label %land.lhs.true66.do.end71_crit_edge, label %if.then68

land.lhs.true66.do.end71_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end71

if.then68:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_f2fs_lookup_extent_tree_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1598, ptr noundef nonnull @.str.14) #12
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %land.lhs.true66.do.end71_crit_edge, %land.lhs.true63.do.end71_crit_edge, %if.then55.do.end71_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #12
  %and.i.i.i.i93 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i93 to ptr
  %preempt_count.i.i.i94 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i94, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i94, align 4
  br label %if.end73

if.end73:                                         ; preds = %do.end71, %cpu_online.exit92.if.end73_crit_edge, %cpu_online.exit.if.end73_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_lookup_extent_tree_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_lookup_extent_tree_end(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/f2fs/extent_cache.c", i32 211, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/f2fs/extent_cache.c", i32 220, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/f2fs/extent_cache.c", i32 739, i32 3}
!6 = !{ptr @f2fs_init_extent_cache_info.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../fs/f2fs/extent_cache.c", i32 894, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @f2fs_init_extent_cache_info.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../fs/f2fs/extent_cache.c", i32 896, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/f2fs/extent_cache.c", i32 905, i32 44}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/f2fs/extent_cache.c", i32 909, i32 44}
!16 = !{ptr @extent_tree_slab, !17, !"extent_tree_slab", i1 false, i1 false}
!17 = !{!"../fs/f2fs/extent_cache.c", i32 232, i32 27}
!18 = !{ptr @extent_node_slab, !19, !"extent_node_slab", i1 false, i1 false}
!19 = !{!"../fs/f2fs/extent_cache.c", i32 233, i32 27}
!20 = !{ptr @__grab_extent_tree.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../fs/f2fs/extent_cache.c", i32 302, i32 3}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/f2fs/f2fs.h", i32 2650, i32 3}
!25 = !{ptr @f2fs_kmem_cache_alloc._rs, !24, !"_rs", i1 false, i1 false}
!26 = !{ptr @__func__.f2fs_kmem_cache_alloc, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @f2fs_kmem_cache_alloc._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @f2fs_kmem_cache_alloc._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/trace/events/f2fs.h", i32 1600, i32 1}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!36 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/trace/events/f2fs.h", i32 1631, i32 1}
!42 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/trace/events/f2fs.h", i32 1656, i32 1}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/trace/events/f2fs.h", i32 1541, i32 1}
!48 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/trace/events/f2fs.h", i32 1564, i32 1}
!51 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!52 = !{ptr @xa_init_flags.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!54 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2156362486, i64 2156362973, i64 2156362523, i64 2156362579, i64 2156362613, i64 2156362637, i64 2156362678, i64 2156362699, i64 2156362727, i64 2156362761}
!66 = !{i64 2148672489, i64 2148672515, i64 2148672544, i64 2148672578, i64 2148672609, i64 2148672632}
!67 = !{i64 2148674954, i64 2148674980, i64 2148675009, i64 2148675043, i64 2148675074, i64 2148675097}
!68 = !{i8 0, i8 2}
!69 = !{i64 2148497087, i64 2148497092, i64 2148497105, i64 2148497149, i64 2148497183, i64 2148497204}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2156097094}
!72 = !{i64 2156097367}
!73 = !{i64 2149493494}
!74 = !{i64 2149494530}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2156378614, i64 2156379101, i64 2156378651, i64 2156378707, i64 2156378741, i64 2156378765, i64 2156378806, i64 2156378827, i64 2156378855, i64 2156378889}
!77 = !{i64 2156392432, i64 2156392919, i64 2156392469, i64 2156392525, i64 2156392559, i64 2156392583, i64 2156392624, i64 2156392645, i64 2156392673, i64 2156392707}
!78 = !{i64 2156115425}
!79 = !{i64 2156115680}
!80 = !{i64 2156400204, i64 2156400691, i64 2156400241, i64 2156400297, i64 2156400331, i64 2156400355, i64 2156400396, i64 2156400417, i64 2156400445, i64 2156400479}
!81 = !{i64 2156136951}
!82 = !{i64 2156137192}
!83 = !{i64 2156382043, i64 2156382530, i64 2156382080, i64 2156382136, i64 2156382170, i64 2156382194, i64 2156382235, i64 2156382256, i64 2156382284, i64 2156382318}
!84 = !{i64 2156384132, i64 2156384619, i64 2156384169, i64 2156384225, i64 2156384259, i64 2156384283, i64 2156384324, i64 2156384345, i64 2156384373, i64 2156384407}
!85 = !{i64 2156056305}
!86 = !{i64 2156056550}
!87 = !{i64 2156078622}
!88 = !{i64 2156078871}
