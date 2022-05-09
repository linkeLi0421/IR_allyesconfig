; ModuleID = '/llk/IR_all_yes/fs/f2fs/iostat.c_pt.bc'
source_filename = "../fs/f2fs/iostat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
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
%struct.atomic64_t = type { i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.f2fs_iostat_latency = type { i32, i32, i32 }
%struct.iostat_lat_info = type { [3 x [3 x i32]], [3 x [3 x i32]], [3 x [3 x i32]] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.34, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.34 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio_iostat_ctx = type { ptr, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"time:\09\09%-16llu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[WRITE]\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"app buffered:\09%-16llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"app direct:\09%-16llu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"app mapped:\09%-16llu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs data:\09%-16llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs node:\09%-16llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs meta:\09%-16llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs gc data:\09%-16llu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs gc node:\09%-16llu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs cp data:\09%-16llu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs cp node:\09%-16llu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs cp meta:\09%-16llu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[READ]\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs compr_data:\09%-16llu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[OTHER]\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs discard:\09%-16llu\0A\00", [43 x i8] zeroinitializer }, align 32
@bio_iostat_ctx_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"f2fs_bio_iostat_ctx\00", [44 x i8] zeroinitializer }, align 32
@bio_iostat_ctx_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f2fs_init_iostat.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sbi->iostat_lock\00", [46 x i8] zeroinitializer }, align 32
@f2fs_init_iostat.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sbi->iostat_lat_lock\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tracepoint_f2fs_iostat = external dso_local global %struct.tracepoint, align 4
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/f2fs.h\00", [36 x i8] zeroinitializer }, align 32
@trace_f2fs_iostat.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_f2fs_iostat_latency = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_iostat_latency.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@f2fs_kmalloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.f2fs_kmalloc = private unnamed_addr constant [13 x i8] c"f2fs_kmalloc\00", align 1
@f2fs_kmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.f2fs_kmalloc, ptr @.str.26, i32 3219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%sF2FS-fs (%s) : inject %s in %s of %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/f2fs/f2fs.h\00", [17 x i8] zeroinitializer }, align 32
@f2fs_kmalloc._entry_ptr = internal global ptr @f2fs_kmalloc._entry, section ".printk_index", align 4
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@f2fs_fault_name = external dso_local local_unnamed_addr global [18 x ptr], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 12, i64 13]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 30, i32 18 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 33, i32 16 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 34, i32 18 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 36, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 38, i32 18 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 42, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 44, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 46, i32 18 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 48, i32 18 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 50, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 52, i32 18 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 54, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 56, i32 18 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 60, i32 16 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 73, i32 18 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 81, i32 16 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 82, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"bio_iostat_ctx_pool\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 19, i32 19 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 242, i32 21 }
@___asan_gen_.85 = private unnamed_addr constant [21 x i8] c"bio_iostat_ctx_cache\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 18, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 268, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private constant [20 x i8] c"../fs/f2fs/iostat.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 269, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [31 x i8] c"../include/trace/events/f2fs.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1836, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 108, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"../fs/f2fs/f2fs.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 3219, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @f2fs_kmalloc._entry, ptr @f2fs_kmalloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @bio_iostat_ctx_pool, ptr @.str.17, ptr @bio_iostat_ctx_cache, ptr @f2fs_init_iostat.__key, ptr @.str.18, ptr @f2fs_init_iostat.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @f2fs_kmalloc._rs, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bio_iostat_ctx_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bio_iostat_ctx_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_init_iostat.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_init_iostat.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmalloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iostat_info_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %offset) local_unnamed_addr #0 align 64 {
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
  %call1 = tail call i64 @ktime_get_real_seconds() #10
  %iostat_enable = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 151
  %4 = ptrtoint ptr %iostat_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iostat_enable, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str, i64 noundef %call1) #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.1) #10
  %rw_iostat = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 149
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.2, i64 noundef %7) #10
  %8 = ptrtoint ptr %rw_iostat to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rw_iostat, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.3, i64 noundef %9) #10
  %arrayidx5 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 3
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx5, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, i64 noundef %11) #10
  %arrayidx7 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 4
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx7, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.5, i64 noundef %13) #10
  %arrayidx9 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 5
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx9, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.6, i64 noundef %15) #10
  %arrayidx11 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 6
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx11, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i64 noundef %17) #10
  %arrayidx13 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 7
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx13, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8, i64 noundef %19) #10
  %arrayidx15 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 8
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx15, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, i64 noundef %21) #10
  %arrayidx17 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 9
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx17, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i64 noundef %23) #10
  %arrayidx19 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 10
  %24 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx19, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i64 noundef %25) #10
  %arrayidx21 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 11
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx21, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, i64 noundef %27) #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.13) #10
  %arrayidx23 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 13
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx23, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.2, i64 noundef %29) #10
  %arrayidx25 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 12
  %30 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx25, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.3, i64 noundef %31) #10
  %arrayidx27 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 15
  %32 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx27, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, i64 noundef %33) #10
  %arrayidx29 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 16
  %34 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx29, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.5, i64 noundef %35) #10
  %arrayidx31 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 17
  %36 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx31, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8, i64 noundef %37) #10
  %arrayidx33 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 18
  %38 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx33, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.14, i64 noundef %39) #10
  %arrayidx35 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 19
  %40 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx35, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.6, i64 noundef %41) #10
  %arrayidx37 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 20
  %42 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx37, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i64 noundef %43) #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #10
  %arrayidx39 = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 149, i32 21
  %44 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx39, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.16, i64 noundef %45) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_reset_iostat(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iostat_io_lat = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 155
  %0 = ptrtoint ptr %iostat_io_lat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iostat_io_lat, align 8
  %iostat_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 148
  tail call void @_raw_spin_lock_bh(ptr noundef %iostat_lock) #10
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 149, i32 0
  %2 = call ptr @memset(ptr %arrayidx, i32 0, i32 352)
  tail call void @_raw_spin_unlock_bh(ptr noundef %iostat_lock) #10
  %iostat_lat_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 154
  tail call void @_raw_spin_lock_bh(ptr noundef %iostat_lat_lock) #10
  %3 = call ptr @memset(ptr %1, i32 0, i32 108)
  tail call void @_raw_spin_unlock_bh(ptr noundef %iostat_lat_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_update_iostat(ptr noundef %sbi, i32 noundef %type, i64 noundef %io_bytes) local_unnamed_addr #0 align 64 {
entry:
  %iostat_lat.i.i = alloca [3 x [3 x %struct.f2fs_iostat_latency]], align 4
  %iostat_diff.i = alloca [22 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iostat_enable = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 151
  %0 = ptrtoint ptr %iostat_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iostat_enable, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %iostat_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 148
  tail call void @_raw_spin_lock_bh(ptr noundef %iostat_lock) #10
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 149, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %add = add i64 %3, %io_bytes
  store i64 %add, ptr %arrayidx, align 8
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end.if.end14_crit_edge [
    i32 1, label %if.end.if.then2.thread_crit_edge
    i32 0, label %if.end.if.then2.thread_crit_edge33
    i32 13, label %if.end.if.then10_crit_edge
    i32 12, label %if.end.if.then10_crit_edge34
  ]

if.end.if.then10_crit_edge34:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.end.if.then2.thread_crit_edge33:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.thread

if.end.if.then2.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.thread

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then2.thread:                                  ; preds = %if.end.if.then2.thread_crit_edge, %if.end.if.then2.thread_crit_edge33
  %arrayidx428 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 149, i32 2
  br label %if.end14.sink.split

if.then10:                                        ; preds = %if.end.if.then10_crit_edge, %if.end.if.then10_crit_edge34
  %arrayidx12 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 149, i32 14
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then10, %if.then2.thread
  %arrayidx428.sink32 = phi ptr [ %arrayidx428, %if.then2.thread ], [ %arrayidx12, %if.then10 ]
  %5 = ptrtoint ptr %arrayidx428.sink32 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx428.sink32, align 8
  %add529 = add i64 %6, %io_bytes
  store i64 %add529, ptr %arrayidx428.sink32, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.end.if.end14_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %iostat_lock) #10
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %iostat_diff.i) #10
  %7 = call ptr @memset(ptr %iostat_diff.i, i32 255, i32 176)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %iostat_next_period.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 152
  %9 = ptrtoint ptr %iostat_next_period.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iostat_next_period.i, align 4
  %sub.i = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end14.f2fs_record_iostat.exit_crit_edge, label %if.end.i

if.end14.f2fs_record_iostat.exit_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %f2fs_record_iostat.exit

if.end.i:                                         ; preds = %if.end14
  tail call void @_raw_spin_lock_bh(ptr noundef %iostat_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = ptrtoint ptr %iostat_next_period.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iostat_next_period.i, align 4
  %sub2.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i)
  %cmp3.i = icmp slt i32 %sub2.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %iostat_lock) #10
  br label %f2fs_record_iostat.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %iostat_period_ms.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 153
  %15 = ptrtoint ptr %iostat_period_ms.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iostat_period_ms.i, align 8
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %16) #10
  %add.i = add i32 %call2.i.i, %14
  %17 = ptrtoint ptr %iostat_next_period.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %iostat_next_period.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end6.i
  %i.036.i = phi i32 [ 0, %if.end6.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 149, i32 %i.036.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i, align 8
  %arrayidx9.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 150, i32 %i.036.i
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx9.i, align 8
  %sub10.i = sub i64 %19, %21
  %arrayidx11.i = getelementptr [22 x i64], ptr %iostat_diff.i, i32 0, i32 %i.036.i
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %sub10.i, ptr %arrayidx11.i, align 8
  store i64 %19, ptr %arrayidx9.i, align 8
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 22
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %iostat_lock) #10
  call fastcc void @trace_f2fs_iostat(ptr noundef %sbi, ptr noundef nonnull %iostat_diff.i) #10
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %iostat_lat.i.i) #10
  %23 = call ptr @memset(ptr %iostat_lat.i.i, i32 255, i32 108)
  %iostat_io_lat.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 155
  %24 = ptrtoint ptr %iostat_io_lat.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iostat_io_lat.i.i, align 8
  %iostat_lat_lock.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 154
  call void @_raw_spin_lock_bh(ptr noundef %iostat_lat_lock.i.i) #10
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %cond.end.2.i.i.for.cond1.preheader.i.i_crit_edge, %for.end.i
  %idx.063.i.i = phi i32 [ 0, %for.end.i ], [ %inc28.i.i, %cond.end.2.i.i.for.cond1.preheader.i.i_crit_edge ]
  %arrayidx4.i.i = getelementptr %struct.iostat_lat_info, ptr %25, i32 0, i32 2, i32 %idx.063.i.i, i32 0
  %26 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.iostat_lat_info, ptr %25, i32 0, i32 1, i32 %idx.063.i.i, i32 0
  %28 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx6.i.i, align 4
  %call.i.i = call i32 @jiffies_to_msecs(i32 noundef %29) #10
  %arrayidx8.i.i = getelementptr [3 x [3 x %struct.f2fs_iostat_latency]], ptr %iostat_lat.i.i, i32 0, i32 %idx.063.i.i, i32 0
  %30 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call.i.i, ptr %arrayidx8.i.i, align 4
  %cnt12.i.i = getelementptr [3 x [3 x %struct.f2fs_iostat_latency]], ptr %iostat_lat.i.i, i32 0, i32 %idx.063.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %cnt12.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %27, ptr %cnt12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i, label %for.cond1.preheader.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

