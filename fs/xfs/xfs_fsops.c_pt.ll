; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_fsops.c_pt.bc'
source_filename = "../fs/xfs/xfs_fsops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_param = type { %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val }
%struct.xfs_sysctl_val = type { i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.aghdr_init_data = type { i32, i32, %struct.list_head, i64, i64, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_growfs_data = type { i64, i32 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_growfs_log = type { i32, i32 }
%struct.xfs_fsop_counts = type { i64, i64, i64, i64 }
%struct.xfs_fsop_resblks = type { i64, i64 }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_fsops.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"User initiated shutdown received.\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Log I/O Error\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Corruption of in-memory data\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Metadata I/O Error\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s (0x%x) detected at %pS (%s:%d).  Shutting down filesystem.\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Please unmount the filesystem and rectify the problem(s)\00", [39 x i8] zeroinitializer }, align 32
@xfs_params = external dso_local local_unnamed_addr global %struct.xfs_param, align 4
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Error %d reserving per-AG metadata reserve pool.\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Error %d freeing per-AG metadata reserve pool.\00", [49 x i8] zeroinitializer }, align 32
@xfs_growfs_data_private.shrink_warning = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 8640000, i32 1, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\22shrink_warning\22.lock\00", [42 x i8] zeroinitializer }, align 32
@__func__.xfs_growfs_data_private = private unnamed_addr constant [24 x i8] c"xfs_growfs_data_private\00", align 1
@.str.10 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"EXPERIMENTAL online shrink feature in use. Use at your own risk!\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_force_shutdown = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_force_shutdown.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 491, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 537, i32 17 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 541, i32 9 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 544, i32 9 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 547, i32 9 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 553, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 556, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 582, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 609, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"shrink_warning\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 151, i32 33 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 152, i32 4 }
@___asan_gen_.50 = private constant [22 x i8] c"../fs/xfs/xfs_fsops.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 157, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 4139, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 108, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @xfs_growfs_data_private.shrink_warning, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_growfs_data_private.shrink_warning to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_growfs_data(ptr noundef %mp, ptr nocapture noundef readonly %in) local_unnamed_addr #0 align 64 {
entry:
  %bp.i = alloca ptr, align 4
  %nagimax.i = alloca i32, align 4
  %lastag_extended.i = alloca i8, align 1
  %tp.i325 = alloca ptr, align 4
  %id.i = alloca %struct.aghdr_init_data, align 8
  %tp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_growlock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 99
  %call1 = tail call i32 @mutex_trylock(ptr noundef %m_growlock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %imaxpct = getelementptr inbounds %struct.xfs_growfs_data, ptr %in, i32 0, i32 1
  %0 = ptrtoint ptr %imaxpct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imaxpct, align 8
  %sb_imax_pct = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 27
  %2 = ptrtoint ptr %sb_imax_pct to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_imax_pct, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp eq i32 %1, %conv
  br i1 %cmp.not, label %if.end3.if.end11_crit_edge, label %if.then5

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then5:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp.i) #8
  %4 = ptrtoint ptr %tp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp.i, align 4, !annotation !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %1)
  %cmp.i = icmp ugt i32 %1, 100
  br i1 %cmp.i, label %if.then5.xfs_growfs_imaxpct.exit.thread_crit_edge, label %if.end.i

if.then5.xfs_growfs_imaxpct.exit.thread_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_imaxpct.exit.thread

if.end.i:                                         ; preds = %if.then5
  %tr_growdata.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 11
  %m_alloc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %5 = ptrtoint ptr %m_alloc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %m_alloc_maxlevels.i, align 4
  %mul.i = shl i32 %6, 1
  %call.i = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %tr_growdata.i, i32 noundef %mul.i, i32 noundef 0, i32 noundef 32, ptr noundef nonnull %tp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %xfs_growfs_imaxpct.exit, label %if.end.i.xfs_growfs_imaxpct.exit.thread_crit_edge

if.end.i.xfs_growfs_imaxpct.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_imaxpct.exit.thread

xfs_growfs_imaxpct.exit.thread:                   ; preds = %if.end.i.xfs_growfs_imaxpct.exit.thread_crit_edge, %if.then5.xfs_growfs_imaxpct.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end.i.xfs_growfs_imaxpct.exit.thread_crit_edge ], [ -22, %if.then5.xfs_growfs_imaxpct.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp.i) #8
  br label %out_error

xfs_growfs_imaxpct.exit:                          ; preds = %if.end.i
  %7 = ptrtoint ptr %sb_imax_pct to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sb_imax_pct, align 1
  %conv.i = zext i8 %8 to i32
  %sub.i = sub nsw i32 %1, %conv.i
  %9 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tp.i, align 4
  %conv3.i = sext i32 %sub.i to i64
  call void @xfs_trans_mod_sb(ptr noundef %10, i32 noundef 256, i64 noundef %conv3.i) #8
  %11 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tp.i, align 4
  %t_flags.i = getelementptr inbounds %struct.xfs_trans, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %t_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %t_flags.i, align 4
  %or.i = or i32 %14, 8
  store i32 %or.i, ptr %t_flags.i, align 4
  %call4.i = call i32 @xfs_trans_commit(ptr noundef %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool8.not = icmp eq i32 %call4.i, 0
  br i1 %tobool8.not, label %xfs_growfs_imaxpct.exit.if.end11_crit_edge, label %xfs_growfs_imaxpct.exit.out_error_crit_edge

xfs_growfs_imaxpct.exit.out_error_crit_edge:      ; preds = %xfs_growfs_imaxpct.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_error

xfs_growfs_imaxpct.exit.if.end11_crit_edge:       ; preds = %xfs_growfs_imaxpct.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %xfs_growfs_imaxpct.exit.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %15 = ptrtoint ptr %in to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %in, align 8
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %17 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sb_dblocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp13.not = icmp eq i64 %16, %18
  br i1 %cmp13.not, label %if.end11.if.end20_crit_edge, label %if.then15

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then15:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp.i) #8
  %19 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp.i, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nagimax.i) #8
  %20 = ptrtoint ptr %nagimax.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %nagimax.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lastag_extended.i) #8
  %21 = ptrtoint ptr %lastag_extended.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %lastag_extended.i, align 1, !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp.i325) #8
  %22 = ptrtoint ptr %tp.i325 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp.i325, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %id.i) #8
  %23 = call ptr @memset(ptr %id.i, i32 0, i32 40)
  %call.i326 = call i32 @xfs_sb_validate_fsb_count(ptr noundef %mp, i64 noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326)
  %tobool.not.i327 = icmp eq i32 %call.i326, 0
  br i1 %tobool.not.i327, label %if.end.i329, label %if.then15.xfs_growfs_data_private.exit.thread_crit_edge

