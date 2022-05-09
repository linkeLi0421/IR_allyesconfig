; ModuleID = '/llk/IR_all_yes/fs/erofs/decompressor.c_pt.bc'
source_filename = "../fs/erofs/decompressor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.z_erofs_decompressor = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.z_erofs_lz4_cfgs = type { i16, i16, [10 x i8] }
%struct.erofs_sb_info = type { %struct.erofs_mount_opts, %struct.list_head, %struct.mutex, %struct.xarray, i32, i16, ptr, %struct.erofs_sb_lz4_info, ptr, ptr, i64, i64, i32, i32, i32, i16, i8, i32, i32, i64, i64, i64, [16 x i8], [16 x i8], i32, i32, %struct.kobject, %struct.completion }
%struct.erofs_mount_opts = type { i8, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.erofs_sb_lz4_info = type { i16, i16 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.erofs_super_block = type { i32, i32, i32, i8, i8, i16, i64, i64, i32, i32, i32, i32, [16 x i8], [16 x i8], i32, %union.anon.77, i16, i16, [38 x i8] }
%union.anon.77 = type { i16 }
%struct.z_erofs_decompress_req = type { ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, i8 }
%struct.z_erofs_lz4_decompress_ctx = type { ptr, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.5, %union.anon.57, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.57 = type { %struct.atomic_t }

@__func__.z_erofs_load_lz4_config = private unnamed_addr constant [24 x i8] c"z_erofs_load_lz4_config\00", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid lz4 cfgs, size=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"too large lz4 pclusterblks %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"EXPERIMENTAL big pcluster feature in use. Use at your own risk!\0A\00", [63 x i8] zeroinitializer }, align 32
@decompressors = internal constant { [3 x %struct.z_erofs_decompressor], [40 x i8] } { [3 x %struct.z_erofs_decompressor] [%struct.z_erofs_decompressor { ptr @z_erofs_lz4_decompress, ptr @.str.3 }, %struct.z_erofs_decompressor { ptr @z_erofs_lzma_decompress, ptr @.str.4 }, %struct.z_erofs_decompressor { ptr @z_erofs_shifted_transform, ptr @.str.5 }], [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lz4\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lzma\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"shifted\00", [24 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__func__.z_erofs_lz4_decompress_mem = private unnamed_addr constant [27 x i8] c"z_erofs_lz4_decompress_mem\00", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to decompress %d in[%u, %u] out[%u]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[ in]: \00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[out]: \00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/erofs/decompressor.c\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 36, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 46, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 50, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"decompressors\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 358, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 365, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 370, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 361, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1160, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 246, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 249, i32 18 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 249, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 251, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [27 x i8] c"../fs/erofs/decompressor.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 150, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @decompressors, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decompressors to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @z_erofs_load_lz4_config(ptr noundef %sb, ptr nocapture noundef readonly %dsb, ptr noundef readonly %lz4, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %tobool.not = icmp eq ptr %lz4, null
  br i1 %tobool.not, label %if.else28, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %size)
  %cmp = icmp ult i32 %size, 14
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.z_erofs_load_lz4_config, ptr noundef nonnull @.str, i32 noundef %size) #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %lz4 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %lz4, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %max_pclusterblks = getelementptr inbounds %struct.z_erofs_lz4_cfgs, ptr %lz4, i32 0, i32 1
  %5 = ptrtoint ptr %max_pclusterblks to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %max_pclusterblks, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %max_pclusterblks3 = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %max_pclusterblks3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %max_pclusterblks3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool6.not = icmp eq i16 %6, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %max_pclusterblks3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %max_pclusterblks3, align 2
  br label %if.end31

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %7)
  %cmp12 = icmp ugt i16 %7, 256
  br i1 %cmp12, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.z_erofs_load_lz4_config, ptr noundef nonnull @.str.1, i32 noundef %conv) #6
  br label %cleanup

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp22 = icmp ugt i16 %7, 1
  br i1 %cmp22, label %if.then24, label %if.else18.if.end31_crit_edge

if.else18.if.end31_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then24:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @_erofs_info(ptr noundef %sb, ptr noundef nonnull @__func__.z_erofs_load_lz4_config, ptr noundef nonnull @.str.2) #6
  br label %if.end31

if.else28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %u1 = getelementptr inbounds %struct.erofs_super_block, ptr %dsb, i32 0, i32 15
  %10 = ptrtoint ptr %u1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %u1, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %max_pclusterblks30 = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %max_pclusterblks30 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %max_pclusterblks30, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.else28, %if.then24, %if.else18.if.end31_crit_edge, %if.then7
  %distance.0 = phi i16 [ %4, %if.then24 ], [ %4, %if.else18.if.end31_crit_edge ], [ %4, %if.then7 ], [ %12, %if.else28 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %distance.0)
  %tobool33.not = icmp eq i16 %distance.0, 0
  %conv32 = zext i16 %distance.0 to i32
  %sub = add nuw nsw i32 %conv32, 4095
  %div57 = lshr i32 %sub, 12
  %14 = trunc i32 %div57 to i16
  %phi.cast = add nuw nsw i16 %14, 1
  %cond = select i1 %tobool33.not, i16 17, i16 %phi.cast
  %lz437 = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %lz437 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %cond, ptr %lz437, align 4
  %max_pclusterblks39 = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %max_pclusterblks39 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %max_pclusterblks39, align 2
  %conv40 = zext i16 %17 to i32
  %call = tail call i32 @erofs_pcpubuf_growsize(i32 noundef %conv40) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then14, %if.then1
  %retval.0 = phi i32 [ -22, %if.then1 ], [ -22, %if.then14 ], [ %call, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_erofs_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_erofs_info(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @erofs_pcpubuf_growsize(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @z_erofs_fixup_insize(ptr nocapture noundef %rq, ptr noundef %padbuf, i32 noundef %padbufsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @memchr_inv(ptr noundef %padbuf, i32 noundef 0, i32 noundef %padbufsize) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %padbuf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %inputsize = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 5
  %0 = ptrtoint ptr %inputsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inputsize, align 4
  %sub = sub i32 %1, %sub.ptr.sub
  store i32 %sub, ptr %inputsize, align 4
  %pageofs_in = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 3
  %2 = ptrtoint ptr %pageofs_in to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pageofs_in, align 4
  %4 = trunc i32 %sub.ptr.sub to i16
  %conv4 = add i16 %3, %4
  store i16 %conv4, ptr %pageofs_in, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -117, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @z_erofs_decompress(ptr noundef %rq, ptr noundef %pagepool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %alg = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 7
  %0 = ptrtoint ptr %alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alg, align 4
  %arrayidx = getelementptr [3 x %struct.z_erofs_decompressor], ptr @decompressors, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 %3(ptr noundef %rq, ptr noundef %pagepool) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @z_erofs_lz4_decompress(ptr noundef %rq, ptr noundef %pagepool) #0 align 64 {
entry:
  %ctx = alloca %struct.z_erofs_lz4_decompress_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx) #6
  %0 = getelementptr inbounds %struct.z_erofs_lz4_decompress_ctx, ptr %ctx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.z_erofs_lz4_decompress_ctx, ptr %ctx, i32 0, i32 2
  %2 = getelementptr inbounds %struct.z_erofs_lz4_decompress_ctx, ptr %ctx, i32 0, i32 3
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rq, ptr %ctx, align 4
  %pageofs_out = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 4
  %4 = ptrtoint ptr %pageofs_out to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pageofs_out, align 2
  %conv = zext i16 %5 to i32
  %outputsize = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 6
  %6 = ptrtoint ptr %outputsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outputsize, align 4
  %add = add i32 %7, %conv
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %2, align 4
  %add3 = add i32 %add, 4095
  %shr = lshr i32 %add3, 12
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %1, align 4
  %inputsize = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 5
  %10 = ptrtoint ptr %inputsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inputsize, align 4
  %add4 = add i32 %11, 4095
  %shr6 = lshr i32 %add4, 12
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr6, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr6)
  %cmp = icmp eq i32 %shr6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp10 = icmp eq i32 %shr, 1
  %or.cond = select i1 %cmp, i1 %cmp10, i1 false
  br i1 %or.cond, label %land.lhs.true12, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true12:                                  ; preds = %entry
  %inplace_io = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 8
  %13 = ptrtoint ptr %inplace_io to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %inplace_io, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %do.body, label %land.lhs.true12.if.end25_crit_edge

land.lhs.true12.if.end25_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.body:                                          ; preds = %land.lhs.true12
  %out = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 2
  %15 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %out, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %do.body18, label %do.end23, !prof !39

do.body18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 289, 0\0A.popsection", ""() #6, !srcloc !40
  unreachable

do.end23:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %19 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %19, 512
  %20 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %24 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 213
  %28 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %29, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %18, i32 noundef %or.i) #6
  br label %dstmap_out

if.end25:                                         ; preds = %land.lhs.true12.if.end25_crit_edge, %entry.if.end25_crit_edge
  %call26 = call fastcc i32 @z_erofs_lz4_prepare_dstpages(ptr noundef nonnull %ctx, ptr noundef %pagepool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp30 = icmp sgt i32 %call26, 0
  %out33 = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 2
  %30 = ptrtoint ptr %out33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %out33, align 4
  br i1 %cmp30, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call34 = tail call ptr @page_address(ptr noundef %33) #6
  br label %dstmap_out

if.else35:                                        ; preds = %if.end25
  %call7.i = tail call ptr @vm_map_ram(ptr noundef %31, i32 noundef %shr, i32 noundef -1) #6
  %tobool.not8.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not8.i, label %lor.lhs.false.preheader.i, label %if.else35.dstmap_out_crit_edge

if.else35.dstmap_out_crit_edge:                   ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  br label %dstmap_out

lor.lhs.false.preheader.i:                        ; preds = %if.else35
  tail call void @vm_unmap_aliases() #6
  %call.i = tail call ptr @vm_map_ram(ptr noundef %31, i32 noundef %shr, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %erofs_vm_map_ram.exit, label %lor.lhs.false.preheader.i.dstmap_out_crit_edge

lor.lhs.false.preheader.i.dstmap_out_crit_edge:   ; preds = %lor.lhs.false.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dstmap_out

erofs_vm_map_ram.exit:                            ; preds = %lor.lhs.false.preheader.i
  tail call void @vm_unmap_aliases() #6
  %call.1.i = tail call ptr @vm_map_ram(ptr noundef %31, i32 noundef %shr, i32 noundef -1) #6
  %tobool39.not = icmp eq ptr %call.1.i, null
  br i1 %tobool39.not, label %erofs_vm_map_ram.exit.cleanup_crit_edge, label %erofs_vm_map_ram.exit.dstmap_out_crit_edge

erofs_vm_map_ram.exit.dstmap_out_crit_edge:       ; preds = %erofs_vm_map_ram.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dstmap_out

erofs_vm_map_ram.exit.cleanup_crit_edge:          ; preds = %erofs_vm_map_ram.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dstmap_out:                                       ; preds = %erofs_vm_map_ram.exit.dstmap_out_crit_edge, %lor.lhs.false.preheader.i.dstmap_out_crit_edge, %if.else35.dstmap_out_crit_edge, %if.then32, %do.end23
  %tobool47.not = phi i1 [ false, %if.then32 ], [ true, %do.end23 ], [ false, %erofs_vm_map_ram.exit.dstmap_out_crit_edge ], [ false, %if.else35.dstmap_out_crit_edge ], [ false, %lor.lhs.false.preheader.i.dstmap_out_crit_edge ]
  %cmp56 = phi i1 [ false, %if.then32 ], [ false, %do.end23 ], [ true, %erofs_vm_map_ram.exit.dstmap_out_crit_edge ], [ true, %if.else35.dstmap_out_crit_edge ], [ true, %lor.lhs.false.preheader.i.dstmap_out_crit_edge ]
  %dst.0 = phi ptr [ %call34, %if.then32 ], [ %call.i.i, %do.end23 ], [ %call.1.i, %erofs_vm_map_ram.exit.dstmap_out_crit_edge ], [ %call7.i, %if.else35.dstmap_out_crit_edge ], [ %call.i, %lor.lhs.false.preheader.i.dstmap_out_crit_edge ]
  %34 = ptrtoint ptr %pageofs_out to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pageofs_out, align 2
  %conv45 = zext i16 %35 to i32
  %add.ptr = getelementptr i8, ptr %dst.0, i32 %conv45
  %in.i = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 1
  %36 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %in.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %cmp.i = icmp eq ptr %39, null
  br i1 %cmp.i, label %do.body3.i, label %do.end8.i, !prof !39

do.body3.i:                                       ; preds = %dstmap_out
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 214, 0\0A.popsection", ""() #6, !srcloc !43
  unreachable

do.end8.i:                                        ; preds = %dstmap_out
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %40 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %40, 512
  %41 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %45 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 213
  %49 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %50, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %39, i32 noundef %or.i.i) #6
  %51 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rq, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 33
  %53 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i, align 16
  %feature_incompat.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %54, i32 0, i32 25
  %55 = ptrtoint ptr %feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %feature_incompat.i.i, align 4
  %and.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end8.i.if.end32.i_crit_edge, label %if.then11.i

do.end8.i.if.end32.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then11.i:                                      ; preds = %do.end8.i
  %pageofs_in.i = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 3
  %57 = ptrtoint ptr %pageofs_in.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %pageofs_in.i, align 4
  %conv.i = zext i16 %58 to i32
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %conv.i
  %59 = ptrtoint ptr %inputsize to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %inputsize, align 4
  %sub.i = sub nsw i32 4096, %conv.i
  %61 = tail call i32 @llvm.umin.i32(i32 %60, i32 %sub.i) #6
  %call.i.i81 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %61) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i81, null
  br i1 %tobool.not.i.i, label %do.end22.i, label %if.end25.i

do.end22.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !44
  %62 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i82 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i1.i.i82 to ptr
  %task.i.i.i.i83 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task.i.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task.i.i.i.i83, align 8
  %pagefault_disabled.i.i.i.i84 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 213
  %66 = ptrtoint ptr %pagefault_disabled.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pagefault_disabled.i.i.i.i84, align 8
  %dec.i.i.i.i = add i32 %67, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i84, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  %68 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i85 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i85 to ptr
  %preempt_count.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i86, align 4
  %sub.i.i.i = add i32 %71, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i86, align 4
  br label %z_erofs_lz4_decompress_mem.exit

if.end25.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call.i.i81 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %72 = ptrtoint ptr %inputsize to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %inputsize, align 4
  %sub.i.i = sub i32 %73, %sub.ptr.sub.i.i
  store i32 %sub.i.i, ptr %inputsize, align 4
  %74 = ptrtoint ptr %pageofs_in.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %pageofs_in.i, align 4
  %76 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv4.i.i = add i16 %75, %76
  store i16 %conv4.i.i, ptr %pageofs_in.i, align 4
  %conv27.i = zext i16 %conv4.i.i to i32
  %add.i = add i32 %sub.i.i, %conv27.i
  %and.i = and i32 %add.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end25.i, %do.end8.i.if.end32.i_crit_edge
  %may_inplace.0.off0.i = phi i1 [ %tobool29.not.i, %if.end25.i ], [ false, %do.end8.i.if.end32.i_crit_edge ]
  %pageofs_in33.i = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 3
  %77 = ptrtoint ptr %pageofs_in33.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %pageofs_in33.i, align 4
  %conv34.i = zext i16 %78 to i32
  %inplace_io.i.i = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 8
  %79 = ptrtoint ptr %inplace_io.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %inplace_io.i.i, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i158.i = icmp eq i8 %80, 0
  br i1 %tobool.not.i158.i, label %if.end32.i.if.end36.i.i_crit_edge, label %if.then.i.i

if.end32.i.if.end36.i.i_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i.i

if.then.i.i:                                      ; preds = %if.end32.i
  %partial_decoding.i.i = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 9
  %81 = ptrtoint ptr %partial_decoding.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %partial_decoding.i.i, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool3.not.i.i = icmp eq i8 %82, 0
  %83 = and i1 %may_inplace.0.off0.i, %tobool3.not.i.i
  br i1 %83, label %lor.lhs.false5.i.i, label %if.then.i.i.docopy.i.i_crit_edge

if.then.i.i.docopy.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %docopy.i.i

lor.lhs.false5.i.i:                               ; preds = %if.then.i.i
  %and.i159.i = and i32 %add3, -4096
  %sub.i160.i = sub i32 %and.i159.i, %add
  %84 = ptrtoint ptr %inputsize to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %inputsize, align 4
  %shr.i.i = lshr i32 %85, 8
  %add6.i.i = add nuw nsw i32 %shr.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i160.i, i32 %add6.i.i)
  %cmp.i.i = icmp ult i32 %sub.i160.i, %add6.i.i
  br i1 %cmp.i.i, label %lor.lhs.false5.i.i.docopy.i.i_crit_edge, label %for.cond.preheader.i.i

lor.lhs.false5.i.i.docopy.i.i_crit_edge:          ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %docopy.i.i

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add4)
  %cmp8159.not.i.i = icmp ult i32 %add4, 4096
  br i1 %cmp8159.not.i.i, label %for.cond.preheader.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge, label %do.body.lr.ph.i.i

for.cond.preheader.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %z_erofs_lz4_handle_overlap.exit.i

do.body.lr.ph.i.i:                                ; preds = %for.cond.preheader.i.i
  %86 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %in.i, align 4
  %out.i.i = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc33.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %i.0160.i.i = phi i32 [ 0, %do.body.lr.ph.i.i ], [ %inc34.i.i, %for.inc33.i.i.do.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %87, i32 %i.0160.i.i
  %88 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp10.i.i = icmp eq ptr %89, null
  br i1 %cmp10.i.i, label %do.body14.i.i, label %for.cond21.preheader.i.i, !prof !39

for.cond21.preheader.i.i:                         ; preds = %do.body.i.i
  %sub23.i.i = sub nsw i32 %i.0160.i.i, %shr6
  %add24.i.i = add i32 %sub23.i.i, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add24.i.i)
  %cmp25157.not.i.i = icmp eq i32 %add24.i.i, 0
  br i1 %cmp25157.not.i.i, label %for.cond21.preheader.i.i.for.inc33.i.i_crit_edge, label %for.body26.lr.ph.i.i

for.cond21.preheader.i.i.for.inc33.i.i_crit_edge: ; preds = %for.cond21.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc33.i.i

for.body26.lr.ph.i.i:                             ; preds = %for.cond21.preheader.i.i
  %90 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %out.i.i, align 4
  br label %for.body26.i.i

do.body14.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 138, 0\0A.popsection", ""() #6, !srcloc !46
  unreachable

for.cond21.i.i:                                   ; preds = %for.body26.i.i
  %inc.i.i = add nuw i32 %j.0158.i.i, 1
  %cmp25.i.i = icmp ult i32 %inc.i.i, %add24.i.i
  br i1 %cmp25.i.i, label %for.cond21.i.i.for.body26.i.i_crit_edge, label %for.cond21.i.i.for.inc33.i.i_crit_edge

for.cond21.i.i.for.inc33.i.i_crit_edge:           ; preds = %for.cond21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc33.i.i

for.cond21.i.i.for.body26.i.i_crit_edge:          ; preds = %for.cond21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26.i.i

for.body26.i.i:                                   ; preds = %for.cond21.i.i.for.body26.i.i_crit_edge, %for.body26.lr.ph.i.i
  %j.0158.i.i = phi i32 [ 0, %for.body26.lr.ph.i.i ], [ %inc.i.i, %for.cond21.i.i.for.body26.i.i_crit_edge ]
  %arrayidx27.i.i = getelementptr ptr, ptr %91, i32 %j.0158.i.i
  %92 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx27.i.i, align 4
  %cmp30.i.i = icmp eq ptr %93, %89
  br i1 %cmp30.i.i, label %for.body26.i.i.docopy.i.i_crit_edge, label %for.cond21.i.i

for.body26.i.i.docopy.i.i_crit_edge:              ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %docopy.i.i

for.inc33.i.i:                                    ; preds = %for.cond21.i.i.for.inc33.i.i_crit_edge, %for.cond21.preheader.i.i.for.inc33.i.i_crit_edge
  %inc34.i.i = add nuw nsw i32 %i.0160.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc34.i.i, %shr6
  br i1 %exitcond.not.i.i, label %for.inc33.i.i.if.end36.i.i_crit_edge, label %for.inc33.i.i.do.body.i.i_crit_edge

for.inc33.i.i.do.body.i.i_crit_edge:              ; preds = %for.inc33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

for.inc33.i.i.if.end36.i.i_crit_edge:             ; preds = %for.inc33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %for.inc33.i.i.if.end36.i.i_crit_edge, %if.end32.i.if.end36.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add4)
  %cmp38.i.i = icmp ult i32 %add4, 8192
  br i1 %cmp38.i.i, label %if.end36.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge, label %do.end44.i.i

if.end36.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge: ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %z_erofs_lz4_handle_overlap.exit.i

do.end44.i.i:                                     ; preds = %if.end36.i.i
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !44
  %94 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i162.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i1.i.i162.i to ptr
  %task.i.i.i.i163.i = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %task.i.i.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task.i.i.i.i163.i, align 8
  %pagefault_disabled.i.i.i.i164.i = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 213
  %98 = ptrtoint ptr %pagefault_disabled.i.i.i.i164.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pagefault_disabled.i.i.i.i164.i, align 8
  %dec.i.i.i.i.i = add i32 %99, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i164.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  %100 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i165.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i.i.i165.i to ptr
  %preempt_count.i.i.i.i166.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %preempt_count.i.i.i.i166.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %preempt_count.i.i.i.i166.i, align 4
  %sub.i.i.i.i = add i32 %103, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i166.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 150) #6
  %104 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %in.i, align 4
  %call7.i.i.i = tail call ptr @vm_map_ram(ptr noundef %105, i32 noundef %shr6, i32 noundef -1) #6
  %tobool.not8.i.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not8.i.i.i, label %lor.lhs.false.preheader.i.i.i, label %do.end44.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge

do.end44.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge: ; preds = %do.end44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %z_erofs_lz4_handle_overlap.exit.i

lor.lhs.false.preheader.i.i.i:                    ; preds = %do.end44.i.i
  tail call void @vm_unmap_aliases() #6
  %call.i.i167.i = tail call ptr @vm_map_ram(ptr noundef %105, i32 noundef %shr6, i32 noundef -1) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i167.i, null
  br i1 %tobool.not.i.i.i, label %erofs_vm_map_ram.exit.i.i, label %lor.lhs.false.preheader.i.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge

lor.lhs.false.preheader.i.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge: ; preds = %lor.lhs.false.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %z_erofs_lz4_handle_overlap.exit.i

erofs_vm_map_ram.exit.i.i:                        ; preds = %lor.lhs.false.preheader.i.i.i
  tail call void @vm_unmap_aliases() #6
  %call.1.i.i.i = tail call ptr @vm_map_ram(ptr noundef %105, i32 noundef %shr6, i32 noundef -1) #6
  %tobool55.not.i.i = icmp eq ptr %call.1.i.i.i, null
  br i1 %tobool55.not.i.i, label %erofs_vm_map_ram.exit.i.i.if.then38.i_crit_edge, label %erofs_vm_map_ram.exit.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge

erofs_vm_map_ram.exit.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge: ; preds = %erofs_vm_map_ram.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %z_erofs_lz4_handle_overlap.exit.i

erofs_vm_map_ram.exit.i.i.if.then38.i_crit_edge:  ; preds = %erofs_vm_map_ram.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i

docopy.i.i:                                       ; preds = %for.body26.i.i.docopy.i.i_crit_edge, %lor.lhs.false5.i.i.docopy.i.i_crit_edge, %if.then.i.i.docopy.i.i_crit_edge
  %106 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %in.i, align 4
  %call61.i.i = tail call ptr @erofs_get_pcpubuf(i32 noundef %shr6) #6
  %tobool62.not.i.i = icmp eq ptr %call61.i.i, null
  br i1 %tobool62.not.i.i, label %do.body65.i.i, label %if.end80.i.i

do.body65.i.i:                                    ; preds = %docopy.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 162, 0\0A.popsection", ""() #6, !srcloc !47
  unreachable

if.end80.i.i:                                     ; preds = %docopy.i.i
  %108 = ptrtoint ptr %inputsize to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %inputsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool82.not161.i.i = icmp eq i32 %109, 0
  br i1 %tobool82.not161.i.i, label %if.end80.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge, label %while.body.preheader.i.i

if.end80.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge: ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %z_erofs_lz4_handle_overlap.exit.i

while.body.preheader.i.i:                         ; preds = %if.end80.i.i
  %sub83.peel.i.i = sub nsw i32 4096, %conv34.i
  %110 = tail call i32 @llvm.umin.i32(i32 %109, i32 %sub83.peel.i.i) #6
  %tobool86.not.peel.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool86.not.peel.i.i, label %if.then87.peel.i.i, label %while.body.preheader.i.i.if.end89.peel.i.i_crit_edge

while.body.preheader.i.i.if.end89.peel.i.i_crit_edge: ; preds = %while.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89.peel.i.i

if.then87.peel.i.i:                               ; preds = %while.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %107, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %113 = load i32, ptr @pgprot_kernel, align 4
  %or.i.peel.i.i = or i32 %113, 512
  %114 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i.peel.i.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i.i.i.peel.i.i to ptr
  %preempt_count.i.i.i.i.peel.i.i = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %preempt_count.i.i.i.i.peel.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %preempt_count.i.i.i.i.peel.i.i, align 4
  %add.i.i.i.peel.i.i = add i32 %117, 1
  store volatile i32 %add.i.i.i.peel.i.i, ptr %preempt_count.i.i.i.i.peel.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %118 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i.peel.i.i = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i1.i.i.peel.i.i to ptr
  %task.i.i.i.i.peel.i.i = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %task.i.i.i.i.peel.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %task.i.i.i.i.peel.i.i, align 8
  %pagefault_disabled.i.i.i.i.peel.i.i = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 213
  %122 = ptrtoint ptr %pagefault_disabled.i.i.i.i.peel.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pagefault_disabled.i.i.i.i.peel.i.i, align 8
  %inc.i.i.i.i.peel.i.i = add i32 %123, 1
  store i32 %inc.i.i.i.i.peel.i.i, ptr %pagefault_disabled.i.i.i.i.peel.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %call.i.i.peel.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %112, i32 noundef %or.i.peel.i.i) #6
  br label %if.end89.peel.i.i