for.cond1.preheader.i.i.cond.end.i.i_crit_edge:   ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx14.i.i = getelementptr [3 x [3 x i32]], ptr %25, i32 0, i32 %idx.063.i.i, i32 0
  %32 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx14.i.i, align 4
  %call15.i.i = call i32 @jiffies_to_msecs(i32 noundef %33) #10
  %div.i.i = udiv i32 %call15.i.i, %27
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %for.cond1.preheader.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %div.i.i, %cond.true.i.i ], [ 0, %for.cond1.preheader.i.i.cond.end.i.i_crit_edge ]
  %avg_lat.i.i = getelementptr [3 x [3 x %struct.f2fs_iostat_latency]], ptr %iostat_lat.i.i, i32 0, i32 %idx.063.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %avg_lat.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond.i.i, ptr %avg_lat.i.i, align 4
  %arrayidx20.i.i = getelementptr [3 x [3 x i32]], ptr %25, i32 0, i32 %idx.063.i.i, i32 0
  %35 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx20.i.i, align 4
  %36 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx6.i.i, align 4
  %37 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx4.i.i, align 4
  %arrayidx4.1.i.i = getelementptr %struct.iostat_lat_info, ptr %25, i32 0, i32 2, i32 %idx.063.i.i, i32 1
  %38 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx4.1.i.i, align 4
  %arrayidx6.1.i.i = getelementptr %struct.iostat_lat_info, ptr %25, i32 0, i32 1, i32 %idx.063.i.i, i32 1
  %40 = ptrtoint ptr %arrayidx6.1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx6.1.i.i, align 4
  %call.1.i.i = call i32 @jiffies_to_msecs(i32 noundef %41) #10
  %arrayidx8.1.i.i = getelementptr [3 x [3 x %struct.f2fs_iostat_latency]], ptr %iostat_lat.i.i, i32 0, i32 %idx.063.i.i, i32 1
  %42 = ptrtoint ptr %arrayidx8.1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.1.i.i, ptr %arrayidx8.1.i.i, align 4
  %cnt12.1.i.i = getelementptr [3 x [3 x %struct.f2fs_iostat_latency]], ptr %iostat_lat.i.i, i32 0, i32 %idx.063.i.i, i32 1, i32 2
  %43 = ptrtoint ptr %cnt12.1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %39, ptr %cnt12.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.1.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.1.i.i, label %cond.end.i.i.cond.end.1.i.i_crit_edge, label %cond.true.1.i.i