if.then15.xfs_growfs_data_private.exit.thread_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_data_private.exit.thread

if.end.i329:                                      ; preds = %if.then15
  %24 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sb_dblocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %25)
  %cmp.i328 = icmp ugt i64 %16, %25
  br i1 %cmp.i328, label %if.then2.i, label %if.end.i329.if.end13.i_crit_edge

if.end.i329.if.end13.i_crit_edge:                 ; preds = %if.end.i329
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then2.i:                                       ; preds = %if.end.i329
  %m_ddev_targp.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %26 = ptrtoint ptr %m_ddev_targp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m_ddev_targp.i, align 8
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %28 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %m_blkbb_log.i, align 1
  %sh_prom.i = zext i8 %29 to i64
  %shl.i = shl i64 %16, %sh_prom.i
  %m_sectbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %30 = ptrtoint ptr %m_sectbb_log.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %m_sectbb_log.i, align 1
  %conv3.i330 = zext i8 %31 to i32
  %shl4.i = shl nuw i32 1, %conv3.i330
  %conv5.i = sext i32 %shl4.i to i64
  %sub.i331 = sub i64 %shl.i, %conv5.i
  %call9.i = call i32 @xfs_buf_read_uncached(ptr noundef %27, i64 noundef %sub.i331, i32 noundef %shl4.i, i32 noundef 0, ptr noundef nonnull %bp.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.then2.i.xfs_growfs_data_private.exit.thread_crit_edge

if.then2.i.xfs_growfs_data_private.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_data_private.exit.thread

if.end12.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bp.i, align 4
  call void @xfs_buf_unlock(ptr noundef %33) #8
  call void @xfs_buf_rele(ptr noundef %33) #8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end12.i, %if.end.i329.if.end13.i_crit_edge
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %34 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sb_agblocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %16)
  %cmp188.i = icmp ult i64 %16, 4294967296
  br i1 %cmp188.i, label %if.then192.i, label %if.else198.i, !prof !45

if.then192.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv193.i = trunc i64 %16 to i32
  %conv193.i.frozen = freeze i32 %conv193.i
  %.frozen = freeze i32 %35
  %div196.i = udiv i32 %conv193.i.frozen, %.frozen
  %36 = mul i32 %div196.i, %.frozen
  %rem194.i.decomposed = sub i32 %conv193.i.frozen, %36
  %conv197.i = zext i32 %div196.i to i64
  br label %if.end202.i

if.else198.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %16) #11, !srcloc !46
  %asmresult.i484.i = extractvalue { i64, i64 } %37, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %37, 1
  %shr.i.i = lshr i64 %asmresult.i484.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.else198.i, %if.then192.i
  %nb_div.0.i = phi i64 [ %conv197.i, %if.then192.i ], [ %asmresult1.i.i, %if.else198.i ]
  %__rem.0.i = phi i32 [ %rem194.i.decomposed, %if.then192.i ], [ %conv.i.i, %if.else198.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %cmp205.i = icmp ne i32 %__rem.0.i, 0
  %38 = zext i1 %cmp205.i to i64
  %add208.i = add i64 %nb_div.0.i, %38
  %conv209.i = trunc i64 %add208.i to i32
  %39 = add i32 %__rem.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %39)
  %40 = icmp ult i32 %39, 63
  br i1 %40, label %if.then214.i, label %if.end202.i.if.end220.i_crit_edge

if.end202.i.if.end220.i_crit_edge:                ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end220.i

if.then214.i:                                     ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i32 %conv209.i, -1
  %conv215.i = zext i32 %dec.i to i64
  %conv218.i = zext i32 %35 to i64
  %mul219.i = mul nuw i64 %conv215.i, %conv218.i
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.then214.i, %if.end202.i.if.end220.i_crit_edge
  %nb.0.i = phi i64 [ %mul219.i, %if.then214.i ], [ %16, %if.end202.i.if.end220.i_crit_edge ]
  %nagcount.0.i = phi i32 [ %dec.i, %if.then214.i ], [ %conv209.i, %if.end202.i.if.end220.i_crit_edge ]
  %41 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %sb_dblocks, align 8
  %sub223.i = sub i64 %nb.0.i, %42
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub223.i)
  %cmp224.i = icmp slt i64 %sub223.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nagcount.0.i)
  %cmp227.i = icmp ult i32 %nagcount.0.i, 2
  %or.cond482.i = select i1 %cmp224.i, i1 %cmp227.i, i1 false
  br i1 %or.cond482.i, label %if.end220.i.xfs_growfs_data_private.exit.thread_crit_edge, label %if.end230.i

if.end220.i.xfs_growfs_data_private.exit.thread_crit_edge: ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_data_private.exit.thread

if.end230.i:                                      ; preds = %if.end220.i
  %sb_agcount.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %43 = ptrtoint ptr %sb_agcount.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sb_agcount.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %nagcount.0.i, i32 %44)
  %cmp232.i = icmp ugt i32 %nagcount.0.i, %44
  br i1 %cmp232.i, label %if.then234.i, label %if.else239.i

if.then234.i:                                     ; preds = %if.end230.i
  %call235.i = call i32 @xfs_initialize_perag(ptr noundef %mp, i32 noundef %nagcount.0.i, ptr noundef nonnull %nagimax.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235.i)
  %tobool236.not.i = icmp eq i32 %call235.i, 0
  br i1 %tobool236.not.i, label %if.then234.i.if.end244.i_crit_edge, label %if.then234.i.xfs_growfs_data_private.exit.thread_crit_edge

if.then234.i.xfs_growfs_data_private.exit.thread_crit_edge: ; preds = %if.then234.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_data_private.exit.thread

if.then234.i.if.end244.i_crit_edge:               ; preds = %if.then234.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end244.i

if.else239.i:                                     ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nagcount.0.i, i32 %44)
  %cmp240.i = icmp ult i32 %nagcount.0.i, %44
  br i1 %cmp240.i, label %if.else239.i.xfs_growfs_data_private.exit.thread_crit_edge, label %if.else239.i.if.end244.i_crit_edge

if.else239.i.if.end244.i_crit_edge:               ; preds = %if.else239.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end244.i

if.else239.i.xfs_growfs_data_private.exit.thread_crit_edge: ; preds = %if.else239.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_data_private.exit.thread