if.end89.peel.i.i:                                ; preds = %if.then87.peel.i.i, %while.body.preheader.i.i.if.end89.peel.i.i_crit_edge
  %inpage.addr.1.peel.i.i = phi ptr [ %call.i.i.i, %while.body.preheader.i.i.if.end89.peel.i.i_crit_edge ], [ %call.i.i.peel.i.i, %if.then87.peel.i.i ]
  %add.ptr.peel.i.i = getelementptr i8, ptr %inpage.addr.1.peel.i.i, i32 %conv34.i
  %124 = call ptr @memcpy(ptr %call61.i.i, ptr %add.ptr.peel.i.i, i32 %110)
  tail call void @kunmap_local_indexed(ptr noundef %inpage.addr.1.peel.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !44
  %125 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i147.peel.i.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i1.i147.peel.i.i to ptr
  %task.i.i.i148.peel.i.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %task.i.i.i148.peel.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task.i.i.i148.peel.i.i, align 8
  %pagefault_disabled.i.i.i149.peel.i.i = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 213
  %129 = ptrtoint ptr %pagefault_disabled.i.i.i149.peel.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pagefault_disabled.i.i.i149.peel.i.i, align 8
  %dec.i.i.i150.peel.i.i = add i32 %130, -1
  store i32 %dec.i.i.i150.peel.i.i, ptr %pagefault_disabled.i.i.i149.peel.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  %131 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i151.peel.i.i = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i.i151.peel.i.i to ptr
  %preempt_count.i.i.i152.peel.i.i = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %preempt_count.i.i.i152.peel.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %preempt_count.i.i.i152.peel.i.i, align 4
  %sub.i.i153.peel.i.i = add i32 %134, -1
  store volatile i32 %sub.i.i153.peel.i.i, ptr %preempt_count.i.i.i152.peel.i.i, align 4
  %sub97.peel.i.i = sub i32 %109, %110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub97.peel.i.i)
  %tobool82.not.peel.i.i = icmp eq i32 %sub97.peel.i.i, 0
  br i1 %tobool82.not.peel.i.i, label %if.end89.peel.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge, label %while.body.peel.next.i.i