cond.end.i.i.cond.end.1.i.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.1.i.i

cond.true.1.i.i:                                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx14.1.i.i = getelementptr [3 x [3 x i32]], ptr %25, i32 0, i32 %idx.063.i.i, i32 1
  %44 = ptrtoint ptr %arrayidx14.1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx14.1.i.i, align 4
  %call15.1.i.i = call i32 @jiffies_to_msecs(i32 noundef %45) #10
  %div.1.i.i = udiv i32 %call15.1.i.i, %39
  br label %cond.end.1.i.i

cond.end.1.i.i:                                   ; preds = %cond.true.1.i.i, %cond.end.i.i.cond.end.1.i.i_crit_edge
  %cond.1.i.i = phi i32 [ %div.1.i.i, %cond.true.1.i.i ], [ 0, %cond.end.i.i.cond.end.1.i.i_crit_edge ]
  %avg_lat.1.i.i = getelementptr [3 x [3 x %struct.f2fs_iostat_latency]], ptr %iostat_lat.i.i, i32 0, i32 %idx.063.i.i, i32 1, i32 1
  %46 = ptrtoint ptr %avg_lat.1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond.1.i.i, ptr %avg_lat.1.i.i, align 4
  %arrayidx20.1.i.i = getelementptr [3 x [3 x i32]], ptr %25, i32 0, i32 %idx.063.i.i, i32 1
  %47 = ptrtoint ptr %arrayidx20.1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %arrayidx20.1.i.i, align 4
  %48 = ptrtoint ptr %arrayidx6.1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %arrayidx6.1.i.i, align 4
  %49 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx4.1.i.i, align 4
  %arrayidx4.2.i.i = getelementptr %struct.iostat_lat_info, ptr %25, i32 0, i32 2, i32 %idx.063.i.i, i32 2
  %50 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx4.2.i.i, align 4
  %arrayidx6.2.i.i = getelementptr %struct.iostat_lat_info, ptr %25, i32 0, i32 1, i32 %idx.063.i.i, i32 2
  %52 = ptrtoint ptr %arrayidx6.2.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx6.2.i.i, align 4
  %call.2.i.i = call i32 @jiffies_to_msecs(i32 noundef %53) #10
  %arrayidx8.2.i.i = getelementptr [3 x [3 x %struct.f2fs_iostat_latency]], ptr %iostat_lat.i.i, i32 0, i32 %idx.063.i.i, i32 2
  %54 = ptrtoint ptr %arrayidx8.2.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call.2.i.i, ptr %arrayidx8.2.i.i, align 4
  %cnt12.2.i.i = getelementptr [3 x [3 x %struct.f2fs_iostat_latency]], ptr %iostat_lat.i.i, i32 0, i32 %idx.063.i.i, i32 2, i32 2
  %55 = ptrtoint ptr %cnt12.2.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %51, ptr %cnt12.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.2.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.2.i.i, label %cond.end.1.i.i.cond.end.2.i.i_crit_edge, label %cond.true.2.i.i