if.end244.i:                                      ; preds = %if.else239.i.if.end244.i_crit_edge, %if.then234.i.if.end244.i_crit_edge
  %tr_growdata.i333 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub223.i)
  %cmp245.i = icmp sgt i64 %sub223.i, 0
  br i1 %cmp245.i, label %cond.end252.i, label %cond.end252.thread.i

cond.end252.i:                                    ; preds = %if.end244.i
  %m_alloc_maxlevels.i334 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %45 = ptrtoint ptr %m_alloc_maxlevels.i334 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %m_alloc_maxlevels.i334, align 4
  %mul248.i = shl i32 %46, 1
  %call255.i = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %tr_growdata.i333, i32 noundef %mul248.i, i32 noundef 0, i32 noundef 32, ptr noundef nonnull %tp.i325) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call255.i)
  %tobool256.not.i = icmp eq i32 %call255.i, 0
  br i1 %tobool256.not.i, label %if.then261.i, label %cond.end252.i.xfs_growfs_data_private.exit.thread_crit_edge

cond.end252.i.xfs_growfs_data_private.exit.thread_crit_edge: ; preds = %cond.end252.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_data_private.exit.thread

cond.end252.thread.i:                             ; preds = %if.end244.i
  %47 = trunc i64 %sub223.i to i32
  %extract.t480.i = sub i32 0, %47
  %call255509.i = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %tr_growdata.i333, i32 noundef %extract.t480.i, i32 noundef 0, i32 noundef 32, ptr noundef nonnull %tp.i325) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call255509.i)
  %tobool256.not510.i = icmp eq i32 %call255509.i, 0
  br i1 %tobool256.not510.i, label %if.else263.i, label %cond.end252.thread.i.xfs_growfs_data_private.exit.thread_crit_edge

cond.end252.thread.i.xfs_growfs_data_private.exit.thread_crit_edge: ; preds = %cond.end252.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_data_private.exit.thread

if.then261.i:                                     ; preds = %cond.end252.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %tp.i325 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tp.i325, align 4
  %call262.i = call fastcc i32 @xfs_resizefs_init_new_ags(ptr noundef %49, ptr noundef nonnull %id.i, i32 noundef %44, i32 noundef %nagcount.0.i, i64 noundef %sub223.i, ptr noundef nonnull %lastag_extended.i) #8
  br label %if.end272.i

if.else263.i:                                     ; preds = %cond.end252.thread.i
  store i32 1, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @xfs_growfs_data_private.shrink_warning, i32 0, i32 6), align 4
  %call264.i = call i32 @___ratelimit(ptr noundef nonnull @xfs_growfs_data_private.shrink_warning, ptr noundef nonnull @__func__.xfs_growfs_data_private) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264.i)
  %tobool265.not.i = icmp eq i32 %call264.i, 0
  br i1 %tobool265.not.i, label %if.else263.i.if.end267.i_crit_edge, label %if.then266.i

if.else263.i.if.end267.i_crit_edge:               ; preds = %if.else263.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end267.i

if.then266.i:                                     ; preds = %if.else263.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.10) #8
  br label %if.end267.i

if.end267.i:                                      ; preds = %if.then266.i, %if.else263.i.if.end267.i_crit_edge
  %sub268.i = add i32 %nagcount.0.i, -1
  %call271.i = call i32 @xfs_ag_shrink_space(ptr noundef %mp, ptr noundef nonnull %tp.i325, i32 noundef %sub268.i, i32 noundef %extract.t480.i) #8
  br label %if.end272.i

if.end272.i:                                      ; preds = %if.end267.i, %if.then261.i
  %error.0.i = phi i32 [ %call262.i, %if.then261.i ], [ %call271.i, %if.end267.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool273.not.i = icmp eq i32 %error.0.i, 0
  br i1 %tobool273.not.i, label %if.end275.i, label %out_trans_cancel.i

if.end275.i:                                      ; preds = %if.end272.i
  br i1 %cmp232.i, label %if.then278.i, label %if.end275.i.if.end281.i_crit_edge

if.end275.i.if.end281.i_crit_edge:                ; preds = %if.end275.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end281.i

if.then278.i:                                     ; preds = %if.end275.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %tp.i325 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tp.i325, align 4
  %sub279.i = sub i32 %nagcount.0.i, %44
  %conv280.i = zext i32 %sub279.i to i64
  call void @xfs_trans_mod_sb(ptr noundef %51, i32 noundef 128, i64 noundef %conv280.i) #8
  br label %if.end281.i

if.end281.i:                                      ; preds = %if.then278.i, %if.end275.i.if.end281.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %nb.0.i, i64 %42)
  %tobool282.not.i = icmp eq i64 %nb.0.i, %42
  br i1 %tobool282.not.i, label %if.end281.i.if.end284.i_crit_edge, label %if.then283.i

if.end281.i.if.end284.i_crit_edge:                ; preds = %if.end281.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end284.i

if.then283.i:                                     ; preds = %if.end281.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %tp.i325 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tp.i325, align 4
  call void @xfs_trans_mod_sb(ptr noundef %53, i32 noundef 64, i64 noundef %sub223.i) #8
  br label %if.end284.i

if.end284.i:                                      ; preds = %if.then283.i, %if.end281.i.if.end284.i_crit_edge
  %nfree.i = getelementptr inbounds %struct.aghdr_init_data, ptr %id.i, i32 0, i32 3
  %54 = ptrtoint ptr %nfree.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %nfree.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %tobool285.not.i = icmp eq i64 %55, 0
  br i1 %tobool285.not.i, label %if.end284.i.if.end288.i_crit_edge, label %if.then286.i

if.end284.i.if.end288.i_crit_edge:                ; preds = %if.end284.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end288.i

if.then286.i:                                     ; preds = %if.end284.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %tp.i325 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tp.i325, align 4
  call void @xfs_trans_mod_sb(ptr noundef %57, i32 noundef 4, i64 noundef %55) #8
  br label %if.end288.i

if.end288.i:                                      ; preds = %if.then286.i, %if.end284.i.if.end288.i_crit_edge
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %58 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %m_features.i.i, align 8
  %and.i485.i = and i64 %59, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i485.i)
  %tobool.i.not.i = icmp eq i64 %and.i485.i, 0
  br i1 %tobool.i.not.i, label %if.end288.i.if.end291.i_crit_edge, label %if.then290.i

if.end288.i.if.end291.i_crit_edge:                ; preds = %if.end288.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end291.i

if.then290.i:                                     ; preds = %if.end288.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %tp.i325 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tp.i325, align 4
  call void @xfs_log_sb(ptr noundef %61) #8
  br label %if.end291.i