if.end89.peel.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge: ; preds = %if.end89.peel.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %z_erofs_lz4_handle_overlap.exit.i

while.body.peel.next.i.i:                         ; preds = %if.end89.peel.i.i
  %add.ptr96.peel.i.i = getelementptr i8, ptr %call61.i.i, i32 %110
  br label %if.end89.i.i

if.end89.i.i:                                     ; preds = %if.end89.i.i.if.end89.i.i_crit_edge, %while.body.peel.next.i.i
  %tmp.0166.i.i = phi ptr [ %add.ptr96.i.i, %if.end89.i.i.if.end89.i.i_crit_edge ], [ %add.ptr96.peel.i.i, %while.body.peel.next.i.i ]
  %in.0164.pn.i.i = phi ptr [ %in.0164.i.i, %if.end89.i.i.if.end89.i.i_crit_edge ], [ %107, %while.body.peel.next.i.i ]
  %total.0163.i.i = phi i32 [ %sub97.i.i, %if.end89.i.i.if.end89.i.i_crit_edge ], [ %sub97.peel.i.i, %while.body.peel.next.i.i ]
  %in.0164.i.i = getelementptr ptr, ptr %in.0164.pn.i.i, i32 1
  %135 = tail call i32 @llvm.umin.i32(i32 %total.0163.i.i, i32 4096) #6
  %136 = ptrtoint ptr %in.0164.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %in.0164.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %138 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %138, 512
  %139 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i.i.i = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %142, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %143 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i.i.i = and i32 %143, -16384
  %144 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %146, i32 0, i32 213
  %147 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %148, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %137, i32 noundef %or.i.i.i) #6
  %149 = call ptr @memcpy(ptr %tmp.0166.i.i, ptr %call.i.i.i.i, i32 %135)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !44
  %150 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i147.i.i = and i32 %150, -16384
  %151 = inttoptr i32 %and.i.i.i1.i147.i.i to ptr
  %task.i.i.i148.i.i = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %task.i.i.i148.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %task.i.i.i148.i.i, align 8
  %pagefault_disabled.i.i.i149.i.i = getelementptr inbounds %struct.task_struct, ptr %153, i32 0, i32 213
  %154 = ptrtoint ptr %pagefault_disabled.i.i.i149.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %pagefault_disabled.i.i.i149.i.i, align 8
  %dec.i.i.i150.i.i = add i32 %155, -1
  store i32 %dec.i.i.i150.i.i, ptr %pagefault_disabled.i.i.i149.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  %156 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i151.i.i = and i32 %156, -16384
  %157 = inttoptr i32 %and.i.i.i.i151.i.i to ptr
  %preempt_count.i.i.i152.i.i = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %preempt_count.i.i.i152.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %preempt_count.i.i.i152.i.i, align 4
  %sub.i.i153.i.i = add i32 %159, -1
  store volatile i32 %sub.i.i153.i.i, ptr %preempt_count.i.i.i152.i.i, align 4
  %add.ptr96.i.i = getelementptr i8, ptr %tmp.0166.i.i, i32 %135
  %sub97.i.i = sub i32 %total.0163.i.i, %135
  %tobool82.not.i.i = icmp eq i32 %sub97.i.i, 0
  br i1 %tobool82.not.i.i, label %if.end89.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge, label %if.end89.i.i.if.end89.i.i_crit_edge, !llvm.loop !48