cond.end.1.i.i.cond.end.2.i.i_crit_edge:          ; preds = %cond.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.2.i.i

cond.true.2.i.i:                                  ; preds = %cond.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx14.2.i.i = getelementptr [3 x [3 x i32]], ptr %25, i32 0, i32 %idx.063.i.i, i32 2
  %56 = ptrtoint ptr %arrayidx14.2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx14.2.i.i, align 4
  %call15.2.i.i = call i32 @jiffies_to_msecs(i32 noundef %57) #10
  %div.2.i.i = udiv i32 %call15.2.i.i, %51
  br label %cond.end.2.i.i

cond.end.2.i.i:                                   ; preds = %cond.true.2.i.i, %cond.end.1.i.i.cond.end.2.i.i_crit_edge
  %cond.2.i.i = phi i32 [ %div.2.i.i, %cond.true.2.i.i ], [ 0, %cond.end.1.i.i.cond.end.2.i.i_crit_edge ]
  %avg_lat.2.i.i = getelementptr [3 x [3 x %struct.f2fs_iostat_latency]], ptr %iostat_lat.i.i, i32 0, i32 %idx.063.i.i, i32 2, i32 1
  %58 = ptrtoint ptr %avg_lat.2.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %cond.2.i.i, ptr %avg_lat.2.i.i, align 4
  %arrayidx20.2.i.i = getelementptr [3 x [3 x i32]], ptr %25, i32 0, i32 %idx.063.i.i, i32 2
  %59 = ptrtoint ptr %arrayidx20.2.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %arrayidx20.2.i.i, align 4
  %60 = ptrtoint ptr %arrayidx6.2.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %arrayidx6.2.i.i, align 4
  %61 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %arrayidx4.2.i.i, align 4
  %inc28.i.i = add nuw nsw i32 %idx.063.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc28.i.i, 3
  br i1 %exitcond.not.i.i, label %__record_iostat_latency.exit.i, label %cond.end.2.i.i.for.cond1.preheader.i.i_crit_edge