if.end291.i:                                      ; preds = %if.then290.i, %if.end288.i.if.end291.i_crit_edge
  %62 = ptrtoint ptr %tp.i325 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tp.i325, align 4
  %t_flags.i335 = getelementptr inbounds %struct.xfs_trans, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %t_flags.i335 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %t_flags.i335, align 4
  %or292.i = or i32 %65, 8
  store i32 %or292.i, ptr %t_flags.i335, align 4
  %call293.i = call i32 @xfs_trans_commit(ptr noundef %63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call293.i)
  %tobool294.not.i = icmp eq i32 %call293.i, 0
  br i1 %tobool294.not.i, label %if.end296.i, label %if.end291.i.xfs_growfs_data_private.exit.thread_crit_edge

if.end291.i.xfs_growfs_data_private.exit.thread_crit_edge: ; preds = %if.end291.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_data_private.exit.thread

if.end296.i:                                      ; preds = %if.end291.i
  %66 = ptrtoint ptr %nagimax.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nagimax.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool297.not.i = icmp eq i32 %67, 0
  br i1 %tobool297.not.i, label %if.end296.i.if.end299.i_crit_edge, label %if.then298.i

if.end296.i.if.end299.i_crit_edge:                ; preds = %if.end296.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end299.i

if.then298.i:                                     ; preds = %if.end296.i
  call void @__sanitizer_cov_trace_pc() #10
  %m_maxagi.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 52
  %68 = ptrtoint ptr %m_maxagi.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %m_maxagi.i, align 16
  br label %if.end299.i

if.end299.i:                                      ; preds = %if.then298.i, %if.end296.i.if.end299.i_crit_edge
  call void @xfs_set_low_space_thresholds(ptr noundef %mp) #8
  %call300.i = call i32 @xfs_alloc_set_aside(ptr noundef %mp) #8
  %m_alloc_set_aside.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 48
  %69 = ptrtoint ptr %m_alloc_set_aside.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call300.i, ptr %m_alloc_set_aside.i, align 32
  br i1 %cmp245.i, label %if.then303.i, label %if.end299.i.xfs_growfs_data_private.exit.thread342_crit_edge

if.end299.i.xfs_growfs_data_private.exit.thread342_crit_edge: ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_data_private.exit.thread342

if.then303.i:                                     ; preds = %if.end299.i
  %70 = ptrtoint ptr %lastag_extended.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %lastag_extended.i, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool304.not.i = icmp eq i8 %71, 0
  br i1 %tobool304.not.i, label %if.then303.i.if.end311.i_crit_edge, label %if.then305.i

if.then303.i.if.end311.i_crit_edge:               ; preds = %if.then303.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end311.i

if.then305.i:                                     ; preds = %if.then303.i
  %72 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %id.i, align 8
  %call306.i = call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef %73) #8
  %call307.i = call i32 @xfs_ag_resv_free(ptr noundef %call306.i) #8
  call void @xfs_perag_put(ptr noundef %call306.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307.i)
  %tobool308.not.i = icmp eq i32 %call307.i, 0
  br i1 %tobool308.not.i, label %if.then305.i.if.end311.i_crit_edge, label %if.then305.i.xfs_growfs_data_private.exit.thread_crit_edge

if.then305.i.xfs_growfs_data_private.exit.thread_crit_edge: ; preds = %if.then305.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_data_private.exit.thread

if.then305.i.if.end311.i_crit_edge:               ; preds = %if.then305.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end311.i

if.end311.i:                                      ; preds = %if.then305.i.if.end311.i_crit_edge, %if.then303.i.if.end311.i_crit_edge
  %call312.i = call i32 @xfs_fs_reserve_ag_blocks(ptr noundef %mp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call312.i)
  %cmp313.i = icmp eq i32 %call312.i, -28
  br i1 %cmp313.i, label %if.end311.i.xfs_growfs_data_private.exit.thread342_crit_edge, label %xfs_growfs_data_private.exit

if.end311.i.xfs_growfs_data_private.exit.thread342_crit_edge: ; preds = %if.end311.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_data_private.exit.thread342

out_trans_cancel.i:                               ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %tp.i325 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tp.i325, align 4
  call void @xfs_trans_cancel(ptr noundef %75) #8
  br label %xfs_growfs_data_private.exit.thread

xfs_growfs_data_private.exit.thread:              ; preds = %out_trans_cancel.i, %if.then305.i.xfs_growfs_data_private.exit.thread_crit_edge, %if.end291.i.xfs_growfs_data_private.exit.thread_crit_edge, %cond.end252.thread.i.xfs_growfs_data_private.exit.thread_crit_edge, %cond.end252.i.xfs_growfs_data_private.exit.thread_crit_edge, %if.else239.i.xfs_growfs_data_private.exit.thread_crit_edge, %if.then234.i.xfs_growfs_data_private.exit.thread_crit_edge, %if.end220.i.xfs_growfs_data_private.exit.thread_crit_edge, %if.then2.i.xfs_growfs_data_private.exit.thread_crit_edge, %if.then15.xfs_growfs_data_private.exit.thread_crit_edge
  %retval.1.i.ph = phi i32 [ %call255509.i, %cond.end252.thread.i.xfs_growfs_data_private.exit.thread_crit_edge ], [ %call293.i, %if.end291.i.xfs_growfs_data_private.exit.thread_crit_edge ], [ %call255.i, %cond.end252.i.xfs_growfs_data_private.exit.thread_crit_edge ], [ -22, %if.else239.i.xfs_growfs_data_private.exit.thread_crit_edge ], [ %call235.i, %if.then234.i.xfs_growfs_data_private.exit.thread_crit_edge ], [ -22, %if.end220.i.xfs_growfs_data_private.exit.thread_crit_edge ], [ %call9.i, %if.then2.i.xfs_growfs_data_private.exit.thread_crit_edge ], [ %call.i326, %if.then15.xfs_growfs_data_private.exit.thread_crit_edge ], [ %call307.i, %if.then305.i.xfs_growfs_data_private.exit.thread_crit_edge ], [ %error.0.i, %out_trans_cancel.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %id.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp.i325) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lastag_extended.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nagimax.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp.i) #8
  br label %out_error

xfs_growfs_data_private.exit.thread342:           ; preds = %if.end311.i.xfs_growfs_data_private.exit.thread342_crit_edge, %if.end299.i.xfs_growfs_data_private.exit.thread342_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %id.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp.i325) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lastag_extended.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nagimax.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp.i) #8
  br label %if.end20