if.end89.i.i.if.end89.i.i_crit_edge:              ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89.i.i

if.end89.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge: ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %z_erofs_lz4_handle_overlap.exit.i

z_erofs_lz4_handle_overlap.exit.i:                ; preds = %if.end89.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge, %if.end89.peel.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge, %if.end80.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge, %erofs_vm_map_ram.exit.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge, %lor.lhs.false.preheader.i.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge, %do.end44.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge, %if.end36.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge, %for.cond.preheader.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge
  %inputmargin.1.i = phi i32 [ %conv34.i, %if.end36.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ %conv34.i, %erofs_vm_map_ram.exit.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ %conv34.i, %lor.lhs.false.preheader.i.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ %conv34.i, %do.end44.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ %conv34.i, %if.end80.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ 0, %if.end89.peel.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ %conv34.i, %for.cond.preheader.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ 0, %if.end89.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ]
  %.sink.i.i = phi i32 [ 0, %if.end36.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ 1, %erofs_vm_map_ram.exit.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ 1, %lor.lhs.false.preheader.i.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ 1, %do.end44.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ 2, %if.end80.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ 2, %if.end89.peel.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ 0, %for.cond.preheader.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ 2, %if.end89.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ]
  %retval.0.ph.i.i = phi ptr [ %call.i.i.i, %if.end36.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ %call.1.i.i.i, %erofs_vm_map_ram.exit.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ %call.i.i167.i, %lor.lhs.false.preheader.i.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ %call7.i.i.i, %do.end44.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ %call61.i.i, %if.end80.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ %call61.i.i, %if.end89.peel.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ %call.i.i.i, %for.cond.preheader.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ], [ %call61.i.i, %if.end89.i.i.z_erofs_lz4_handle_overlap.exit.i_crit_edge ]
  %cmp.i169.i = icmp ugt ptr %retval.0.ph.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169.i, label %z_erofs_lz4_handle_overlap.exit.i.if.then38.i_crit_edge, label %if.end40.i