cond.end.2.i.i.for.cond1.preheader.i.i_crit_edge: ; preds = %cond.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader.i.i

__record_iostat_latency.exit.i:                   ; preds = %cond.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %iostat_lat_lock.i.i) #10
  call fastcc void @trace_f2fs_iostat_latency(ptr noundef %sbi, ptr noundef nonnull %iostat_lat.i.i) #10
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %iostat_lat.i.i) #10
  br label %f2fs_record_iostat.exit

f2fs_record_iostat.exit:                          ; preds = %__record_iostat_latency.exit.i, %if.then4.i, %if.end14.f2fs_record_iostat.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %iostat_diff.i) #10
  br label %return

return:                                           ; preds = %f2fs_record_iostat.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iostat_update_and_unbind_ctx(ptr nocapture noundef %bio, i32 noundef %rw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rw)
  %cmp = icmp eq i32 %rw, 0
  %post_read_ctx = getelementptr inbounds %struct.bio_iostat_ctx, ptr %1, i32 0, i32 3
  %storemerge.in = select i1 %cmp, ptr %post_read_ctx, ptr %1
  %4 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %storemerge = load ptr, ptr %storemerge.in, align 4
  %5 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %storemerge, ptr %bi_private, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %iostat_enable.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 151
  %8 = ptrtoint ptr %iostat_enable.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iostat_enable.i, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.__update_iostat_latency.exit_crit_edge, label %if.end.i