xfs_growfs_data_private.exit:                     ; preds = %if.end311.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %id.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp.i325) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lastag_extended.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nagimax.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312.i)
  %tobool17.not = icmp eq i32 %call312.i, 0
  br i1 %tobool17.not, label %xfs_growfs_data_private.exit.if.end20_crit_edge, label %xfs_growfs_data_private.exit.out_error_crit_edge

xfs_growfs_data_private.exit.out_error_crit_edge: ; preds = %xfs_growfs_data_private.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_error

xfs_growfs_data_private.exit.if.end20_crit_edge:  ; preds = %xfs_growfs_data_private.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %xfs_growfs_data_private.exit.if.end20_crit_edge, %xfs_growfs_data_private.exit.thread342, %if.end11.if.end20_crit_edge
  %76 = ptrtoint ptr %sb_imax_pct to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %sb_imax_pct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool23.not = icmp eq i8 %77, 0
  br i1 %tobool23.not, label %if.end20.if.end224_crit_edge, label %if.end215

if.end20.if.end224_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

if.end215:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %sb_dblocks, align 8
  %conv29 = zext i8 %77 to i64
  %mul = mul i64 %79, %conv29
  %80 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul, i32 0) #11, !srcloc !48
  %asmresult.i = extractvalue { i64, i32 } %80, 0
  %asmresult4.i = extractvalue { i64, i32 } %80, 1
  %81 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #11, !srcloc !49
  %asmresult10.i = extractvalue { i64, i32 } %81, 0
  %icount.0 = lshr i64 %asmresult10.i, 6
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 23
  %82 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %sb_inopblog, align 1
  %sh_prom219 = zext i8 %83 to i64
  %shl220 = shl i64 %icount.0, %sh_prom219
  br label %if.end224

if.end224:                                        ; preds = %if.end215, %if.end20.if.end224_crit_edge
  %shl220.sink = phi i64 [ %shl220, %if.end215 ], [ 0, %if.end20.if.end224_crit_edge ]
  %84 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %shl220.sink, ptr %84, align 16
  %call225 = call i32 @xfs_update_secondary_sbs(ptr noundef %mp) #8
  br label %out_error

out_error:                                        ; preds = %if.end224, %xfs_growfs_data_private.exit.out_error_crit_edge, %xfs_growfs_data_private.exit.thread, %xfs_growfs_imaxpct.exit.out_error_crit_edge, %xfs_growfs_imaxpct.exit.thread
  %error.0 = phi i32 [ %call4.i, %xfs_growfs_imaxpct.exit.out_error_crit_edge ], [ %call312.i, %xfs_growfs_data_private.exit.out_error_crit_edge ], [ %call225, %if.end224 ], [ %retval.0.i.ph, %xfs_growfs_imaxpct.exit.thread ], [ %retval.1.i.ph, %xfs_growfs_data_private.exit.thread ]
  %m_generation = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 98
  %86 = ptrtoint ptr %m_generation to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %m_generation, align 4
  %inc = add i32 %87, 1
  store i32 %inc, ptr %m_generation, align 4
  call void @mutex_unlock(ptr noundef %m_growlock) #8
  br label %cleanup

cleanup:                                          ; preds = %out_error, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_error ], [ -1, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_update_secondary_sbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_growfs_log(ptr noundef %mp, ptr nocapture noundef readonly %in) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_growlock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 99
  %call1 = tail call i32 @mutex_trylock(ptr noundef %m_growlock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp.i = icmp ult i32 %1, 512
  br i1 %cmp.i, label %if.end3.xfs_growfs_log_private.exit_crit_edge, label %lor.lhs.false.i

if.end3.xfs_growfs_log_private.exit_crit_edge:    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_log_private.exit

lor.lhs.false.i:                                  ; preds = %if.end3
  %conv.i = zext i32 %1 to i64
  %m_blockmask.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 31
  %2 = ptrtoint ptr %m_blockmask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_blockmask.i, align 8
  %conv3.i = zext i32 %3 to i64
  %add.i = add nuw nsw i64 %conv3.i, 10485760
  %sb_blocklog.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %4 = ptrtoint ptr %sb_blocklog.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_blocklog.i, align 8
  %sh_prom.i = zext i8 %5 to i64
  %shr.i = lshr i64 %add.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %conv.i)
  %cmp5.i = icmp ugt i64 %shr.i, %conv.i
  br i1 %cmp5.i, label %lor.lhs.false.i.xfs_growfs_log_private.exit_crit_edge, label %if.end.i

lor.lhs.false.i.xfs_growfs_log_private.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_log_private.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sb_logblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 14
  %6 = ptrtoint ptr %sb_logblocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_logblocks.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %7)
  %cmp8.i = icmp eq i32 %1, %7
  br i1 %cmp8.i, label %land.lhs.true.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %isint.i = getelementptr inbounds %struct.xfs_growfs_log, ptr %in, i32 0, i32 1
  %8 = ptrtoint ptr %isint.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %isint.i, align 4
  %sb_logstart.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 6
  %10 = ptrtoint ptr %sb_logstart.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sb_logstart.i, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp11.i = icmp ne i64 %11, 0
  %conv12.i = zext i1 %cmp11.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv12.i)
  %cmp13.i = icmp eq i32 %9, %conv12.i
  br i1 %cmp13.i, label %land.lhs.true.i.xfs_growfs_log_private.exit_crit_edge, label %land.lhs.true.i.if.end16.i_crit_edge

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

land.lhs.true.i.xfs_growfs_log_private.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_growfs_log_private.exit

if.end16.i:                                       ; preds = %land.lhs.true.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  br label %xfs_growfs_log_private.exit

xfs_growfs_log_private.exit:                      ; preds = %if.end16.i, %land.lhs.true.i.xfs_growfs_log_private.exit_crit_edge, %lor.lhs.false.i.xfs_growfs_log_private.exit_crit_edge, %if.end3.xfs_growfs_log_private.exit_crit_edge
  %retval.0.i = phi i32 [ -38, %if.end16.i ], [ -22, %lor.lhs.false.i.xfs_growfs_log_private.exit_crit_edge ], [ -22, %if.end3.xfs_growfs_log_private.exit_crit_edge ], [ -22, %land.lhs.true.i.xfs_growfs_log_private.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %m_growlock) #8
  br label %cleanup