z_erofs_lz4_handle_overlap.exit.i.if.then38.i_crit_edge: ; preds = %z_erofs_lz4_handle_overlap.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i

if.then38.i:                                      ; preds = %z_erofs_lz4_handle_overlap.exit.i.if.then38.i_crit_edge, %erofs_vm_map_ram.exit.i.i.if.then38.i_crit_edge
  %retval.0.i168192.i = phi ptr [ %retval.0.ph.i.i, %z_erofs_lz4_handle_overlap.exit.i.if.then38.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %erofs_vm_map_ram.exit.i.i.if.then38.i_crit_edge ]
  %160 = ptrtoint ptr %retval.0.i168192.i to i32
  br label %z_erofs_lz4_decompress_mem.exit

if.end40.i:                                       ; preds = %z_erofs_lz4_handle_overlap.exit.i
  %partial_decoding.i = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 9
  %161 = ptrtoint ptr %partial_decoding.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %partial_decoding.i, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool41.not.i = icmp ne i8 %162, 0
  %brmerge.i = select i1 %tobool41.not.i, i1 true, i1 %tobool.i.not.i
  %add.ptr45.i = getelementptr i8, ptr %retval.0.ph.i.i, i32 %inputmargin.1.i
  %163 = ptrtoint ptr %inputsize to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %inputsize, align 4
  %165 = ptrtoint ptr %outputsize to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %outputsize, align 4
  br i1 %brmerge.i, label %if.then44.i, label %if.else.i

if.then44.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %call48.i = tail call i32 @LZ4_decompress_safe_partial(ptr noundef %add.ptr45.i, ptr noundef %add.ptr, i32 noundef %164, i32 noundef %166, i32 noundef %166) #6
  br label %if.end53.i

if.else.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %call52.i = tail call i32 @LZ4_decompress_safe(ptr noundef %add.ptr45.i, ptr noundef %add.ptr, i32 noundef %164, i32 noundef %166) #6
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else.i, %if.then44.i
  %ret.0.i = phi i32 [ %call48.i, %if.then44.i ], [ %call52.i, %if.else.i ]
  %167 = ptrtoint ptr %outputsize to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %outputsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.i, i32 %168)
  %cmp55.not.i = icmp eq i32 %ret.0.i, %168
  br i1 %cmp55.not.i, label %if.end53.i.if.end72.i_crit_edge, label %if.then57.i

if.end53.i.if.end72.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72.i

if.then57.i:                                      ; preds = %if.end53.i
  %169 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rq, align 4
  %171 = ptrtoint ptr %inputsize to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %inputsize, align 4
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %170, ptr noundef nonnull @__func__.z_erofs_lz4_decompress_mem, ptr noundef nonnull @.str.7, i32 noundef %ret.0.i, i32 noundef %172, i32 noundef %inputmargin.1.i, i32 noundef %168) #6
  %173 = ptrtoint ptr %inputsize to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %inputsize, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr45.i, i32 noundef %174, i1 noundef zeroext true) #6
  %175 = ptrtoint ptr %outputsize to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %outputsize, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %176, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp64.i = icmp sgt i32 %ret.0.i, -1
  br i1 %cmp64.i, label %if.then66.i, label %if.then57.i.if.end72.i_crit_edge