entry.__update_iostat_latency.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__update_iostat_latency.exit

if.end.i:                                         ; preds = %entry
  %10 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %iostat_io_lat.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 155
  %11 = ptrtoint ptr %iostat_io_lat.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iostat_io_lat.i, align 8
  %type.i = getelementptr inbounds %struct.bio_iostat_ctx, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %submit_ts.i = getelementptr inbounds %struct.bio_iostat_ctx, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %submit_ts.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %submit_ts.i, align 4
  %sub.i = sub i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i = icmp ugt i32 %14, 3
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 %14
  %..i = select i1 %tobool.not, i32 2, i32 1
  %idx.0.i = select i1 %cmp, i32 0, i32 %..i
  %iostat_lat_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 154
  tail call void @_raw_spin_lock_bh(ptr noundef %iostat_lat_lock.i) #10
  %arrayidx11.i = getelementptr [3 x [3 x i32]], ptr %12, i32 0, i32 %idx.0.i, i32 %spec.store.select.i
  %18 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx11.i, align 4
  %add.i = add i32 %19, %sub.i
  store i32 %add.i, ptr %arrayidx11.i, align 4
  %arrayidx13.i = getelementptr %struct.iostat_lat_info, ptr %12, i32 0, i32 2, i32 %idx.0.i, i32 %spec.store.select.i
  %20 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx13.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %arrayidx13.i, align 4
  %arrayidx15.i = getelementptr %struct.iostat_lat_info, ptr %12, i32 0, i32 1, i32 %idx.0.i, i32 %spec.store.select.i
  %22 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %23)
  %cmp16.i = icmp ugt i32 %sub.i, %23
  br i1 %cmp16.i, label %if.then17.i, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i, ptr %arrayidx15.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end.i.if.end21.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %iostat_lat_lock.i) #10
  br label %__update_iostat_latency.exit

__update_iostat_latency.exit:                     ; preds = %if.end21.i, %entry.__update_iostat_latency.exit_crit_edge
  %25 = load ptr, ptr @bio_iostat_ctx_pool, align 4
  tail call void @mempool_free(ptr noundef %1, ptr noundef %25) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iostat_alloc_and_bind_ctx(ptr noundef %sbi, ptr nocapture noundef writeonly %bio, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @bio_iostat_ctx_pool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %0, i32 noundef 3136) #10
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sbi, ptr %call, align 4
  %submit_ts = getelementptr inbounds %struct.bio_iostat_ctx, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %submit_ts to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %submit_ts, align 4
  %type = getelementptr inbounds %struct.bio_iostat_ctx, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type, align 4
  %post_read_ctx = getelementptr inbounds %struct.bio_iostat_ctx, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %post_read_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ctx, ptr %post_read_ctx, align 4
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %5 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %bi_private, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_init_iostat_processing() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.17, i32 noundef 16, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  store ptr %call, ptr @bio_iostat_ctx_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @mempool_create(i32 noundef 128, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call) #10
  store ptr %call.i, ptr @bio_iostat_ctx_pool, align 4
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %fail_free_cache, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