cleanup:                                          ; preds = %xfs_growfs_log_private.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %xfs_growfs_log_private.exit ], [ -1, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_fs_counts(ptr noundef %mp, ptr nocapture noundef writeonly %cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 77, i32 1
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load volatile i64, ptr %count.i, align 8
  %2 = tail call i64 @llvm.smax.i64(i64 %1, i64 0) #8
  %allocino = getelementptr inbounds %struct.xfs_fsop_counts, ptr %cnt, i32 0, i32 3
  %3 = ptrtoint ptr %allocino to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %allocino, align 8
  %count.i13 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 78, i32 1
  %4 = ptrtoint ptr %count.i13 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load volatile i64, ptr %count.i13, align 8
  %6 = tail call i64 @llvm.smax.i64(i64 %5, i64 0) #8
  %freeino = getelementptr inbounds %struct.xfs_fsop_counts, ptr %cnt, i32 0, i32 2
  %7 = ptrtoint ptr %freeino to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %freeino, align 8
  %count.i14 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 79, i32 1
  %8 = ptrtoint ptr %count.i14 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load volatile i64, ptr %count.i14, align 8
  %10 = tail call i64 @llvm.smax.i64(i64 %9, i64 0) #8
  %m_alloc_set_aside = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 48
  %11 = ptrtoint ptr %m_alloc_set_aside to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_alloc_set_aside, align 32
  %conv = zext i32 %12 to i64
  %sub = sub nsw i64 %10, %conv
  %13 = ptrtoint ptr %cnt to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %sub, ptr %cnt, align 8
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #8
  %sb_frextents = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 31
  %14 = ptrtoint ptr %sb_frextents to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sb_frextents, align 8
  %freertx = getelementptr inbounds %struct.xfs_fsop_counts, ptr %cnt, i32 0, i32 1
  %16 = ptrtoint ptr %freertx to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %freertx, align 8
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_reserve_blocks(ptr noundef %mp, ptr noundef readonly %inval, ptr noundef writeonly %outval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %inval, null
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %outval, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %m_resblks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 84
  %0 = ptrtoint ptr %m_resblks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_resblks, align 8
  %2 = ptrtoint ptr %outval to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %outval, align 8
  %m_resblks_avail = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 85
  %3 = ptrtoint ptr %m_resblks_avail to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %m_resblks_avail, align 64
  %resblks_avail = getelementptr inbounds %struct.xfs_fsop_resblks, ptr %outval, i32 0, i32 1
  %5 = ptrtoint ptr %resblks_avail to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %resblks_avail, align 8
  br label %cleanup

if.end2:                                          ; preds = %entry
  %6 = ptrtoint ptr %inval to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %inval, align 8
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #8
  %m_resblks3 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 84
  %8 = ptrtoint ptr %m_resblks3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_resblks3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %7)
  %cmp4 = icmp ugt i64 %9, %7
  br i1 %cmp4, label %if.then5, label %do.body.preheader

do.body.preheader:                                ; preds = %if.end2
  %m_fdblocks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 79
  %m_alloc_set_aside = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 48
  br label %do.body

if.then5:                                         ; preds = %if.end2
  %m_resblks_avail6 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 85
  %10 = ptrtoint ptr %m_resblks_avail6 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_resblks_avail6, align 64
  %sub = sub i64 %11, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp7 = icmp sgt i64 %sub, 0
  br i1 %cmp7, label %if.then14, label %if.end11.thread

if.end11.thread:                                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %m_resblks3 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %7, ptr %m_resblks3, align 8
  br label %out

if.then14:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %m_resblks_avail6 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %7, ptr %m_resblks_avail6, align 64
  %14 = ptrtoint ptr %m_resblks3 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %7, ptr %m_resblks3, align 8
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #8
  %call = tail call i32 @xfs_mod_fdblocks(ptr noundef %mp, i64 noundef %sub, i1 noundef zeroext false) #8
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #8
  br label %out

do.body:                                          ; preds = %if.end24.do.body_crit_edge, %do.body.preheader
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %m_fdblocks) #8
  %15 = ptrtoint ptr %m_alloc_set_aside to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_alloc_set_aside, align 32
  %conv = zext i32 %16 to i64
  %sub20 = sub i64 %call.i, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub20)
  %cmp21 = icmp slt i64 %sub20, 1
  br i1 %cmp21, label %do.body.out_crit_edge, label %if.end24

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end24:                                         ; preds = %do.body
  %17 = ptrtoint ptr %m_resblks3 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %m_resblks3, align 8
  %sub26 = sub i64 %7, %18
  %sub27 = sub i64 %sub20, %sub26
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub27)
  %cmp28 = icmp slt i64 %sub27, 0
  %sub20.sub26 = select i1 %cmp28, i64 %sub20, i64 %sub26
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #8
  %sub33 = sub i64 0, %sub20.sub26
  %call34 = tail call i32 @xfs_mod_fdblocks(ptr noundef %mp, i64 noundef %sub33, i1 noundef zeroext false) #8
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #8
  %19 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call34, label %if.end24.out_crit_edge [
    i32 -28, label %if.end24.do.body_crit_edge
    i32 0, label %land.lhs.true
  ]

if.end24.do.body_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub20.sub26)
  %tobool39.not = icmp eq i64 %sub20.sub26, 0
  br i1 %tobool39.not, label %land.lhs.true.out_crit_edge, label %if.then40

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %m_resblks3 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %m_resblks3, align 8
  %add = add i64 %21, %sub20.sub26
  store i64 %add, ptr %m_resblks3, align 8
  %m_resblks_avail42 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 85
  %22 = ptrtoint ptr %m_resblks_avail42 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m_resblks_avail42, align 64
  %add43 = add i64 %23, %sub20.sub26
  store i64 %add43, ptr %m_resblks_avail42, align 64
  br label %out

out:                                              ; preds = %if.then40, %land.lhs.true.out_crit_edge, %if.end24.out_crit_edge, %do.body.out_crit_edge, %if.then14, %if.end11.thread
  %error.2 = phi i32 [ %call, %if.then14 ], [ 0, %if.then40 ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %if.end11.thread ], [ %call34, %if.end24.out_crit_edge ], [ -28, %do.body.out_crit_edge ]
  %tobool45.not = icmp eq ptr %outval, null
  br i1 %tobool45.not, label %out.if.end51_crit_edge, label %if.then46