if.then57.i.if.end72.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72.i

if.then66.i:                                      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr67.i = getelementptr i8, ptr %add.ptr, i32 %ret.0.i
  %177 = ptrtoint ptr %outputsize to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %outputsize, align 4
  %sub69.i = sub i32 %178, %ret.0.i
  %179 = call ptr @memset(ptr %add.ptr67.i, i32 0, i32 %sub69.i)
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then66.i, %if.then57.i.if.end72.i_crit_edge, %if.end53.i.if.end72.i_crit_edge
  %ret.1.i = phi i32 [ -5, %if.then66.i ], [ -5, %if.then57.i.if.end72.i_crit_edge ], [ 0, %if.end53.i.if.end72.i_crit_edge ]
  %180 = zext i32 %.sink.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %180, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.sink.i.i, label %do.body92.i [
    i32 0, label %do.end79.i
    i32 1, label %if.then85.i
    i32 2, label %if.then89.i
  ]

do.end79.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !44
  %181 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i170.i = and i32 %181, -16384
  %182 = inttoptr i32 %and.i.i.i1.i170.i to ptr
  %task.i.i.i171.i = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %task.i.i.i171.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %task.i.i.i171.i, align 8
  %pagefault_disabled.i.i.i172.i = getelementptr inbounds %struct.task_struct, ptr %184, i32 0, i32 213
  %185 = ptrtoint ptr %pagefault_disabled.i.i.i172.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %pagefault_disabled.i.i.i172.i, align 8
  %dec.i.i.i173.i = add i32 %186, -1
  store i32 %dec.i.i.i173.i, ptr %pagefault_disabled.i.i.i172.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  %187 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i174.i = and i32 %187, -16384
  %188 = inttoptr i32 %and.i.i.i.i174.i to ptr
  %preempt_count.i.i.i175.i = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %preempt_count.i.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %preempt_count.i.i.i175.i, align 4
  %sub.i.i176.i = add i32 %190, -1
  store volatile i32 %sub.i.i176.i, ptr %preempt_count.i.i.i175.i, align 4
  br label %z_erofs_lz4_decompress_mem.exit

if.then85.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #8
  %191 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %0, align 4
  tail call void @vm_unmap_ram(ptr noundef %retval.0.ph.i.i, i32 noundef %192) #6
  br label %z_erofs_lz4_decompress_mem.exit

if.then89.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @erofs_put_pcpubuf(ptr noundef %retval.0.ph.i.i) #6
  br label %z_erofs_lz4_decompress_mem.exit

do.body92.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 268, 0\0A.popsection", ""() #6, !srcloc !50
  unreachable

z_erofs_lz4_decompress_mem.exit:                  ; preds = %if.then89.i, %if.then85.i, %do.end79.i, %if.then38.i, %do.end22.i
  %retval.0.i = phi i32 [ -117, %do.end22.i ], [ %160, %if.then38.i ], [ %ret.1.i, %if.then85.i ], [ %ret.1.i, %if.then89.i ], [ %ret.1.i, %do.end79.i ]
  br i1 %tobool47.not, label %do.end52, label %if.else55

do.end52:                                         ; preds = %z_erofs_lz4_decompress_mem.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kunmap_local_indexed(ptr noundef %dst.0) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !44
  %193 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i = and i32 %193, -16384
  %194 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %194, i32 0, i32 2
  %195 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %196, i32 0, i32 213
  %197 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %198, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  %199 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i = and i32 %199, -16384
  %200 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i87 = add i32 %202, -1
  store volatile i32 %sub.i.i87, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

if.else55:                                        ; preds = %z_erofs_lz4_decompress_mem.exit
  br i1 %cmp56, label %if.then58, label %if.else55.cleanup_crit_edge

if.else55.cleanup_crit_edge:                      ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then58:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #8
  %203 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %1, align 4
  tail call void @vm_unmap_ram(ptr noundef %dst.0, i32 noundef %204) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.else55.cleanup_crit_edge, %do.end52, %erofs_vm_map_ram.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %erofs_vm_map_ram.exit.cleanup_crit_edge ], [ %retval.0.i, %if.else55.cleanup_crit_edge ], [ %retval.0.i, %if.then58 ], [ %retval.0.i, %do.end52 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @z_erofs_lzma_decompress(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @z_erofs_shifted_transform(ptr nocapture noundef readonly %rq, ptr nocapture noundef readnone %pagepool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pageofs_out = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 4
  %0 = ptrtoint ptr %pageofs_out to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pageofs_out, align 2
  %conv = zext i16 %1 to i32
  %outputsize = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 6
  %2 = ptrtoint ptr %outputsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outputsize, align 4
  %add = add nuw nsw i32 %conv, 4095
  %add1 = add i32 %add, %3
  %shr = lshr i32 %add1, 12
  %sub = sub nsw i32 4096, %conv
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12287, i32 %add1)
  %cmp6 = icmp ugt i32 %add1, 12287
  br i1 %cmp6, label %do.body8, label %if.end

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 328, 0\0A.popsection", ""() #6, !srcloc !51
  unreachable

if.end:                                           ; preds = %entry
  %out = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 2
  %5 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %out, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %in = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 1
  %9 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %in, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %cmp14 = icmp eq ptr %8, %12
  br i1 %cmp14, label %do.body17, label %if.end31

do.body17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp18.not = icmp eq i32 %shr, 1
  br i1 %cmp18.not, label %do.body17.cleanup_crit_edge, label %do.body22, !prof !52

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body22:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 333, 0\0A.popsection", ""() #6, !srcloc !53
  unreachable

if.end31:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %13 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %13, 512
  %14 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %18 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 213
  %22 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %12, i32 noundef %or.i) #6
  %pageofs_in = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %rq, i32 0, i32 3
  %24 = ptrtoint ptr %pageofs_in to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pageofs_in, align 4
  %conv33 = zext i16 %25 to i32
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %conv33
  %26 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %out, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool36.not = icmp eq ptr %29, null
  br i1 %tobool36.not, label %if.end31.if.end50_crit_edge, label %if.then37

if.end31.if.end50_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %30 = load i32, ptr @pgprot_kernel, align 4
  %or.i140 = or i32 %30, 512
  %31 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i141 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i141 to ptr
  %preempt_count.i.i.i.i142 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i142, align 4
  %add.i.i.i143 = add i32 %34, 1
  store volatile i32 %add.i.i.i143, ptr %preempt_count.i.i.i.i142, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %35 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i144 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i1.i.i144 to ptr
  %task.i.i.i.i145 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i.i.i.i145, align 8
  %pagefault_disabled.i.i.i.i146 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 213
  %39 = ptrtoint ptr %pagefault_disabled.i.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pagefault_disabled.i.i.i.i146, align 8
  %inc.i.i.i.i147 = add i32 %40, 1
  store i32 %inc.i.i.i.i147, ptr %pagefault_disabled.i.i.i.i146, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %call.i.i148 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %29, i32 noundef %or.i140) #6
  %41 = ptrtoint ptr %pageofs_out to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pageofs_out, align 2
  %conv42 = zext i16 %42 to i32
  %add.ptr43 = getelementptr i8, ptr %call.i.i148, i32 %conv42
  %43 = call ptr @memcpy(ptr %add.ptr43, ptr %add.ptr, i32 %4)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i148) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !44
  %44 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 213
  %48 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %49, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  %50 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then37, %if.end31.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp51 = icmp eq i32 %shr, 2
  br i1 %cmp51, label %do.body54, label %if.end50.do.end102_crit_edge