fail_free_cache:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @bio_iostat_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  br label %return

return:                                           ; preds = %fail_free_cache, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ -12, %entry.return_crit_edge ], [ -12, %fail_free_cache ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_iostat_processing() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @bio_iostat_ctx_pool, align 4
  tail call void @mempool_destroy(ptr noundef %0) #10
  %1 = load ptr, ptr @bio_iostat_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_init_iostat(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iostat_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 148
  tail call void @__raw_spin_lock_init(ptr noundef %iostat_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @f2fs_init_iostat.__key, i16 noundef signext 3) #10
  %iostat_lat_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 154
  tail call void @__raw_spin_lock_init(ptr noundef %iostat_lat_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @f2fs_init_iostat.__key.19, i16 noundef signext 3) #10
  %iostat_enable = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 151
  %0 = ptrtoint ptr %iostat_enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %iostat_enable, align 8
  %iostat_period_ms = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 153
  %1 = ptrtoint ptr %iostat_period_ms to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3000, ptr %iostat_period_ms, align 8
  %fault_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7
  %inject_rate.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 1
  %2 = ptrtoint ptr %inject_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inject_rate.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %entry.if.end4.i.i_crit_edge, label %if.end.i.i.i

entry.if.end4.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i

if.end.i.i.i:                                     ; preds = %entry
  %inject_type.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 2
  %4 = ptrtoint ptr %inject_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inject_type.i.i.i, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.if.end4.i.i_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.if.end4.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %fault_info.i.i.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i.i.i, ptr %fault_info.i.i.i, i32 1, ptr elementtype(i32) %fault_info.i.i.i) #10, !srcloc !77
  %call.i.i1.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i.i.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %fault_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %fault_info.i.i.i, align 4
  %9 = ptrtoint ptr %inject_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inject_rate.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not.i.i.i = icmp ult i32 %8, %10
  br i1 %cmp.not.i.i.i, label %if.end3.i.i.i.if.end4.i.i_crit_edge, label %if.then.i.i

if.end3.i.i.i.if.end4.i.i_crit_edge:              ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %if.end3.i.i.i
  %call.i.i2.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i.i, i32 noundef 4) #10
  %11 = ptrtoint ptr %fault_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %fault_info.i.i.i, align 4
  %call1.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_kmalloc._rs, ptr noundef nonnull @__func__.f2fs_kmalloc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.f2fs_kzalloc.exit_crit_edge, label %do.end.i.i

if.then.i.i.f2fs_kzalloc.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %f2fs_kzalloc.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sbi, align 8
  %s_id.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_fault_name to i32))
  %14 = load ptr, ptr @f2fs_fault_name, align 4
  %15 = tail call ptr @llvm.returnaddress(i32 0) #10
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27, ptr noundef %s_id.i.i, ptr noundef %14, ptr noundef nonnull @__func__.f2fs_kmalloc, ptr noundef %15) #13
  br label %f2fs_kzalloc.exit

if.end4.i.i:                                      ; preds = %if.end3.i.i.i.if.end4.i.i_crit_edge, %if.end.i.i.i.if.end4.i.i_crit_edge, %entry.if.end4.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 108) #14
  br label %f2fs_kzalloc.exit