out.if.end51_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then46:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %m_resblks3 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %m_resblks3, align 8
  %26 = ptrtoint ptr %outval to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %outval, align 8
  %m_resblks_avail49 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 85
  %27 = ptrtoint ptr %m_resblks_avail49 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %m_resblks_avail49, align 64
  %resblks_avail50 = getelementptr inbounds %struct.xfs_fsop_resblks, ptr %outval, i32 0, i32 1
  %29 = ptrtoint ptr %resblks_avail50 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %resblks_avail50, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %out.if.end51_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %error.2, %if.end51 ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_mod_fdblocks(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_fs_goingdown(ptr noundef %mp, i32 noundef %inflags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %inflags to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %inflags, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %1 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m_super, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 26
  %3 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_bdev, align 4
  %call = tail call i32 @freeze_bdev(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_do_force_shutdown(ptr noundef %mp, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 491)
  %5 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_super, align 8
  %s_bdev2 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 26
  %7 = ptrtoint ptr %s_bdev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_bdev2, align 4
  %call3 = tail call i32 @thaw_bdev(ptr noundef %8) #8
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_do_force_shutdown(ptr noundef %mp, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 497)
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_do_force_shutdown(ptr noundef %mp, i32 noundef 6, ptr noundef nonnull @.str, i32 noundef 501)
  br label %return

return:                                           ; preds = %sw.bb5, %sw.bb4, %if.then, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %if.then ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_do_force_shutdown(ptr noundef %mp, i32 noundef %flags, ptr noundef %fname, i32 noundef %lnnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m_opstate = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %m_opstate) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_sb_bp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 3
  %0 = ptrtoint ptr %m_sb_bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_sb_bp, align 16
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_flags, align 4
  %or = or i32 %3, 32
  store i32 %or, ptr %b_flags, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.1) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %m_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 8
  %4 = ptrtoint ptr %m_log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_log, align 4
  %call8 = tail call zeroext i1 @xlog_force_shutdown(ptr noundef %5, i32 noundef %flags) #8
  %and10 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %. = select i1 %tobool11.not, i32 32, i32 16
  %.str.4..str.3 = select i1 %tobool11.not, ptr @.str.4, ptr @.str.3
  %tag.0 = select i1 %call8, i32 64, i32 %.
  %why.0 = select i1 %call8, ptr @.str.2, ptr %.str.4..str.3
  tail call fastcc void @trace_xfs_force_shutdown(ptr noundef %mp, i32 noundef %tag.0, i32 noundef %flags, ptr noundef %fname, i32 noundef %lnnum)
  %6 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %mp, i32 noundef %tag.0, ptr noundef nonnull @.str.5, ptr noundef nonnull %why.0, i32 noundef %flags, ptr noundef %6, ptr noundef %fname, i32 noundef %lnnum) #8
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.6) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp sgt i32 %7, 4
  br i1 %cmp, label %if.then16, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_stack() #12
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thaw_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xlog_force_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_force_shutdown(ptr noundef %mp, i32 noundef %ptag, i32 noundef %flags, ptr noundef %fname, i32 noundef %line_num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_force_shutdown, i32 0, i32 1), ptr blockaddress(@trace_xfs_force_shutdown, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !50

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !34) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !45

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !34) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !51
  %call42 = tail call i32 @__traceiter_xfs_force_shutdown(ptr noundef null, ptr noundef %mp, i32 noundef %ptag, i32 noundef %flags, ptr noundef %fname, i32 noundef %line_num) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !52
  %13 = tail call i32 @llvm.read_register.i32(metadata !34) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !34) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !45

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !34) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_force_shutdown, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_force_shutdown, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_force_shutdown.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_force_shutdown.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 4163, ptr noundef nonnull @.str.12) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !54
  %31 = tail call i32 @llvm.read_register.i32(metadata !34) #8
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
declare dso_local void @xfs_alert_tag(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_fs_reserve_ag_blocks(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m_finobt_nores = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 69
  %0 = ptrtoint ptr %m_finobt_nores to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %m_finobt_nores, align 2
  %call = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef 0) #8
  %cmp.not20 = icmp eq ptr %call, null
  br i1 %cmp.not20, label %entry.if.end8_crit_edge, label %for.body.lr.ph

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.body.lr.ph:                                   ; preds = %entry
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %for.body.lr.ph
  %error.022 = phi i32 [ 0, %for.body.lr.ph ], [ %error.1, %xfs_perag_next.exit.for.body_crit_edge ]
  %pag.021 = phi ptr [ %call, %for.body.lr.ph ], [ %call.i, %xfs_perag_next.exit.for.body_crit_edge ]
  %call1 = tail call i32 @xfs_ag_resv_init(ptr noundef nonnull %pag.021, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.022)
  %tobool2.not = icmp eq i32 %error.022, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  %error.1 = select i1 %or.cond, i32 %call1, i32 %error.022
  %1 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %2, -1
  %3 = ptrtoint ptr %pag.021 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pag.021, align 4
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.021, i32 0, i32 1
  %5 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pag_agno.i, align 4
  %add.i = add i32 %6, 1
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.021) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp.i = icmp ugt i32 %add.i, %sub
  br i1 %cmp.i, label %for.body.for.end_crit_edge, label %xfs_perag_next.exit

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

xfs_perag_next.exit:                              ; preds = %for.body
  %call.i = tail call ptr @xfs_perag_get(ptr noundef %4, i32 noundef %add.i) #8
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %xfs_perag_next.exit.for.end_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

xfs_perag_next.exit.for.end_crit_edge:            ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %xfs_perag_next.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %7 = zext i32 %error.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %error.1, label %if.then7 [
    i32 0, label %for.end.if.end8_crit_edge
    i32 -28, label %for.end.if.end8_crit_edge27
  ]

for.end.if.end8_crit_edge27:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.7, i32 noundef %error.1) #8
  tail call void @xfs_do_force_shutdown(ptr noundef %mp, i32 noundef 8, ptr noundef nonnull @.str, i32 noundef 583)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.end.if.end8_crit_edge, %for.end.if.end8_crit_edge27, %entry.if.end8_crit_edge
  %error.0.lcssa26 = phi i32 [ %error.1, %for.end.if.end8_crit_edge ], [ %error.1, %for.end.if.end8_crit_edge27 ], [ %error.1, %if.then7 ], [ 0, %entry.if.end8_crit_edge ]
  ret i32 %error.0.lcssa26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_resv_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_fs_unreserve_ag_blocks(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef 0) #8
  %cmp.not15 = icmp eq ptr %call, null
  br i1 %cmp.not15, label %entry.if.end6_crit_edge, label %for.body.lr.ph

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.body.lr.ph:                                   ; preds = %entry
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %for.body.lr.ph
  %error.017 = phi i32 [ 0, %for.body.lr.ph ], [ %error.1, %xfs_perag_next.exit.for.body_crit_edge ]
  %pag.016 = phi ptr [ %call, %for.body.lr.ph ], [ %call.i, %xfs_perag_next.exit.for.body_crit_edge ]
  %call1 = tail call i32 @xfs_ag_resv_free(ptr noundef nonnull %pag.016) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.017)
  %tobool2.not = icmp eq i32 %error.017, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  %error.1 = select i1 %or.cond, i32 %call1, i32 %error.017
  %0 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %1, -1
  %2 = ptrtoint ptr %pag.016 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pag.016, align 4
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.016, i32 0, i32 1
  %4 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pag_agno.i, align 4
  %add.i = add i32 %5, 1
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.016) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp.i = icmp ugt i32 %add.i, %sub
  br i1 %cmp.i, label %for.body.for.end_crit_edge, label %xfs_perag_next.exit

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