if.end50.do.end102_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end102

do.body54:                                        ; preds = %if.end50
  %54 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %out, align 4
  %arrayidx56 = getelementptr ptr, ptr %55, i32 1
  %56 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx56, align 4
  %tobool57.not = icmp eq ptr %57, null
  br i1 %tobool57.not, label %do.body67, label %do.end75, !prof !39

do.body67:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 345, 0\0A.popsection", ""() #6, !srcloc !54
  unreachable

do.end75:                                         ; preds = %do.body54
  %58 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %in, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %cmp79 = icmp eq ptr %57, %61
  br i1 %cmp79, label %if.then81, label %if.else

if.then81:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr82 = getelementptr i8, ptr %add.ptr, i32 %4
  %62 = ptrtoint ptr %pageofs_out to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %pageofs_out, align 2
  %conv84 = zext i16 %63 to i32
  %64 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr82, i32 %conv84)
  br label %do.end102

if.else:                                          ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %65 = load i32, ptr @pgprot_kernel, align 4
  %or.i149 = or i32 %65, 512
  %66 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i150 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i150 to ptr
  %preempt_count.i.i.i.i151 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i151, align 4
  %add.i.i.i152 = add i32 %69, 1
  store volatile i32 %add.i.i.i152, ptr %preempt_count.i.i.i.i151, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %70 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i153 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i1.i.i153 to ptr
  %task.i.i.i.i154 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task.i.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task.i.i.i.i154, align 8
  %pagefault_disabled.i.i.i.i155 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 213
  %74 = ptrtoint ptr %pagefault_disabled.i.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pagefault_disabled.i.i.i.i155, align 8
  %inc.i.i.i.i156 = add i32 %75, 1
  store i32 %inc.i.i.i.i156, ptr %pagefault_disabled.i.i.i.i155, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %call.i.i157 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %57, i32 noundef %or.i149) #6
  %add.ptr88 = getelementptr i8, ptr %add.ptr, i32 %4
  %76 = ptrtoint ptr %pageofs_out to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %pageofs_out, align 2
  %conv90 = zext i16 %77 to i32
  %78 = call ptr @memcpy(ptr %call.i.i157, ptr %add.ptr88, i32 %conv90)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i157) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !44
  %79 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i158 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i1.i158 to ptr
  %task.i.i.i159 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i.i.i159, align 8
  %pagefault_disabled.i.i.i160 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 213
  %83 = ptrtoint ptr %pagefault_disabled.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pagefault_disabled.i.i.i160, align 8
  %dec.i.i.i161 = add i32 %84, -1
  store i32 %dec.i.i.i161, ptr %pagefault_disabled.i.i.i160, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  %85 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i162 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i162 to ptr
  %preempt_count.i.i.i163 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i163, align 4
  %sub.i.i164 = add i32 %88, -1
  store volatile i32 %sub.i.i164, ptr %preempt_count.i.i.i163, align 4
  br label %do.end102

do.end102:                                        ; preds = %if.else, %if.then81, %if.end50.do.end102_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !44
  %89 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i165 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i1.i165 to ptr
  %task.i.i.i166 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task.i.i.i166, align 8
  %pagefault_disabled.i.i.i167 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 213
  %93 = ptrtoint ptr %pagefault_disabled.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pagefault_disabled.i.i.i167, align 8
  %dec.i.i.i168 = add i32 %94, -1
  store i32 %dec.i.i.i168, ptr %pagefault_disabled.i.i.i167, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  %95 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i169 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i169 to ptr
  %preempt_count.i.i.i170 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i.i170, align 4
  %sub.i.i171 = add i32 %98, -1
  store volatile i32 %sub.i.i171, ptr %preempt_count.i.i.i170, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %do.body17.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @z_erofs_lz4_prepare_dstpages(ptr nocapture noundef readonly %ctx, ptr noundef %pagepool) unnamed_addr #0 align 64 {
entry:
  %availables = alloca [17 x ptr], align 4
  %bounced.sroa.0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %availables) #6
  %2 = call ptr @memset(ptr %availables, i32 0, i32 68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bounced.sroa.0)
  %3 = ptrtoint ptr %bounced.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bounced.sroa.0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %lz4 = getelementptr inbounds %struct.erofs_sb_info, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %lz4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lz4, align 4
  %conv = zext i16 %9 to i32
  %outpages = getelementptr inbounds %struct.z_erofs_lz4_decompress_ctx, ptr %ctx, i32 0, i32 2
  %10 = ptrtoint ptr %outpages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %outpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp115.not = icmp eq i32 %11, 0
  br i1 %cmp115.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %out = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %top.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %top.3, %cleanup.for.body_crit_edge ]
  %j.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc70, %cleanup.for.body_crit_edge ]
  %i.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %inc69, %cleanup.for.body_crit_edge ]
  %kaddr.0116 = phi ptr [ null, %for.body.lr.ph ], [ %kaddr.2, %cleanup.for.body_crit_edge ]
  %12 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %out, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.0117
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0120, i32 %conv)
  %cmp3.not = icmp ult i32 %j.0120, %conv
  %spec.store.select = select i1 %cmp3.not, i32 %j.0120, i32 0
  %16 = ptrtoint ptr %bounced.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bounced.sroa.0.0.bounced.sroa.0.0. = load volatile i32, ptr %bounced.sroa.0, align 4
  %and.i = and i32 %spec.store.select, 31
  %17 = shl nuw i32 1, %and.i
  %18 = and i32 %bounced.sroa.0.0.bounced.sroa.0.0., %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %for.body.if.end40_crit_edge, label %do.body

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0117, i32 %conv)
  %cmp6 = icmp ult i32 %i.0117, %conv
  br i1 %cmp6, label %do.body11, label %do.body18, !prof !39

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #6, !srcloc !55
  unreachable

do.body18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_cmp4(i32 %top.0121, i32 %conv)
  %cmp19.not = icmp ult i32 %top.0121, %conv
  br i1 %cmp19.not, label %do.end36, label %do.body28, !prof !52

do.body28:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/decompressor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #6, !srcloc !56
  unreachable

do.end36:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %i.0117, %conv
  %arrayidx38 = getelementptr ptr, ptr %13, i32 %sub
  %19 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx38, align 4
  %inc = add nuw i32 %top.0121, 1
  %arrayidx39 = getelementptr [17 x ptr], ptr %availables, i32 0, i32 %top.0121
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %arrayidx39, align 4
  br label %if.end40

if.end40:                                         ; preds = %do.end36, %for.body.if.end40_crit_edge
  %top.1 = phi i32 [ %inc, %do.end36 ], [ %top.0121, %for.body.if.end40_crit_edge ]
  %tobool41.not = icmp eq ptr %15, null
  br i1 %tobool41.not, label %if.end58, label %if.then42

if.then42:                                        ; preds = %if.end40
  %neg.i = xor i32 %17, -1
  %and.i107 = and i32 %bounced.sroa.0.0.bounced.sroa.0.0., %neg.i
  %22 = ptrtoint ptr %bounced.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i107, ptr %bounced.sroa.0, align 4
  %tobool44.not = icmp eq ptr %kaddr.0116, null
  br i1 %tobool44.not, label %if.else52, label %if.then45

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %kaddr.0116, i32 4096
  %call46 = tail call ptr @page_address(ptr noundef nonnull %15) #6
  %cmp47 = icmp eq ptr %add.ptr, %call46
  %add.ptr. = select i1 %cmp47, ptr %add.ptr, ptr null
  br label %cleanup