f2fs_kzalloc.exit:                                ; preds = %if.end4.i.i, %do.end.i.i, %if.then.i.i.f2fs_kzalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call7.i.i.i, %if.end4.i.i ], [ null, %do.end.i.i ], [ null, %if.then.i.i.f2fs_kzalloc.exit_crit_edge ]
  %iostat_io_lat = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 155
  %17 = ptrtoint ptr %iostat_io_lat to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i.i, ptr %iostat_io_lat, align 8
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_iostat(ptr nocapture noundef readonly %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iostat_io_lat = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 155
  %0 = ptrtoint ptr %iostat_io_lat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iostat_io_lat, align 8
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_iostat(ptr noundef %sbi, ptr noundef %iostat) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_iostat, i32 0, i32 1), ptr blockaddress(@trace_f2fs_iostat, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !78

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %call42 = tail call i32 @__traceiter_f2fs_iostat(ptr noundef null, ptr noundef %sbi, ptr noundef %iostat) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_iostat, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_iostat, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_iostat.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_f2fs_iostat.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 1910, ptr noundef nonnull @.str.22) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #10
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
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_iostat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_iostat_latency(ptr noundef %sbi, ptr noundef %iostat_lat) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_iostat_latency, i32 0, i32 1), ptr blockaddress(@trace_f2fs_iostat_latency, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !78

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %call42 = tail call i32 @__traceiter_f2fs_iostat_latency(ptr noundef null, ptr noundef %sbi, ptr noundef %iostat_lat) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_iostat_latency, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_iostat_latency, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_iostat_latency.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_f2fs_iostat_latency.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 2005, ptr noundef nonnull @.str.22) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #10
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
declare dso_local i32 @__traceiter_f2fs_iostat_latency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !56, !57, !59, !60, !61, !62, !63, !64, !65}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/f2fs/iostat.c", i32 30, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/f2fs/iostat.c", i32 33, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/f2fs/iostat.c", i32 34, i32 18}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/f2fs/iostat.c", i32 36, i32 18}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/f2fs/iostat.c", i32 38, i32 18}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/f2fs/iostat.c", i32 42, i32 18}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/f2fs/iostat.c", i32 44, i32 18}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/f2fs/iostat.c", i32 46, i32 18}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/f2fs/iostat.c", i32 48, i32 18}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/f2fs/iostat.c", i32 50, i32 18}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/f2fs/iostat.c", i32 52, i32 18}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/f2fs/iostat.c", i32 54, i32 18}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/f2fs/iostat.c", i32 56, i32 18}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/f2fs/iostat.c", i32 60, i32 16}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/f2fs/iostat.c", i32 73, i32 18}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/f2fs/iostat.c", i32 81, i32 16}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/f2fs/iostat.c", i32 82, i32 18}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/f2fs/iostat.c", i32 242, i32 21}
!36 = !{ptr @f2fs_init_iostat.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../fs/f2fs/iostat.c", i32 268, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @f2fs_init_iostat.__key.19, !40, !"__key", i1 false, i1 false}
!40 = !{!"../fs/f2fs/iostat.c", i32 269, i32 2}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @bio_iostat_ctx_cache, !43, !"bio_iostat_ctx_cache", i1 false, i1 false}
!43 = !{!"../fs/f2fs/iostat.c", i32 18, i32 27}
!44 = !{ptr @bio_iostat_ctx_pool, !45, !"bio_iostat_ctx_pool", i1 false, i1 false}
!45 = !{!"../fs/f2fs/iostat.c", i32 19, i32 19}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/trace/events/f2fs.h", i32 1836, i32 1}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!50 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/trace/events/f2fs.h", i32 1921, i32 1}
!56 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/f2fs/f2fs.h", i32 3219, i32 3}
!59 = !{ptr @f2fs_kmalloc._rs, !58, !"_rs", i1 false, i1 false}
!60 = !{ptr @__func__.f2fs_kmalloc, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @f2fs_kmalloc._entry, !58, !"_entry", i1 false, i1 false}
!64 = !{ptr @f2fs_kmalloc._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!66 = !{!"sp"}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i8 0, i8 2}
!77 = !{i64 2148657779, i64 2148657805, i64 2148657834, i64 2148657868, i64 2148657899, i64 2148657922}
!78 = !{i64 2148482377, i64 2148482382, i64 2148482395, i64 2148482439, i64 2148482473, i64 2148482494}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 2156276423}
!81 = !{i64 2156276630}
!82 = !{i64 2149478784}
!83 = !{i64 2149479820}
!84 = !{i64 2156293438}
!85 = !{i64 2156293669}