xfs_perag_next.exit:                              ; preds = %for.body
  %call.i = tail call ptr @xfs_perag_get(ptr noundef %3, i32 noundef %add.i) #8
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %xfs_perag_next.exit.for.end_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

xfs_perag_next.exit.for.end_crit_edge:            ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %xfs_perag_next.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool4.not = icmp eq i32 %error.1, 0
  br i1 %tobool4.not, label %for.end.if.end6_crit_edge, label %if.then5

for.end.if.end6_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.8, i32 noundef %error.1) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %error.0.lcssa22 = phi i32 [ %error.1, %if.then5 ], [ 0, %for.end.if.end6_crit_edge ], [ 0, %entry.if.end6_crit_edge ]
  ret i32 %error.0.lcssa22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_resv_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_mod_sb(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_sb_validate_fsb_count(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_read_uncached(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_initialize_perag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_resizefs_init_new_ags(ptr noundef %tp, ptr noundef %id, i32 noundef %oagcount, i32 noundef %nagcount, i64 noundef %delta, ptr nocapture noundef writeonly %lastag_extended) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sb_dblocks, align 8
  %add = add i64 %3, %delta
  %4 = ptrtoint ptr %lastag_extended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %lastag_extended, align 1
  %buffer_list = getelementptr inbounds %struct.aghdr_init_data, ptr %id, i32 0, i32 2
  %5 = ptrtoint ptr %buffer_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %buffer_list, ptr %buffer_list, align 4
  %prev.i = getelementptr inbounds %struct.aghdr_init_data, ptr %id, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buffer_list, ptr %prev.i, align 4
  %sub = add i32 %nagcount, -1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %oagcount)
  %cmp.not59 = icmp ult i32 %sub, %oagcount
  br i1 %cmp.not59, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sb_agblocks11 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 11
  %agsize12 = getelementptr inbounds %struct.aghdr_init_data, ptr %id, i32 0, i32 1
  %conv = zext i32 %sub to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i32 [ %sub, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %delta.addr.060 = phi i64 [ %delta, %for.body.lr.ph ], [ %sub19, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub)
  %cmp4 = icmp eq i32 %8, %sub
  %9 = ptrtoint ptr %sb_agblocks11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_agblocks11, align 4
  br i1 %cmp4, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv7 = zext i32 %10 to i64
  %mul = mul nuw i64 %conv7, %conv
  %sub8 = sub i64 %add, %mul
  %conv9 = trunc i64 %sub8 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %storemerge = phi i32 [ %conv9, %if.then ], [ %10, %for.body.if.end_crit_edge ]
  %11 = ptrtoint ptr %agsize12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %agsize12, align 4
  %call = tail call i32 @xfs_ag_init_headers(ptr noundef %1, ptr noundef %id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_buf_delwri_cancel(ptr noundef %buffer_list) #8
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %id, align 8
  %14 = ptrtoint ptr %agsize12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %agsize12, align 4
  %conv18 = zext i32 %15 to i64
  %sub19 = sub i64 %delta.addr.060, %conv18
  %cmp.not = icmp ult i32 %dec, %oagcount
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %delta.addr.0.lcssa = phi i64 [ %delta, %entry.for.end_crit_edge ], [ %sub19, %for.inc.for.end_crit_edge ]
  %call21 = tail call i32 @xfs_buf_delwri_submit(ptr noundef %buffer_list) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta.addr.0.lcssa)
  %tobool25.not = icmp eq i64 %delta.addr.0.lcssa, 0
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.then26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %lastag_extended to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %lastag_extended, align 1
  %conv27 = trunc i64 %delta.addr.0.lcssa to i32
  %call28 = tail call i32 @xfs_ag_extend_space(ptr noundef %1, ptr noundef %tp, ptr noundef %id, i32 noundef %conv27) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end24.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then13
  %retval.0 = phi i32 [ %call, %if.then13 ], [ %call21, %for.end.cleanup_crit_edge ], [ %call28, %if.then26 ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_shrink_space(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_sb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_set_low_space_thresholds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_set_aside(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_init_headers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_delwri_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_delwri_submit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_extend_space(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_force_shutdown(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_fsops.c", i32 491, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_fsops.c", i32 537, i32 17}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_fsops.c", i32 541, i32 9}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_fsops.c", i32 544, i32 9}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_fsops.c", i32 547, i32 9}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_fsops.c", i32 553, i32 1}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/xfs/xfs_fsops.c", i32 556, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/xfs/xfs_fsops.c", i32 582, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/xfs/xfs_fsops.c", i32 609, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/xfs/xfs_fsops.c", i32 152, i32 4}
!20 = !{ptr @xfs_growfs_data_private.shrink_warning, !21, !"shrink_warning", i1 false, i1 false}
!21 = !{!"../fs/xfs/xfs_fsops.c", i32 151, i32 33}
!22 = !{ptr @__func__.xfs_growfs_data_private, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/xfs/xfs_fsops.c", i32 155, i32 7}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_fsops.c", i32 157, i32 2}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../fs/xfs/xfs_trace.h", i32 4139, i32 1}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!30 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2148480526, i64 2148480806, i64 2148481140, i64 2148481474}
!47 = !{i8 0, i8 2}
!48 = !{i64 994982, i64 995009, i64 995031, i64 995059}
!49 = !{i64 995390, i64 995417, i64 995450, i64 995471, i64 995498, i64 995524}
!50 = !{i64 2148258729, i64 2148258734, i64 2148258747, i64 2148258791, i64 2148258825, i64 2148258846}
!51 = !{i64 2166229262}
!52 = !{i64 2166229525}
!53 = !{i64 2149960822}
!54 = !{i64 2149961858}