if.else52:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0117)
  %tobool53.not = icmp eq i32 %i.0117, 0
  br i1 %tobool53.not, label %if.then54, label %if.else52.cleanup_crit_edge

if.else52.cleanup_crit_edge:                      ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then54:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #8
  %call55 = tail call ptr @page_address(ptr noundef nonnull %15) #6
  br label %cleanup

if.end58:                                         ; preds = %if.end40
  %or.i = or i32 %bounced.sroa.0.0.bounced.sroa.0.0., %17
  %23 = ptrtoint ptr %bounced.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i, ptr %bounced.sroa.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %top.1)
  %tobool60.not = icmp eq i32 %top.1, 0
  br i1 %tobool60.not, label %if.else63, label %if.then61

if.then61:                                        ; preds = %if.end58
  %dec = add i32 %top.1, -1
  %arrayidx62 = getelementptr [17 x ptr], ptr %availables, i32 0, i32 %dec
  %24 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx62, align 4
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !52

if.then.i.i:                                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %28, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %25 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %29, %if.end.i.i ]
  %30 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #6
  %31 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %32, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !39

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.6) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #6, !srcloc !57
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #6
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #6, !srcloc !58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@z_erofs_lz4_prepare_dstpages, %if.then.i.i.i.i)) #6
          to label %if.end65 [label %if.then.i.i.i.i], !srcloc !59

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__page_ref_mod(ptr noundef %30, i32 noundef 1) #6
  br label %if.end65

if.else63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = tail call ptr @erofs_allocpage(ptr noundef %pagepool, i32 noundef 36032) #6
  %private1.i = getelementptr inbounds %struct.page, ptr %call64, i32 0, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -4, ptr %private1.i, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %if.then.i.i.i.i, %do.end5.i.i
  %top.2 = phi i32 [ 0, %if.else63 ], [ %dec, %do.end5.i.i ], [ %dec, %if.then.i.i.i.i ]
  %victim.0 = phi ptr [ %call64, %if.else63 ], [ %25, %do.end5.i.i ], [ %25, %if.then.i.i.i.i ]
  %36 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %out, align 4
  %arrayidx67 = getelementptr ptr, ptr %37, i32 %i.0117
  %38 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %victim.0, ptr %arrayidx67, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then54, %if.else52.cleanup_crit_edge, %if.then45
  %kaddr.2 = phi ptr [ null, %if.end65 ], [ null, %if.else52.cleanup_crit_edge ], [ %call55, %if.then54 ], [ %add.ptr., %if.then45 ]
  %top.3 = phi i32 [ %top.2, %if.end65 ], [ %top.1, %if.else52.cleanup_crit_edge ], [ %top.1, %if.then54 ], [ %top.1, %if.then45 ]
  %inc69 = add nuw i32 %i.0117, 1
  %inc70 = add nuw i32 %spec.store.select, 1
  %39 = ptrtoint ptr %outpages to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %outpages, align 4
  %cmp = icmp ult i32 %inc69, %40
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %kaddr.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %kaddr.2, %cleanup.for.end_crit_edge ]
  %tobool71.not = icmp ne ptr %kaddr.0.lcssa, null
  %cond = zext i1 %tobool71.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bounced.sroa.0)
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %availables) #6
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_unmap_ram(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_allocpage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_map_ram(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_unmap_aliases() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @LZ4_decompress_safe_partial(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @LZ4_decompress_safe(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_put_pcpubuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_get_pcpubuf(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__func__.z_erofs_load_lz4_config, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/erofs/decompressor.c", i32 36, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/erofs/decompressor.c", i32 46, i32 4}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/erofs/decompressor.c", i32 50, i32 4}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/erofs/decompressor.c", i32 365, i32 11}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/erofs/decompressor.c", i32 370, i32 11}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/erofs/decompressor.c", i32 361, i32 11}
!13 = !{ptr @decompressors, !14, !"decompressors", i1 false, i1 false}
!14 = !{!"../fs/erofs/decompressor.c", i32 358, i32 36}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!17 = !{ptr @__func__.z_erofs_lz4_decompress_mem, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/erofs/decompressor.c", i32 246, i32 3}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/erofs/decompressor.c", i32 249, i32 18}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/erofs/decompressor.c", i32 249, i32 30}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/erofs/decompressor.c", i32 251, i32 30}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/erofs/decompressor.c", i32 150, i32 2}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2154526975, i64 2154527463, i64 2154527012, i64 2154527068, i64 2154527102, i64 2154527126, i64 2154527167, i64 2154527188, i64 2154527216, i64 2154527250}
!41 = !{i64 2153702541}
!42 = !{i64 2152196085}
!43 = !{i64 2154516952, i64 2154517440, i64 2154516989, i64 2154517045, i64 2154517079, i64 2154517103, i64 2154517144, i64 2154517165, i64 2154517193, i64 2154517227}
!44 = !{i64 2152196292}
!45 = !{i64 2153705312}
!46 = !{i64 2154506175, i64 2154506663, i64 2154506212, i64 2154506268, i64 2154506302, i64 2154506326, i64 2154506367, i64 2154506388, i64 2154506416, i64 2154506450}
!47 = !{i64 2154509599, i64 2154510087, i64 2154509636, i64 2154509692, i64 2154509726, i64 2154509750, i64 2154509791, i64 2154509812, i64 2154509840, i64 2154509874}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.peeled.count", i32 1}
!50 = !{i64 2154524572, i64 2154525060, i64 2154524609, i64 2154524665, i64 2154524699, i64 2154524723, i64 2154524764, i64 2154524785, i64 2154524813, i64 2154524847}
!51 = !{i64 2154537251, i64 2154537739, i64 2154537288, i64 2154537344, i64 2154537378, i64 2154537402, i64 2154537443, i64 2154537464, i64 2154537492, i64 2154537526}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2154538860, i64 2154539348, i64 2154538897, i64 2154538953, i64 2154538987, i64 2154539011, i64 2154539052, i64 2154539073, i64 2154539101, i64 2154539135}
!54 = !{i64 2154542143, i64 2154542631, i64 2154542180, i64 2154542236, i64 2154542270, i64 2154542294, i64 2154542335, i64 2154542356, i64 2154542384, i64 2154542418}
!55 = !{i64 2154502075, i64 2154502562, i64 2154502112, i64 2154502168, i64 2154502202, i64 2154502226, i64 2154502267, i64 2154502288, i64 2154502316, i64 2154502350}
!56 = !{i64 2154503705, i64 2154504192, i64 2154503742, i64 2154503798, i64 2154503832, i64 2154503856, i64 2154503897, i64 2154503918, i64 2154503946, i64 2154503980}
!57 = !{i64 2153163798, i64 2153164282, i64 2153163835, i64 2153163891, i64 2153163925, i64 2153163949, i64 2153163990, i64 2153164011, i64 2153164039, i64 2153164073}
!58 = !{i64 2148680789, i64 2148680815, i64 2148680844, i64 2148680878, i64 2148680909, i64 2148680932}
!59 = !{i64 2148505387, i64 2148505392, i64 2148505405, i64 2148505449, i64 2148505483, i64 2148505504}
